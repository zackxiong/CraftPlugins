package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

/* compiled from: ProGuard */
public class av {
    static final ProGuard f502a;

    /* renamed from: android.support.v4.view.av.e */
    interface ProGuard {
        int m1083a(ViewConfiguration viewConfiguration);

        boolean m1084b(ViewConfiguration viewConfiguration);
    }

    /* renamed from: android.support.v4.view.av.a */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public int m1085a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledTouchSlop();
        }

        public boolean m1086b(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    /* renamed from: android.support.v4.view.av.b */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public int m1087a(ViewConfiguration viewConfiguration) {
            return aw.m1092a(viewConfiguration);
        }
    }

    /* renamed from: android.support.v4.view.av.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public boolean m1088b(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    /* renamed from: android.support.v4.view.av.d */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public boolean m1089b(ViewConfiguration viewConfiguration) {
            return ax.m1093a(viewConfiguration);
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            f502a = new ProGuard();
        } else if (VERSION.SDK_INT >= 11) {
            f502a = new ProGuard();
        } else if (VERSION.SDK_INT >= 8) {
            f502a = new ProGuard();
        } else {
            f502a = new ProGuard();
        }
    }

    public static int m1090a(ViewConfiguration viewConfiguration) {
        return f502a.m1083a(viewConfiguration);
    }

    public static boolean m1091b(ViewConfiguration viewConfiguration) {
        return f502a.m1084b(viewConfiguration);
    }
}
