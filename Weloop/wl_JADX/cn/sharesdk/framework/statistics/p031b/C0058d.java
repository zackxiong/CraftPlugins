package cn.sharesdk.framework.statistics.p031b;

/* renamed from: cn.sharesdk.framework.statistics.b.d */
public class C0058d extends C0055c {
    private static int f2057d;
    private static long f2058n;
    public String f2059a;
    public int f2060b;
    public String f2061c;

    public C0058d() {
        this.f2061c = "";
    }

    protected String m3154a() {
        return "[EVT]";
    }

    protected void m3155a(long j) {
        f2058n = j;
    }

    protected int m3156b() {
        return 5000;
    }

    protected int m3157c() {
        return 30;
    }

    protected long m3158d() {
        return (long) f2057d;
    }

    protected long m3159e() {
        return f2058n;
    }

    protected void m3160f() {
        f2057d++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|').append(this.f2059a);
        stringBuilder.append('|').append(this.f2060b);
        stringBuilder.append('|').append(this.f2061c);
        return stringBuilder.toString();
    }
}
