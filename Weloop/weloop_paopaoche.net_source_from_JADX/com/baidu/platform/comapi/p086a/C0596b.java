package com.baidu.platform.comapi.p086a;

/* renamed from: com.baidu.platform.comapi.a.b */
public class C0596b {
    private int f4672a;
    private int f4673b;

    public C0596b(int i, int i2) {
        this.f4672a = i;
        this.f4673b = i2;
    }

    public int m6424a() {
        return this.f4672a;
    }

    public void m6425a(int i) {
        this.f4672a = i;
    }

    public int m6426b() {
        return this.f4673b;
    }

    public void m6427b(int i) {
        this.f4673b = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        boolean z = this.f4672a == ((C0596b) obj).f4672a && this.f4673b == ((C0596b) obj).f4673b;
        return z;
    }

    public String toString() {
        return "GeoPoint: Latitude: " + this.f4672a + ", Longitude: " + this.f4673b;
    }
}
