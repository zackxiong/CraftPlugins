package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.network.C0034e;
import cn.sharesdk.framework.network.C0037h;
import cn.sharesdk.framework.statistics.p030a.C0051c;
import cn.sharesdk.framework.statistics.p030a.C0052d;
import cn.sharesdk.framework.statistics.p030a.C0053e;
import cn.sharesdk.framework.statistics.p031b.C0055c;
import cn.sharesdk.framework.statistics.p031b.C0057b;
import cn.sharesdk.framework.statistics.p031b.C0061f;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.statistics.p031b.C0062g;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0066b;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import com.umeng.update.ProGuard;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* renamed from: cn.sharesdk.framework.statistics.a */
public class C0054a {
    public static String f2028b;
    static String f2029c;
    private static C0054a f2030d;
    private static String f2031e;
    private static String f2032f;
    private static String f2033g;
    Context f2034a;
    private boolean f2035h;
    private int f2036i;
    private C0037h f2037j;

    static {
        f2028b = "http://api2.sharesdk.cn:5566";
        f2031e = "http://api2.sharesdk.cn:5566/conf3";
        f2032f = "http://s.sharesdk.cn/api/convert3.do";
        f2033g = "http://up.sharesdk.cn/upload/image";
    }

    private C0054a() {
        this.f2037j = new C0037h();
    }

    public static C0054a m3106a(Context context) {
        if (f2030d == null) {
            f2030d = new C0054a();
            f2030d.f2034a = context.getApplicationContext();
        }
        return f2030d;
    }

