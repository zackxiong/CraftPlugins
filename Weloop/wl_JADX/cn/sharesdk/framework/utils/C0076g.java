package cn.sharesdk.framework.utils;

import android.util.Base64;
import cn.sharesdk.framework.network.C0034e;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.utils.g */
public class C0076g {
    private C0075b f2117a;
    private C0078h f2118b;

    /* renamed from: cn.sharesdk.framework.utils.g.1 */
    static /* synthetic */ class C00731 {
        static final /* synthetic */ int[] f2108a;

        static {
            f2108a = new int[C0074a.values().length];
            try {
                f2108a[C0074a.HMAC_SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2108a[C0074a.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: cn.sharesdk.framework.utils.g.a */
    public enum C0074a {
        HMAC_SHA1,
        PLAINTEXT
    }

    /* renamed from: cn.sharesdk.framework.utils.g.b */
    public static class C0075b {
        public String f2112a;
        public String f2113b;
        public String f2114c;
        public String f2115d;
        public String f2116e;
    }

    public C0076g() {
        this.f2117a = new C0075b();
        this.f2118b = new C0078h("-._~", false);
    }

    private ArrayList<C0034e<String>> m3278a(long j, String str) {
        ArrayList<C0034e<String>> arrayList = new ArrayList();
        arrayList.add(new C0034e("oauth_consumer_key", this.f2117a.f2112a));
        arrayList.add(new C0034e("oauth_signature_method", str));
        arrayList.add(new C0034e("oauth_timestamp", String.valueOf(j / 1000)));
        arrayList.add(new C0034e("oauth_nonce", String.valueOf(j)));
        arrayList.add(new C0034e("oauth_version", "1.0"));
        String str2 = this.f2117a.f2114c;
        if (str2 != null && str2.length() > 0) {
            arrayList.add(new C0034e("oauth_token", str2));
        }
        return arrayList;
    }

    private ArrayList<C0034e<String>> m3279a(long j, ArrayList<C0034e<String>> arrayList, String str) {
        Iterator it;
        int i = 0;
        HashMap hashMap = new HashMap();
        if (arrayList != null) {
            it = arrayList.iterator();
            while (it.hasNext()) {
                C0034e c0034e = (C0034e) it.next();
                hashMap.put(m3283a(c0034e.f1977a), m3283a((String) c0034e.f1978b));
            }
        }
        ArrayList a = m3278a(j, str);
        if (a != null) {
            it = a.iterator();
            while (it.hasNext()) {
                c0034e = (C0034e) it.next();
                hashMap.put(m3283a(c0034e.f1977a), m3283a((String) c0034e.f1978b));
            }
        }
        String[] strArr = new String[hashMap.size()];
        int i2 = 0;
        for (Entry key : hashMap.entrySet()) {
            strArr[i2] = (String) key.getKey();
            i2++;
        }
        Arrays.sort(strArr);
        ArrayList<C0034e<String>> arrayList2 = new ArrayList();
        i2 = strArr.length;
        while (i < i2) {
            String str2 = strArr[i];
            arrayList2.add(new C0034e(str2, hashMap.get(str2)));
            i++;
        }
        return arrayList2;
    }

    private ArrayList<C0034e<String>> m3280a(String str, String str2, ArrayList<C0034e<String>> arrayList, C0074a c0074a) {
        Object trim;
        String str3 = null;
        long currentTimeMillis = System.currentTimeMillis();
        switch (C00731.f2108a[c0074a.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                str3 = "HMAC-SHA1";
                Key secretKeySpec = new SecretKeySpec((m3283a(this.f2117a.f2113b) + '&' + m3283a(this.f2117a.f2115d)).getBytes("utf-8"), "HMAC-SHA1");
                Mac instance = Mac.getInstance("HMAC-SHA1");
                instance.init(secretKeySpec);
                trim = new String(Base64.encode(instance.doFinal((str2 + '&' + m3283a(str.toLowerCase()) + '&' + m3283a(m3281b(m3279a(currentTimeMillis, (ArrayList) arrayList, str3)))).getBytes("utf-8")), 0)).trim();
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                str3 = "PLAINTEXT";
                trim = m3283a(this.f2117a.f2113b) + '&' + m3283a(this.f2117a.f2115d);
                break;
            default:
                trim = null;
                break;
        }
        ArrayList<C0034e<String>> a = m3278a(currentTimeMillis, str3);
        a.add(new C0034e("oauth_signature", trim));
        return a;
    }

    private String m3281b(ArrayList<C0034e<String>> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0034e c0034e = (C0034e) it.next();
            if (i > 0) {
                stringBuilder.append('&');
            }
            stringBuilder.append(c0034e.f1977a).append('=').append((String) c0034e.f1978b);
            i++;
        }
        return stringBuilder.toString();
    }

    public C0075b m3282a() {
        return this.f2117a;
    }

    public String m3283a(String str) {
        return str == null ? "" : this.f2118b.escape(str);
    }

    public ArrayList<C0034e<String>> m3284a(String str, ArrayList<C0034e<String>> arrayList) {
        return m3285a(str, (ArrayList) arrayList, C0074a.HMAC_SHA1);
    }

    public ArrayList<C0034e<String>> m3285a(String str, ArrayList<C0034e<String>> arrayList, C0074a c0074a) {
        return m3280a(str, "POST", arrayList, c0074a);
    }

    public ArrayList<C0034e<String>> m3286a(ArrayList<C0034e<String>> arrayList) {
        StringBuilder stringBuilder = new StringBuilder("OAuth ");
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0034e c0034e = (C0034e) it.next();
            if (i > 0) {
                stringBuilder.append(',');
            }
            stringBuilder.append(c0034e.f1977a).append("=\"").append(m3283a((String) c0034e.f1978b)).append("\"");
            i++;
        }
        ArrayList<C0034e<String>> arrayList2 = new ArrayList();
        arrayList2.add(new C0034e("Authorization", stringBuilder.toString()));
        arrayList2.add(new C0034e("Content-Type", "application/x-www-form-urlencoded"));
        return arrayList2;
    }

    public void m3287a(String str, String str2) {
        this.f2117a.f2114c = str;
        this.f2117a.f2115d = str2;
    }

    public void m3288a(String str, String str2, String str3) {
        this.f2117a.f2112a = str;
        this.f2117a.f2113b = str2;
        this.f2117a.f2116e = str3;
    }

    public ArrayList<C0034e<String>> m3289b(String str, ArrayList<C0034e<String>> arrayList) {
        return m3290b(str, arrayList, C0074a.HMAC_SHA1);
    }

    public ArrayList<C0034e<String>> m3290b(String str, ArrayList<C0034e<String>> arrayList, C0074a c0074a) {
        return m3280a(str, "GET", arrayList, c0074a);
    }

    public ArrayList<C0034e<String>> m3291c(String str, ArrayList<C0034e<String>> arrayList, C0074a c0074a) {
        return m3280a(str, "PUT", arrayList, c0074a);
    }
}
