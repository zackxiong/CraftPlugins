package com.baidu.android.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

public class SDcardRemovedReceiver extends BroadcastReceiver {
    private static String f2887a;

    static {
        f2887a = "SDRev";
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.MEDIA_BAD_REMOVAL") || intent.getAction().equals("android.intent.action.MEDIA_REMOVED")) {
            C0385a.m5311b(f2887a, "sdcard removed");
            PushDatabase.close();
        }
    }
}
