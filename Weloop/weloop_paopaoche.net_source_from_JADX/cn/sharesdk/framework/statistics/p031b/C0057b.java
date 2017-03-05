package cn.sharesdk.framework.statistics.p031b;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0071e;

/* renamed from: cn.sharesdk.framework.statistics.b.b */
public class C0057b extends C0055c {
    private static int f2051n;
    private static long f2052o;
    public int f2053a;
    public String f2054b;
    public String f2055c;
    public String f2056d;

    protected String m3147a() {
        return "[AUT]";
    }

    protected void m3148a(long j) {
        f2052o = j;
    }

    protected int m3149b() {
        return 5000;
    }

    protected int m3150c() {
        return 5;
    }

    protected long m3151d() {
        return (long) f2051n;
    }

    protected long m3152e() {
        return f2052o;
    }

    protected void m3153f() {
        f2051n++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|').append(this.f2053a);
        stringBuilder.append('|').append(this.f2054b);
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.f2056d)) {
            try {
                String encodeToString = Base64.encodeToString(C0065a.m3205a(this.f.substring(0, 16), this.f2056d), 0);
                if (encodeToString.contains("\n")) {
                    encodeToString = encodeToString.replace("\n", "");
                }
                stringBuilder.append(encodeToString);
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.m)) {
            stringBuilder.append(this.m);
        }
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.f2055c)) {
            stringBuilder.append(this.f2055c);
        }
        return stringBuilder.toString();
    }
}
