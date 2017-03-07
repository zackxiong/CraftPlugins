package org.acra.p160c.p161a.p162a.p163a;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;

/* renamed from: org.acra.c.a.a.a.d */
public class ProGuard implements ProGuard {
    private static final ProGuard f9622a;
    private ArrayList<ProGuard> f9623b;

    static {
        f9622a = new ProGuard();
    }

    public static ProGuard m12136a() {
        return f9622a;
    }

    private ProGuard() {
        this.f9623b = new ArrayList();
    }

    void m12140a(ProGuard proGuard) {
        synchronized (this.f9623b) {
            this.f9623b.add(proGuard);
        }
    }

    private Object[] m12137b() {
        Object[] objArr = null;
        synchronized (this.f9623b) {
            if (this.f9623b.size() > 0) {
                objArr = this.f9623b.toArray();
            }
        }
        return objArr;
    }

    public void m12139a(Activity activity, Bundle bundle) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12127a(activity, bundle);
            }
        }
    }

    public void m12138a(Activity activity) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12126a(activity);
            }
        }
    }

    public void m12141b(Activity activity) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12128b(activity);
            }
        }
    }

    public void m12143c(Activity activity) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12130c(activity);
            }
        }
    }

    public void m12144d(Activity activity) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12131d(activity);
            }
        }
    }

    public void m12142b(Activity activity, Bundle bundle) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12129b(activity, bundle);
            }
        }
    }

    public void m12145e(Activity activity) {
        Object[] b = m12137b();
        if (b != null) {
            for (Object obj : b) {
                ((ProGuard) obj).m12132e(activity);
            }
        }
    }
}
