package cn.sharesdk.framework.statistics.p031b;

import android.content.Context;

/* renamed from: cn.sharesdk.framework.statistics.b.c */
public abstract class C0055c {
    public long f2038e;
    public String f2039f;
    public String f2040g;
    public String f2041h;
    public int f2042i;
    public String f2043j;
    public int f2044k;
    public String f2045l;
    public String f2046m;

    protected abstract String m3131a();

    protected abstract void m3132a(long j);

    public boolean m3133a(Context context) {
        int b = m3134b();
        int c = m3136c();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - m3138e() < ((long) b)) {
            return m3137d() < ((long) c);
        } else {
            m3132a(currentTimeMillis);
            return true;
        }
    }

    protected abstract int m3134b();

    public void m3135b(Context context) {
        m3139f();
    }

    protected abstract int m3136c();

    protected abstract long m3137d();

    protected abstract long m3138e();

    protected abstract void m3139f();

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(m3131a()).append(':');
        stringBuilder.append(this.f2038e).append('|');
        stringBuilder.append(this.f2039f).append('|');
        stringBuilder.append(this.f2040g).append('|');
        stringBuilder.append(this.f2041h).append('|');
        stringBuilder.append(this.f2042i).append('|');
        stringBuilder.append(this.f2043j).append('|');
        stringBuilder.append(this.f2044k).append('|');
        stringBuilder.append(this.f2045l);
        return stringBuilder.toString();
    }
}
