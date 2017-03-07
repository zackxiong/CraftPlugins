package com.yf.smart.weloopx.data;

import java.util.Random;

/* compiled from: ProGuard */
public class EncryptUtil {
    public native String getEncryptStr(String str, String str2);

    static {
        System.loadLibrary("encrypt");
    }

    public String keyString() {
        String str = new String();
        for (int i = 0; i < 16; i++) {
            str = str + Integer.toString((new Random().nextInt(10) % 11) + 0);
        }
        return str;
    }
}
