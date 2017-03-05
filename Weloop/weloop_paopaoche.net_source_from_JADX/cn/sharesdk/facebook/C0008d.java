package cn.sharesdk.facebook;

import android.os.Bundle;
import cn.sharesdk.framework.C0007h;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.C0002f;
import cn.sharesdk.framework.authorize.C0005b;
import cn.sharesdk.framework.authorize.C0014e;
import cn.sharesdk.framework.authorize.C0016g;
import cn.sharesdk.framework.network.C0034e;
import cn.sharesdk.framework.network.C0038i;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0068d;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.LocationClientOption;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

/* renamed from: cn.sharesdk.facebook.d */
public class C0008d extends C0007h {
    private static final String[] f1910b;
    private static C0008d f1911c;
    private String f1912d;
    private String f1913e;
    private long f1914f;
    private String f1915g;
    private C0038i f1916h;
    private String[] f1917i;

    static {
        f1910b = new String[]{"user_about_me", "user_birthday", "user_photos", "publish_stream", "read_stream", "manage_notifications", "publish_actions"};
    }

    private C0008d(Platform platform) {
        super(platform);
        this.f1916h = C0038i.m3018a();
    }

    public static C0008d m2882a(Platform platform) {
        if (f1911c == null) {
            f1911c = new C0008d(platform);
        }
        return f1911c;
    }

