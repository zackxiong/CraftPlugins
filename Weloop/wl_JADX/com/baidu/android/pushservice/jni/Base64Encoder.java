package com.baidu.android.pushservice.jni;

import android.util.Log;

public class Base64Encoder {
    static {
        try {
            System.loadLibrary("bdpush_V2_3");
        } catch (Exception e) {
            Log.w("Base64Encoder", "load so exception: " + e);
        } catch (UnsatisfiedLinkError e2) {
            Log.w("Base64Encoder", "load so error: " + e2.getMessage());
        }
    }

    public static final byte[] m5011a(byte[] bArr) {
        try {
            bArr = nativeB64Encode(bArr);
        } catch (Exception e) {
            Log.w("Base64Encoder", "B64Encode exception: " + e);
        } catch (Error e2) {
            Log.w("Base64Encoder", "B64Encode error: " + e2.getMessage());
        }
        return bArr;
    }

    private static final native byte[] nativeB64Encode(byte[] bArr);
}
