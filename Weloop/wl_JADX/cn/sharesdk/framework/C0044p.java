package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import cn.sharesdk.framework.network.C0037h;
import cn.sharesdk.framework.statistics.C0054a;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import cn.sharesdk.framework.utils.UIHandler;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.p */
public class C0044p extends C0028l {
    private C0043a f1993b;
    private Context f1994c;
    private HashMap<String, HashMap<String, String>> f1995d;
    private ArrayList<Platform> f1996e;
    private HashMap<Integer, CustomPlatform> f1997f;
    private HashMap<Integer, HashMap<String, Object>> f1998g;
    private HashMap<Integer, Service> f1999h;
    private String f2000i;
    private boolean f2001j;
    private String f2002k;
    private boolean f2003l;
    private boolean f2004m;

    /* renamed from: cn.sharesdk.framework.p.a */
    private enum C0043a {
        IDLE,
        INITIALIZING,
        READY
    }

    public C0044p(Context context) {
        super("Thread-" + Math.abs(-939));
        this.f1993b = C0043a.IDLE;
        this.f1994c = context.getApplicationContext();
        UIHandler.prepare();
        C0071e.m3264a(this.f1994c);
        this.f1995d = new HashMap();
        this.f1996e = new ArrayList();
        this.f1997f = new HashMap();
        this.f1998g = new HashMap();
        this.f1999h = new HashMap();
    }

