package com.baidu.location.p083a.p084a;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: com.baidu.location.a.a.a */
public class C0492a {
    private static final String f3977a;

    static {
        f3977a = C0492a.class.getSimpleName();
    }

    public static String m5809a(Context context) {
        String b = C0492a.m5810b(context);
        String b2 = C0494b.m5817b(context);
        if (TextUtils.isEmpty(b2)) {
            b2 = "0";
        }
        return b + "|" + new StringBuffer(b2).reverse().toString();
    }

    private static String m5810b(Context context) {
        return C0494b.m5813a(context);
    }
}
