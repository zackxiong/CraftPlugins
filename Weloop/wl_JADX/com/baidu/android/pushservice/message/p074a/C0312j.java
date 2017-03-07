package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.a.j */
public class C0312j {
    private static final String f3345a;
    private Context f3346b;

    /* renamed from: com.baidu.android.pushservice.message.a.j.1 */
    static /* synthetic */ class C03111 {
        static final /* synthetic */ int[] f3344a;

        static {
            f3344a = new int[C0313k.values().length];
            try {
                f3344a[C0313k.MSG_TYPE_SINGLE_PRIVATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_MULTI_PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_PRIVATE_MESSAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_SINGLE_PUBLIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_MULTI_PUBLIC.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_MULTI_PRIVATE_NOTIFICATION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_RICH_MEDIA.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_BAIDU_SUPPER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f3344a[C0313k.MSG_TYPE_ADVERTISE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    static {
        f3345a = C0312j.class.getSimpleName();
    }

    public C0312j(Context context) {
        this.f3346b = context;
    }

    public C0301c m5043a(C0313k c0313k) {
        switch (C03111.f3344a[c0313k.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
            case ProGuard.styleable.View_paddingStart /*2*/:
                return new C0307f(this.f3346b);
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return new C0308g(this.f3346b);
            case ProGuard.styleable.View_theme /*4*/:
            case ProGuard.styleable.View_backgroundTint /*5*/:
                return new C0309h(this.f3346b);
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return new C0305d(this.f3346b);
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return new C0314l(this.f3346b);
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                return new C0303b(this.f3346b);
            case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                return new C0302a(this.f3346b);
            default:
                if (!C0192a.m4341b()) {
                    return null;
                }
                C0385a.m5313d(f3345a, ">>> Unknown msg_type : " + c0313k);
                C0374f.m5201b(">>> Unknown msg_type : " + c0313k);
                return null;
        }
    }
}
