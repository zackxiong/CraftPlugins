package com.p038b.p039a.p041a.p045c;

/* renamed from: com.b.a.a.c.a */
public class ProGuard extends ProGuard {
    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long m3837a(java.lang.String r17, java.io.OutputStream r18, com.p038b.p039a.ProGuard.ProGuard<?> r19) {
        /*
        r16 = this;
        if (r19 == 0) goto L_0x000e;
    L_0x0002:
        r2 = r19.m3752d();
        if (r2 != 0) goto L_0x000e;
    L_0x0008:
        r2 = r19.a_();
        if (r2 != 0) goto L_0x0011;
    L_0x000e:
        r2 = -1;
    L_0x0010:
        return r2;
    L_0x0011:
        r4 = 0;
        com.p038b.p039a.p055f.ProGuard.m4113b();
        r6 = 0;
        r2 = "/";
        r0 = r17;
        r2 = r0.startsWith(r2);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        if (r2 == 0) goto L_0x0050;
    L_0x0021:
        r2 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r0 = r17;
        r2.<init>(r0);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = r2.available();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r8 = (long) r3;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = new java.io.BufferedInputStream;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0123, all -> 0x0116 }
        r10 = r16.m3833b();	 Catch:{ Throwable -> 0x0123, all -> 0x0116 }
        r4 = r4 + r10;
        r14 = r4;
        r4 = r3;
        r2 = r14;
    L_0x003e:
        r5 = r19.m3752d();	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        if (r5 != 0) goto L_0x004a;
    L_0x0044:
        r5 = r19.a_();	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        if (r5 != 0) goto L_0x00c7;
    L_0x004a:
        r2 = -1;
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        goto L_0x0010;
    L_0x0050:
        r2 = "assets/";
        r0 = r17;
        r2 = r0.startsWith(r2);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        if (r2 == 0) goto L_0x0085;
    L_0x005a:
        r2 = r16.m3829a();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2 = r2.getAssets();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = 7;
        r5 = r17.length();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r0 = r17;
        r3 = r0.substring(r3, r5);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r5 = r2.open(r3);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2 = r5.available();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2 = (long) r2;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r8 = new java.io.BufferedInputStream;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r8.<init>(r5);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r14 = r2;
        r2 = r4;
        r4 = r8;
        r8 = r14;
        goto L_0x003e;
    L_0x0085:
        r2 = new java.net.URL;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r0 = r17;
        r2.<init>(r0);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2 = r2.openConnection();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = r16.m3835c();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2.setConnectTimeout(r3);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = r16.m3836d();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r2.setReadTimeout(r3);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3 = new java.io.BufferedInputStream;	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r5 = r2.getInputStream();	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r3.<init>(r5);	 Catch:{ Throwable -> 0x011f, all -> 0x0111 }
        r8 = r2.getExpiration();	 Catch:{ Throwable -> 0x0127, all -> 0x0119 }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0127, all -> 0x0119 }
        r4 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r4 >= 0) goto L_0x00bc;
    L_0x00b3:
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0127, all -> 0x0119 }
        r8 = r16.m3833b();	 Catch:{ Throwable -> 0x0127, all -> 0x0119 }
        r8 = r8 + r4;
    L_0x00bc:
        r2 = r2.getContentLength();	 Catch:{ Throwable -> 0x0127, all -> 0x0119 }
        r4 = (long) r2;
        r14 = r4;
        r4 = r3;
        r2 = r8;
        r8 = r14;
        goto L_0x003e;
    L_0x00c7:
        r5 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r5 = new byte[r5];	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        r10 = new java.io.BufferedOutputStream;	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        r0 = r18;
        r10.<init>(r0);	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
    L_0x00d2:
        r11 = r4.read(r5);	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        r12 = -1;
        if (r11 == r12) goto L_0x0109;
    L_0x00d9:
        r12 = 0;
        r10.write(r5, r12, r11);	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        r12 = (long) r11;	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        r6 = r6 + r12;
        r11 = r19.m3752d();	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        if (r11 != 0) goto L_0x00eb;
    L_0x00e5:
        r11 = r19.a_();	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        if (r11 != 0) goto L_0x00f2;
    L_0x00eb:
        r2 = -1;
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        goto L_0x0010;
    L_0x00f2:
        r0 = r19;
        r0.m3757a(r8, r6);	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        goto L_0x00d2;
    L_0x00f8:
        r2 = move-exception;
        r5 = r4;
        r4 = r2;
    L_0x00fb:
        r2 = -1;
        r6 = r4.getMessage();	 Catch:{ all -> 0x011c }
        com.p038b.p039a.p055f.ProGuard.m4101a(r6, r4);	 Catch:{ all -> 0x011c }
        com.p038b.p039a.p055f.ProGuard.m4094a(r5);
        goto L_0x0010;
    L_0x0109:
        r10.flush();	 Catch:{ Throwable -> 0x00f8, all -> 0x0111 }
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        goto L_0x0010;
    L_0x0111:
        r2 = move-exception;
    L_0x0112:
        com.p038b.p039a.p055f.ProGuard.m4094a(r4);
        throw r2;
    L_0x0116:
        r2 = move-exception;
        r4 = r3;
        goto L_0x0112;
    L_0x0119:
        r2 = move-exception;
        r4 = r3;
        goto L_0x0112;
    L_0x011c:
        r2 = move-exception;
        r4 = r5;
        goto L_0x0112;
    L_0x011f:
        r2 = move-exception;
        r5 = r4;
        r4 = r2;
        goto L_0x00fb;
    L_0x0123:
        r2 = move-exception;
        r4 = r2;
        r5 = r3;
        goto L_0x00fb;
    L_0x0127:
        r2 = move-exception;
        r4 = r2;
        r5 = r3;
        goto L_0x00fb;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.c.a.a(java.lang.String, java.io.OutputStream, com.b.a.a$a):long");
    }
}
