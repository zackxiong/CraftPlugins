package com.tencent.mm.sdk.p104a.p105a;

import com.tencent.mm.p103a.C0716b;

/* renamed from: com.tencent.mm.sdk.a.a.b */
public final class C0720b {
    public static byte[] m7136a(String str, int i, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append(str);
        }
        stringBuffer.append(i);
        stringBuffer.append(str2);
        stringBuffer.append("mMcShCsTr");
        return C0716b.m7134a(stringBuffer.toString().substring(1, 9).getBytes()).getBytes();
    }
}
