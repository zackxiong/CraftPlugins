package com.yf.gattlib.p119l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.yf.gattlib.l.a */
public abstract class ProGuard extends BroadcastReceiver {
    public abstract void m8015a(Context context, Intent intent);

    public final void onReceive(Context context, Intent intent) {
        if (context.getPackageName().equals(intent.getPackage())) {
            m8015a(context, intent);
        }
    }
}
