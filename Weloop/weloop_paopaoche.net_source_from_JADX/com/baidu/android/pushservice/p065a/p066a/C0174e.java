package com.baidu.android.pushservice.p065a.p066a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import com.baidu.android.pushservice.p065a.p066a.C0170a.C0168a;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.baidu.android.pushservice.a.a.e */
public class C0174e {
    public static final String f2900a;
    private static C0174e f2901e;
    private C0180h f2902b;
    private C0173c f2903c;
    private int f2904d;

    static {
        f2900a = Environment.getExternalStorageDirectory().getPath() + "/baidu/pushservice/imagecache/";
    }

    private C0174e() {
        this.f2904d = 2073600;
        this.f2902b = new C0180h(20);
        this.f2903c = new C0173c(f2900a, 1, this.f2904d, this.f2902b);
    }

    public static C0174e m4248a() {
        if (f2901e == null) {
            f2901e = new C0174e();
        }
        return f2901e;
    }

    private Bitmap[] m4250a(Uri... uriArr) {
        Bitmap[] bitmapArr = new Bitmap[uriArr.length];
        for (int i = 0; i < bitmapArr.length; i++) {
            if (C0176g.m4257a(uriArr[i])) {
                String a = C0176g.m4254a(uriArr[i].toString());
                bitmapArr[i] = this.f2902b.m4262a(a);
                if (bitmapArr[i] == null) {
                    bitmapArr[i] = this.f2903c.m4243a(a);
                }
            } else {
                bitmapArr[i] = null;
            }
        }
        return bitmapArr;
    }

    public void m4252a(Context context, C0168a c0168a, Uri... uriArr) {
        int i = 0;
        if (uriArr == null || uriArr.length < 1) {
            c0168a.m4234a(new Bitmap[0]);
            return;
        }
        List arrayList = new ArrayList();
        while (i < uriArr.length) {
            if (C0176g.m4257a(uriArr[i])) {
                String a = C0176g.m4254a(uriArr[i].toString());
                if (this.f2902b.m4262a(a) == null && this.f2903c.m4243a(a) == null) {
                    arrayList.add(uriArr[i]);
                }
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            c0168a.m4234a(m4250a(uriArr));
        } else {
            new C0170a(this.f2904d, new C0175f(this, arrayList, c0168a, uriArr), (Uri[]) arrayList.toArray(new Uri[arrayList.size()])).start();
        }
    }
}
