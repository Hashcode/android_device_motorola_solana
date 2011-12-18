/*
 * Copyright (C) 2011 Motorola Mobility
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Edited by Hashcode [2011-12-12]
 */

package com.motorola.globalnwswitch;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.android.internal.telephony.IccCard;
import com.android.internal.telephony.IccCard.State;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;
import com.android.internal.telephony.RILConstants;
import com.android.internal.telephony.TelephonyIntents;

//import com.motorola.android.provider.MotorolaSettings;

import com.motorola.globalnwswitch.R;

public class GlobalNwSwitchService extends Service {
    private static final boolean DEBUG = ((SystemProperties.getInt("ro.debuggable", 0)) == 1 ? true : false);

    private static final String TAG = "GlobalNwSwitchService";
    private static final String TAG_NETWORKMODE_SWITCH = "globalnwswitch";
    //private static final String GLOBAL_PHONE_SIM_ABSENT_TAG = "GlobalPhoneRadioOffSimAbsentState";
    private static final String ACTION_NETWORKMODE_SWITCH = "com.motorola.intent.action.NETWORKMODE_SWITCH";

    private static final int NW_MODE_CHANGE_TO_CDMA = 0;
    private static final int NW_MODE_CHANGE_TO_GLOBAL = 1;
    private static final int NW_MODE_CHANGE_TO_NOTHING = 255;

    private static final int RESULT_SET_PREFERRED_NETWORK_TYPE = 1;
    private static final int DEFAULT_PHONE_READY_TIME_OUT = 2;

    private NwModeAutoSwitchReceiver mSwitchReceiver;
    private Phone mPhone;
    private boolean mInAirplanMode;
    private boolean mNewSimAbsent;
    private boolean mNotificationStatus = false;
    private int mNwModeChangeType = -1;
    private String mPhoneName = null;
    private int mPriorNwMode;
    private boolean mPriorSimAbsent;
    private String mSimLockReason = null;
    private String mSimStatus = null;
    private int mTargetNwMode;


