package com.motorola.globalnwswitch.service;

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
import android.provider.Settings.Secure;
import android.provider.Settings.System;
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
import com.motorola.android.provider.MotorolaSettings;

public class GlobalNwSwitchService extends Service
{
  private static final String ACTION_NETWORKMODE_SWITCH = "com.motorola.intent.action.NETWORKMODE_SWITCH";
  private static final boolean DEBUG = false;
  private static final String GLOBAL_PHONE_SIM_ABSENT_TAG = "GlobalPhoneRadioOffSimAbsentState";
  private static final int NW_MODE_CHANGE_TO_CDMA = 0;
  private static final int NW_MODE_CHANGE_TO_GLOBAL = 1;
  private static final int NW_MODE_CHANGE_TO_NOTHING = 255;
  private static final String TAG = "GlobalNwSwitchService";
  private static final String TAG_NETWORKMODE_SWITCH = "globalnwswitch";
  private MyHandler mHandler;
  private boolean mInAirplanMode;
  private boolean mNewSimAbsent;
  private boolean mNotificationStatus;
  private int mNwModeChangeType = -1;
  private Phone mPhone;
  private String mPhoneName = null;
  private int mPriorNwMode;
  private boolean mPriorSimAbsent;
  private String mSimLockReason = null;
  private String mSimStatus = null;
  private NwModeAutoSwitchReceiver mSwitchReceiver;
  private int mTargetNwMode;

  static
  {
    if (SystemProperties.getInt("ro.debuggable", 0) == 1);
    for (int i = 1; ; i = 0)
    {
      DEBUG = i;
      return;
    }
  }

  public GlobalNwSwitchService()
  {
    MyHandler localMyHandler = new MyHandler(null);
    this.mHandler = localMyHandler;
    this.mPhone = null;
    this.mNotificationStatus = 0;
  }

