package com.baidu.android.pushservice.richmedia;

import com.baidu.android.pushservice.richmedia.C0347n.C0346a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.richmedia.o */
public class C0349o {

    /* renamed from: com.baidu.android.pushservice.richmedia.o.1 */
    static /* synthetic */ class C03481 {
        static final /* synthetic */ int[] f3475a;

        static {
            f3475a = new int[C0346a.values().length];
            try {
                f3475a[C0346a.REQ_TYPE_GET_ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public static C0347n m5145a(C0346a c0346a, String str) {
        C0347n c0347n = new C0347n();
        c0347n.m5139a(c0346a);
        switch (C03481.f3475a[c0346a.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                c0347n.m5142b(str);
                c0347n.m5140a("GET");
                return c0347n;
            default:
                throw new IllegalArgumentException("illegal request type " + c0346a);
        }
    }
}
