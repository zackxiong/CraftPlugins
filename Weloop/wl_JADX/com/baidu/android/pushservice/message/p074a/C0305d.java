package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p069c.C0202c;
import com.baidu.android.pushservice.p069c.C0203d;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.a.d */
public class C0305d extends C0301c {
    private static final String f3340b;

    /* renamed from: com.baidu.android.pushservice.message.a.d.1 */
    static /* synthetic */ class C03041 {
        static final /* synthetic */ int[] f3339a;

        static {
            f3339a = new int[C0202c.values().length];
            try {
                f3339a[C0202c.PUSH_CLIENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3339a[C0202c.SDK_CLIENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3339a[C0202c.WEBAPP_CLIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3339a[C0202c.LIGHT_APP_CLIENT_NEW.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    static {
        f3340b = C0305d.class.getSimpleName();
    }

    public C0305d(Context context) {
        super(context);
    }

    public int m5022a(String str, String str2, byte[] bArr) {
        PublicMsg a = C0310i.m5042a(str2, str, bArr);
        if (a == null || TextUtils.isEmpty(a.mDescription)) {
            C0385a.m5313d(f3340b, ">>> pMsg JSON parsing error!");
            if (C0192a.m4341b()) {
                C0374f.m5201b(">>> pMsg JSON parsing error!");
            }
            return 2;
        }
        C0203d a2 = C0203d.m4463a(this.a, str);
        PackageManager packageManager;
        switch (C03041.f3339a[a2.m4464a().ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                a.mPkgName = a2.f2976a.m4444c();
                if (TextUtils.isEmpty(a.mTitle)) {
                    packageManager = this.a.getPackageManager();
                    try {
                        a.mTitle = packageManager.getApplicationLabel(packageManager.getApplicationInfo(a.mPkgName, com.umeng.update.util.ProGuard.f5670c)).toString();
                    } catch (NameNotFoundException e) {
                        C0385a.m5313d(f3340b, e.getMessage());
                    }
                }
                C0306e.m5027a(this.a, a, str2, str);
                if (!C0192a.m4339a(this.a)) {
                    return 1;
                }
                C0385a.m5311b(f3340b, ">>> Show pMsg private Notification!");
                C0374f.m5201b(">>> Show pMsg private Notification!");
                return 1;
            case ProGuard.styleable.View_paddingStart /*2*/:
                a.mPkgName = a2.f2977b.m4444c();
                if (TextUtils.isEmpty(a.mTitle)) {
                    packageManager = this.a.getPackageManager();
                    try {
                        a.mTitle = packageManager.getApplicationLabel(packageManager.getApplicationInfo(a.mPkgName, com.umeng.update.util.ProGuard.f5670c)).toString();
                    } catch (NameNotFoundException e2) {
                        C0385a.m5313d(f3340b, e2.getMessage());
                    }
                }
                C0306e.m5027a(this.a, a, str2, str);
                if (!C0192a.m4339a(this.a)) {
                    return 1;
                }
                C0385a.m5311b(f3340b, ">>> Show pMsg private Notification!");
                C0374f.m5201b(">>> Show pMsg private Notification!");
                return 1;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                if (TextUtils.isEmpty(a.mTitle)) {
                    a.mTitle = str;
                }
                C0306e.m5038c(this.a, a, str2, str);
                if (!C0192a.m4339a(this.a)) {
                    return 1;
                }
                C0385a.m5311b(f3340b, ">>> Show pMsg private web Notification!");
                C0374f.m5201b(">>> Show pMsg private Notification!");
                return 1;
            case ProGuard.styleable.View_theme /*4*/:
                int a3 = C0306e.m5023a(this.a, str, str2, bArr, a);
                if (!C0192a.m4339a(this.a)) {
                    return a3;
                }
                C0385a.m5311b(f3340b, ">>> Handle light app notification!");
                C0374f.m5201b(">>> Handle light app notification!");
                return a3;
            default:
                if (C0192a.m4339a(this.a)) {
                    C0385a.m5311b(f3340b, ">>> Don't Show pMsg private Notification! package name is null");
                }
                C0306e.m5029a(this.a, str);
                C0374f.m5201b(">>> Don't Show pMsg private Notification! package name is null");
                return 0;
        }
    }
}