    public HashMap<String, Object> m2884a(int i, int i2, String str) {
        String str2 = "me";
        if (str == null) {
            str = str2;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        arrayList.add(new C0034e("limit", String.valueOf(i)));
        arrayList.add(new C0034e("offset", String.valueOf(i2 * i)));
        arrayList.add(new C0034e("fields", "id,name,first_name,middle_name,last_name,gender,locale,languages,link,username,age_range,third_party_id,installed,timezone,updated_time,verified,bio,birthday,cover,currency,devices,education,email,hometown,interested_in,location,political,payment_pricepoints,favorite_athletes,favorite_teams,picture,quotes,relationship_status,religion,security_settings,significant_other,video_upload_limits,website,work"));
        str2 = this.f1916h.m3023a("https://graph.facebook.com/" + str + "/friends", arrayList, "friends", m2881c());
        return (str2 == null || str2.length() <= 0) ? null : new C0068d().m3255a(str2);
    }

    public HashMap<String, Object> m2885a(String str, String str2, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        if (str2 == null) {
            return null;
        }
        C0034e c0034e;
        ArrayList arrayList = new ArrayList();
        if (hashMap != null && hashMap.size() > 0) {
            for (Entry entry : hashMap.entrySet()) {
                arrayList.add(new C0034e((String) entry.getKey(), String.valueOf(entry.getValue())));
            }
        }
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        if (hashMap2 == null || hashMap2.size() <= 0) {
            c0034e = null;
        } else {
            HashMap<String, Object> hashMap3 = null;
            for (Entry entry2 : hashMap2.entrySet()) {
                Object c0034e2 = new C0034e((String) entry2.getKey(), entry2.getValue());
            }
            c0034e = hashMap3;
        }
        String a = "GET".equals(str2.toUpperCase()) ? this.f1916h.m3015a(str, arrayList, null, null) : "POST".equals(str2.toUpperCase()) ? this.f1916h.m3014a(str, arrayList, c0034e, null, null) : null;
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public void m2886a(AuthorizeListener authorizeListener, boolean z) {
        if (z) {
            m2880b(authorizeListener);
        } else {
            m2879a(new C0009e(this, authorizeListener));
        }
    }

    public void m2887a(String str) {
        this.f1915g = str;
    }

    public void m2888a(String str, String str2) {
        this.f1913e = str;
        if (str2 != null && !str2.equals("0")) {
            this.f1914f = System.currentTimeMillis() + ((long) (Integer.parseInt(str2) * LocationClientOption.MIN_SCAN_SPAN));
        }
    }

    public void m2889a(String[] strArr) {
        this.f1917i = strArr;
    }

    public boolean m2890a() {
        return this.f1913e != null && (this.f1914f == 0 || System.currentTimeMillis() < this.f1914f);
    }

    public HashMap<String, Object> m2891b(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        arrayList.add(new C0034e(LightAppTableDefine.DB_TABLE_MESSAGE, str));
        String b = this.f1916h.m3027b("https://graph.facebook.com/me/feed", arrayList, "/me/feed", m2881c());
        if (b != null && b.length() > 0) {
            HashMap a = new C0068d().m3255a(b);
            if (a.containsKey("id")) {
                return m2893c(String.valueOf(a.get("id")));
            }
        }
        return null;
    }

    public HashMap<String, Object> m2892b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        arrayList.add(new C0034e(LightAppTableDefine.DB_TABLE_MESSAGE, str));
        String a = this.f1916h.m3020a("https://graph.facebook.com/me/photos", arrayList, new C0034e("source", str2), "/me/photos", m2881c());
        if (a != null && a.length() > 0) {
            HashMap a2 = new C0068d().m3255a(a);
            if (a2.containsKey("id")) {
                return m2893c(String.valueOf(a2.get("id")));
            }
        }
        return null;
    }

    public HashMap<String, Object> m2893c(String str) {
        if (str == null) {
            return null;
        }
        if (str.contains("_")) {
            String[] split = str.split("_");
            str = split[split.length - 1];
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        String a = this.f1916h.m3023a("https://graph.facebook.com/" + str, arrayList, "get_status_info", m2881c());
        return (a == null || a.length() <= 0) ? null : new C0068d().m3255a(a);
    }

    public HashMap<String, Object> m2894d(String str) {
        String str2 = "/me";
        if (str != null) {
            str2 = "/" + str;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(PushConstants.EXTRA_ACCESS_TOKEN, this.f1913e));
        arrayList.add(new C0034e("format", "json"));
        arrayList.add(new C0034e("fields", "id,name,first_name,middle_name,last_name,gender,locale,languages,link,age_range,third_party_id,installed,timezone,updated_time,verified,bio,birthday,cover,currency,devices,education,email,hometown,interested_in,location,political,payment_pricepoints,favorite_athletes,favorite_teams,picture,quotes,relationship_status,religion,security_settings,significant_other,video_upload_limits,website,work"));
        str2 = this.f1916h.m3023a("https://graph.facebook.com" + str2, arrayList, "get_user_info", m2881c());
        return (str2 == null || str2.length() <= 0) ? null : new C0068d().m3255a(str2);
    }

    public String getAuthorizeUrl() {
        int i = 0;
        String str = "https://m.facebook.com/dialog/oauth";
        Bundle bundle = new Bundle();
        bundle.putString("display", "touch");
        bundle.putString("redirect_uri", "fbconnect://success");
        bundle.putString(ProGuard.f5475c, "user_agent");
        String[] strArr = this.f1917i == null ? f1910b : this.f1917i;
        StringBuilder stringBuilder = new StringBuilder();
        int length = strArr.length;
        int i2 = 0;
        while (i < length) {
            String str2 = strArr[i];
            if (i2 > 0) {
                stringBuilder.append(',');
            }
            stringBuilder.append(str2);
            i2++;
            i++;
        }
        bundle.putString("scope", stringBuilder.toString());
        bundle.putString("client_id", this.f1915g);
        this.f1912d = str + "?" + C0064R.encodeUrl(bundle);
        ShareSDK.logApiEvent("/dialog/oauth", m2881c());
        return this.f1912d;
    }

    public C0005b getAuthorizeWebviewClient(C0016g c0016g) {
        return new C0006c(c0016g);
    }

    public String getRedirectUri() {
        return "fbconnect://success";
    }

    public C0002f getSSOProcessor(C0014e c0014e) {
        C0002f c0003b = new C0003b(c0014e);
        c0003b.m2867a(32525);
        c0003b.m2876a(this.f1915g, this.f1917i == null ? f1910b : this.f1917i);
        return c0003b;
    }
}
