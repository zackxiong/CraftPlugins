package com.baidu.frontia.module.deeplink.p082a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import java.util.List;
import java.util.Map;

/* renamed from: com.baidu.frontia.module.deeplink.a.c */
public class C0411c {
    private Context f3671a;
    private C0410b f3672b;
    private boolean f3673c;

    public C0411c(Context context, String str, boolean z) {
        this.f3671a = context;
        this.f3672b = new C0410b(context, str);
        this.f3673c = z;
    }

    private String m5373a(String str, String str2, String str3, int i, String str4) {
        String[] strArr = new String[]{str, str2};
        if (1 == i) {
            strArr[0] = str2;
            strArr[1] = str;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            String str5 = strArr[i2];
            if (str5 != null && str5.trim().length() > 0) {
                return str5;
            }
        }
        return (str3 == null || str3.trim().length() <= 0) ? str4 : "market://details?id=" + str3;
    }

    private String m5374a(String str, List<C0414f> list, Map<String, String> map) {
        if (!(str == null || str.length() == 0 || map == null || map.size() <= 0)) {
            for (C0414f a : list) {
                String a2 = a.m5399a();
                str = str.replace("{" + a2 + "}", (String) map.get(a2));
            }
        }
        return str;
    }

    public String m5375a(String str, String str2, Map<String, String> map) {
        String str3 = "http://developer.baidu.com";
        if (str == null || str2 == null) {
            return str3;
        }
        List a = this.f3672b.m5371a(str, str2);
        if (a == null || a.size() <= 0) {
            return str3;
        }
        C0412d c0412d = (C0412d) a.get(0);
        if (c0412d == null) {
            return str3;
        }
        C0413e c0413e;
        String a2;
        str3 = c0412d.m5379a();
        String c = c0412d.m5382c();
        int f = this.f3673c ? c0412d.m5385f() : c0412d.m5384e();
        PackageManager packageManager = this.f3671a.getPackageManager();
        if (2 == f) {
            try {
                packageManager.getPackageInfo(c, 1);
            } catch (NameNotFoundException e) {
                if (c == null || c.trim().length() <= 0) {
                    return str3;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("market://details"));
                return packageManager.queryIntentActivities(intent, 1).size() > 0 ? "market://details?id=" + c : "http://d.91.com/Search?key=" + c;
            }
        }
        List<C0413e> g = c0412d.m5386g();
        if (g != null) {
            for (C0413e c0413e2 : g) {
                if (c0413e2.m5391a().endsWith(str2)) {
                    c0413e = c0413e2;
                    break;
                }
            }
        }
        c0413e = null;
        if (c0413e != null) {
            String c2 = c0413e.m5393c();
            String b = c0413e.m5392b();
            List e2 = c0413e.m5395e();
            if (e2 != null && e2.size() > 0) {
                c2 = m5374a(c2, e2, (Map) map);
                b = m5374a(b, e2, (Map) map);
            }
            a2 = m5373a(c2, b, c, f, c0412d.m5379a());
        } else {
            a2 = str3;
        }
        return a2;
    }
}
