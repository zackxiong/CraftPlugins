package cn.sharesdk.framework;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Handler;
import cn.sharesdk.framework.statistics.C0054a;
import cn.sharesdk.framework.statistics.C0063b;
import cn.sharesdk.framework.statistics.p031b.C0055c;
import cn.sharesdk.framework.statistics.p031b.C0056a;
import cn.sharesdk.framework.statistics.p031b.C0058d;
import cn.sharesdk.framework.utils.C0071e;
import dalvik.system.DexFile;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.n */
public class C0029n {
    private static boolean f1974a;

    static {
        f1974a = true;
    }

    private ArrayList<Platform> m2976a(PackageInfo packageInfo, Context context) {
        if (f1974a) {
            return m2978d(context);
        }
        ArrayList<Platform> arrayList = new ArrayList();
        try {
            DexFile dexFile = new DexFile(packageInfo.applicationInfo.sourceDir);
            Enumeration entries = dexFile.entries();
            dexFile.close();
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
        while (entries != null && entries.hasMoreElements()) {
            String str = (String) entries.nextElement();
            if (str.startsWith("cn.sharesdk") && !str.contains("$")) {
                try {
                    Class cls = Class.forName(str);
                    if (!(cls == null || !Platform.class.isAssignableFrom(cls) || CustomPlatform.class.isAssignableFrom(cls))) {
                        Constructor constructor = cls.getConstructor(new Class[]{Context.class});
                        constructor.setAccessible(true);
                        arrayList.add((Platform) constructor.newInstance(new Object[]{context}));
                    }
                } catch (Throwable th2) {
                    C0071e.m3269c(th2);
                }
            }
        }
        return arrayList;
    }

    private PackageInfo m2977c(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(8192)) {
                if (packageName.equals(packageInfo.packageName)) {
                    return packageInfo;
                }
            }
            return null;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    private ArrayList<Platform> m2978d(Context context) {
        String[] strArr = new String[]{"cn.sharesdk.douban.Douban", "cn.sharesdk.evernote.Evernote", "cn.sharesdk.facebook.Facebook", "cn.sharesdk.netease.microblog.NetEaseMicroBlog", "cn.sharesdk.renren.Renren", "cn.sharesdk.sina.weibo.SinaWeibo", "cn.sharesdk.sohu.microblog.SohuMicroBlog", "cn.sharesdk.sohu.suishenkan.SohuSuishenkan", "cn.sharesdk.kaixin.KaiXin", "cn.sharesdk.linkedin.LinkedIn", "cn.sharesdk.system.email.Email", "cn.sharesdk.system.text.ShortMessage", "cn.sharesdk.tencent.qq.QQ", "cn.sharesdk.tencent.qzone.QZone", "cn.sharesdk.tencent.weibo.TencentWeibo", "cn.sharesdk.twitter.Twitter", "cn.sharesdk.wechat.friends.Wechat", "cn.sharesdk.wechat.moments.WechatMoments", "cn.sharesdk.wechat.favorite.WechatFavorite", "cn.sharesdk.youdao.YouDao", "cn.sharesdk.google.GooglePlus", "cn.sharesdk.foursquare.FourSquare", "cn.sharesdk.pinterest.Pinterest", "cn.sharesdk.flickr.Flickr", "cn.sharesdk.tumblr.Tumblr", "cn.sharesdk.dropbox.Dropbox", "cn.sharesdk.vkontakte.VKontakte", "cn.sharesdk.instagram.Instagram", "cn.sharesdk.yixin.friends.Yixin", "cn.sharesdk.yixin.moments.YixinMoments", "cn.sharesdk.mingdao.Mingdao", "cn.sharesdk.line.Line"};
        ArrayList<Platform> arrayList = new ArrayList();
        for (String cls : strArr) {
            try {
                Constructor constructor = Class.forName(cls).getConstructor(new Class[]{Context.class});
                constructor.setAccessible(true);
                arrayList.add((Platform) constructor.newInstance(new Object[]{context}));
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
        return arrayList;
    }

    public String m2979a() {
        return "2.3.12";
    }

    public String m2980a(int i, String str, HashMap<Integer, HashMap<String, Object>> hashMap) {
        HashMap hashMap2 = (HashMap) hashMap.get(Integer.valueOf(i));
        if (hashMap2 == null) {
            return null;
        }
        Object obj = hashMap2.get(str);
        return obj == null ? null : String.valueOf(obj);
    }

    public String m2981a(Context context, Bitmap bitmap) {
        return C0054a.m3106a(context).m3118a(bitmap);
    }

    public String m2982a(Context context, String str) {
        return C0054a.m3106a(context).m3125b(str);
    }

    public String m2983a(Context context, String str, String str2, boolean z, int i, String str3) {
        return C0054a.m3106a(context).m3119a(str2, str, i, z, str3);
    }

    public ArrayList<Platform> m2984a(Context context) {
        PackageInfo c = m2977c(context);
        if (c == null) {
            return null;
        }
        ArrayList a = m2976a(c, context);
        m2989a(a);
        return a;
    }

    public void m2985a(int i, int i2, HashMap<Integer, HashMap<String, Object>> hashMap) {
        hashMap.put(Integer.valueOf(i2), (HashMap) hashMap.get(Integer.valueOf(i)));
    }

    public void m2986a(int i, Platform platform) {
        C0055c c0058d = new C0058d();
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                c0058d.f2059a = "SHARESDK_ENTER_SHAREMENU";
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                c0058d.f2059a = "SHARESDK_CANCEL_SHAREMENU";
                break;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                c0058d.f2059a = "SHARESDK_EDIT_SHARE";
                break;
            case ProGuard.styleable.View_theme /*4*/:
                c0058d.f2059a = "SHARESDK_FAILED_SHARE";
                break;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                c0058d.f2059a = "SHARESDK_CANCEL_SHARE";
                break;
        }
        if (platform != null) {
            c0058d.f2060b = platform.getPlatformId();
        }
        C0063b a = C0063b.m3186a(null);
        if (a != null) {
            a.m3195a(c0058d);
        }
    }

    public void m2987a(Context context, String str, Handler handler, boolean z, int i) {
        C0063b a = C0063b.m3186a(context);
        a.m3196a(str);
        a.m3193a(handler);
        a.m3197a(z);
        a.m3192a(i);
        a.m2969a();
    }

    public void m2988a(String str, int i) {
        C0063b a = C0063b.m3186a(null);
        if (a != null) {
            C0055c c0056a = new C0056a();
            c0056a.f2050b = str;
            c0056a.f2049a = i;
            a.m3195a(c0056a);
        }
    }

    public void m2989a(ArrayList<Platform> arrayList) {
        if (arrayList != null) {
            Collections.sort(arrayList, new C0042o(this));
        }
    }

    public boolean m2990a(HashMap<String, Object> hashMap, HashMap<Integer, HashMap<String, Object>> hashMap2) {
        if (hashMap == null || hashMap.size() <= 0) {
            return false;
        }
        Iterator it = ((ArrayList) hashMap.get("fakelist")).iterator();
        while (it.hasNext()) {
            int parseInt;
            HashMap hashMap3 = (HashMap) it.next();
            try {
                parseInt = Integer.parseInt(String.valueOf(hashMap3.get("snsplat")));
            } catch (Throwable th) {
                C0071e.m3269c(th);
                parseInt = -1;
            }
            if (parseInt != -1) {
                hashMap2.put(Integer.valueOf(parseInt), hashMap3);
            }
        }
        return true;
    }

    public int m2991b() {
        return 37;
    }

    public void m2992b(Context context) {
        C0063b.m3186a(context).m2972b();
    }
}
