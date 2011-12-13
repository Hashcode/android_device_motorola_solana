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

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.util.Log;

public class GlobalNwSwitchReceiver extends BroadcastReceiver {
    private static String MODE_SWITCH_SERVICE = "com.motorola.globalnwswitch.START_SERVICE";
    private static String TAG = "GlobalNwSwitchReceiver";
    private static final boolean DEBUG = ((SystemProperties.getInt("ro.debuggable", 0)) == 1 ? true : false);

    public void onReceive(Context context, Intent intent) {
        if (DEBUG) {
            Log.d(TAG, "start service");
        }
        context.startService(new Intent(MODE_SWITCH_SERVICE));
    }
}

