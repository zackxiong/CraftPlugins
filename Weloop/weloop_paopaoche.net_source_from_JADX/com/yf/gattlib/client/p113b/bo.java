package com.yf.gattlib.client.p113b;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bo */
public class bo {
    private byte f5886a;

    public static bo m7647a(byte b) {
        return new bo(b);
    }

    private bo() {
    }

    private bo(byte b) {
        this.f5886a = b;
    }

    public void m7649a(boolean z) {
        if (z) {
            this.f5886a = (byte) 2;
        } else {
            this.f5886a = (byte) 0;
        }
    }

    public byte m7648a() {
        return this.f5886a;
    }
}
