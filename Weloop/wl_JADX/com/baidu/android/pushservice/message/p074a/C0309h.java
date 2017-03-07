package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.message.a.h */
public class C0309h extends C0301c {
    private static final String f3343b;

    static {
        f3343b = C0309h.class.getSimpleName();
    }

    public C0309h(Context context) {
        super(context);
    }

    public int m5041a(String str, String str2, byte[] bArr) {
        PublicMsg a = C0310i.m5042a(str2, str, bArr);
        if (a == null || TextUtils.isEmpty(a.mTitle) || TextUtils.isEmpty(a.mDescription) || TextUtils.isEmpty(a.mUrl)) {
            C0385a.m5313d(f3343b, ">>> pMsg JSON parsing error!");
            if (C0192a.m4341b()) {
                C0374f.m5201b(">>> pMsg JSON parsing error!");
            }
            return 2;
        } else if (C0306e.m5033a(this.a, a) && C0374f.m5218f(this.a, this.a.getPackageName())) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(f3343b, ">>> Show pMsg Notification!");
                C0374f.m5201b(">>> Show pMsg Notification!");
            }
            C0306e.m5026a(this.a, a, str2);
            return 1;
        } else {
            String str3 = ">>> Don't Show pMsg Notification! --- IsBaiduApp = " + C0374f.m5218f(this.a, this.a.getPackageName());
            if (C0192a.m4341b()) {
                C0385a.m5311b(f3343b, str3);
                C0374f.m5201b(str3);
            }
            return 0;
        }
    }
}
