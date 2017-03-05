package android.support.v4.p014e;

import android.os.Build.VERSION;

/* renamed from: android.support.v4.e.a */
public class ProGuard {
    private static final ProGuard f315a;

    /* renamed from: android.support.v4.e.a.a */
    interface ProGuard {
        String m443a(String str);

        String m444b(String str);
    }

    /* renamed from: android.support.v4.e.a.b */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public String m445a(String str) {
            return null;
        }

        public String m446b(String str) {
            return str;
        }
    }

    /* renamed from: android.support.v4.e.a.c */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public String m447a(String str) {
            return ProGuard.m451a(str);
        }

        public String m448b(String str) {
            return ProGuard.m452b(str);
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            f315a = new ProGuard();
        } else {
            f315a = new ProGuard();
        }
    }

    public static String m449a(String str) {
        return f315a.m443a(str);
    }

    public static String m450b(String str) {
        return f315a.m444b(str);
    }
}
