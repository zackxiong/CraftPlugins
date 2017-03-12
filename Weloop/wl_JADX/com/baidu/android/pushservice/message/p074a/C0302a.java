package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p069c.C0202c;
import com.baidu.android.pushservice.p069c.C0203d;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.a.a */
public class C0302a extends C0301c {
    private static final String f3337b;

    /* renamed from: com.baidu.android.pushservice.message.a.a.1 */
    static /* synthetic */ class C03001 {
        static final /* synthetic */ int[] f3334a;

        static {
            f3334a = new int[C0202c.values().length];
            try {
                f3334a[C0202c.PUSH_CLIENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    static {
        f3337b = C0302a.class.getSimpleName();
    }

    public C0302a(Context context) {
        super(context);
    }

    public int m5020a(String str, String str2, byte[] bArr) {
        int i = 0;
        PublicMsg a = C0310i.m5042a(str2, str, bArr);
        if (a != null) {
            C0203d a2 = C0203d.m4463a(this.a, str);
            switch (C03001.f3334a[a2.m4464a().ordinal()]) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    a.mPkgName = a2.f2976a.m4444c();
                    C0306e.m5036b(this.a, a, str2, str);
                    i = 1;
                    if (C0192a.m4339a(this.a)) {
                        C0385a.m5311b(f3337b, ">>> Show pMsg AD Notification!");
                        C0374f.m5189a(">>> Show pMsg AD Notification!", this.a);
                        break;
                    }
                    break;
                default:
                    if (C0192a.m4339a(this.a)) {
                        C0385a.m5311b(f3337b, ">>> no push client receive advertise message");
                        break;
                    }
                    break;
            }
        }
        return i;
    }
}
