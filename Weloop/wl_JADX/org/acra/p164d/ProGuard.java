package org.acra.p164d;

import android.util.Log;

/* renamed from: org.acra.d.b */
public final class ProGuard implements ProGuard {
    public int m12151a(String str, String str2) {
        return Log.d(str, str2);
    }

    public int m12153b(String str, String str2) {
        return Log.w(str, str2);
    }

    public int m12152a(String str, String str2, Throwable th) {
        return Log.w(str, str2, th);
    }

    public int m12155c(String str, String str2) {
        return Log.e(str, str2);
    }

    public int m12154b(String str, String str2, Throwable th) {
        return Log.e(str, str2, th);
    }
}