    private boolean m3033a(C0054a c0054a, HashMap<String, Object> hashMap, HashMap<String, Object> hashMap2) {
        try {
            if (hashMap.containsKey("error")) {
                if (!ShareSDK.isDebug()) {
                    return false;
                }
                System.err.println(new C0068d().m3254a((HashMap) hashMap));
                return false;
            } else if (hashMap.containsKey("res")) {
                C0071e.m3265b("snsconf returns ===> %s", c0054a.m3126b(this.f2000i, String.valueOf(hashMap.get("res")).replace("\n", "")).trim());
                hashMap2.putAll(new C0068d().m3255a(r2));
                return true;
            } else if (!ShareSDK.isDebug()) {
                return false;
            } else {
                System.err.println("SNS configuration is empty");
                return false;
            }
        } catch (Throwable th) {
            if (!ShareSDK.isDebug()) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private void m3034i() {
        synchronized (this.f1995d) {
            this.f1995d.clear();
            m3035j();
            if (this.f1995d.containsKey("ShareSDK")) {
                HashMap hashMap = (HashMap) this.f1995d.remove("ShareSDK");
                if (hashMap != null) {
                    if (this.f2000i == null) {
                        this.f2000i = (String) hashMap.get("AppKey");
                    }
                    this.f2002k = hashMap.containsKey("UseVersion") ? (String) hashMap.get("UseVersion") : "latest";
                }
            }
        }
    }

    private void m3035j() {
        XmlPullParser newPullParser;
        InputStream open;
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newPullParser = newInstance.newPullParser();
            open = this.f1994c.getAssets().open("ShareSDK.xml");
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return;
        }
        newPullParser.setInput(open, "utf-8");
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                HashMap hashMap = new HashMap();
                int attributeCount = newPullParser.getAttributeCount();
                for (eventType = 0; eventType < attributeCount; eventType++) {
                    hashMap.put(newPullParser.getAttributeName(eventType), newPullParser.getAttributeValue(eventType));
                }
                this.f1995d.put(name, hashMap);
            }
        }
        open.close();
    }

    private void m3036k() {
        this.f1996e.clear();
        Collection a = new C0029n().m2984a(this.f1994c);
        if (a != null) {
            this.f1996e.addAll(a);
        }
    }

    private void m3037l() {
        new C0029n().m2987a(this.f1994c, this.f2000i, this.a, this.f2001j, m3068e());
    }

    public String m3038a(int i, String str) {
        return new C0029n().m2980a(i, str, this.f1998g);
    }

    public String m3039a(Bitmap bitmap) {
        return C0043a.READY != this.f1993b ? null : new C0029n().m2981a(this.f1994c, bitmap);
    }

    public String m3040a(String str, boolean z, int i, String str2) {
        return C0043a.READY != this.f1993b ? str : new C0029n().m2983a(this.f1994c, this.f2000i, str, z, i, str2);
    }

    public void m3041a() {
        this.f1993b = C0043a.INITIALIZING;
        m3034i();
        super.m2969a();
    }

    public void m3042a(int i) {
        C0037h.f1982a = i;
    }

    public void m3043a(int i, int i2) {
        new C0029n().m2985a(i, i2, this.f1998g);
    }

    public void m3044a(int i, Platform platform) {
        new C0029n().m2986a(i, platform);
    }

    protected void m3045a(Message message) {
        synchronized (this.f1996e) {
            m3036k();
            m3037l();
            this.f1993b = C0043a.READY;
            this.f1996e.notify();
        }
    }

    public void m3046a(Class<? extends Service> cls) {
        synchronized (this.f1999h) {
            if (this.f1999h.containsKey(Integer.valueOf(cls.hashCode()))) {
                return;
            }
            try {
                Service service = (Service) cls.newInstance();
                this.f1999h.put(Integer.valueOf(cls.hashCode()), service);
                service.m2896a(this.f1994c);
                service.m2897a(this.f2000i);
                service.onBind();
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
    }

    public void m3047a(String str) {
        this.f2000i = str;
    }

    public void m3048a(String str, int i) {
        new C0029n().m2988a(str, i);
    }

    public void m3049a(String str, String str2) {
        synchronized (this.f1995d) {
            this.f1995d.put(str2, (HashMap) this.f1995d.get(str));
        }
    }

    public void m3050a(String str, HashMap<String, Object> hashMap) {
        synchronized (this.f1995d) {
            HashMap hashMap2 = (HashMap) this.f1995d.get(str);
            HashMap hashMap3 = hashMap2 == null ? new HashMap() : hashMap2;
            synchronized (hashMap3) {
                for (Entry entry : hashMap.entrySet()) {
                    String str2 = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value != null) {
                        hashMap3.put(str2, String.valueOf(value));
                    }
                }
            }
            this.f1995d.put(str, hashMap3);
        }
    }

    public void m3051a(boolean z) {
        this.f2001j = z;
    }

    public boolean m3052a(HashMap<String, Object> hashMap) {
        if (C0043a.READY != this.f1993b) {
            if (ShareSDK.isDebug()) {
                System.err.println("Statistics module unopened");
            }
            return false;
        }
        C0054a a = C0054a.m3106a(this.f1994c);
        boolean a2 = m3033a(a, a.m3129d(this.f2000i), hashMap);
        if (a2) {
            this.f2004m = true;
            new C0045q(this, a).start();
            return a2;
        }
        try {
            String e = a.m3130e(this.f2000i);
            a.m3122a(this.f2000i, e);
            a2 = m3033a(a, new C0068d().m3255a(e), hashMap);
            this.f2004m = true;
            return a2;
        } catch (Throwable th) {
            if (ShareSDK.isDebug()) {
                th.printStackTrace();
            }
            this.f2004m = false;
            return a2;
        }
    }

    public Platform m3053b(String str) {
        if (str == null) {
            return null;
        }
        Platform[] c = m3064c();
        if (c == null) {
            return null;
        }
        for (Platform platform : c) {
            if (str.equals(platform.getName())) {
                return platform;
            }
        }
        return null;
    }

    public String m3054b(String str, String str2) {
        String str3;
        synchronized (this.f1995d) {
            HashMap hashMap = (HashMap) this.f1995d.get(str);
            if (hashMap == null) {
                str3 = null;
            } else {
                str3 = (String) hashMap.get(str2);
            }
        }
        return str3;
    }

    public void m3055b(int i) {
        C0037h.f1983b = i;
    }

    protected void m3056b(Message message) {
        synchronized (this.f1999h) {
            for (Entry value : this.f1999h.entrySet()) {
                ((Service) value.getValue()).onUnbind();
            }
            this.f1999h.clear();
        }
        synchronized (this.f1997f) {
            this.f1997f.clear();
        }
        try {
            new C0029n().m2992b(this.f1994c);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            this.a.getLooper().quit();
            this.f1993b = C0043a.IDLE;
        }
    }

    public void m3057b(Class<? extends Service> cls) {
        synchronized (this.f1999h) {
            int hashCode = cls.hashCode();
            if (this.f1999h.containsKey(Integer.valueOf(hashCode))) {
                ((Service) this.f1999h.get(Integer.valueOf(hashCode))).onUnbind();
                this.f1999h.remove(Integer.valueOf(hashCode));
            }
        }
    }

    public void m3058b(boolean z) {
        this.f2003l = z;
    }

    public boolean m3059b(HashMap<String, Object> hashMap) {
        this.f1998g.clear();
        return new C0029n().m2990a((HashMap) hashMap, this.f1998g);
    }

    public int m3060c(String str) {
        Platform b = m3053b(str);
        return b == null ? 0 : b.getPlatformId();
    }

    public <T extends Service> T m3061c(Class<T> cls) {
        T t;
        synchronized (this.f1999h) {
            try {
                t = (Service) cls.cast(this.f1999h.get(Integer.valueOf(cls.hashCode())));
            } catch (Throwable th) {
                if (ShareSDK.isDebug()) {
                    System.err.println(cls.getName() + " has not registered");
                }
                C0071e.m3269c(th);
                t = null;
            }
        }
        return t;
    }

    public String m3062c(int i) {
        Platform[] c = m3064c();
        if (c == null) {
            return null;
        }
        for (Platform platform : c) {
            if (platform != null && platform.getPlatformId() == i) {
                return platform.getName();
            }
        }
        return null;
    }

    protected void m3063c(Message message) {
        switch (message.what) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                this.a.getLooper().quit();
                this.f1993b = C0043a.IDLE;
            default:
        }
    }

    public Platform[] m3064c() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f1996e) {
            if (this.f1993b == C0043a.IDLE) {
                return null;
            }
            if (this.f1993b == C0043a.INITIALIZING) {
                try {
                    this.f1996e.wait();
                } catch (Throwable th) {
                    C0071e.m3269c(th);
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f1996e.iterator();
            while (it.hasNext()) {
                Platform platform = (Platform) it.next();
                if (platform != null && platform.m2858b()) {
                    platform.m2857a();
                    arrayList.add(platform);
                }
            }
            for (Entry value : this.f1997f.entrySet()) {
                platform = (Platform) value.getValue();
                if (platform != null && platform.m2858b()) {
                    arrayList.add(platform);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            Platform[] platformArr = new Platform[arrayList.size()];
            for (int i = 0; i < platformArr.length; i++) {
                platformArr[i] = (Platform) arrayList.get(i);
            }
            C0071e.m3265b("sort list use time: %s", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
            return platformArr;
        }
    }

    public String m3065d() {
        try {
            return new C0029n().m2979a();
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return "2.3.12";
        }
    }

    public String m3066d(String str) {
        return C0043a.READY != this.f1993b ? null : new C0029n().m2982a(this.f1994c, str);
    }

    public void m3067d(Class<? extends CustomPlatform> cls) {
        synchronized (this.f1997f) {
            if (this.f1997f.containsKey(Integer.valueOf(cls.hashCode()))) {
                return;
            }
            try {
                this.f1997f.put(Integer.valueOf(cls.hashCode()), (CustomPlatform) cls.getConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.f1994c}));
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
    }

    public int m3068e() {
        try {
            return new C0029n().m2991b();
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return 37;
        }
    }

    public void m3069e(Class<? extends CustomPlatform> cls) {
        int hashCode = cls.hashCode();
        synchronized (this.f1997f) {
            this.f1997f.remove(Integer.valueOf(hashCode));
        }
    }

    public boolean m3070f() {
        return this.f2003l;
    }

    public boolean m3071g() {
        return this.f2001j;
    }

    public boolean m3072h() {
        return (this.f1998g == null || this.f1998g.size() <= 0) ? this.f2004m : true;
    }
}
