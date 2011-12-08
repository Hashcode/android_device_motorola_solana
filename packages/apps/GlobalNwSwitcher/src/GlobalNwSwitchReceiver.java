package com.motorola.globalnwswitch;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.util.Log;

public class GlobalNwSwitchReceiver extends BroadcastReceiver
{
  private static final boolean DEBUG;
  private static String MODE_SWITCH_SERVICE = "com.motorola.globalnwswitch.START_SERVICE";

  static
  {
    if (SystemProperties.getInt("ro.debuggable", 0) == 1);
    for (int i = 1; ; i = 0)
    {
      DEBUG = i;
      return;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (DEBUG)
      int i = Log.d("GlobalNwSwitchReceiver", "start service");
    String str = MODE_SWITCH_SERVICE;
    Intent localIntent = new Intent(str);
    ComponentName localComponentName = paramContext.startService(localIntent);
  }
}

/* Location:           E:\Devices\XT862-US-Verizon\Blur_Version.5.6.890.XT862.Verizon.en.US\system\app\GlobalNwSwitch.apk.dex2jar.jar
 * Qualified Name:     com.motorola.globalnwswitch.GlobalNwSwitchReceiver
 * JD-Core Version:    0.6.0
 */