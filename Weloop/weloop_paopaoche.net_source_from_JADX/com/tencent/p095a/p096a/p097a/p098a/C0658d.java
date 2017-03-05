package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.Log;

/* renamed from: com.tencent.a.a.a.a.d */
final class C0658d extends C0655f {
    public C0658d(Context context) {
        super(context);
    }

    protected final void m6844a(String str) {
        synchronized (this) {
            Log.i("MID", "write mid to sharedPreferences");
            Editor edit = PreferenceManager.getDefaultSharedPreferences(this.a).edit();
            edit.putString(C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw=="), str);
            edit.commit();
        }
    }

    protected final boolean m6845a() {
        return true;
    }

    protected final String m6846b() {
        String string;
        synchronized (this) {
            Log.i("MID", "read mid from sharedPreferences");
            string = PreferenceManager.getDefaultSharedPreferences(this.a).getString(C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw=="), null);
        }
        return string;
    }
}
