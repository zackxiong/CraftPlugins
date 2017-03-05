package com.p038b.p039a.p041a.p043b;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;

/* renamed from: com.b.a.a.b.b */
public class ProGuard {
    private final int f2523a;
    private com.p038b.p039a.p044b.ProGuard f2524b;
    private com.p038b.p039a.p044b.ProGuard<ProGuard, Bitmap> f2525c;
    private final Object f2526d;
    private com.p038b.p039a.p041a.ProGuard f2527e;

    /* renamed from: com.b.a.a.b.b.a */
    private class ProGuard {
        public FileInputStream f2516a;
        public byte[] f2517b;
        public long f2518c;
        final /* synthetic */ ProGuard f2519d;

        private ProGuard(ProGuard proGuard) {
            this.f2519d = proGuard;
        }
    }

    /* renamed from: com.b.a.a.b.b.b */
    public class ProGuard {
        final /* synthetic */ ProGuard f2520a;
        private String f2521b;
        private String f2522c;

        private ProGuard(ProGuard proGuard, String str, com.p038b.p039a.p041a.ProGuard proGuard2) {
            this.f2520a = proGuard;
            this.f2521b = str;
            this.f2522c = proGuard2 == null ? null : proGuard2.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProGuard)) {
                return false;
            }
            ProGuard proGuard = (ProGuard) obj;
            if (!this.f2521b.equals(proGuard.f2521b)) {
                return false;
            }
            if (this.f2522c == null || proGuard.f2522c == null) {
                return true;
            }
            return this.f2522c.equals(proGuard.f2522c);
        }

        public int hashCode() {
            return this.f2521b.hashCode();
        }
    }

    public ProGuard(com.p038b.p039a.p041a.ProGuard proGuard) {
        this.f2523a = 0;
        this.f2526d = new Object();
        if (proGuard == null) {
            throw new IllegalArgumentException("globalConfig may not be null");
        }
        this.f2527e = proGuard;
    }

    public void m3795a() {
        if (this.f2527e.m3871k()) {
            if (this.f2525c != null) {
                try {
                    m3801d();
                } catch (Throwable th) {
                }
            }
            this.f2525c = new ProGuard(this, this.f2527e.m3867g());
        }
    }

    public void m3797b() {
        synchronized (this.f2526d) {
            if (this.f2527e.m3872l() && (this.f2524b == null || this.f2524b.m3946a())) {
                File file = new File(this.f2527e.m3861a());
                if (file.exists() || file.mkdirs()) {
                    long a = com.p038b.p039a.p055f.ProGuard.m4104a(file);
                    long h = (long) this.f2527e.m3868h();
                    if (a <= h) {
                        h = a;
                    }
                    try {
                        this.f2524b = com.p038b.p039a.p044b.ProGuard.m3920a(file, 1, 1, h);
                        this.f2524b.m3945a(this.f2527e.m3873m());
                        com.p038b.p039a.p055f.ProGuard.m4100a("create disk cache success");
                    } catch (Throwable th) {
                        this.f2524b = null;
                        com.p038b.p039a.p055f.ProGuard.m4101a("create disk cache error", th);
                    }
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Bitmap m3793a(java.lang.String r14, com.p038b.p039a.p041a.ProGuard r15, com.p038b.p039a.ProGuard.ProGuard<?> r16) {
        /*
        r13 = this;
        r6 = new com.b.a.a.b.b$a;
        r2 = 0;
        r6.<init>(r2);
        r5 = 0;
        r4 = 0;
        r2 = 0;
        r3 = r13.f2527e;	 Catch:{ Throwable -> 0x00d3, all -> 0x00e5 }
        r3 = r3.m3872l();	 Catch:{ Throwable -> 0x00d3, all -> 0x00e5 }
        if (r3 == 0) goto L_0x0110;
    L_0x0011:
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x00d3, all -> 0x00e5 }
        if (r3 != 0) goto L_0x0018;
    L_0x0015:
        r13.m3797b();	 Catch:{ Throwable -> 0x00d3, all -> 0x00e5 }
    L_0x0018:
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x00d3, all -> 0x00e5 }
        if (r3 == 0) goto L_0x0110;
    L_0x001c:
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r4 = r3.m3947b(r14);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        if (r4 != 0) goto L_0x0063;
    L_0x0024:
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r3 = r3.m3949c(r14);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        if (r3 == 0) goto L_0x0063;
    L_0x002c:
        r7 = 0;
        r5 = r3.m3894a(r7);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r7 = r13.f2527e;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r7 = r7.m3862b();	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r0 = r16;
        r8 = r7.m3828a(r14, r5, r0);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r6.f2518c = r8;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        com.p038b.p039a.p055f.ProGuard.m4094a(r5);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r8 = r6.f2518c;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r10 = 0;
        r7 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r7 >= 0) goto L_0x0055;
    L_0x004a:
        r3.m3897b();	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r2 = 0;
        com.p038b.p039a.p055f.ProGuard.m4094a(r5);
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
    L_0x0054:
        return r2;
    L_0x0055:
        r8 = r6.f2518c;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r3.m3896a(r8);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r3.m3895a();	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r4 = r3.m3947b(r14);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
    L_0x0063:
        if (r4 == 0) goto L_0x007a;
    L_0x0065:
        r3 = 0;
        r3 = r4.m3914a(r3);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r6.f2516a = r3;	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        r2 = r13.m3789a(r6, r15);	 Catch:{ Throwable -> 0x00a0, all -> 0x00e5 }
        if (r2 != 0) goto L_0x007a;
    L_0x0072:
        r3 = 0;
        r6.f2516a = r3;	 Catch:{ Throwable -> 0x0109, all -> 0x00e5 }
        r3 = r13.f2524b;	 Catch:{ Throwable -> 0x0109, all -> 0x00e5 }
        r3.m3951d(r14);	 Catch:{ Throwable -> 0x0109, all -> 0x00e5 }
    L_0x007a:
        r8 = r4;
    L_0x007b:
        if (r2 != 0) goto L_0x010e;
    L_0x007d:
        r3 = new java.io.ByteArrayOutputStream;	 Catch:{ Throwable -> 0x00fe, all -> 0x00ed }
        r3.<init>();	 Catch:{ Throwable -> 0x00fe, all -> 0x00ed }
        r2 = r13.f2527e;	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r2 = r2.m3862b();	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r0 = r16;
        r4 = r2.m3828a(r14, r3, r0);	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r6.f2518c = r4;	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r4 = r6.f2518c;	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r10 = 0;
        r2 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r2 >= 0) goto L_0x00ae;
    L_0x0098:
        r2 = 0;
        com.p038b.p039a.p055f.ProGuard.m4094a(r3);
        com.p038b.p039a.p055f.ProGuard.m4094a(r8);
        goto L_0x0054;
    L_0x00a0:
        r3 = move-exception;
        r12 = r3;
        r3 = r2;
        r2 = r12;
    L_0x00a4:
        r7 = r2.getMessage();	 Catch:{ Throwable -> 0x00fb, all -> 0x00e5 }
        com.p038b.p039a.p055f.ProGuard.m4101a(r7, r2);	 Catch:{ Throwable -> 0x00fb, all -> 0x00e5 }
        r2 = r3;
        r8 = r4;
        goto L_0x007b;
    L_0x00ae:
        r0 = r3;
        r0 = (java.io.ByteArrayOutputStream) r0;	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r2 = r0;
        r2 = r2.toByteArray();	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r6.f2517b = r2;	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r2 = r13.m3789a(r6, r15);	 Catch:{ Throwable -> 0x0102, all -> 0x00f0 }
        r9 = r3;
    L_0x00bd:
        if (r2 == 0) goto L_0x00cc;
    L_0x00bf:
        r5 = r13.m3790a(r14, r15, r2);	 Catch:{ Throwable -> 0x0105, all -> 0x00f4 }
        r6 = r6.f2518c;	 Catch:{ Throwable -> 0x0105, all -> 0x00f4 }
        r2 = r13;
        r3 = r14;
        r4 = r15;
        r2 = r2.m3791a(r3, r4, r5, r6);	 Catch:{ Throwable -> 0x0105, all -> 0x00f4 }
    L_0x00cc:
        com.p038b.p039a.p055f.ProGuard.m4094a(r9);
        com.p038b.p039a.p055f.ProGuard.m4094a(r8);
        goto L_0x0054;
    L_0x00d3:
        r2 = move-exception;
        r3 = r5;
    L_0x00d5:
        r5 = r2.getMessage();	 Catch:{ all -> 0x00f8 }
        com.p038b.p039a.p055f.ProGuard.m4101a(r5, r2);	 Catch:{ all -> 0x00f8 }
        com.p038b.p039a.p055f.ProGuard.m4094a(r3);
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        r2 = 0;
        goto L_0x0054;
    L_0x00e5:
        r2 = move-exception;
    L_0x00e6:
        com.p038b.p039a.p055f.ProGuard.m4094a(r5);
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        throw r2;
    L_0x00ed:
        r2 = move-exception;
        r4 = r8;
        goto L_0x00e6;
    L_0x00f0:
        r2 = move-exception;
        r4 = r8;
        r5 = r3;
        goto L_0x00e6;
    L_0x00f4:
        r2 = move-exception;
        r4 = r8;
        r5 = r9;
        goto L_0x00e6;
    L_0x00f8:
        r2 = move-exception;
        r5 = r3;
        goto L_0x00e6;
    L_0x00fb:
        r2 = move-exception;
        r3 = r5;
        goto L_0x00d5;
    L_0x00fe:
        r2 = move-exception;
        r4 = r8;
        r3 = r5;
        goto L_0x00d5;
    L_0x0102:
        r2 = move-exception;
        r4 = r8;
        goto L_0x00d5;
    L_0x0105:
        r2 = move-exception;
        r4 = r8;
        r3 = r9;
        goto L_0x00d5;
    L_0x0109:
        r3 = move-exception;
        r12 = r3;
        r3 = r2;
        r2 = r12;
        goto L_0x00a4;
    L_0x010e:
        r9 = r5;
        goto L_0x00bd;
    L_0x0110:
        r8 = r4;
        goto L_0x007b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.b.b.a(java.lang.String, com.b.a.a.c, com.b.a.a$a):android.graphics.Bitmap");
    }

    private Bitmap m3791a(String str, com.p038b.p039a.p041a.ProGuard proGuard, Bitmap bitmap, long j) {
        if (proGuard != null) {
            com.p038b.p039a.p041a.p046d.ProGuard h = proGuard.m3849h();
            if (h != null) {
                bitmap = h.m3857a().m3856a(bitmap);
            }
        }
        if (!(str == null || bitmap == null || !this.f2527e.m3871k() || this.f2525c == null)) {
            this.f2525c.m3810a(new ProGuard(str, proGuard, null), bitmap, j);
        }
        return bitmap;
    }

    public Bitmap m3792a(String str, com.p038b.p039a.p041a.ProGuard proGuard) {
        if (this.f2525c == null || !this.f2527e.m3871k()) {
            return null;
        }
        return (Bitmap) this.f2525c.m3809a(new ProGuard(str, proGuard, null));
    }

    public File m3794a(String str) {
        File a;
        synchronized (this.f2526d) {
            if (this.f2524b != null) {
                a = this.f2524b.m3944a(str, 0);
            } else {
                a = null;
            }
        }
        return a;
    }

    public Bitmap m3796b(String str, com.p038b.p039a.p041a.ProGuard proGuard) {
        Throwable th;
        Closeable closeable;
        if (str == null || !this.f2527e.m3872l()) {
            return null;
        }
        if (this.f2524b == null) {
            m3797b();
        }
        if (this.f2524b != null) {
            Closeable b;
            try {
                b = this.f2524b.m3947b(str);
                if (b != null) {
                    Bitmap a;
                    if (proGuard != null) {
                        try {
                            if (!proGuard.m3847f()) {
                                a = ProGuard.m3820a(b.m3914a(0).getFD(), proGuard.m3838a(), proGuard.m3848g());
                                a = m3791a(str, proGuard, m3790a(str, proGuard, a), this.f2524b.m3943a(str));
                                com.p038b.p039a.p055f.ProGuard.m4094a(b);
                                return a;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            com.p038b.p039a.p055f.ProGuard.m4094a(b);
                            throw th;
                        }
                    }
                    a = ProGuard.m3819a(b.m3914a(0).getFD());
                    a = m3791a(str, proGuard, m3790a(str, proGuard, a), this.f2524b.m3943a(str));
                    com.p038b.p039a.p055f.ProGuard.m4094a(b);
                    return a;
                }
                com.p038b.p039a.p055f.ProGuard.m4094a(b);
            } catch (Throwable th3) {
                th = th3;
                b = null;
                com.p038b.p039a.p055f.ProGuard.m4094a(b);
                throw th;
            }
        }
        return null;
    }

    public void m3799c() {
        m3801d();
        m3803e();
    }

    public void m3801d() {
        if (this.f2525c != null) {
            this.f2525c.m3811a();
        }
    }

    public void m3803e() {
        synchronized (this.f2526d) {
            if (!(this.f2524b == null || this.f2524b.m3946a())) {
                try {
                    this.f2524b.m3950c();
                    this.f2524b.close();
                } catch (Throwable th) {
                    com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
                }
                this.f2524b = null;
            }
        }
        m3797b();
    }

    public void m3798b(String str) {
        m3800c(str);
        m3802d(str);
    }

    public void m3800c(String str) {
        ProGuard proGuard = new ProGuard(str, null, null);
        if (this.f2525c != null) {
            while (this.f2525c.m3814c(proGuard)) {
                this.f2525c.m3813b(proGuard);
            }
        }
    }

    public void m3802d(String str) {
        synchronized (this.f2526d) {
            if (!(this.f2524b == null || this.f2524b.m3946a())) {
                try {
                    this.f2524b.m3951d(str);
                } catch (Throwable th) {
                    com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
                }
            }
        }
    }

    public void m3804f() {
        synchronized (this.f2526d) {
            if (this.f2524b != null) {
                try {
                    this.f2524b.m3948b();
                } catch (Throwable th) {
                    com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
                }
            }
        }
    }

    public void m3805g() {
        synchronized (this.f2526d) {
            if (this.f2524b != null) {
                try {
                    if (!this.f2524b.m3946a()) {
                        this.f2524b.close();
                    }
                } catch (Throwable th) {
                    com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
                }
                this.f2524b = null;
            }
        }
    }

    private Bitmap m3789a(ProGuard proGuard, com.p038b.p039a.p041a.ProGuard proGuard2) {
        if (proGuard == null) {
            return null;
        }
        if (proGuard.f2516a != null) {
            if (proGuard2 == null || proGuard2.m3847f()) {
                return ProGuard.m3819a(proGuard.f2516a.getFD());
            }
            return ProGuard.m3820a(proGuard.f2516a.getFD(), proGuard2.m3838a(), proGuard2.m3848g());
        } else if (proGuard.f2517b == null) {
            return null;
        } else {
            if (proGuard2 == null || proGuard2.m3847f()) {
                return ProGuard.m3821a(proGuard.f2517b);
            }
            return ProGuard.m3822a(proGuard.f2517b, proGuard2.m3838a(), proGuard2.m3848g());
        }
    }

    private synchronized Bitmap m3790a(String str, com.p038b.p039a.p041a.ProGuard proGuard, Bitmap bitmap) {
        int i = 0;
        synchronized (this) {
            if (proGuard != null) {
                if (proGuard.m3846e()) {
                    File a = m3794a(str);
                    if (a != null && a.exists()) {
                        try {
                            switch (new ExifInterface(a.getPath()).getAttributeInt("Orientation", 0)) {
                                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                                    i = 180;
                                    break;
                                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                                    i = 90;
                                    break;
                                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                                    i = 270;
                                    break;
                            }
                            if (i != 0) {
                                Matrix matrix = new Matrix();
                                matrix.postRotate((float) i);
                                Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                bitmap.recycle();
                                bitmap = createBitmap;
                            }
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        }
        return bitmap;
    }
}
