package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;
import android.provider.Settings.System;
import android.util.Log;

/* renamed from: com.tencent.a.a.a.a.e */
public final class C0659e extends C0655f {
    public C0659e(Context context) {
        super(context);
    }

    protected final void m6847a(String str) {
        synchronized (this) {
            Log.i("MID", "write mid to Settings.System");
            System.putString(this.a.getContentResolver(), C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw=="), str);
        }
    }

    protected final boolean m6848a() {
        return C0661h.m6857a(this.a, "android.permission.WRITE_SETTINGS");
    }

    protected final String m6849b() {
        String string;
        synchronized (this) {
            Log.i("MID", "read mid from Settings.System");
            string = System.getString(this.a.getContentResolver(), C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw=="));
        }
        return string;
    }
}
