package cn.sharesdk.framework.statistics.p031b;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.statistics.p030a.C0051c;

/* renamed from: cn.sharesdk.framework.statistics.b.e */
public class C0059e extends C0055c {
    private static int f2062b;
    private static long f2063c;
    public long f2064a;

    protected String m3161a() {
        return "[EXT]";
    }

    protected void m3162a(long j) {
        f2063c = j;
    }

    public boolean m3163a(Context context) {
        C0051c a = C0051c.m3086a(context);
        f2062b = a.m3095c("insertExitEventCount");
        f2063c = a.m3092b("lastInsertExitEventTime");
        return super.m3133a(context);
    }

    protected int m3164b() {
        return 5000;
    }

    public void m3165b(Context context) {
        super.m3135b(context);
        C0051c a = C0051c.m3086a(context);
        a.m3090a("lastInsertExitEventTime", Long.valueOf(f2063c));
        a.m3089a("insertExitEventCount", f2062b);
    }

    protected int m3166c() {
        return 5;
    }

    protected long m3167d() {
        return (long) f2062b;
    }

    protected long m3168e() {
        return f2063c;
    }

    protected void m3169f() {
        f2062b++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.m)) {
            stringBuilder.append(this.m);
        }
        stringBuilder.append('|').append(this.f2064a / 1000);
        return stringBuilder.toString();
    }
}
