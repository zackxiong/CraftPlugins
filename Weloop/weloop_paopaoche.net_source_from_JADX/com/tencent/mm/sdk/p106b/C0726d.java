package com.tencent.mm.sdk.p106b;

import com.tencent.mm.p103a.C0715a;

/* renamed from: com.tencent.mm.sdk.b.d */
public final class C0726d {
    private final C0715a f5381E;
    private C0725c<String, String> f5382F;

    public final String m7156i(String str) {
        try {
            if (str.startsWith("!")) {
                if (this.f5382F.m7155a(str)) {
                    return (String) this.f5382F.get(str);
                }
                String substring = str.substring(1);
                try {
                    String[] split = substring.split("@");
                    if (split.length > 1) {
                        String str2 = split[0];
                        int intValue = Integer.valueOf(split[0]).intValue();
                        String substring2 = substring.substring(str2.length() + 1, (str2.length() + 1) + intValue);
                        String str3 = this.f5381E.m7133a(substring2) + substring.substring(intValue + (str2.length() + 1));
                        this.f5382F.put(str, str3);
                        return str3;
                    }
                    str = substring;
                } catch (Exception e) {
                    str = substring;
                    Exception exception = e;
                    exception.printStackTrace();
                    str = "[td]" + str;
                    return str;
                }
            }
        } catch (Exception e2) {
            exception = e2;
            exception.printStackTrace();
            str = "[td]" + str;
            return str;
        }
        return str;
    }
}
