package com.baidu.android.pushservice.p072f;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.message.p074a.C0313k;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;

/* renamed from: com.baidu.android.pushservice.f.m */
public class C0279m {
    private static void m4913a(Context context, C0208h c0208h, C0278l c0278l, C0277k c0277k) {
        if (c0208h != null) {
            c0277k.m4847d(c0208h.m4444c());
            c0277k = C0374f.m5177a(c0277k, context, c0208h.m4444c());
        }
        try {
            C0284t.m4934a(context, c0278l);
            C0284t.m4933a(context, c0277k);
        } catch (Exception e) {
            C0385a.m5308a("PushBehaviorHelper", "MH insert db exception");
        }
    }

    public static void m4914a(Context context, String str, String str2, int i, byte[] bArr, int i2, int i3) {
        C0278l c0278l = new C0278l();
        c0278l.g = "010101";
        c0278l.f3246a = str2;
        c0278l.h = System.currentTimeMillis();
        c0278l.i = C0399b.m5336d(context);
        c0278l.f3247b = new String(bArr).length();
        c0278l.j = i2;
        c0278l.f3248c = i;
        c0278l.k = str;
        C0277k c0277k = new C0277k(str);
        c0277k.m4910c(i3);
        C0208h b = C0201b.m4446a(context).m4458b(str);
        if (b != null) {
            c0277k.m4845c(C0374f.m5205c(b.f2984e));
            c0277k.m4843b(b.f2984e);
            c0277k.m4847d(b.m4444c());
        } else {
            c0277k.m4845c("0");
            c0277k.m4843b("0");
            c0277k.m4847d("NP");
        }
        C0279m.m4913a(context, b, c0278l, c0277k);
    }

    public static void m4915a(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                C0278l c0278l = new C0278l();
                String str4 = null;
                if ("com.baidu.android.pushservice.action.passthrough.notification.CLICK".equals(str3)) {
                    str4 = "010601";
                } else if ("com.baidu.android.pushservice.action.passthrough.notification.DELETE".equals(str3)) {
                    str4 = "010602";
                } else if ("com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED".equals(str3)) {
                    str4 = "010603";
                }
                c0278l.g = str4;
                c0278l.f3246a = str;
                c0278l.h = System.currentTimeMillis();
                c0278l.i = C0399b.m5336d(context);
                c0278l.f3248c = C0313k.MSG_TYPE_PRIVATE_MESSAGE.m5045a();
                c0278l.k = str2;
                C0208h b = C0201b.m4446a(context).m4458b(str2);
                if (b != null) {
                    C0279m.m4913a(context, b, c0278l, new C0277k(str2));
                }
            } catch (Exception e) {
                C0385a.m5313d("PushBehaviorHelper", "error " + e.getMessage());
            }
        }
    }
}
