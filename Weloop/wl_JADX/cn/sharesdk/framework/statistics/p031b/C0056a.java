package cn.sharesdk.framework.statistics.p031b;

/* renamed from: cn.sharesdk.framework.statistics.b.a */
public class C0056a extends C0055c {
    private static int f2047c;
    private static long f2048d;
    public int f2049a;
    public String f2050b;

    protected String m3140a() {
        return "[API]";
    }

    protected void m3141a(long j) {
        f2048d = j;
    }

    protected int m3142b() {
        return 5000;
    }

    protected int m3143c() {
        return 50;
    }

    protected long m3144d() {
        return (long) f2047c;
    }

    protected long m3145e() {
        return f2048d;
    }

    protected void m3146f() {
        f2047c++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|').append(this.f2049a);
        stringBuilder.append('|').append(this.f2050b);
        return stringBuilder.toString();
    }
}
