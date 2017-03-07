package cn.sharesdk.twitter;

import cn.sharesdk.framework.C0007h;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.C0005b;
import cn.sharesdk.framework.authorize.C0016g;
import cn.sharesdk.framework.network.C0034e;
import cn.sharesdk.framework.network.C0037h;
import cn.sharesdk.framework.network.C0038i;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import cn.sharesdk.framework.utils.C0076g;
import com.baidu.android.pushservice.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

/* renamed from: cn.sharesdk.twitter.e */
public class C0094e extends C0007h {
    private static C0094e f2145b;
    private C0076g f2146c;
    private C0038i f2147d;

    private C0094e(Platform platform) {
        super(platform);
        this.f2146c = new C0076g();
        this.f2147d = C0038i.m3018a();
    }

    public static C0094e m3330a(Platform platform) {
        if (f2145b == null) {
            f2145b = new C0094e(platform);
        }
        return f2145b;
    }

    public String m3331a(String str) {
        try {
            String str2 = "https://api.twitter.com/oauth/access_token";
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0034e("oauth_verifier", str));
            return this.f2147d.m3021a(str2, arrayList, null, this.f2146c.m3286a(this.f2146c.m3284a(str2, arrayList)), "/oauth/access_token", m2881c());
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    public HashMap<String, Object> m3332a(int i, int i2, String str) {
        String str2 = "https://api.twitter.com/1.1/friends/list.json";
        ArrayList arrayList = new ArrayList();
        long j = 0;
        try {
            j = Long.parseLong(str);
        } catch (Throwable th) {
            str = null;
        }
        arrayList.add(new C0034e(PushConstants.EXTRA_USER_ID, str == null ? this.a.getDb().getUserId() : String.valueOf(j)));
        String a = this.f2147d.m3024a(str2, arrayList, this.f2146c.m3286a(this.f2146c.m3289b(str2, arrayList)), null, "/1.1/friends/list.json", m2881c());
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public HashMap<String, Object> m3333a(String str, String str2, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        if (str2 == null) {
            return null;
        }
        C0034e c0034e;
        String a;
        ArrayList arrayList = new ArrayList();
        if (hashMap != null && hashMap.size() > 0) {
            for (Entry entry : hashMap.entrySet()) {
                arrayList.add(new C0034e((String) entry.getKey(), String.valueOf(entry.getValue())));
            }
        }
        if (hashMap2 == null || hashMap2.size() <= 0) {
            c0034e = null;
        } else {
            HashMap<String, Object> hashMap3 = null;
            for (Entry entry2 : hashMap2.entrySet()) {
                Object c0034e2 = new C0034e((String) entry2.getKey(), entry2.getValue());
            }
            c0034e = hashMap3;
        }
        if ("GET".equals(str2.toUpperCase())) {
            a = new C0037h().m3015a(str, arrayList, this.f2146c.m3286a(this.f2146c.m3289b(str, arrayList)), null);
        } else if ("POST".equals(str2.toUpperCase())) {
            ArrayList a2;
            if (hashMap2 == null || hashMap2.size() <= 0) {
                a2 = this.f2146c.m3286a(this.f2146c.m3284a(str, arrayList));
            } else {
                a2 = this.f2146c.m3286a(this.f2146c.m3284a(str, new ArrayList()));
                a2.remove(1);
            }
            a = new C0037h().m3014a(str, arrayList, c0034e, a2, null);
        } else {
            a = null;
        }
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public void m3334a(AuthorizeListener authorizeListener) {
        m2880b(authorizeListener);
    }

    public void m3335a(String str, String str2) {
        this.f2146c.m3287a(str, str2);
    }

    public void m3336a(String str, String str2, String str3) {
        this.f2146c.m3288a(str, str2, str3);
    }

    public HashMap<String, Object> m3337b(String str) {
        String str2 = "https://api.twitter.com/1.1/users/show.json";
        ArrayList arrayList = new ArrayList();
        long j = 0;
        try {
            j = Long.parseLong(str);
        } catch (Throwable th) {
            str = null;
        }
        arrayList.add(new C0034e(PushConstants.EXTRA_USER_ID, str == null ? this.a.getDb().getUserId() : String.valueOf(j)));
        String a = this.f2147d.m3024a(str2, arrayList, this.f2146c.m3286a(this.f2146c.m3289b(str2, arrayList)), null, "/1.1/users/show.json", m2881c());
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public HashMap<String, Object> m3338b(String str, String str2) {
        String str3 = "https://api.twitter.com/1.1/statuses/update_with_media.json";
        ArrayList arrayList = new ArrayList();
        ArrayList a = this.f2146c.m3286a(this.f2146c.m3284a(str3, arrayList));
        a.remove(1);
        arrayList.add(new C0034e("status", str));
        String a2 = this.f2147d.m3021a(str3, arrayList, new C0034e("media[]", str2), a, "/1.1/statuses/update_with_media.json", m2881c());
        return (a2 == null || a2.length() <= 0) ? null : new C0068d().m3255a(a2);
    }

    public HashMap<String, Object> m3339c(String str) {
        String str2 = "https://api.twitter.com/1.1/statuses/update.json";
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e("status", str));
        String a = this.f2147d.m3021a(str2, arrayList, null, this.f2146c.m3286a(this.f2146c.m3284a(str2, arrayList)), "/1.1/statuses/update.json", m2881c());
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public String getAuthorizeUrl() {
        try {
            String str = "https://api.twitter.com/oauth/request_token";
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0034e("oauth_callback", getRedirectUri()));
            m3335a(null, null);
            String a = this.f2147d.m3021a(str, arrayList, null, this.f2146c.m3286a(this.f2146c.m3284a(str, arrayList)), "/oauth/request_token", m2881c());
            if (a == null) {
                return null;
            }
            String[] split = a.split("&");
            HashMap hashMap = new HashMap();
            for (String str2 : split) {
                if (str2 != null) {
                    String[] split2 = str2.split("=");
                    if (split2.length >= 2) {
                        hashMap.put(split2[0], split2[1]);
                    }
                }
            }
            if (hashMap.containsKey("oauth_token")) {
                a = (String) hashMap.get("oauth_token");
                m3335a(a, (String) hashMap.get("oauth_token_secret"));
                ShareSDK.logApiEvent("/oauth/authorize", m2881c());
                return "https://api.twitter.com/oauth/authorize?oauth_token=" + a;
            }
            return null;
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
    }

    public C0005b getAuthorizeWebviewClient(C0016g c0016g) {
        return new C0091b(c0016g);
    }

    public String getRedirectUri() {
        return this.f2146c.m3282a().f2116e;
    }
}
