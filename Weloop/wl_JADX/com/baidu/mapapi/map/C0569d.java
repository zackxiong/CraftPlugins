package com.baidu.mapapi.map;

import android.graphics.Point;

/* renamed from: com.baidu.mapapi.map.d */
class C0569d {
    public final double f4490a;
    public final double f4491b;
    public final double f4492c;
    public final double f4493d;
    public final double f4494e;
    public final double f4495f;

    public C0569d(double d, double d2, double d3, double d4) {
        this.f4490a = d;
        this.f4491b = d3;
        this.f4492c = d2;
        this.f4493d = d4;
        this.f4494e = (d + d2) / 2.0d;
        this.f4495f = (d3 + d4) / 2.0d;
    }

    public boolean m6322a(double d, double d2) {
        return this.f4490a <= d && d <= this.f4492c && this.f4491b <= d2 && d2 <= this.f4493d;
    }

    public boolean m6323a(double d, double d2, double d3, double d4) {
        return d < this.f4492c && this.f4490a < d2 && d3 < this.f4493d && this.f4491b < d4;
    }

    public boolean m6324a(Point point) {
        return m6322a((double) point.x, (double) point.y);
    }

    public boolean m6325a(C0569d c0569d) {
        return m6323a(c0569d.f4490a, c0569d.f4492c, c0569d.f4491b, c0569d.f4493d);
    }

    public boolean m6326b(C0569d c0569d) {
        return c0569d.f4490a >= this.f4490a && c0569d.f4492c <= this.f4492c && c0569d.f4491b >= this.f4491b && c0569d.f4493d <= this.f4493d;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("minX: " + this.f4490a);
        stringBuilder.append(" minY: " + this.f4491b);
        stringBuilder.append(" maxX: " + this.f4492c);
        stringBuilder.append(" maxY: " + this.f4493d);
        stringBuilder.append(" midX: " + this.f4494e);
        stringBuilder.append(" midY: " + this.f4495f);
        return stringBuilder.toString();
    }
}
