package com.baidu.android.pushservice.p069c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushLightapp;
import com.baidu.android.pushservice.p070d.C0221g;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0400a;
import com.baidu.frontia.p075a.p081e.C0401b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"WorldReadableFiles"})
/* renamed from: com.baidu.android.pushservice.c.b */
public final class C0201b {
    private static volatile C0201b f2965c;
    public ArrayList<C0208h> f2966a;
    public ArrayList<C0208h> f2967b;
    private Context f2968d;
    private HashMap<String, C0221g> f2969e;

    private C0201b(Context context) {
        String str;
        ArrayList d;
        Iterator it;
        int i;
        this.f2966a = new ArrayList();
        this.f2967b = new ArrayList();
        this.f2969e = new HashMap();
        this.f2968d = context.getApplicationContext();
        SharedPreferences sharedPreferences = this.f2968d.getSharedPreferences(this.f2968d.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5);
        Object string = sharedPreferences.getString("r", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                str = new String(C0400a.m5342b("2011121211143000", "1234567890123456", C0401b.m5344a(string.getBytes())));
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "ClientManager init strApps : " + str);
                }
                d = C0201b.m4451d(str);
                if (d != null) {
                    it = d.iterator();
                    while (it.hasNext()) {
                        this.f2966a.add((C0208h) it.next());
                    }
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", " initException: " + e);
                }
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5308a("ClientManager", "ClientManager init strApps empty.");
        }
        string = sharedPreferences.getString("r_v2", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                str = new String(C0400a.m5342b("2011121211143000", "1234567890123456", C0401b.m5344a(string.getBytes())));
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "ClientManager init strAppsV2 : " + str);
                }
                d = C0201b.m4451d(str);
                if (d != null) {
                    it = d.iterator();
                    while (it.hasNext()) {
                        this.f2967b.add((C0208h) it.next());
                    }
                }
            } catch (Exception e2) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", " v2 initException: " + e2);
                }
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5308a("ClientManager", "ClientManager init strAppsV2 empty.");
        }
        int i2 = sharedPreferences.getInt("com.baidu.push.sync.vn", -1);
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e3) {
            i = 0;
        }
        if (i2 < i) {
            m4449b(this.f2968d);
            m4450c(this.f2968d);
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.putInt("com.baidu.push.sync.vn", i);
                edit.commit();
            }
        }
    }

    public static synchronized C0201b m4446a(Context context) {
        C0201b c0201b;
        synchronized (C0201b.class) {
            if (f2965c == null) {
                f2965c = new C0201b(context);
            }
            c0201b = f2965c;
        }
        return c0201b;
    }

    static String m4447a(List<C0208h> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < list.size(); i++) {
            C0208h c0208h = (C0208h) list.get(i);
            stringBuffer.append(c0208h.c);
            stringBuffer.append(",");
            stringBuffer.append(c0208h.a);
            stringBuffer.append(",");
            stringBuffer.append(c0208h.f2984e);
            if (i != list.size() - 1) {
                stringBuffer.append(";");
            }
        }
        return stringBuffer.toString();
    }

    private void m4448a(Context context, String str, ArrayList<C0208h> arrayList) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryBroadcastReceivers(new Intent(PushLightapp.ACTION_REGISTER_SYNC), 0)) {
            try {
                String string = context.createPackageContext(resolveInfo.activityInfo.packageName, 2).getSharedPreferences(resolveInfo.activityInfo.packageName + PushLightapp.SHARED_NAME_SETTINGS, 1).getString(str, "nodata");
                if (!"nodata".equals(string)) {
                    String str2;
                    ArrayList d;
                    Iterator it;
                    C0208h c0208h;
                    Iterator it2;
                    C0208h c0208h2;
                    int i;
                    try {
                        byte[] a = C0401b.m5344a(string.getBytes());
                        if (a != null) {
                            str2 = new String(C0400a.m5342b("2011121211143000", "1234567890123456", a));
                            d = C0201b.m4451d(str2);
                            if (d != null) {
                                it = d.iterator();
                                while (it.hasNext()) {
                                    c0208h = (C0208h) it.next();
                                    it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        c0208h2 = (C0208h) it2.next();
                                        if (!TextUtils.equals(c0208h.c, c0208h2.c)) {
                                            if (TextUtils.equals(c0208h.a, c0208h2.a)) {
                                            }
                                        }
                                        i = 1;
                                        break;
                                    }
                                    i = 0;
                                    if (i != 0) {
                                        arrayList.add(c0208h);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        C0385a.m5313d("ClientManager", "GetClients:" + e.getMessage());
                    }
                    str2 = string;
                    d = C0201b.m4451d(str2);
                    if (d != null) {
                        it = d.iterator();
                        while (it.hasNext()) {
                            c0208h = (C0208h) it.next();
                            it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                c0208h2 = (C0208h) it2.next();
                                if (!TextUtils.equals(c0208h.c, c0208h2.c)) {
                                    if (TextUtils.equals(c0208h.a, c0208h2.a)) {
                                    }
                                }
                                i = 1;
                                break;
                                if (i != 0) {
                                    arrayList.add(c0208h);
                                }
                            }
                            i = 0;
                            if (i != 0) {
                                arrayList.add(c0208h);
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                if (C0192a.m4341b()) {
                    C0385a.m5312c("ClientManager", "syncRegisterDataImpl Exception: " + e2.getMessage());
                }
            }
        }
        if (arrayList.size() > 0) {
            Editor edit = sharedPreferences.edit();
            try {
                edit.putString(str, C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", C0201b.m4447a((List) arrayList).getBytes()), "utf-8"));
                edit.commit();
            } catch (Exception e22) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "encrypt error: " + e22);
                }
            }
        }
    }

    private void m4449b(Context context) {
        m4448a(context, "r", this.f2966a);
    }

    private void m4450c(Context context) {
        m4448a(context, "r_v2", this.f2967b);
    }

    static ArrayList<C0208h> m4451d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<C0208h> arrayList = new ArrayList();
        for (String trim : str.trim().split(";")) {
            String[] split = trim.trim().split(",");
            if (split.length >= 3) {
                C0208h c0208h = new C0208h();
                c0208h.c = split[0].trim();
                c0208h.a = split[1].trim();
                c0208h.f2984e = split[2].trim();
                arrayList.add(c0208h);
            }
        }
        return arrayList;
    }

    public C0208h m4452a(String str) {
        Iterator it = this.f2967b.iterator();
        while (it.hasNext()) {
            C0208h c0208h = (C0208h) it.next();
            if (c0208h.c.equals(str)) {
                return c0208h;
            }
        }
        it = this.f2966a.iterator();
        while (it.hasNext()) {
            c0208h = (C0208h) it.next();
            if (c0208h.c.equals(str)) {
                return c0208h;
            }
        }
        return null;
    }

    public String m4453a(C0208h c0208h, boolean z) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("ClientManager", "syncV1 addOrRemove:" + z + ", " + c0208h);
            C0385a.m5311b("ClientManager", "client.packageName=" + c0208h.c + " client.appId=" + c0208h.a + " client.userId=" + c0208h.f2984e);
        }
        return m4454a(c0208h, z, this.f2966a, "r");
    }

    public String m4454a(C0208h c0208h, boolean z, ArrayList<C0208h> arrayList, String str) {
        String a;
        synchronized (arrayList) {
            Object obj;
            SharedPreferences sharedPreferences;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0208h c0208h2 = (C0208h) it.next();
                if (!c0208h2.c.equals(c0208h.c)) {
                    if (c0208h2.a.equals(c0208h.a)) {
                    }
                }
                arrayList.remove(c0208h2);
                if (z) {
                    arrayList.add(c0208h);
                }
                obj = 1;
                if (obj == null && z) {
                    arrayList.add(c0208h);
                }
                sharedPreferences = this.f2968d.getSharedPreferences(this.f2968d.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5);
                a = C0201b.m4447a((List) arrayList);
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "sync  strApps: " + a);
                }
                a = C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", a.getBytes()), "utf-8");
                Editor edit = sharedPreferences.edit();
                edit.putString(str, a);
                edit.commit();
            }
            obj = null;
            arrayList.add(c0208h);
            sharedPreferences = this.f2968d.getSharedPreferences(this.f2968d.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5);
            a = C0201b.m4447a((List) arrayList);
            if (C0192a.m4341b()) {
                C0385a.m5308a("ClientManager", "sync  strApps: " + a);
            }
            try {
                a = C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", a.getBytes()), "utf-8");
                Editor edit2 = sharedPreferences.edit();
                edit2.putString(str, a);
                edit2.commit();
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "encrypt error: " + e);
                }
                return "";
            }
        }
        return a;
    }

    public synchronized void m4455a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            try {
                String str3 = new String(C0400a.m5342b("2011121211143000", "1234567890123456", C0401b.m5344a(str2.getBytes())));
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "ClientManager init strApps : " + str3);
                }
                Collection d = C0201b.m4451d(str3);
                if (!(f2965c == null || d == null)) {
                    Iterator it;
                    if (str.equals("r")) {
                        f2965c.f2966a.clear();
                        it = d.iterator();
                        while (it.hasNext()) {
                            f2965c.f2966a.add((C0208h) it.next());
                        }
                        str3 = C0201b.m4447a(f2965c.f2966a);
                    } else if (str.equals("r_v2")) {
                        ArrayList arrayList = new ArrayList();
                        it = d.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((C0208h) it.next()).c);
                        }
                        int i = 0;
                        while (i < f2965c.f2967b.size()) {
                            int i2;
                            if (arrayList.contains(((C0208h) f2965c.f2967b.get(i)).c)) {
                                f2965c.f2967b.remove(i);
                                i2 = i - 1;
                            } else {
                                i2 = i;
                            }
                            i = i2 + 1;
                        }
                        f2965c.f2967b.addAll(d);
                        str3 = C0201b.m4447a(f2965c.f2967b);
                    }
                    SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5);
                    try {
                        str3 = C0401b.m5343a(C0400a.m5341a("2011121211143000", "1234567890123456", str3.getBytes()), "utf-8");
                        Editor edit = sharedPreferences.edit();
                        edit.putString(str, str3);
                        edit.commit();
                    } catch (Exception e) {
                        if (C0192a.m4341b()) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Exception e2) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("ClientManager", "ClientManager init strApps exception.");
                }
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5308a("ClientManager", "ClientManager init strApps empty.");
        }
    }

    public void m4456a(String str, C0221g c0221g) {
        this.f2969e.put(str, c0221g);
    }

    public boolean m4457a(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? false : this.f2969e.containsKey(str) && str2.equals(((C0221g) this.f2969e.get(str)).m4534a());
    }

    public C0208h m4458b(String str) {
        Iterator it = this.f2967b.iterator();
        while (it.hasNext()) {
            C0208h c0208h = (C0208h) it.next();
            if (c0208h.a != null && c0208h.a.equals(str)) {
                return c0208h;
            }
        }
        it = this.f2966a.iterator();
        while (it.hasNext()) {
            c0208h = (C0208h) it.next();
            if (c0208h.a != null && c0208h.a.equals(str)) {
                return c0208h;
            }
        }
        return null;
    }

    public String m4459b(C0208h c0208h, boolean z) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("ClientManager", "syncV2 addOrRemove:" + z + ", " + c0208h);
            C0385a.m5311b("ClientManager", "client.packageName=" + c0208h.c + " client.appId=" + c0208h.a + " client.userId=" + c0208h.f2984e);
        }
        return m4454a(c0208h, z, this.f2967b, "r_v2");
    }

    public boolean m4460c(String str) {
        Iterator it = this.f2967b.iterator();
        while (it.hasNext()) {
            if (((C0208h) it.next()).a.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public String m4461e(String str) {
        return this.f2969e.get(str) != null ? ((C0221g) this.f2969e.get(str)).m4535b() : "";
    }

    public void m4462f(String str) {
        if (this.f2969e.containsKey(str)) {
            this.f2969e.remove(str);
        }
    }
}
