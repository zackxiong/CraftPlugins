package com.baidu.android.pushservice.p065a.p066a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.baidu.android.pushservice.p065a.p066a.C0170a.C0168a;
import java.util.List;

/* renamed from: com.baidu.android.pushservice.a.a.f */
class C0175f implements C0168a {
    final /* synthetic */ List f2905a;
    final /* synthetic */ C0168a f2906b;
    final /* synthetic */ Uri[] f2907c;
    final /* synthetic */ C0174e f2908d;

    C0175f(C0174e c0174e, List list, C0168a c0168a, Uri[] uriArr) {
        this.f2908d = c0174e;
        this.f2905a = list;
        this.f2906b = c0168a;
        this.f2907c = uriArr;
    }

    public void m4253a(Bitmap... bitmapArr) {
        if (bitmapArr != null) {
            for (int i = 0; i < bitmapArr.length; i++) {
                if (bitmapArr[i] != null) {
                    String a = C0176g.m4254a(((Uri) this.f2905a.get(i)).toString());
                    this.f2908d.f2903c.m4244a(a, bitmapArr[i]);
                    this.f2908d.f2902b.m4263a(a, bitmapArr[i]);
                }
            }
        }
        this.f2906b.m4234a(this.f2908d.m4250a(this.f2907c));
    }
}
