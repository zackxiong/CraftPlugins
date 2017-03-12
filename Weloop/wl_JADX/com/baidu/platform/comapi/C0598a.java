package com.baidu.platform.comapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.platform.comapi.p088c.C0606b;
import com.baidu.platform.comapi.p088c.C0607c;

/* renamed from: com.baidu.platform.comapi.a */
public class C0598a extends BroadcastReceiver {
    public static final String f4676a;

    static {
        f4676a = C0598a.class.getSimpleName();
    }

    public void m6432a(Context context) {
        String c = C0606b.m6468c(context);
        if (!C0607c.m6475c().equals(c)) {
            C0607c.m6470a(c);
        }
    }

    public void onReceive(Context context, Intent intent) {
        m6432a(context);
        C0606b.m6465a(context);
    }
}
