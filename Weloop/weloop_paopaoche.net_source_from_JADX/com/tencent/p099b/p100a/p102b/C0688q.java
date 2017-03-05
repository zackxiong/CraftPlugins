package com.tencent.p099b.p100a.p102b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

/* renamed from: com.tencent.b.a.b.q */
public final class C0688q {
    private static SharedPreferences f5226a;

    static {
        f5226a = null;
    }

    public static int m7008a(Context context, String str, int i) {
        return C0688q.m7010a(context).getInt(C0683l.m6964a(context, "wxop_" + str), i);
    }

    public static long m7009a(Context context, String str) {
        return C0688q.m7010a(context).getLong(C0683l.m6964a(context, "wxop_" + str), 0);
    }

    private static synchronized SharedPreferences m7010a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (C0688q.class) {
            sharedPreferences = context.getSharedPreferences(".mta-wxop", 0);
            f5226a = sharedPreferences;
            if (sharedPreferences == null) {
                f5226a = PreferenceManager.getDefaultSharedPreferences(context);
            }
            sharedPreferences = f5226a;
        }
        return sharedPreferences;
    }

    public static String m7011a(Context context, String str, String str2) {
        return C0688q.m7010a(context).getString(C0683l.m6964a(context, "wxop_" + str), str2);
    }

    public static void m7012a(Context context, String str, long j) {
        String a = C0683l.m6964a(context, "wxop_" + str);
        Editor edit = C0688q.m7010a(context).edit();
        edit.putLong(a, j);
        edit.commit();
    }

    public static void m7013b(Context context, String str, int i) {
        String a = C0683l.m6964a(context, "wxop_" + str);
        Editor edit = C0688q.m7010a(context).edit();
        edit.putInt(a, i);
        edit.commit();
    }

    public static void m7014b(Context context, String str, String str2) {
        String a = C0683l.m6964a(context, "wxop_" + str);
        Editor edit = C0688q.m7010a(context).edit();
        edit.putString(a, str2);
        edit.commit();
    }
}
