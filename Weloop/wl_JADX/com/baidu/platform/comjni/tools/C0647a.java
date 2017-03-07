package com.baidu.platform.comjni.tools;

import android.os.Bundle;
import com.baidu.platform.comapi.p086a.C0595a;
import com.baidu.platform.comapi.p086a.C0597c;
import com.umeng.update.ProGuard;
import java.util.ArrayList;

/* renamed from: com.baidu.platform.comjni.tools.a */
public class C0647a {
    public static double m6680a(C0597c c0597c, C0597c c0597c2) {
        Bundle bundle = new Bundle();
        bundle.putDouble("x1", (double) c0597c.f4674a);
        bundle.putDouble("y1", (double) c0597c.f4675b);
        bundle.putDouble("x2", (double) c0597c2.f4674a);
        bundle.putDouble("y2", (double) c0597c2.f4675b);
        JNITools.GetDistanceByMC(bundle);
        return bundle.getDouble("distance");
    }

    public static C0595a m6681a(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putString("strkey", str);
        JNITools.TransGeoStr2ComplexPt(bundle2);
        C0595a c0595a = new C0595a();
        Bundle bundle3 = bundle2.getBundle("map_bound");
        if (bundle3 != null) {
            bundle = bundle3.getBundle("ll");
            if (bundle != null) {
                c0595a.f4669b = new C0597c((int) bundle.getDouble("ptx"), (int) bundle.getDouble("pty"));
            }
            bundle3 = bundle3.getBundle("ru");
            if (bundle3 != null) {
                c0595a.f4670c = new C0597c((int) bundle3.getDouble("ptx"), (int) bundle3.getDouble("pty"));
            }
        }
        ParcelItem[] parcelItemArr = (ParcelItem[]) bundle2.getParcelableArray("poly_line");
        for (ParcelItem bundle4 : parcelItemArr) {
            if (c0595a.f4671d == null) {
                c0595a.f4671d = new ArrayList();
            }
            bundle = bundle4.getBundle();
            if (bundle != null) {
                ParcelItem[] parcelItemArr2 = (ParcelItem[]) bundle.getParcelableArray("point_array");
                ArrayList arrayList = new ArrayList();
                for (ParcelItem bundle5 : parcelItemArr2) {
                    Bundle bundle6 = bundle5.getBundle();
                    if (bundle6 != null) {
                        arrayList.add(new C0597c((int) bundle6.getDouble("ptx"), (int) bundle6.getDouble("pty")));
                    }
                }
                arrayList.trimToSize();
                c0595a.f4671d.add(arrayList);
            }
        }
        c0595a.f4671d.trimToSize();
        c0595a.f4668a = (int) bundle2.getDouble(ProGuard.f5475c);
        return c0595a;
    }

    public static String m6682a() {
        return JNITools.GetToken();
    }
}
