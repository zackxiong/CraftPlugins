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

/* renamed from: com.baidu.android.pushservice.c.j */
public class C0210j extends C0205e {
    private static volatile C0210j f2985d;
    private static String f2986e;

    static {
        f2986e = "SDKClientManager";
    }

    private C0210j(Context context) {
        super(context, C0202c.SDK_CLIENT);
    }

    public static synchronized C0210j m4473a(Context context) {
        C0210j c0210j;
        synchronized (C0210j.class) {
            if (f2985d == null) {
                f2985d = new C0210j(context);
            } else {
                f2985d.b = context.getApplicationContext();
            }
            c0210j = f2985d;
        }
        return c0210j;
    }

    public String m4474a(List<C0200a> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < list.size(); i++) {
            C0200a c0200a = (C0200a) list.get(i);
            stringBuffer.append(c0200a.m4442b());
            stringBuffer.append(",");
            stringBuffer.append(c0200a.m4444c());
            stringBuffer.append(",");
            stringBuffer.append(c0200a.m4445d());
            stringBuffer.append(",");
            stringBuffer.append(c0200a.m4439a());
            if (i != list.size() - 1) {
                stringBuffer.append(";");
            }
        }
        return stringBuffer.toString();
    }

    public ArrayList<C0200a> m4475a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<C0200a> arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (String trim : str.trim().split(";")) {
            String[] split = trim.trim().trim().split(",");
            if (split.length >= 2) {
                C0209i c0209i = new C0209i(split[0], split[1]);
                try {
                    if (split.length == 3) {
                        c0209i.m4440a(Integer.parseInt(split[2]));
                    } else if (split.length == 4) {
                        c0209i.m4440a(Integer.parseInt(split[2]));
                        c0209i.m4441a(split[3]);
                    }
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(f2986e, "str2Clients E: " + e);
                    }
                }
                arrayList.add(c0209i);
            }
        }
        return arrayList;
    }

    public void m4476a(C0209i c0209i) {
        synchronized (this.a) {
            Object obj;
            if (!TextUtils.isEmpty(c0209i.m4439a())) {
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    C0200a c0200a = (C0200a) it.next();
                    if (c0200a.m4442b().equals(c0209i.m4442b())) {
                        c0200a.m4441a(c0209i.m4439a());
                        obj = 1;
                        break;
                    }
                }
            }
            obj = null;
            if (obj != null) {
                try {
                    System.putString(this.b.getContentResolver(), "com.baidu.push.sdkr", C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", m4474a(this.a).getBytes()), "utf-8"));
                } catch (Throwable e) {
                    C0385a.m5310a(f2986e, e);
                }
            }
        }
    }

    public /* synthetic */ C0200a m4477b(String str) {
        return m4478d(str);
    }

    public C0209i m4478d(String str) {
        C0209i c0209i = null;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            C0200a c0200a = (C0200a) it.next();
            if (!TextUtils.isEmpty(c0200a.m4439a())) {
                C0209i c0209i2 = (!c0200a.m4439a().equals(str) || (c0209i != null && c0209i.m4445d() >= c0200a.m4445d())) ? c0209i : (C0209i) c0200a;
                c0209i = c0209i2;
            }
        }
        return c0209i;
    }
}
