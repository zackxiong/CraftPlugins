package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.a */
public class C0315a {
    private static final String f3360a;
    private Context f3361b;

    /* renamed from: com.baidu.android.pushservice.message.a.1 */
    static /* synthetic */ class C02991 {
        static final /* synthetic */ int[] f3333a;

        static {
            f3333a = new int[C0321g.values().length];
            try {
                f3333a[C0321g.MSG_ID_HANDSHAKE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3333a[C0321g.MSG_ID_HEARTBEAT_SERVER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3333a[C0321g.MSG_ID_TINY_HEARTBEAT_SERVER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3333a[C0321g.MSG_ID_HEARTBEAT_CLIENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3333a[C0321g.MSG_ID_TINY_HEARTBEAT_CLIENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3333a[C0321g.MSG_ID_PUSH_MSG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    static {
        f3360a = C0315a.class.getSimpleName();
    }

    public C0315a(Context context) {
        this.f3361b = context;
    }

    public C0316c m5047a(C0321g c0321g) {
        switch (C02991.f3333a[c0321g.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return new C0317b(this.f3361b);
            case ProGuard.styleable.View_paddingStart /*2*/:
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return new C0326l(this.f3361b);
            case ProGuard.styleable.View_theme /*4*/:
                if (!C0192a.m4341b()) {
                    return null;
                }
                C0385a.m5308a(f3360a, "handleMessage MSG_ID_HEARTBEAT_CLIENT");
                return null;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                if (!C0192a.m4341b()) {
                    return null;
                }
                C0385a.m5308a(f3360a, "handleMessage MSG_ID_TIMY_HEARTBEAT_CLIENT");
                return null;
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return new C0324j(this.f3361b);
            default:
                if (!C0192a.m4341b()) {
                    return null;
                }
                C0385a.m5313d(f3360a, "handleMessage invalid messageType");
                return null;
        }
    }
}
