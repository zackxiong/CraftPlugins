package com.baidu.location;

import android.text.TextUtils;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.C */
public class C0448C implements BDGeofence {
    public static final int f3784int = 1;
    protected int f3785a;
    private final String f3786b;
    private final double f3787c;
    private final double f3788d;
    private final int f3789e;
    private float f3790f;
    private final long f3791g;
    private final int f3792h;
    private final String f3793i;
    private boolean f3794j;
    private boolean f3795k;
    private boolean f3796l;
    private long f3797m;

    public C0448C(int i, String str, double d, double d2, int i2, long j, String str2) {
        C0448C.m5506b(i2);
        C0448C.m5505a(str);
        C0448C.m5504a(d, d2);
        C0448C.m5508b(str2);
        C0448C.m5507b(j);
        this.f3792h = i;
        this.f3786b = str;
        this.f3787c = d;
        this.f3788d = d2;
        this.f3789e = i2;
        this.f3791g = j;
        this.f3793i = str2;
    }

    public C0448C(String str, double d, double d2, int i, long j, String str2) {
        this(f3784int, str, d2, d, i, j, str2);
    }

    private static void m5504a(double d, double d2) {
    }

    private static void m5505a(String str) {
        if (TextUtils.isEmpty(str) || str.length() > 100) {
            throw new IllegalArgumentException("Geofence name is null or too long: " + str);
        }
    }

    private static void m5506b(int i) {
        if (i != f3784int) {
            throw new IllegalArgumentException("invalid radius type: " + i);
        }
    }

    private static void m5507b(long j) {
        if (((double) j) / 1000.0d > 2592000.0d) {
            throw new IllegalArgumentException("invalid druationMillis :" + j);
        }
    }

    private static void m5508b(String str) {
        if (!str.equals(BDGeofence.COORD_TYPE_BD09) && !str.equals(BDGeofence.COORD_TYPE_BD09LL) && !str.equals(BDGeofence.COORD_TYPE_GCJ)) {
            throw new IllegalArgumentException("invalid coord type: " + str);
        }
    }

    private static String m5509c(int i) {
        switch (i) {
            case f3784int /*1*/:
                return "Circle";
            case ProGuard.styleable.View_paddingStart /*2*/:
                return "Administrative";
            default:
                return null;
        }
    }

    public double m5510a() {
        return this.f3788d;
    }

    public void m5511a(float f) {
        this.f3790f = f;
    }

    protected void m5512a(int i) {
        this.f3785a = i;
    }

    public void m5513a(long j) {
        this.f3797m = j;
    }

    public void m5514a(boolean z) {
        this.f3796l = z;
    }

    protected int m5515b() {
        return this.f3785a;
    }

    public boolean m5516byte() {
        return this.f3794j;
    }

    public double m5517case() {
        return this.f3787c;
    }

    public int m5518char() {
        return this.f3795k ? f3784int : this.f3796l ? 2 : 3;
    }

    public float m5519do() {
        return this.f3790f;
    }

    public void m5520do(boolean z) {
        this.f3794j = z;
    }

    public long m5521else() {
        return this.f3797m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof C0448C)) {
            return false;
        }
        C0448C c0448c = (C0448C) obj;
        return this.f3789e != c0448c.f3789e ? false : this.f3787c != c0448c.f3787c ? false : this.f3788d != c0448c.f3788d ? false : this.f3792h != c0448c.f3792h ? false : this.f3793i == c0448c.f3793i;
    }

    public boolean m5522for() {
        return this.f3795k;
    }

    public String getGeofenceId() {
        return this.f3786b;
    }

    public long m5523goto() {
        return this.f3791g;
    }

    public void m5524if(boolean z) {
        this.f3795k = z;
    }

    public boolean m5525if() {
        return this.f3796l;
    }

    public String m5526int() {
        return this.f3793i;
    }

    public int m5527new() {
        return this.f3789e;
    }

    public String toString() {
        return String.format("Geofence[Type:%s, Name:%s, latitude:%.6f, longitude:%.6f, radius:%.0f, expriation:%d, coordType:%s, fenceType:%d]", new Object[]{C0448C.m5509c(this.f3792h), this.f3786b, Double.valueOf(this.f3787c), Double.valueOf(this.f3788d), Float.valueOf(this.f3790f), Long.valueOf(this.f3791g), this.f3793i, Integer.valueOf(m5518char())});
    }
}
