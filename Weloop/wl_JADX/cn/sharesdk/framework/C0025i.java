package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import java.lang.reflect.Field;
import java.util.HashMap;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.i */
public class C0025i {
    private Platform f1959a;
    private Context f1960b;
    private PlatformDb f1961c;
    private C0022d f1962d;
    private int f1963e;
    private int f1964f;
    private boolean f1965g;
    private boolean f1966h;
    private boolean f1967i;

    public C0025i(Platform platform, Context context) {
        this.f1966h = true;
        this.f1959a = platform;
        this.f1960b = context;
        String name = platform.getName();
        this.f1961c = new PlatformDb(context, name, platform.getVersion());
        m2951a(name);
        this.f1962d = new C0022d();
    }

    private boolean m2941j() {
        boolean z = false;
        if (!ShareSDK.m2904a()) {
            return true;
        }
        String a;
        if (ShareSDK.m2907b()) {
            a = m2944a(this.f1959a.getPlatformId(), "covert_url", null);
            if (a != null) {
                a.trim();
            }
            if (!"false".equals(a)) {
                z = true;
            }
            this.f1966h = z;
            this.f1959a.setNetworkDevinfo();
            return true;
        }
        try {
            HashMap hashMap = new HashMap();
            if (!ShareSDK.m2905a(hashMap)) {
                return false;
            }
            if (ShareSDK.m2908b(hashMap)) {
                a = m2944a(this.f1959a.getPlatformId(), "covert_url", null);
                if (a != null) {
                    a.trim();
                }
                this.f1966h = !"false".equals(a);
                this.f1959a.setNetworkDevinfo();
                return true;
            }
            String a2 = new C0068d().m3254a(hashMap);
            if (ShareSDK.isDebug()) {
                System.err.println("Failed to parse network dev-info: " + a2);
            }
            return false;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return false;
        }
    }

