package com.baidu.android.pushservice.p065a.p066a;

import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.baidu.android.pushservice.a.a.h */
class C0180h implements C0172d {
    private int f2912a;
    private C0178b f2913b;
    private Map<String, C0177a> f2914c;

    /* renamed from: com.baidu.android.pushservice.a.a.h.a */
    static class C0177a {
        public Bitmap f2909a;
        public int f2910b;
        public long f2911c;

        C0177a() {
        }
    }

    /* renamed from: com.baidu.android.pushservice.a.a.h.b */
    public interface C0178b {
        String m4258a(Map<String, C0177a> map);

        void m4259a(C0177a c0177a);
    }

    /* renamed from: com.baidu.android.pushservice.a.a.h.c */
    public static class C0179c implements C0178b {
        public String m4260a(Map<String, C0177a> map) {
            String str = null;
            C0177a c0177a = null;
            for (String str2 : map.keySet()) {
                String str22;
                C0177a c0177a2 = (C0177a) map.get(str22);
                if (c0177a != null && c0177a2.f2911c >= c0177a.f2911c) {
                    str22 = str;
                    c0177a2 = c0177a;
                }
                str = str22;
                c0177a = c0177a2;
            }
            return str;
        }

        public void m4261a(C0177a c0177a) {
            c0177a.f2910b++;
            c0177a.f2911c = System.currentTimeMillis();
        }
    }

    public C0180h(int i) {
        this(i, null);
    }

    public C0180h(int i, C0178b c0178b) {
        this.f2914c = new HashMap();
        this.f2912a = i;
        this.f2913b = c0178b;
        if (this.f2913b == null) {
            this.f2913b = new C0179c();
        }
    }

    public synchronized Bitmap m4262a(String str) {
        Bitmap bitmap;
        C0177a c0177a = (C0177a) this.f2914c.get(str);
        if (c0177a != null) {
            this.f2913b.m4259a(c0177a);
            bitmap = c0177a.f2909a;
        } else {
            bitmap = null;
        }
        return bitmap;
    }

    public synchronized void m4263a(String str, Bitmap bitmap) {
        if (!m4265c(str)) {
            if (this.f2914c.size() >= this.f2912a) {
                m4264b(this.f2913b.m4258a(this.f2914c));
            }
            C0177a c0177a = new C0177a();
            c0177a.f2910b = 1;
            c0177a.f2911c = System.currentTimeMillis();
            c0177a.f2909a = bitmap;
            this.f2914c.put(str, c0177a);
        }
    }

    public synchronized void m4264b(String str) {
        C0177a c0177a = (C0177a) this.f2914c.remove(str);
        if (!(c0177a == null || c0177a.f2909a == null || c0177a.f2909a.isRecycled())) {
            c0177a.f2909a.recycle();
        }
    }

    public synchronized boolean m4265c(String str) {
        return this.f2914c.get(str) != null;
    }
}
