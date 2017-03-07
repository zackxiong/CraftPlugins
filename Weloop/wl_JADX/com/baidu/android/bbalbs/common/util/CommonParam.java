package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: ProGuard */
public class CommonParam {
    private static final String f2876a;

    static {
        f2876a = CommonParam.class.getSimpleName();
    }

    public static String m4181a(Context context) {
        String b = m4182b(context);
        String b2 = ProGuard.m4190b(context);
        if (TextUtils.isEmpty(b2)) {
            b2 = "0";
        }
        return new StringBuilder(String.valueOf(b)).append("|").append(new StringBuffer(b2).reverse().toString()).toString();
    }

    private static String m4182b(Context context) {
        return ProGuard.m4186a(context);
    }
}