  private void handleAirplaneModeChanged(Intent paramIntent)
  {
    boolean bool1 = paramIntent.getBooleanExtra("state", 0);
    this.mInAirplanMode = bool1;
    if (DEBUG)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("AirplaneModeChanged it is ");
      boolean bool2 = this.mInAirplanMode;
      String str = bool2;
      int i = Log.d("GlobalNwSwitchService", str);
    }
    if (this.mInAirplanMode)
    {
      boolean bool3 = this.mPriorSimAbsent;
      boolean bool4 = this.mNewSimAbsent;
      if (bool3 == bool4)
        return;
      boolean bool5 = this.mNewSimAbsent;
      this.mPriorSimAbsent = bool5;
      boolean bool6 = this.mNewSimAbsent;
      writePriorSimAbsent(bool6);
      return;
    }
    processModeSwitch();
  }

  private void handleNetworkModeSwitch()
  {
    String str1 = getApplicationContext().getString(2130968577);
    String str2;
    int i;
    switch (this.mNwModeChangeType)
    {
    default:
      return;
    case 0:
      str2 = getApplicationContext().getString(2130968578);
      i = 2130837506;
    case 1:
    }
    while (true)
    {
      ContentResolver localContentResolver = this.mPhone.getContext().getContentResolver();
      int j = this.mTargetNwMode;
      boolean bool = Settings.Secure.putInt(localContentResolver, "preferred_network_mode", j);
      try
      {
        Context localContext1 = getApplicationContext();
        Toast localToast1 = new Toast(localContext1);
        LayoutInflater localLayoutInflater = (LayoutInflater)getApplicationContext().getSystemService("layout_inflater");
        int k = 2130903040;
        ViewGroup localViewGroup = null;
        View localView1 = localLayoutInflater.inflate(k, localViewGroup);
        View localView2 = localView1;
        int m = 2131034114;
        ((TextView)localView2.findViewById(m)).setText(str2);
        Toast localToast2 = localToast1;
        View localView3 = localView1;
        localToast2.setView(localView3);
        localToast1.setDuration(1);
        localToast1.setGravity(48, 0, 0);
        localToast1.show();
        try
        {
          GlobalNwSwitchService localGlobalNwSwitchService = this;
          String str3 = "notification";
          NotificationManager localNotificationManager1 = (NotificationManager)localGlobalNwSwitchService.getSystemService(str3);
          Intent localIntent1 = new Intent();
          Intent localIntent2 = localIntent1;
          String str4 = "com.android.phone";
          String str5 = "com.android.phone.Settings";
          Intent localIntent3 = localIntent2.setClassName(str4, str5);
          Intent localIntent4 = localIntent1;
          int n = 268435456;
          Intent localIntent5 = localIntent4.addFlags(n);
          Notification localNotification1 = new android/app/Notification;
          long l1 = System.currentTimeMillis();
          Notification localNotification2 = localNotification1;
          int i1 = i;
          String str6 = str2;
          long l2 = l1;
          localNotification2.<init>(i1, str6, l2);
          Context localContext2 = getApplicationContext();
          Context localContext3 = getApplicationContext();
          int i2 = 0;
          Intent localIntent6 = localIntent1;
          int i3 = 0;
          PendingIntent localPendingIntent1 = PendingIntent.getActivity(localContext3, i2, localIntent6, i3);
          Notification localNotification3 = localNotification1;
          Context localContext4 = localContext2;
          String str7 = str1;
          String str8 = str2;
          PendingIntent localPendingIntent2 = localPendingIntent1;
          localNotification3.setLatestEventInfo(localContext4, str7, str8, localPendingIntent2);
          int i4 = localNotification1.defaults | 0x1;
          localNotification1.defaults = i4;
          int i5 = 16;
          localNotification1.flags = i5;
          NotificationManager localNotificationManager2 = localNotificationManager1;
          String str9 = "globalnwswitch";
          int i6 = 0;
          Notification localNotification4 = localNotification1;
          localNotificationManager2.notify(str9, i6, localNotification4);
          int i7 = 1;
          this.mNotificationStatus = i7;
          return;
        }
        catch (Exception localException1)
        {
          StringBuilder localStringBuilder1 = new StringBuilder().append("use Notification error");
          Exception localException2 = localException1;
          String str10 = localException2;
          int i8 = Log.e("GlobalNwSwitchService", str10);
          return;
        }
        str2 = getApplicationContext().getString(2130968579);
        i = 2130837505;
      }
      catch (Exception localException3)
      {
        while (true)
        {
          StringBuilder localStringBuilder2 = new StringBuilder().append("use toast error");
          Exception localException4 = localException3;
          String str11 = localException4;
          int i9 = Log.e("GlobalNwSwitchService", str11);
        }
      }
    }
  }

  private void handleSimStateChanged(Intent paramIntent)
  {
    if (this.mInAirplanMode)
    {
      if (!DEBUG)
        return;
      int i = Log.d("GlobalNwSwitchService", "in Airplane mode, don't handle the change");
      return;
    }
    String str1 = paramIntent.getStringExtra("phoneName");
    this.mPhoneName = str1;
    String str2 = paramIntent.getStringExtra("ss");
    this.mSimStatus = str2;
    String str3 = paramIntent.getStringExtra("reason");
    this.mSimLockReason = str3;
    if (DEBUG)
    {
      StringBuilder localStringBuilder1 = new StringBuilder().append("sim state changed, mPhoneName = ");
      String str4 = this.mPhoneName;
      StringBuilder localStringBuilder2 = localStringBuilder1.append(str4).append(", mSimStatus = ");
      String str5 = this.mSimStatus;
      String str6 = str5;
      int j = Log.d("GlobalNwSwitchService", str6);
    }
    String str7 = this.mPhoneName;
    if (!"GSM".equals(str7))
      return;
    IccCard.State localState1 = this.mPhone.getIccCard().getIccCardState();
    IccCard.State localState2 = IccCard.State.ABSENT;
    if (localState1 == localState2);
    for (int k = 1; ; k = 0)
    {
      this.mNewSimAbsent = k;
      if (DEBUG)
      {
        StringBuilder localStringBuilder3 = new StringBuilder().append("mNewSimAbsent = ");
        boolean bool1 = this.mNewSimAbsent;
        String str8 = bool1;
        int m = Log.d("GlobalNwSwitchService", str8);
      }
      boolean bool2 = this.mNewSimAbsent;
      writePriorSimAbsent(bool2);
      return;
    }
  }

  private void init()
  {
    if (DEBUG)
      int i = Log.d("GlobalNwSwitchService", "init()");
    try
    {
      Phone localPhone = PhoneFactory.getDefaultPhone();
      this.mPhone = localPhone;
      if (this.mPhone == null)
      {
        int j = Log.w("GlobalNwSwitchService", "init - mPhone(DefaultPhone) is NULL, wait for 2 sec for DefaultPhone ready.");
        MyHandler localMyHandler = this.mHandler;
        Message localMessage = this.mHandler.obtainMessage(2);
        boolean bool1 = localMyHandler.sendMessageDelayed(localMessage, 2000L);
        return;
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        String str1 = "getDefaultPhone error: " + localException1;
        int k = Log.e("GlobalNwSwitchService", str1);
      }
    }
    while (true)
    {
      try
      {
        NwModeAutoSwitchReceiver localNwModeAutoSwitchReceiver1 = new NwModeAutoSwitchReceiver(null);
        this.mSwitchReceiver = localNwModeAutoSwitchReceiver1;
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        localIntentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        localIntentFilter.addAction("com.motorola.intent.action.NETWORKMODE_SWITCH");
        NwModeAutoSwitchReceiver localNwModeAutoSwitchReceiver2 = this.mSwitchReceiver;
        Intent localIntent = registerReceiver(localNwModeAutoSwitchReceiver2, localIntentFilter);
        int m = Settings.Secure.getInt(this.mPhone.getContext().getContentResolver(), "preferred_network_mode", 0);
        this.mPriorNwMode = m;
        int n = this.mPriorNwMode;
        this.mTargetNwMode = n;
        if (!DEBUG)
          continue;
        StringBuilder localStringBuilder1 = new StringBuilder().append("mPriorNwMode = ");
        int i1 = this.mPriorNwMode;
        String str2 = i1;
        int i2 = Log.d("GlobalNwSwitchService", str2);
        if (Settings.System.getInt(this.mPhone.getContext().getContentResolver(), "airplane_mode_on", 0) == 1)
        {
          i3 = 1;
          this.mInAirplanMode = i3;
          boolean bool2 = readPriorSimAbsent();
          this.mPriorSimAbsent = bool2;
          if (!DEBUG)
            continue;
          StringBuilder localStringBuilder2 = new StringBuilder().append("read mPriorSimAbsent ");
          boolean bool3 = this.mPriorSimAbsent;
          String str3 = bool3;
          int i4 = Log.d("GlobalNwSwitchService", str3);
          boolean bool4 = this.mPriorSimAbsent;
          this.mNewSimAbsent = bool4;
          return;
        }
      }
      catch (Exception localException2)
      {
        String str4 = "Exception in init(): " + localException2;
        int i5 = Log.e("GlobalNwSwitchService", str4);
        return;
      }
      int i3 = 0;
    }
  }

  private void processModeSwitch()
  {
    if (this.mPhone == null)
    {
      int i = Log.w("GlobalNwSwitchService", "processModeSwitch - mPhone is NULL, return");
      return;
    }
    if (this.mInAirplanMode)
    {
      if (!DEBUG)
        return;
      int j = Log.d("GlobalNwSwitchService", "in Airplane mode, don't processModeSwitch");
      return;
    }
    IccCard.State localState1 = this.mPhone.getIccCard().getIccCardState();
    IccCard.State localState2 = IccCard.State.ABSENT;
    if (localState1 == localState2);
    for (int k = 1; ; k = 0)
    {
      this.mNewSimAbsent = k;
      if (DEBUG)
      {
        StringBuilder localStringBuilder1 = new StringBuilder().append("processModeSwitch - mNewSimAbsent =");
        boolean bool1 = this.mNewSimAbsent;
        String str1 = bool1;
        int m = Log.d("GlobalNwSwitchService", str1);
      }
      boolean bool2 = this.mNewSimAbsent;
      writePriorSimAbsent(bool2);
      boolean bool3 = this.mPriorSimAbsent;
      boolean bool4 = this.mNewSimAbsent;
      if ((bool3 != bool4) || ((this.mNewSimAbsent) && ((this.mPriorNwMode == 7) || (this.mPriorNwMode == 3) || (this.mPriorNwMode == 1) || (this.mPriorNwMode == 2) || (this.mPriorNwMode == 0))))
        break;
      if (!DEBUG)
        return;
      int n = Log.d("GlobalNwSwitchService", "Sim card status has no change");
      return;
    }
    setNonLtePhoneTargetNwMode();
    if (DEBUG)
    {
      StringBuilder localStringBuilder2 = new StringBuilder().append("mPriorNwMode = ");
      int i1 = this.mPriorNwMode;
      StringBuilder localStringBuilder3 = localStringBuilder2.append(i1).append("mTargetNwMode = ");
      int i2 = this.mTargetNwMode;
      String str2 = i2;
      int i3 = Log.d("GlobalNwSwitchService", str2);
    }
    int i4 = this.mPriorNwMode;
    int i5 = this.mTargetNwMode;
    if (i4 != i5)
    {
      setTargetNetworkMode();
      int i6 = this.mTargetNwMode;
      this.mPriorNwMode = i6;
    }
    boolean bool5 = this.mNewSimAbsent;
    this.mPriorSimAbsent = bool5;
  }

  private boolean readPriorSimAbsent()
  {
    int i = MotorolaSettings.getInt(this.mPhone.getContext().getContentResolver(), "GlobalPhoneRadioOffSimAbsentState", 1);
    if (DEBUG)
    {
      String str = "readPriorSimAbsent = " + i;
      int j = Log.d("GlobalNwSwitchService", str);
    }
    if (i == 1);
    for (int k = 1; ; k = 0)
      return k;
  }

  private void setNonLtePhoneTargetNwMode()
  {
    if (this.mNewSimAbsent)
    {
      switch (this.mPriorNwMode)
      {
      case 4:
      case 5:
      case 6:
      default:
        int i = this.mPriorNwMode;
        this.mTargetNwMode = i;
        return;
      case 0:
      case 1:
      case 2:
      case 3:
      case 7:
      }
      this.mTargetNwMode = 4;
      this.mNwModeChangeType = 0;
      return;
    }
    switch (this.mPriorNwMode)
    {
    default:
      int j = this.mPriorNwMode;
      this.mTargetNwMode = j;
      return;
    case 4:
    case 5:
    case 6:
    }
    this.mTargetNwMode = 7;
    this.mNwModeChangeType = 1;
  }

  private void setTargetNetworkMode()
  {
    if (this.mPhone == null)
      return;
    Phone localPhone = this.mPhone;
    int i = this.mTargetNwMode;
    Message localMessage = this.mHandler.obtainMessage(1);
    localPhone.setPreferredNetworkType(i, localMessage);
  }

  private void writePriorSimAbsent(boolean paramBoolean)
  {
    if (DEBUG)
    {
      String str1 = "writePriorSimAbsent = " + paramBoolean;
      int i = Log.d("GlobalNwSwitchService", str1);
    }
    try
    {
      ContentResolver localContentResolver = this.mPhone.getContext().getContentResolver();
      String str2 = "GlobalPhoneRadioOffSimAbsentState";
      if (paramBoolean);
      for (int j = 1; ; j = 0)
      {
        boolean bool = MotorolaSettings.putInt(localContentResolver, str2, j);
        if (!DEBUG)
          return;
        int k = Log.d("GlobalNwSwitchService", "finish writePriorSimAbsent");
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str3 = "write simAbsent error " + localException;
        int m = Log.e("GlobalNwSwitchService", str3);
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    if (DEBUG)
      int i = Log.d("GlobalNwSwitchService", "onCreate");
    init();
  }

  public void onDestroy()
  {
    NwModeAutoSwitchReceiver localNwModeAutoSwitchReceiver = this.mSwitchReceiver;
    unregisterReceiver(localNwModeAutoSwitchReceiver);
    super.onDestroy();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (DEBUG)
      int i = Log.d("GlobalNwSwitchService", "onStart");
    processModeSwitch();
  }

  private class MyHandler extends Handler
  {
    private static final int DEFAULT_PHONE_READY_TIME_OUT = 2;
    private static final int RESULT_SET_PREFERRED_NETWORK_TYPE = 1;

    private MyHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (GlobalNwSwitchService.DEBUG)
      {
        StringBuilder localStringBuilder = new StringBuilder().append("handleMessage ");
        int i = paramMessage.what;
        String str = i;
        int j = Log.d("GlobalNwSwitchService", str);
      }
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
        if (((AsyncResult)paramMessage.obj).exception != null)
          return;
        GlobalNwSwitchService.this.handleNetworkModeSwitch();
        return;
      case 2:
      }
      GlobalNwSwitchService.this.init();
      GlobalNwSwitchService.this.processModeSwitch();
    }
  }

  private class NwModeAutoSwitchReceiver extends BroadcastReceiver
  {
    private NwModeAutoSwitchReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str1 = paramIntent.getAction();
      if (GlobalNwSwitchService.DEBUG)
      {
        String str2 = "on receive " + str1;
        int i = Log.d("GlobalNwSwitchService", str2);
      }
      if ("android.intent.action.AIRPLANE_MODE".equals(str1))
        GlobalNwSwitchService.this.handleAirplaneModeChanged(paramIntent);
      if ("android.intent.action.SIM_STATE_CHANGED".equals(str1))
        GlobalNwSwitchService.this.handleSimStateChanged(paramIntent);
      if (!GlobalNwSwitchService.this.mNotificationStatus)
        return;
      if (!"com.motorola.intent.action.NETWORKMODE_SWITCH".equals(str1))
        return;
      ((NotificationManager)GlobalNwSwitchService.this.getSystemService("notification")).cancel("globalnwswitch", 0);
      if (GlobalNwSwitchService.DEBUG)
        int j = Log.d("GlobalNwSwitchService", "Cancel network mode switch notification ");
      boolean bool = GlobalNwSwitchService.access$502(GlobalNwSwitchService.this, 0);
    }
  }
}

/* Location:           E:\Devices\XT862-US-Verizon\Blur_Version.5.6.890.XT862.Verizon.en.US\system\app\GlobalNwSwitch.apk.dex2jar.jar
 * Qualified Name:     com.motorola.globalnwswitch.service.GlobalNwSwitchService
 * JD-Core Version:    0.6.0
 */