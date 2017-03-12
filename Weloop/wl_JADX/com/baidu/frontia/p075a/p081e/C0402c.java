package com.baidu.frontia.p075a.p081e;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: com.baidu.frontia.a.e.c */
public class C0402c {
    private static final String f3663a;

    static {
        f3663a = C0402c.class.getSimpleName();
    }

    public static String m5346a(Context context) {
        String b = C0402c.m5347b(context);
        String b2 = C0404d.m5355b(context);
        if (TextUtils.isEmpty(b2)) {
            b2 = "0";
        }
        return b + "|" + new StringBuffer(b2).reverse().toString();
    }

    private static String m5347b(Context context) {
        return C0404d.m5351a(context);
    }
}
