package com.baidu.platform.comapi.p086a;

import java.io.Serializable;

/* renamed from: com.baidu.platform.comapi.a.c */
public class C0597c implements Serializable {
    public int f4674a;
    public int f4675b;

    public C0597c(int i, int i2) {
        this.f4674a = i;
        this.f4675b = i2;
    }

    public int m6428a() {
        return this.f4674a;
    }

    public void m6429a(int i) {
        this.f4674a = i;
    }

    public int m6430b() {
        return this.f4675b;
    }

    public void m6431b(int i) {
        this.f4675b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        C0597c c0597c = (C0597c) obj;
        return this.f4674a != c0597c.f4674a ? false : this.f4675b == c0597c.f4675b;
    }

    public int hashCode() {
        return ((this.f4674a + 31) * 31) + this.f4675b;
    }

    public String toString() {
        return "Point [x=" + this.f4674a + ", y=" + this.f4675b + "]";
    }
}
