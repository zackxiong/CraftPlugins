package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;

/* compiled from: ProGuard */
public class aq extends android.support.v4.app.at.ProGuard {
    public static final android.support.v4.app.at.ProGuard.ProGuard f183a;
    private static final ProGuard f184g;
    private final String f185b;
    private final CharSequence f186c;
    private final CharSequence[] f187d;
    private final boolean f188e;
    private final Bundle f189f;

    /* renamed from: android.support.v4.app.aq.a */
    interface ProGuard {
    }

    /* renamed from: android.support.v4.app.aq.b */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.app.aq.c */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.app.aq.d */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }
    }

    public String m198a() {
        return this.f185b;
    }

    public CharSequence m199b() {
        return this.f186c;
    }

    public CharSequence[] m200c() {
        return this.f187d;
    }

    public boolean m201d() {
        return this.f188e;
    }

    public Bundle m202e() {
        return this.f189f;
    }

    static {
        if (VERSION.SDK_INT >= 20) {
            f184g = new ProGuard();
        } else if (VERSION.SDK_INT >= 16) {
            f184g = new ProGuard();
        } else {
            f184g = new ProGuard();
        }
        f183a = new ar();
    }
}
