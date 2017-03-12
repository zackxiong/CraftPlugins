package com.p032a.p033a.p034a;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.a.a.a.k */
class C0136k implements C0121p {
    private C0137l f2221c;

    public C0136k(String str, InputStream inputStream, C0126o c0126o, String str2, C0123n c0123n) {
        String str3;
        C0126o c0126o2 = c0126o == null ? C0121p.f2179a : c0126o;
        if (inputStream.markSupported()) {
            inputStream.mark(C0121p.f2180b);
            byte[] bArr = new byte[4];
            String a = str2 == null ? C0136k.m3477a(str, bArr, inputStream.read(bArr), c0126o2) : str2;
            try {
                inputStream.reset();
                try {
                    this.f2221c = new C0137l(str, new InputStreamReader(inputStream, C0136k.m3476a(a)), c0126o2, a, c0123n);
                    return;
                } catch (IOException e) {
                    str3 = "euc-jp";
                    c0126o2.m3422c(new StringBuffer().append("Problem reading with assumed encoding of ").append(a).append(" so restarting with ").append(str3).toString(), str, 1);
                    inputStream.reset();
                    this.f2221c = new C0137l(str, new InputStreamReader(inputStream, C0136k.m3476a(str3)), c0126o2, null, c0123n);
                    return;
                }
            } catch (UnsupportedEncodingException e2) {
                throw new C0133m(c0126o2, str, 1, 0, str3, new StringBuffer().append("\"").append(str3).append("\" is not a supported encoding").toString());
            } catch (C0134h e3) {
                String a2 = e3.m3470a();
                c0126o2.m3422c(new StringBuffer().append("Encoding declaration of ").append(a2).append(" is different that assumed ").append(a).append(" so restarting the parsing with the new encoding").toString(), str, 1);
                inputStream.reset();
                try {
                    this.f2221c = new C0137l(str, new InputStreamReader(inputStream, C0136k.m3476a(a2)), c0126o2, null, c0123n);
                    return;
                } catch (UnsupportedEncodingException e4) {
                    throw new C0133m(c0126o2, str, 1, 0, a2, new StringBuffer().append("\"").append(a2).append("\" is not a supported encoding").toString());
                }
            }
        }
        throw new Error("Precondition violation: the InputStream passed to ParseByteStream must support mark");
    }

    private static String m3475a(byte b) {
        String toHexString = Integer.toHexString(b);
        switch (toHexString.length()) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return new StringBuffer().append("0").append(toHexString).toString();
            case ProGuard.styleable.View_paddingStart /*2*/:
                return toHexString;
            default:
                return toHexString.substring(toHexString.length() - 2);
        }
    }

    private static String m3476a(String str) {
        return str.toLowerCase().equals("utf8") ? "UTF-8" : str;
    }

    private static String m3477a(String str, byte[] bArr, int i, C0126o c0126o) {
        String str2;
        if (i != 4) {
            c0126o.m3420a(i <= 0 ? "no characters in input" : new StringBuffer().append("less than 4 characters in input: \"").append(new String(bArr, 0, i)).append("\"").toString(), str, 1);
            str2 = "UTF-8";
        } else {
            str2 = (C0136k.m3478a(bArr, 65279) || C0136k.m3478a(bArr, -131072) || C0136k.m3478a(bArr, 65534) || C0136k.m3478a(bArr, -16842752) || C0136k.m3478a(bArr, 60) || C0136k.m3478a(bArr, 1006632960) || C0136k.m3478a(bArr, 15360) || C0136k.m3478a(bArr, 3932160)) ? "UCS-4" : C0136k.m3478a(bArr, 3932223) ? "UTF-16BE" : C0136k.m3478a(bArr, 1006649088) ? "UTF-16LE" : C0136k.m3478a(bArr, 1010792557) ? "UTF-8" : C0136k.m3478a(bArr, 1282385812) ? "EBCDIC" : (C0136k.m3479a(bArr, (short) -2) || C0136k.m3479a(bArr, (short) -257)) ? "UTF-16" : "UTF-8";
        }
        if (!str2.equals("UTF-8")) {
            c0126o.m3422c(new StringBuffer().append("From start ").append(C0136k.m3475a(bArr[0])).append(" ").append(C0136k.m3475a(bArr[1])).append(" ").append(C0136k.m3475a(bArr[2])).append(" ").append(C0136k.m3475a(bArr[3])).append(" deduced encoding = ").append(str2).toString(), str, 1);
        }
        return str2;
    }

    private static boolean m3478a(byte[] bArr, int i) {
        return bArr[0] == ((byte) (i >>> 24)) && bArr[1] == ((byte) ((i >>> 16) & 255)) && bArr[2] == ((byte) ((i >>> 8) & 255)) && bArr[3] == ((byte) (i & 255));
    }

    private static boolean m3479a(byte[] bArr, short s) {
        return bArr[0] == ((byte) (s >>> 8)) && bArr[1] == ((byte) (s & 255));
    }

    public String toString() {
        return this.f2221c.toString();
    }
}
