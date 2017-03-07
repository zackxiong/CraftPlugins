package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.statistics.C0063b;
import cn.sharesdk.framework.statistics.p031b.C0055c;
import cn.sharesdk.framework.statistics.p031b.C0061f;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0071e;
import java.util.HashMap;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.d */
public class C0022d implements PlatformActionListener {
    private PlatformActionListener f1950a;

    C0022d() {
    }

    private String m2930a(Platform platform) {
        try {
            return m2931a(platform.getDb(), new String[]{"nickname", "icon", "gender", "snsUserUrl", "resume", "secretType", "secret", "birthday", "followerCount", "favouriteCount", "shareCount", "snsregat", "snsUserLevel", "educationJSONArrayStr", "workJSONArrayStr"});
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    private String m2931a(PlatformDb platformDb, String[] strArr) {
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        int i = 0;
        for (String str : strArr) {
            if (i > 0) {
                stringBuilder2.append('|');
                stringBuilder.append('|');
            }
            i++;
            String str2 = platformDb.get(str2);
            if (!TextUtils.isEmpty(str2)) {
                stringBuilder.append(str2);
                stringBuilder2.append(C0065a.m3210c(str2, "utf-8"));
            }
        }
        C0071e.m3268c("======UserData: " + stringBuilder.toString(), new Object[0]);
        return stringBuilder2.toString();
    }

    private void m2933a(Platform platform, int i, HashMap<String, Object> hashMap) {
        this.f1950a = new C0023e(this, this.f1950a, i, hashMap);
        platform.showUser(null);
    }

    private String m2934b(Platform platform) {
        try {
            return m2931a(platform.getDb(), new String[]{"gender", "birthday", "secretType", "educationJSONArrayStr", "workJSONArrayStr"});
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    private void m2935b(Platform platform, int i, HashMap<String, Object> hashMap) {
        ShareParams shareParams = hashMap != null ? (ShareParams) hashMap.remove("ShareParams") : null;
        try {
            HashMap hashMap2 = (HashMap) hashMap.clone();
        } catch (Throwable th) {
            C0071e.m3269c(th);
            HashMap<String, Object> hashMap3 = hashMap;
        }
        if (this.f1950a != null) {
            try {
                this.f1950a.onComplete(platform, i, hashMap);
            } catch (Throwable th2) {
                C0071e.m3266b(th2);
            }
        }
        if (shareParams != null) {
            C0055c c0061f = new C0061f();
            c0061f.f2079o = shareParams.getCustomFlag();
            c0061f.f2075b = "TencentWeibo".equals(platform.getName()) ? platform.getDb().get("name") : platform.getDb().getUserId();
            c0061f.f2074a = platform.getPlatformId();
            C0060a filterShareContent = platform.filterShareContent(shareParams, hashMap2);
            if (filterShareContent != null) {
                c0061f.f2076c = filterShareContent.f2065a;
                c0061f.f2077d = filterShareContent;
            }
            c0061f.f2078n = m2934b(platform);
            C0063b.m3186a(platform.getContext()).m3195a(c0061f);
        }
    }

    PlatformActionListener m2936a() {
        return this.f1950a;
    }

    void m2937a(Platform platform, int i, Object obj) {
        this.f1950a = new C0024f(this, this.f1950a, i, obj);
        platform.doAuthorize(null);
    }

    void m2938a(PlatformActionListener platformActionListener) {
        this.f1950a = platformActionListener;
    }

    public void onCancel(Platform platform, int i) {
        if (this.f1950a != null) {
            this.f1950a.onCancel(platform, i);
        }
    }

    public void onComplete(Platform platform, int i, HashMap<String, Object> hashMap) {
        if (!(platform instanceof CustomPlatform)) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    m2933a(platform, i, (HashMap) hashMap);
                case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    m2935b(platform, i, hashMap);
                default:
                    if (this.f1950a != null) {
                        this.f1950a.onComplete(platform, i, hashMap);
                    }
            }
        } else if (this.f1950a != null) {
            this.f1950a.onComplete(platform, i, hashMap);
        }
    }

    public void onError(Platform platform, int i, Throwable th) {
        if (this.f1950a != null) {
            this.f1950a.onError(platform, i, th);
        }
    }
}
