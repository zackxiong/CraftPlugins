package com.baidu.android.pushservice.message;

/* renamed from: com.baidu.android.pushservice.message.k */
public class C0325k {
    private String f3391a;
    private long f3392b;
    private int f3393c;

    public String m5082a() {
        return this.f3391a;
    }

    public void m5083a(int i) {
        this.f3393c = i;
    }

    public void m5084a(long j) {
        this.f3392b = j;
    }

    public void m5085a(String str) {
        this.f3391a = str;
    }

    public long m5086b() {
        return this.f3392b;
    }

    public String m5087c() {
        return String.valueOf(this.f3392b);
    }

    public int m5088d() {
        return this.f3393c;
    }

    public String toString() {
        return "type:" + this.f3393c + " appid:" + this.f3391a + " msgId:" + this.f3392b;
    }
}
