package com.tencent.p099b.p100a.p102b;

import java.io.File;

/* renamed from: com.tencent.b.a.b.p */
final class C0687p {
    private static int f5225a;

    static {
        f5225a = -1;
    }

    public static boolean m7007a() {
        if (f5225a == 1) {
            return true;
        }
        if (f5225a == 0) {
            return false;
        }
        String[] strArr = new String[]{"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        int i = 0;
        while (i < strArr.length) {
            try {
                if (new File(strArr[i] + "su").exists()) {
                    f5225a = 1;
                    return true;
                }
                i++;
            } catch (Exception e) {
            }
        }
        f5225a = 0;
        return false;
    }
}
