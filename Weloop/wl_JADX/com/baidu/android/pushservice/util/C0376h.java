package com.baidu.android.pushservice.util;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.p072f.C0285u;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;

/* renamed from: com.baidu.android.pushservice.util.h */
public class C0376h {
    private static void m5258a(Context context, C0208h c0208h, C0285u c0285u, C0277k c0277k) {
        if (c0208h != null) {
            c0277k.m4847d(c0208h.m4444c());
            c0277k.m4845c(C0374f.m5205c(c0208h.f2984e));
            c0277k.m4843b(c0208h.f2984e);
            C0277k a = C0374f.m5177a(c0277k, context, c0208h.m4444c());
            try {
                C0284t.m4935a(context, c0285u);
                C0284t.m4933a(context, a);
                if (C0192a.m4341b()) {
                    C0385a.m5313d("WifiActionUtils", "insert   WifiActionBehavior and AppInfo");
                }
            } catch (Exception e) {
                C0385a.m5308a("WifiActionUtils", " insert WifiAction exception: " + e.getMessage());
            }
        }
    }

    public static void m5259a(Context context, String str, String str2, String str3, String str4, String str5, int i) {
        String a = C0371c.m5152a(context, true);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && i >= 0) {
            if (C0192a.m4341b()) {
                C0385a.m5312c("WifiActionUtils", " Wifi Action Info is : wifiAction : " + str + "lbsInfo:  " + a + " " + "zhidaId:  " + str2 + " " + "ssid:  " + str3 + " " + "bssid:  " + str4 + "  " + "wifiUrl:  " + str5 + " " + "  access:  " + i);
            }
            C0285u c0285u = new C0285u();
            c0285u.g = str;
            c0285u.h = System.currentTimeMillis();
            c0285u.i = C0399b.m5336d(context);
            c0285u.f3263a = a;
            c0285u.f3264b = str2;
            c0285u.f3265c = str3;
            c0285u.f3266d = str4;
            c0285u.f3267e = str5;
            c0285u.k = str2;
            c0285u.f3268v = i;
            C0208h b = C0201b.m4446a(context).m4458b(str2);
            if (b != null) {
                C0277k c0277k = new C0277k(str2);
                if (C0192a.m4341b()) {
                    C0385a.m5313d("WifiActionUtils", "insertWifiActionBehavior");
                }
                C0376h.m5258a(context, b, c0285u, c0277k);
            }
        }
    }
}
