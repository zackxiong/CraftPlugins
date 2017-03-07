package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.message.a.l */
public class C0314l extends C0301c {
    private static final String f3359b;

    static {
        f3359b = C0314l.class.getSimpleName();
    }

    public C0314l(Context context) {
        super(context);
    }

    public int m5046a(String str, String str2, byte[] bArr) {
        PublicMsg a = C0310i.m5042a(str2, str, bArr);
        if (a != null && !TextUtils.isEmpty(a.mUrl)) {
            C0208h b = C0201b.m4446a(this.a).m4458b(str);
            if (!(b == null || b.m4444c() == null)) {
                a.mPkgName = b.m4444c();
            }
            C0306e.m5030a(this.a, str, a, str2);
            if (C0192a.m4339a(this.a)) {
                C0385a.m5311b(f3359b, ">>> Show rich media Notification!");
                C0374f.m5201b(">>> Show rich media Notification!");
            }
        } else if (C0192a.m4339a(this.a)) {
            C0385a.m5311b(f3359b, ">>> Don't Show rich media Notification! url is null");
            C0374f.m5201b(">>> Don't Show rich media Notification! url is null");
        }
        return 0;
    }
}
