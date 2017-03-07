package com.tencent.mm.sdk.p106b;

import java.util.TimeZone;

/* renamed from: com.tencent.mm.sdk.b.e */
public final class C0727e {
    private static final long[] f5383G;
    private static final TimeZone GMT;
    private static final long[] f5384H;
    private static final char[] f5385I;
    private static final String[] f5386J;

    static {
        f5383G = new long[]{300, 200, 300, 200};
        f5384H = new long[]{300, 50, 300, 50};
        GMT = TimeZone.getTimeZone("GMT");
        f5385I = new char[]{'<', '>', '\"', '\'', '&', '\r', '\n', ' ', '\t'};
        f5386J = new String[]{"&lt;", "&gt;", "&quot;", "&apos;", "&amp;", "&#x0D;", "&#x0A;", "&#x20;", "&#x09;"};
    }

    public static boolean m7157j(String str) {
        return str == null || str.length() <= 0;
    }
}