    private String m3107a(String str, String str2, String str3, int i, String str4) {
        if (str == null) {
            return str;
        }
        ArrayList arrayList = new ArrayList();
        Pattern compile = Pattern.compile(str3);
        Matcher matcher = compile.matcher(str);
        while (matcher.find()) {
            String group = matcher.group();
            if (group != null && group.length() > 0) {
                arrayList.add(group);
            }
        }
        if (arrayList.size() == 0) {
            return str;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0034e("key", str2));
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(new C0034e("urls", ((String) arrayList.get(i2)).toString()));
        }
        arrayList2.add(new C0034e("deviceid", C0066b.m3214a(this.f2034a).m3238q()));
        arrayList2.add(new C0034e("snsplat", String.valueOf(i)));
        C0071e.m3268c("> deviceid  devicekey: %s", C0066b.m3214a(this.f2034a).m3238q());
        CharSequence d = m3111d(str2, str4);
        if (TextUtils.isEmpty(d)) {
            return str;
        }
        String a;
        arrayList2.add(new C0034e("m", d));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new C0034e("User-Agent", f2029c));
        try {
            a = this.f2037j.m3014a(f2032f, arrayList2, null, arrayList3, null);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            a = null;
        }
        if (a == null) {
            return str;
        }
        int intValue;
        C0071e.m3268c("> SERVER_SHORT_LINK_URL  resp: %s", a);
        HashMap a2 = new C0068d().m3255a(a);
        try {
            intValue = ((Integer) a2.get("status")).intValue();
        } catch (Throwable th2) {
            C0071e.m3269c(th2);
            intValue = -1;
        }
        if (intValue != 200) {
            return str;
        }
        ArrayList arrayList4 = (ArrayList) a2.get("data");
        a2 = new HashMap();
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            HashMap hashMap = (HashMap) it.next();
            a2.put(String.valueOf(hashMap.get("source")), String.valueOf(hashMap.get("surl")));
        }
        Matcher matcher2 = compile.matcher(str);
        StringBuilder stringBuilder = new StringBuilder();
        intValue = 0;
        while (matcher2.find()) {
            stringBuilder.append(str.substring(intValue, matcher2.start()));
            stringBuilder.append((String) a2.get(matcher2.group()));
            intValue = matcher2.end();
        }
        stringBuilder.append(str.substring(intValue, str.length()));
        C0071e.m3268c("> SERVER_SHORT_LINK_URL content after replace link ===  %s", stringBuilder.toString());
        return stringBuilder.toString();
    }

    private String m3108c() {
        return f2028b + "/date";
    }

    private boolean m3109c(String str, String str2) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0034e("m", str));
            arrayList.add(new C0034e("t", str2));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new C0034e("User-Agent", f2029c));
            C0071e.m3265b("> %s  resp: %s", m3110d(), this.f2037j.m3014a(m3110d(), arrayList, null, arrayList2, null));
            return this.f2037j.m3014a(m3110d(), arrayList, null, arrayList2, null) != null;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return false;
        }
    }

    private String m3110d() {
        return f2028b + "/log4";
    }

    private String m3111d(String str, String str2) {
        C0066b a = C0066b.m3214a(this.f2034a);
        C0051c a2 = C0051c.m3086a(this.f2034a);
        boolean b = a2.m3094b();
        boolean c = a2.m3096c();
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append(C0065a.m3210c(a.m3239r(), "utf-8")).append("|");
            stringBuilder.append(C0065a.m3210c(a.m3242u(), "utf-8")).append("|");
            stringBuilder.append(C0065a.m3210c(String.valueOf(this.f2036i + 20000), "utf-8")).append("|");
            stringBuilder.append(C0065a.m3210c(String.valueOf(a.m3236o()), "utf-8")).append("|");
            stringBuilder.append(C0065a.m3210c(a.m3235n(), "utf-8")).append("|");
            if (b) {
                stringBuilder.append(C0065a.m3210c(a.m3230i(), "utf-8")).append("|");
                stringBuilder.append(C0065a.m3210c(a.m3232k(), "utf-8")).append("|");
                stringBuilder.append(C0065a.m3210c(a.m3224c(), "utf-8")).append("|");
                stringBuilder.append(C0065a.m3210c(a.m3223b(), "utf-8")).append("|");
                stringBuilder.append(C0065a.m3210c(a.m3233l(), "utf-8")).append("|");
            } else {
                stringBuilder.append("|||||");
            }
            if (c) {
                stringBuilder.append(str2);
            } else {
                stringBuilder.append(str2.split("\\|")[0]);
                stringBuilder.append("|||||");
            }
            C0071e.m3268c("shorLinkMsg ===>>>>", stringBuilder.toString());
            C0071e.m3268c("Base64AES key ===>>>>", a.m3238q() + ":" + str);
            return m3120a(stringBuilder.toString(), C0065a.m3211c(String.format("%s:%s", new Object[]{a.m3238q(), str})));
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return "";
        }
    }

    private String m3112e() {
        return f2028b + "/data";
    }

    private String m3113f() {
        return f2028b + "/snsconf";
    }

    private String m3114g() {
        JSONObject jSONObject = new JSONObject();
        C0066b a = C0066b.m3214a(this.f2034a);
        try {
            jSONObject.put(ProGuard.f5475c, "DEVICE");
            jSONObject.put("key", a.m3238q());
            jSONObject.put("mac", a.m3219a());
            jSONObject.put("udid", a.m3225d());
            jSONObject.put("model", a.m3223b());
            jSONObject.put("factory", a.m3224c());
            jSONObject.put("plat", a.m3236o());
            jSONObject.put("sysver", a.m3230i());
            jSONObject.put("breaked", false);
            jSONObject.put("screensize", a.m3232k());
            jSONObject.put("carrier", a.m3233l());
        } catch (Throwable e) {
            C0071e.m3269c(e);
        }
        return jSONObject.toString();
    }

    private String m3115h() {
        JSONObject jSONObject = new JSONObject();
        C0066b a = C0066b.m3214a(this.f2034a);
        try {
            jSONObject.put(ProGuard.f5475c, "PROCESS");
            jSONObject.put("plat", a.m3236o());
            jSONObject.put("device", a.m3238q());
            jSONObject.put("list", a.m3237p());
        } catch (Throwable e) {
            C0071e.m3269c(e);
        }
        return jSONObject.toString();
    }

    public long m3116a() {
        String str = "{}";
        try {
            str = this.f2037j.m3015a(m3108c(), null, null, null);
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
        C0051c a = C0051c.m3086a(this.f2034a);
        HashMap a2 = new C0068d().m3255a(str);
        if (!a2.containsKey("timestamp")) {
            return a.m3087a();
        }
        long currentTimeMillis = System.currentTimeMillis() - Long.parseLong(a2.get("timestamp").toString());
        a.m3090a("service_time", Long.valueOf(currentTimeMillis));
        return currentTimeMillis;
    }

    public long m3117a(String str) {
        String a;
        C0051c a2 = C0051c.m3086a(this.f2034a);
        C0066b a3 = C0066b.m3214a(this.f2034a);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0034e(ProGuard.f5480h, str));
            arrayList.add(new C0034e("device", a3.m3238q()));
            arrayList.add(new C0034e("plat", String.valueOf(a3.m3236o())));
            arrayList.add(new C0034e("apppkg", a3.m3239r()));
            arrayList.add(new C0034e("appver", String.valueOf(a3.m3241t())));
            arrayList.add(new C0034e("sdkver", String.valueOf(this.f2036i + 20000)));
            arrayList.add(new C0034e("networktype", a3.m3235n()));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new C0034e("User-Agent", f2029c));
            a = this.f2037j.m3014a(f2031e, arrayList, null, arrayList2, null);
            if (a == null || a.length() <= 0) {
                a = "{}";
            }
            C0071e.m3265b(" get server config response == %s", a);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            a = "{}";
        }
        HashMap a4 = new C0068d().m3255a(a);
        if (a4.containsKey("status") && Integer.parseInt(String.valueOf(a4.get("status"))) == -200) {
            if (ShareSDK.isDebug()) {
                System.err.print(String.valueOf(a4.get("error")));
            }
            return 0;
        }
        long j;
        if (a4.containsKey("timestamp")) {
            long currentTimeMillis = System.currentTimeMillis() - Long.parseLong(a4.get("timestamp").toString());
            a2.m3090a("service_time", Long.valueOf(currentTimeMillis));
            j = currentTimeMillis;
        } else {
            j = 0;
        }
        if (a4.containsKey("switchs")) {
            HashMap hashMap = new HashMap();
            hashMap = (HashMap) a4.get("switchs");
            String obj = hashMap.get("device").toString();
            String obj2 = hashMap.get("share").toString();
            a = hashMap.get("auth").toString();
            a2.m3098d(obj);
            a2.m3100f(obj2);
            a2.m3099e(a);
        }
        if (a4.containsKey("requesthost") && a4.containsKey("requestport")) {
            Object valueOf = String.valueOf(a4.get("requesthost"));
            Object valueOf2 = String.valueOf(a4.get("requestport"));
            if (!(TextUtils.isEmpty(valueOf) || TextUtils.isEmpty(valueOf2))) {
                f2028b = "http://" + valueOf + ":" + valueOf2;
            }
        }
        HashMap hashMap2 = (HashMap) a4.get("unfinish");
        if (hashMap2 == null || hashMap2.size() <= 0) {
            return j;
        }
        if ("true".equals(String.valueOf(hashMap2.get("device")))) {
            try {
                C0071e.m3260a(" upload device info == %s", m3114g());
                arrayList = new ArrayList();
                arrayList.add(new C0034e("m", C0065a.m3209b(a, "sdk.sharesdk.sdk")));
                arrayList2 = new ArrayList();
                arrayList2.add(new C0034e("User-Agent", f2029c));
                a = this.f2037j.m3014a(m3112e(), arrayList, null, arrayList2, null);
                C0071e.m3265b("> DEVICE_UNFINISHED  resp: %s", a);
            } catch (Throwable th2) {
                C0071e.m3269c(th2);
            }
        }
        if ("true".equals(String.valueOf(hashMap2.get("apps")))) {
            try {
                m3123a("APPS", a3.m3221a(false));
            } catch (Throwable th22) {
                C0071e.m3269c(th22);
            }
        }
        if (!"true".equals(String.valueOf(hashMap2.get("process")))) {
            return j;
        }
        try {
            C0071e.m3260a(" upload device info == %s", m3115h());
            arrayList = new ArrayList();
            arrayList.add(new C0034e("m", C0065a.m3209b(a, "sdk.sharesdk.sdk")));
            arrayList2 = new ArrayList();
            arrayList2.add(new C0034e("User-Agent", f2029c));
            a = this.f2037j.m3014a(m3112e(), arrayList, null, arrayList2, null);
            C0071e.m3265b("> PROCESS_UNFINISHED  resp: %s", a);
            return j;
        } catch (Throwable th222) {
            C0071e.m3269c(th222);
            return j;
        }
    }

    public String m3118a(Bitmap bitmap) {
        try {
            File createTempFile = File.createTempFile("bm_tmp", ".png");
            OutputStream fileOutputStream = new FileOutputStream(createTempFile);
            bitmap.compress(CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return m3125b(createTempFile.getAbsolutePath());
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    public String m3119a(String str, String str2, int i, boolean z, String str3) {
        String a;
        C0071e.m3268c("> SERVER_SHORT_LINK_URL content before replace link ===  %s", str);
        if (z) {
            a = m3107a(str, str2, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", i, str3);
            if (!(a == null || a.equals(str))) {
                return a;
            }
        }
        a = m3107a(str, str2, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", i, str3);
        return (a == null || a.equals(str)) ? str : a;
    }

    public String m3120a(String str, byte[] bArr) {
        String encodeToString;
        Throwable th;
        try {
            encodeToString = Base64.encodeToString(C0065a.m3206a(bArr, str), 0);
            try {
                if (encodeToString.contains("\n")) {
                    encodeToString = encodeToString.replace("\n", "");
                }
            } catch (Throwable th2) {
                th = th2;
                C0071e.m3269c(th);
                return encodeToString;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            encodeToString = null;
            th = th4;
            C0071e.m3269c(th);
            return encodeToString;
        }
        return encodeToString;
    }

    public void m3121a(C0055c c0055c) {
        int i = 0;
        C0066b a = C0066b.m3214a(this.f2034a);
        String n = a.m3235n();
        C0071e.m3265b(" event string == %s", c0055c.toString());
        C0051c a2 = C0051c.m3086a(this.f2034a);
        if ((c0055c instanceof C0062g) && !n.endsWith("none")) {
            f2029c = (a.m3239r() + "/" + a.m3242u()) + " " + ("ShareSDK/" + ShareSDK.getSDKVersionName()) + " " + ("Android/" + a.m3230i());
        } else if (c0055c instanceof C0057b) {
            boolean c = a2.m3096c();
            Object obj = ((C0057b) c0055c).f2055c;
            if (!c || TextUtils.isEmpty(obj)) {
                ((C0057b) c0055c).f2056d = null;
                ((C0057b) c0055c).f2055c = null;
            } else {
                ((C0057b) c0055c).f2055c = C0065a.m3209b(obj, c0055c.f2039f.substring(0, 16));
            }
        } else if (c0055c instanceof C0061f) {
            C0061f c0061f = (C0061f) c0055c;
            int d = a2.m3097d();
            boolean c2 = a2.m3096c();
            C0060a c0060a = c0061f.f2077d;
            if (d == 1 || (d == 0 && this.f2035h)) {
                int size = (c0060a == null || c0060a.f2069e == null) ? 0 : c0060a.f2069e.size();
                for (int i2 = 0; i2 < size; i2++) {
                    n = m3125b((String) c0060a.f2069e.get(i2));
                    if (n != null) {
                        c0060a.f2068d.add(n);
                    }
                }
                size = (c0060a == null || c0060a.f2070f == null) ? 0 : c0060a.f2070f.size();
                while (i < size) {
                    n = m3118a((Bitmap) c0060a.f2070f.get(i));
                    if (n != null) {
                        c0060a.f2068d.add(n);
                    }
                    i++;
                }
            } else {
                c0061f.f2077d = null;
            }
            if (!c2) {
                c0061f.f2078n = null;
            }
        }
        if (!a2.m3094b()) {
            c0055c.f2046m = null;
        }
        long a3 = a2.m3087a();
        if (a3 == 0) {
            a3 = m3116a();
        }
        c0055c.f2038e = System.currentTimeMillis() - a3;
        C0053e.m3102a(this.f2034a, c0055c.toString(), c0055c.f2038e);
    }

    public void m3122a(String str, String str2) {
        C0051c.m3086a(this.f2034a).m3093b(str, str2);
    }

    public void m3123a(String str, ArrayList<HashMap<String, String>> arrayList) {
        HashMap hashMap = new HashMap();
        hashMap.put(ProGuard.f5475c, str);
        C0066b a = C0066b.m3214a(this.f2034a);
        hashMap.put("plat", Integer.valueOf(a.m3236o()));
        hashMap.put("device", a.m3238q());
        hashMap.put("list", arrayList);
        C0071e.m3260a(" upload apps info == %s", new C0068d().m3254a(hashMap));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0034e("m", C0065a.m3209b(r0, "sdk.sharesdk.sdk")));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new C0034e("User-Agent", f2029c));
        String a2 = this.f2037j.m3014a(m3112e(), arrayList2, null, arrayList3, null);
        C0071e.m3265b("> APPS_UNFINISHED  resp: %s", a2);
    }

    public void m3124a(boolean z) {
        this.f2035h = z;
    }

    public String m3125b(String str) {
        C0071e.m3265b(" upload file , server url = %s, file path = %s", f2033g, str);
        try {
            C0034e c0034e = new C0034e("file", str);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0034e("User-Agent", f2029c));
            String a = this.f2037j.m3014a(r1, null, c0034e, arrayList, null);
            C0071e.m3265b("upload file response == %s", a);
            if (a == null || a.length() <= 0) {
                return null;
            }
            HashMap a2 = new C0068d().m3255a(a);
            if ((a2.containsKey("status") ? Integer.parseInt(a2.get("status").toString()) : -1) != 200) {
                return null;
            }
            return a2.containsKey("url") ? a2.get("url").toString() : null;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    public String m3126b(String str, String str2) {
        return new String(C0065a.m3207a(C0065a.m3211c(str + ":" + C0066b.m3214a(this.f2034a).m3238q()), Base64.decode(str2, 0)), "UTF-8");
    }

    public void m3127b() {
        if (!"none".equals(C0066b.m3214a(this.f2034a).m3235n())) {
            ArrayList a = C0053e.m3104a(this.f2034a);
            for (int i = 0; i < a.size(); i++) {
                C0052d c0052d = (C0052d) a.get(i);
                if (c0052d.f2024b.size() == 1 ? m3109c(c0052d.f2023a, "0") : m3109c(m3128c(c0052d.f2023a), "1")) {
                    C0053e.m3103a(this.f2034a, c0052d.f2024b);
                }
            }
        }
    }

    public String m3128c(String str) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        String str2 = null;
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = byteArrayInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                gZIPOutputStream.write(bArr, 0, read);
            }
            gZIPOutputStream.finish();
            gZIPOutputStream.flush();
            gZIPOutputStream.close();
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            byteArrayInputStream.close();
            str2 = Base64.encodeToString(toByteArray, 2);
        } catch (Throwable e) {
            C0071e.m3269c(e);
        }
        return str2;
    }

    public HashMap<String, Object> m3129d(String str) {
        try {
            return new C0068d().m3255a(C0051c.m3086a(this.f2034a).m3101g(str));
        } catch (Throwable th) {
            C0071e.m3266b(th);
            return new HashMap();
        }
    }

    public String m3130e(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0034e(ProGuard.f5480h, str));
        arrayList.add(new C0034e("device", C0066b.m3214a(this.f2034a).m3238q()));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0034e("User-Agent", f2029c));
        return this.f2037j.m3014a(m3113f(), arrayList, null, arrayList2, null);
    }
}
