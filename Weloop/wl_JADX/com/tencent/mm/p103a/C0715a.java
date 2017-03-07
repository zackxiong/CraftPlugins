package com.tencent.mm.p103a;

import android.util.Base64;
import javax.crypto.Cipher;

/* renamed from: com.tencent.mm.a.a */
public final class C0715a {
    private Cipher f5362a;

    public final String m7133a(String str) {
        try {
            return new String(this.f5362a.doFinal(Base64.decode(str, 0)), "UTF8");
        } catch (Exception e) {
            return "[des]" + str + "|" + e.toString();
        }
    }
}
