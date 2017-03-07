package cn.sharesdk.framework.statistics.p031b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: cn.sharesdk.framework.statistics.b.f */
public class C0061f extends C0055c {
    private static int f2072p;
    private static long f2073q;
    public int f2074a;
    public String f2075b;
    public String f2076c;
    public C0060a f2077d;
    public String f2078n;
    public String[] f2079o;

    /* renamed from: cn.sharesdk.framework.statistics.b.f.a */
    public static class C0060a {
        public String f2065a;
        public String f2066b;
        public ArrayList<String> f2067c;
        public ArrayList<String> f2068d;
        public ArrayList<String> f2069e;
        public ArrayList<Bitmap> f2070f;
        public HashMap<String, Object> f2071g;

        public C0060a() {
            this.f2065a = "";
            this.f2067c = new ArrayList();
            this.f2068d = new ArrayList();
            this.f2069e = new ArrayList();
            this.f2070f = new ArrayList();
        }

        public String toString() {
            HashMap hashMap = new HashMap();
            hashMap.put("text", this.f2066b);
            hashMap.put("url", this.f2067c);
            if (this.f2068d != null && this.f2068d.size() > 0) {
                hashMap.put("imgs", this.f2068d);
            }
            if (this.f2071g != null) {
                hashMap.put("attch", new C0068d().m3254a(this.f2071g));
            }
            return new C0068d().m3254a(hashMap);
        }
    }

    public C0061f() {
        this.f2077d = new C0060a();
    }

    protected String m3170a() {
        return "[SHR]";
    }

    protected void m3171a(long j) {
        f2073q = j;
    }

    protected int m3172b() {
        return 5000;
    }

    protected int m3173c() {
        return 30;
    }

    protected long m3174d() {
        return (long) f2072p;
    }

    protected long m3175e() {
        return f2073q;
    }

    protected void m3176f() {
        f2072p++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append('|').append(this.f2074a);
        stringBuilder.append('|').append(this.f2075b);
        stringBuilder.append('|').append(TextUtils.isEmpty(this.f2076c) ? "" : this.f2076c);
        String str = "";
        if (this.f2079o != null && this.f2079o.length > 0) {
            str = "[\"" + TextUtils.join("\",\"", this.f2079o) + "\"]";
        }
        stringBuilder.append('|').append(str);
        stringBuilder.append('|');
        if (this.f2077d != null) {
            try {
                str = Base64.encodeToString(C0065a.m3205a(this.f.substring(0, 16), this.f2077d.toString()), 0);
                if (str.contains("\n")) {
                    str = str.replace("\n", "");
                }
                stringBuilder.append(str);
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.m)) {
            stringBuilder.append(this.m);
        }
        stringBuilder.append('|');
        if (!TextUtils.isEmpty(this.f2078n)) {
            try {
                str = Base64.encodeToString(C0065a.m3205a(this.f.substring(0, 16), this.f2078n), 0);
                if (str.contains("\n")) {
                    str = str.replace("\n", "");
                }
                stringBuilder.append(str);
            } catch (Throwable th2) {
                C0071e.m3269c(th2);
            }
        }
        return stringBuilder.toString();
    }
}
