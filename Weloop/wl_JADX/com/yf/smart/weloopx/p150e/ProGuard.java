package com.yf.smart.weloopx.p150e;

import android.os.Environment;
import java.io.File;

/* renamed from: com.yf.smart.weloopx.e.a */
public class ProGuard implements com.yf.gattlib.p117p.ProGuard {
    private static final p003a.p004a.p005a.p006a.p007a.ProGuard f8907a;
    private static final String f8908b;
    private static String f8909c;
    private static boolean f8910d;

    /* renamed from: com.yf.smart.weloopx.e.a.a */
    private static class ProGuard {
        private static final org.p000a.p001a.ProGuard f8906a;

        static {
            f8906a = ProGuard.m11178f();
        }
    }

    static {
        f8907a = new p003a.p004a.p005a.p006a.p007a.ProGuard();
        f8908b = Environment.getExternalStorageDirectory() + "/yflog";
        f8909c = "weloop.txt";
        ProGuard.m11177e();
    }

    private static void m11177e() {
        f8907a.m28b(f8908b + "/" + f8909c);
        f8907a.m23a(3145728);
        f8907a.m24a("%d - [%c] - %p : %m%n");
        f8907a.m22a(0);
        f8907a.m26a(false);
        f8907a.m25a(org.p000a.p001a.ProGuard.f9483a);
    }

    private static org.p000a.p001a.ProGuard m11178f() {
        f8910d = false;
        File file = new File(f8908b);
        if (!file.exists()) {
            file.mkdirs();
        }
        org.p000a.p001a.ProGuard proGuard = null;
        try {
            f8907a.m21a();
            proGuard = org.p000a.p001a.ProGuard.m11895b("YF");
            f8910d = true;
            return proGuard;
        } catch (Throwable th) {
            f8910d = false;
            return proGuard;
        }
    }

    public void m11180a(String str) {
        f8907a.m28b(f8908b + "/" + str);
    }

    public void m11179a(Object obj) {
        org.p000a.p001a.ProGuard a = ProGuard.f8906a;
        if (f8910d) {
            a.m11849a(obj);
        }
    }

    public boolean m11181a() {
        return f8907a.m27b() != org.p000a.p001a.ProGuard.f9483a;
    }

    public String m11182b() {
        return f8907a.m31e();
    }

    public void m11183c() {
        f8907a.m25a(org.p000a.p001a.ProGuard.f9490h);
    }
}