    private String m2942k() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            if ("TencentWeibo".equals(this.f1959a.getName())) {
                C0071e.m3268c("user id %s ==>>", m2966g().getUserName());
                stringBuilder.append(C0065a.m3210c(m2966g().getUserName(), "utf-8"));
            } else {
                stringBuilder.append(C0065a.m3210c(m2966g().getUserId(), "utf-8"));
            }
            stringBuilder.append("|").append(C0065a.m3210c(m2966g().get("secretType"), "utf-8"));
            stringBuilder.append("|").append(C0065a.m3210c(m2966g().get("gender"), "utf-8"));
            stringBuilder.append("|").append(C0065a.m3210c(m2966g().get("birthday"), "utf-8"));
            stringBuilder.append("|").append(C0065a.m3210c(m2966g().get("educationJSONArrayStr"), "utf-8"));
            stringBuilder.append("|").append(C0065a.m3210c(m2966g().get("workJSONArrayStr"), "utf-8"));
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
        return stringBuilder.toString();
    }

    public int m2943a() {
        return this.f1963e;
    }

    public String m2944a(int i, String str, String str2) {
        Object a = ShareSDK.m2898a(i, str);
        return (TextUtils.isEmpty(a) || "null".equals(a)) ? this.f1959a.getDevinfo(this.f1959a.getName(), str2) : a;
    }

    public String m2945a(Bitmap bitmap) {
        return ShareSDK.m2899a(bitmap);
    }

    public String m2946a(String str, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.f1966h) {
            C0071e.m3268c("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return str;
        } else if (TextUtils.isEmpty(str)) {
            C0071e.m3268c("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return str;
        } else {
            str = ShareSDK.m2901a(str, z, this.f1959a.getPlatformId(), m2942k());
            C0071e.m3268c("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return str;
        }
    }

    public void m2947a(int i, int i2, String str) {
        m2957b(2, new Object[]{Integer.valueOf(i), Integer.valueOf(i2), str});
    }

    public void m2948a(int i, Object obj) {
        this.f1962d.m2937a(this.f1959a, i, obj);
    }

    public void m2949a(ShareParams shareParams) {
        if (shareParams != null) {
            m2957b(9, shareParams);
        } else if (this.f1962d != null) {
            this.f1962d.onError(this.f1959a, 9, new NullPointerException());
        }
    }

    public void m2950a(PlatformActionListener platformActionListener) {
        this.f1962d.m2938a(platformActionListener);
    }

    public void m2951a(String str) {
        try {
            this.f1963e = Integer.parseInt(ShareSDK.m2906b(str, "Id").trim());
        } catch (Throwable th) {
            if (!(this.f1959a instanceof CustomPlatform) && ShareSDK.isDebug()) {
                System.err.println(this.f1959a.getName() + " failed to parse Id, this will cause method getId() always returens 0");
            }
        }
        try {
            this.f1964f = Integer.parseInt(ShareSDK.m2906b(str, "SortId").trim());
        } catch (Throwable th2) {
            if (!(this.f1959a instanceof CustomPlatform) && ShareSDK.isDebug()) {
                System.err.println(this.f1959a.getName() + " failed to parse SortId, this won't cause any problem, don't worry");
            }
        }
        String b = ShareSDK.m2906b(str, "Enable");
        if (b == null) {
            this.f1967i = true;
            if (!(this.f1959a instanceof CustomPlatform) && ShareSDK.isDebug()) {
                System.err.println(this.f1959a.getName() + " failed to parse Enable, this will cause platform always be enable");
            }
        } else {
            this.f1967i = "true".equals(b.trim());
        }
        this.f1959a.initDevInfo(str);
    }

    public void m2952a(String str, int i, int i2) {
        m2957b(7, new Object[]{Integer.valueOf(i), Integer.valueOf(i2), str});
    }

    public void m2953a(String str, String str2, short s, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        m2957b(655360 | s, new Object[]{str, str2, hashMap, hashMap2});
    }

    public void m2954a(boolean z) {
        this.f1965g = z;
    }

    public void m2955a(String[] strArr) {
        new C0026j(this, strArr).start();
    }

    public int m2956b() {
        return this.f1964f;
    }

    protected void m2957b(int i, Object obj) {
        new C0027k(this, i, obj).start();
    }

    public void m2958b(String str) {
        m2957b(6, str);
    }

    public PlatformActionListener m2959c() {
        return this.f1962d.m2936a();
    }

    protected void m2960c(int i, Object obj) {
        Object[] objArr;
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                if (this.f1962d != null) {
                    this.f1962d.onComplete(this.f1959a, 1, null);
                }
            case ProGuard.styleable.View_paddingStart /*2*/:
                objArr = (Object[]) obj;
                this.f1959a.getFriendList(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), (String) objArr[2]);
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                this.f1959a.follow((String) obj);
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                objArr = (Object[]) obj;
                this.f1959a.timeline(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), (String) objArr[2]);
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                this.f1959a.userInfor(obj == null ? null : (String) obj);
            case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                ShareParams shareParams = (ShareParams) obj;
                HashMap toMap = shareParams.toMap();
                for (Field field : shareParams.getClass().getFields()) {
                    if (toMap.get(field.getName()) == null) {
                        Object obj2;
                        field.setAccessible(true);
                        try {
                            obj2 = field.get(shareParams);
                        } catch (Throwable th) {
                            C0071e.m3269c(th);
                            obj2 = null;
                        }
                        if (obj2 != null) {
                            toMap.put(field.getName(), obj2);
                        }
                    }
                }
                this.f1959a.doShare(shareParams);
            default:
                objArr = (Object[]) obj;
                this.f1959a.doCustomerProtocol(String.valueOf(objArr[0]), String.valueOf(objArr[1]), i, (HashMap) objArr[2], (HashMap) objArr[3]);
        }
    }

    public void m2961c(String str) {
        m2957b(8, str);
    }

    public String m2962d(String str) {
        return ShareSDK.m2900a(str);
    }

    public boolean m2963d() {
        return this.f1961c.isValid();
    }

    public boolean m2964e() {
        return this.f1965g;
    }

    public boolean m2965f() {
        return this.f1967i;
    }

    public PlatformDb m2966g() {
        return this.f1961c;
    }

    public void m2967h() {
        this.f1961c.removeAccount();
    }

    protected PlatformActionListener m2968i() {
        return this.f1962d;
    }
}
