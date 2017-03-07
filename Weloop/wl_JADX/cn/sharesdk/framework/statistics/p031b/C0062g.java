package cn.sharesdk.framework.statistics.p031b;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.statistics.p030a.C0051c;

/* renamed from: cn.sharesdk.framework.statistics.b.g */
public class C0062g extends C0055c {
    private static int f2080a;
    private static long f2081b;

    protected String m3177a() {
        return "[RUN]";
    }

    protected void m3178a(long j) {
        f2081b = j;
    }

    public boolean m3179a(Context context) {
        C0051c a = C0051c.m3086a(context);
        f2080a = a.m3095c("insertRunEventCount");
        f2081b = a.m3092b("lastInsertRunEventTime");
        return super.m3133a(context);
    }

    protected int m3180b() {
        return 5000;
    }

    public void m3181b(Context context) {
        super.m3135b(context);
        C0051c a = C0051c.m3086a(context);
        a.m3090a("lastInsertRunEventTime", Long.valueOf(f2081b));
        a.m3089a("insertRunEventCount", f2080a);
    }

    protected int m3182c() {
        return 5;
    }

    protected long m3183d() {
        return (long) f2080a;
    }

    protected long m3184e() {
        return f2081b;
    }

    protected void m3185f() {
        f2080a++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.m)) {
            stringBuilder.append(this.m);
        }
        return stringBuilder.toString();
    }
}
