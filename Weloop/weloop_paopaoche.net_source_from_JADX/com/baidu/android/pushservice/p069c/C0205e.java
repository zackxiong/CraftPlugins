package com.baidu.android.pushservice.p069c;

import android.content.Context;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0400a;
import com.baidu.frontia.p075a.p081e.C0401b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.c.e */
public abstract class C0205e {
    protected ArrayList<C0200a> f2980a;
    protected Context f2981b;
    protected C0202c f2982c;

    /* renamed from: com.baidu.android.pushservice.c.e.1 */
    static /* synthetic */ class C02041 {
        static final /* synthetic */ int[] f2979a;

        static {
            f2979a = new int[C0202c.values().length];
            try {
                f2979a[C0202c.WEBAPP_CLIENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2979a[C0202c.LIGHT_APP_CLIENT_NEW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2979a[C0202c.SDK_CLIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2979a[C0202c.PUSH_CLIENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C0205e(Context context, C0202c c0202c) {
        this.f2980a = new ArrayList();
        this.f2981b = context.getApplicationContext();
        this.f2982c = c0202c;
        m4468a();
    }

    public String m4465a(C0200a c0200a, boolean z) {
        String str;
        if (C0192a.m4341b()) {
            C0385a.m5311b("IClientManager", "client sync addOrRemove:" + z + ", " + c0200a);
        }
        synchronized (this.f2980a) {
            Object obj;
            String str2;
            Iterator it;
            C0200a c0200a2;
            if (TextUtils.isEmpty(c0200a.m4439a())) {
                it = this.f2980a.iterator();
                while (it.hasNext()) {
                    c0200a2 = (C0200a) it.next();
                    if (TextUtils.isEmpty(c0200a.m4442b()) || !TextUtils.equals(c0200a2.m4442b(), c0200a.m4442b())) {
                        if (TextUtils.isEmpty(c0200a2.m4439a())) {
                        }
                    }
                    int i = 1;
                    break;
                }
                obj = null;
            } else {
                it = this.f2980a.iterator();
                while (it.hasNext()) {
                    c0200a2 = (C0200a) it.next();
                    if (TextUtils.isEmpty(c0200a.m4442b()) || !TextUtils.equals(c0200a2.m4442b(), c0200a.m4442b())) {
                        if (c0200a.m4439a().equals(c0200a2.m4439a())) {
                        }
                    }
                    this.f2980a.remove(c0200a2);
                    if (z) {
                        this.f2980a.add(c0200a);
                    }
                    obj = 1;
                }
                obj = null;
            }
            if (obj == null && z) {
                this.f2980a.add(c0200a);
            }
            String a = m4466a(this.f2980a);
            if (C0192a.m4341b()) {
                C0385a.m5311b("IClientManager", "sync  strApps: " + a);
            }
            str = "";
            switch (C02041.f2979a[this.f2982c.ordinal()]) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    str2 = "com.baidu.push.webr";
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    str2 = "com.baidu.push.lappr";
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    str2 = "com.baidu.push.sdkr";
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    str2 = str;
                    break;
                default:
                    str2 = str;
                    break;
            }
            try {
                str = C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", a.getBytes()), "utf-8");
                System.putString(this.f2981b.getContentResolver(), str2, str);
            } catch (Throwable e) {
                C0385a.m5310a("IClientManager", e);
                return "";
            }
        }
        return str;
    }

    protected String m4466a(List<C0200a> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < list.size(); i++) {
            C0200a c0200a = (C0200a) list.get(i);
            stringBuffer.append(c0200a.m4442b());
            stringBuffer.append(",");
            stringBuffer.append(c0200a.m4439a());
            if (i != list.size() - 1) {
                stringBuffer.append(";");
            }
        }
        return stringBuffer.toString();
    }

    protected ArrayList<C0200a> m4467a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<C0200a> arrayList = new ArrayList();
        for (String trim : str.trim().split(";")) {
            String[] split = trim.trim().trim().split(",");
            if (split.length == 1 || split.length == 2) {
                C0200a c0200a = new C0200a(split[0]);
                if (split.length == 2) {
                    c0200a.m4441a(split[1]);
                }
                arrayList.add(c0200a);
            }
        }
        return arrayList;
    }

    protected void m4468a() {
        String str = "";
        switch (C02041.f2979a[this.f2982c.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                str = "com.baidu.push.webr";
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                str = "com.baidu.push.lappr";
                break;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                str = "com.baidu.push.sdkr";
                break;
        }
        Object string = System.getString(this.f2981b.getContentResolver(), str);
        if (!TextUtils.isEmpty(string)) {
            try {
                String str2 = new String(C0400a.m5342b("2011121211143000", "1234567890123456", C0401b.m5344a(string.getBytes())));
                if (C0192a.m4341b()) {
                    C0385a.m5308a("IClientManager", "ClientManager init strApps : " + str2);
                }
                ArrayList a = m4467a(str2);
                if (a != null) {
                    Iterator it = a.iterator();
                    while (it.hasNext()) {
                        this.f2980a.add((C0200a) it.next());
                    }
                }
            } catch (Throwable e) {
                C0385a.m5310a("IClientManager", e);
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5308a("IClientManager", "ClientManager init strApps empty.");
        }
    }

    public C0200a m4469b(String str) {
        Iterator it = this.f2980a.iterator();
        while (it.hasNext()) {
            C0200a c0200a = (C0200a) it.next();
            if (!TextUtils.isEmpty(c0200a.m4439a()) && c0200a.m4439a().equals(str)) {
                return c0200a;
            }
        }
        return null;
    }

    public void m4470b() {
        this.f2980a.clear();
        m4468a();
    }

    public C0200a m4471c(String str) {
        Iterator it = this.f2980a.iterator();
        while (it.hasNext()) {
            C0200a c0200a = (C0200a) it.next();
            if (!TextUtils.isEmpty(c0200a.m4442b()) && c0200a.m4442b().equals(str)) {
                return c0200a;
            }
        }
        return null;
    }
}