    private Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            if (GlobalNwSwitchService.DEBUG) {
                Log.d(TAG, "handleMessage " + msg.what);
            }
            switch (msg.what) {
                case RESULT_SET_PREFERRED_NETWORK_TYPE:
                    if (((AsyncResult)msg.obj).exception == null) {
                        handleNetworkModeSwitch();
                    }
                    break;
                case DEFAULT_PHONE_READY_TIME_OUT:
                    init();
                    processModeSwitch();
                    break;
            }
        }
    };

    private class NwModeAutoSwitchReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (DEBUG) {
                Log.d(TAG, "on receive " + action);
            }
            if (action.equals(Intent.ACTION_AIRPLANE_MODE_CHANGED))
                handleAirplaneModeChanged(intent);
            if (action.equals(TelephonyIntents.ACTION_SIM_STATE_CHANGED))
                handleSimStateChanged(intent);
            if (mNotificationStatus && action.equals(ACTION_NETWORKMODE_SWITCH)) {
                ((NotificationManager)getSystemService(NOTIFICATION_SERVICE)).cancel(TAG_NETWORKMODE_SWITCH, 0);
                if (DEBUG) {
                    Log.d(TAG, "Cancel network mode switch notification ");
                }
                /* access$502(GlobalNwSwitchService.this, 0); */
                mNotificationStatus = false;
            }
        }
    }

    public IBinder onBind(Intent paramIntent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        if (DEBUG) Log.d(TAG, "onCreate");
        init();
    }

    public void onStart(Intent intent, int paramInt) {
        super.onStart(intent, paramInt);
        if (DEBUG) Log.d(TAG, "onStart");
        processModeSwitch();
    }

    public void onDestroy() {
        unregisterReceiver(mSwitchReceiver);
        super.onDestroy();
    }


    private void init() {
        if (DEBUG) {
            Log.d(TAG, "init()");
        }
        try {
            mPhone = PhoneFactory.getDefaultPhone();
            if (mPhone == null) {
                Log.w(TAG, "init - mPhone(DefaultPhone) is NULL, wait for 2 sec for DefaultPhone ready.");
                mHandler.sendMessageDelayed(mHandler.obtainMessage(DEFAULT_PHONE_READY_TIME_OUT), 2000L);
                return;
            }
        }
        catch (Exception ex1) {
            Log.e(TAG, "getDefaultPhone error: " + ex1);
        }
        try {
            mSwitchReceiver = new NwModeAutoSwitchReceiver();
            IntentFilter localIntentFilter = new IntentFilter();
            localIntentFilter.addAction(TelephonyIntents.ACTION_SIM_STATE_CHANGED);
            localIntentFilter.addAction(Intent.ACTION_AIRPLANE_MODE_CHANGED);
            localIntentFilter.addAction(ACTION_NETWORKMODE_SWITCH);
            Intent localIntent = registerReceiver(mSwitchReceiver, localIntentFilter);
            mPriorNwMode = Settings.Secure.getInt(mPhone.getContext().getContentResolver(), Settings.Secure.PREFERRED_NETWORK_MODE, 0);
            mTargetNwMode = mPriorNwMode;
            if (DEBUG) {
                Log.d(TAG, "mPriorNwMode = " + mPriorNwMode);
            }
            if (Settings.System.getInt(mPhone.getContext().getContentResolver(), Settings.System.AIRPLANE_MODE_ON, 0) == 1) {
                mInAirplanMode = true;
                mPriorSimAbsent = readPriorSimAbsent();
                if (DEBUG) {
                    Log.d(TAG, "read mPriorSimAbsent " + mPriorSimAbsent);
                }
                mNewSimAbsent = mPriorSimAbsent;
            }
        }
        catch (Exception ex2) {
            Log.e(TAG, "Exception in init(): " + ex2);
        }
    }


    private void handleAirplaneModeChanged(Intent intent) {
        mInAirplanMode = intent.getBooleanExtra("state", false);
        if (DEBUG) {
            int i = Log.d(TAG, "AirplaneModeChanged it is " + mInAirplanMode);
        }
        if (mInAirplanMode) {
            if (mPriorSimAbsent != mNewSimAbsent) {
                mPriorSimAbsent = mNewSimAbsent;
                writePriorSimAbsent(mNewSimAbsent);
            }
        }
        else {
            processModeSwitch();
        }
    }  

    private void handleNetworkModeSwitch() {
        String str1 = getApplicationContext().getString(R.string.globalPhone_nw_mode_switch_t);
        String switchMessage = "";
        int simStatusIcon;
        switch (mNwModeChangeType) {
            case NW_MODE_CHANGE_TO_CDMA:
                switchMessage = getApplicationContext().getString(R.string.globalPhone_nw_mode_switch_to_cdma);
                simStatusIcon = R.drawable.stat_sys_no_sim;
                break;
            case NW_MODE_CHANGE_TO_GLOBAL:
                switchMessage = getApplicationContext().getString(R.string.globalPhone_nw_mode_switch_to_global);
                simStatusIcon = R.drawable.stat_notify_sim;
                break;
            default:
                return;
        }

        Settings.Secure.putInt(mPhone.getContext().getContentResolver(), Settings.Secure.PREFERRED_NETWORK_MODE, mTargetNwMode);
        try {
            Toast tst = new Toast(getApplicationContext());
            LayoutInflater inflater = (LayoutInflater)getApplicationContext().getSystemService(LAYOUT_INFLATER_SERVICE);
            View lv = inflater.inflate(R.layout.global_phone_nw_mode_switch, null);
            ((TextView)lv.findViewById(R.id.content_msg)).setText(switchMessage);
            tst.setView(lv);
            tst.setDuration(1);
            tst.setGravity(48, 0, 0);
            tst.show();
            try {
                Intent intent = new Intent();
                intent.setClassName("com.android.phone", "com.android.phone.Settings");
                intent.addFlags(0x10000000);
                Notification notify = new android.app.Notification();
                notify.icon = simStatusIcon;
                notify.tickerText = switchMessage;
                notify.setLatestEventInfo(getApplicationContext(), str1, switchMessage, PendingIntent.getActivity(getApplicationContext(), 0, intent, 0));
                notify.defaults |=  0x1;
                notify.flags = 16;
                ((NotificationManager)getSystemService(NOTIFICATION_SERVICE)).notify(TAG_NETWORKMODE_SWITCH, 0, notify);
                mNotificationStatus = true;
                return;
            }
            catch (Exception ex1) {
                Log.e(TAG, "use Notification error" + ex1);
                return;
            }
        }
        catch (Exception ex3) {
            Log.e(TAG, "use toast error" + ex3);
        }
    }

    private void handleSimStateChanged(Intent intent) {
        if (mInAirplanMode) {
            if (DEBUG) {
                Log.d(TAG, "in Airplane mode, don't handle the change");
            }
        }
        else {
            mPhoneName = intent.getStringExtra("phoneName");
            mSimStatus = intent.getStringExtra("ss");
            mSimLockReason = intent.getStringExtra("reason");
            if (DEBUG) {
                Log.d(TAG, "sim state changed, mPhoneName = " + mPhoneName + ", mSimStatus = " + mSimStatus);
            }
            if (mPhoneName.equals(Phone.PHONE_TYPE_GSM)) {
                mNewSimAbsent = false;
                if (mPhone.getIccCard().getIccCardState() == IccCard.State.ABSENT) {
                    mNewSimAbsent = true;
                }
                if (DEBUG) {
                    Log.d(TAG, "mNewSimAbsent = " + mNewSimAbsent);
                }
                writePriorSimAbsent(mNewSimAbsent);
            }
        }
    }

    private void processModeSwitch() {
        if (mPhone == null) {
            Log.w(TAG, "processModeSwitch - mPhone is NULL, return");
            return;
        }
        if (mInAirplanMode) {
            if (DEBUG) {
                Log.d(TAG, "in Airplane mode, don't processModeSwitch");
            }
            return;
        }
        mNewSimAbsent = (mPhone.getIccCard().getIccCardState() == IccCard.State.ABSENT);
        if (DEBUG) {
            Log.d(TAG, "processModeSwitch - mNewSimAbsent =" + mNewSimAbsent);
        }
        writePriorSimAbsent(mNewSimAbsent);
        if ((mPriorSimAbsent != mNewSimAbsent) ||
            ((mNewSimAbsent) &&
             ((mPriorNwMode == RILConstants.NETWORK_MODE_GLOBAL) ||
              (mPriorNwMode == RILConstants.NETWORK_MODE_GSM_UMTS) ||
              (mPriorNwMode == RILConstants.NETWORK_MODE_GSM_ONLY) ||
              (mPriorNwMode == RILConstants.NETWORK_MODE_WCDMA_ONLY) ||
              (mPriorNwMode == RILConstants.NETWORK_MODE_WCDMA_PREF)))) {
            setNonLtePhoneTargetNwMode();
            if (DEBUG) {
                Log.d(TAG, "mPriorNwMode = " + mPriorNwMode + ", mTargetNwMode = " + mTargetNwMode);
            }
            if (mPriorNwMode != mTargetNwMode) {
                setTargetNetworkMode();
                mPriorNwMode = mTargetNwMode;
            }
            mPriorSimAbsent = mNewSimAbsent;
        }
        else if (DEBUG) {
          Log.d(TAG, "Sim card status has no change");
        }
    }

    private boolean readPriorSimAbsent() {
        int lPriorSimAbsent = Settings.System.getInt(mPhone.getContext().getContentResolver(), Settings.System.GLOBAL_PHONE_SIM_ABSENT_TAG, 1);
        if (DEBUG) {
            Log.d(TAG, "readPriorSimAbsent = " + lPriorSimAbsent);
        }
        return (lPriorSimAbsent == 1);
    }

    private void setNonLtePhoneTargetNwMode() {
        if (mNewSimAbsent) {
            switch (mPriorNwMode) {
                case RILConstants.NETWORK_MODE_WCDMA_PREF:
                case RILConstants.NETWORK_MODE_GSM_ONLY:
                case RILConstants.NETWORK_MODE_WCDMA_ONLY:
                case RILConstants.NETWORK_MODE_GSM_UMTS:
                case RILConstants.NETWORK_MODE_GLOBAL:
                    mTargetNwMode = RILConstants.NETWORK_MODE_CDMA;
                    mNwModeChangeType = NW_MODE_CHANGE_TO_CDMA;
                    break;
                case RILConstants.NETWORK_MODE_CDMA:
                case RILConstants.NETWORK_MODE_CDMA_NO_EVDO:
                case RILConstants.NETWORK_MODE_EVDO_NO_CDMA:
                default:
                    mTargetNwMode = mPriorNwMode;
                    break;
            }
        }
        else {
            switch (mPriorNwMode) {
                case RILConstants.NETWORK_MODE_CDMA:
                case RILConstants.NETWORK_MODE_CDMA_NO_EVDO:
                case RILConstants.NETWORK_MODE_EVDO_NO_CDMA:
                    mTargetNwMode = RILConstants.NETWORK_MODE_GLOBAL;
                    mNwModeChangeType = NW_MODE_CHANGE_TO_GLOBAL;
                    break;
                default:
                    mTargetNwMode = mPriorNwMode;
                    break;
            }
        }
    }

    private void setTargetNetworkMode() {
        if (mPhone != null) {
            mPhone.setPreferredNetworkType(mTargetNwMode, mHandler.obtainMessage(RESULT_SET_PREFERRED_NETWORK_TYPE));
        }
    }

    private void writePriorSimAbsent(boolean paramBoolean) {
        if (DEBUG) {
            Log.d(TAG, "writePriorSimAbsent = " + paramBoolean);
        }
        try {
            int j = 0;
            if (paramBoolean) j = 1;
            Settings.System.putInt(mPhone.getContext().getContentResolver(), Settings.System.GLOBAL_PHONE_SIM_ABSENT_TAG, j);
            if (DEBUG) {
                Log.d(TAG, "finish writePriorSimAbsent");
            }
        }
        catch (Exception ex) {
            Log.e(TAG, "write simAbsent error " + ex);
        }
    }

}

