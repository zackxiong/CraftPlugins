package com.baidu.platform.comapi.p087b;

import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.platform.comapi.p086a.C0597c;
import com.baidu.platform.comapi.p088c.C0607c;
import com.baidu.platform.comjni.map.favorite.C0646a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.platform.comapi.b.b */
public class C0604b {
    private static C0604b f4695b;
    private C0646a f4696a;
    private boolean f4697c;
    private boolean f4698d;
    private Vector<String> f4699e;
    private Vector<String> f4700f;
    private boolean f4701g;
    private C0603c f4702h;
    private C0602b f4703i;

    /* renamed from: com.baidu.platform.comapi.b.b.a */
    class C0601a implements Comparator<String> {
        final /* synthetic */ C0604b f4687a;

        C0601a(C0604b c0604b) {
            this.f4687a = c0604b;
        }

        public int m6433a(String str, String str2) {
            return str2.compareTo(str);
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return m6433a((String) obj, (String) obj2);
        }
    }

    /* renamed from: com.baidu.platform.comapi.b.b.b */
    private class C0602b {
        final /* synthetic */ C0604b f4688a;
        private long f4689b;
        private long f4690c;

        private C0602b(C0604b c0604b) {
            this.f4688a = c0604b;
        }

        private void m6434a() {
            this.f4689b = System.currentTimeMillis();
        }

        private void m6436b() {
            this.f4690c = System.currentTimeMillis();
        }

        private boolean m6439c() {
            return this.f4690c - this.f4689b > 1000;
        }
    }

    /* renamed from: com.baidu.platform.comapi.b.b.c */
    private class C0603c {
        final /* synthetic */ C0604b f4691a;
        private String f4692b;
        private long f4693c;
        private long f4694d;

        private C0603c(C0604b c0604b) {
            this.f4691a = c0604b;
            this.f4693c = 5000;
            this.f4694d = 0;
        }

        private String m6440a() {
            return this.f4692b;
        }

        private void m6442a(String str) {
            this.f4692b = str;
            this.f4694d = System.currentTimeMillis();
        }

        private boolean m6444b() {
            return TextUtils.isEmpty(this.f4692b);
        }

        private boolean m6447c() {
            return true;
        }
    }

    static {
        f4695b = null;
    }

    private C0604b() {
        this.f4696a = null;
        this.f4697c = false;
        this.f4698d = false;
        this.f4699e = null;
        this.f4700f = null;
        this.f4701g = false;
        this.f4702h = new C0603c();
        this.f4703i = new C0602b();
    }

    public static C0604b m6448a() {
        if (f4695b == null) {
            synchronized (C0604b.class) {
                if (f4695b == null) {
                    f4695b = new C0604b();
                    f4695b.m6450h();
                }
            }
        }
        return f4695b;
    }

    public static boolean m6449g() {
        return (f4695b == null || f4695b.f4696a == null || !f4695b.f4696a.m6679d()) ? false : true;
    }

    private boolean m6450h() {
        if (this.f4696a != null) {
            return true;
        }
        this.f4696a = new C0646a();
        if (this.f4696a.m6668a() == 0) {
            this.f4696a = null;
            return false;
        }
        m6452j();
        m6451i();
        return true;
    }

    private boolean m6451i() {
        String str = "fav_poi";
        this.f4696a.m6670a(1);
        return this.f4696a.m6673a(C0607c.m6490k() + "/", str, "fifo", 10, 501, -1);
    }

    private void m6452j() {
        this.f4697c = false;
        this.f4698d = false;
    }

    public synchronized int m6453a(String str, C0599a c0599a) {
        int i;
        if (str == null || str.equals("") || c0599a == null) {
            i = -1;
        } else {
            m6452j();
            ArrayList e = m6461e();
            if ((e != null ? e.size() : 0) + 1 > 500) {
                i = -2;
            } else {
                if (e != null && e.size() > 0) {
                    Iterator it = e.iterator();
                    while (it.hasNext()) {
                        C0599a b = m6455b((String) it.next());
                        if (b != null && str.equals(b.f4678b)) {
                            i = -1;
                            break;
                        }
                    }
                }
                String str2 = "";
                try {
                    JSONObject jSONObject = new JSONObject();
                    c0599a.f4678b = str;
                    String valueOf = String.valueOf(System.currentTimeMillis());
                    String str3 = valueOf + "_" + c0599a.hashCode();
                    c0599a.f4684h = valueOf;
                    c0599a.f4677a = str3;
                    jSONObject.put("bdetail", c0599a.f4685i);
                    jSONObject.put("uspoiname", c0599a.f4678b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", c0599a.f4679c.m6428a());
                    jSONObject2.put("y", c0599a.f4679c.m6430b());
                    jSONObject.put("pt", jSONObject2);
                    jSONObject.put("ncityid", c0599a.f4681e);
                    jSONObject.put("npoitype", c0599a.f4683g);
                    jSONObject.put("uspoiuid", c0599a.f4682f);
                    jSONObject.put("addr", c0599a.f4680d);
                    jSONObject.put("addtimesec", c0599a.f4684h);
                    jSONObject2 = new JSONObject();
                    jSONObject2.put("Fav_Sync", jSONObject);
                    jSONObject2.put("Fav_Content", c0599a.f4686j);
                    if (this.f4696a.m6672a(str3, jSONObject2.toString())) {
                        m6452j();
                        i = 1;
                    } else {
                        C0604b.m6449g();
                        i = 0;
                    }
                } catch (JSONException e2) {
                    i = e2;
                    i = 0;
                    return i;
                } finally {
                    C0604b.m6449g();
                }
            }
        }
        return i;
    }

    public synchronized boolean m6454a(String str) {
        boolean z = false;
        synchronized (this) {
            if (str != null) {
                if (!str.equals("")) {
                    if (m6459c(str)) {
                        m6452j();
                        z = this.f4696a.m6671a(str);
                    }
                }
            }
        }
        return z;
    }

    public C0599a m6455b(String str) {
        if (this.f4696a == null || str == null || str.equals("")) {
            return null;
        }
        try {
            if (!m6459c(str)) {
                return null;
            }
            C0599a c0599a = new C0599a();
            String b = this.f4696a.m6675b(str);
            if (b == null || b.equals("")) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(b);
            JSONObject optJSONObject = jSONObject.optJSONObject("Fav_Sync");
            String optString = jSONObject.optString("Fav_Content");
            c0599a.f4678b = optJSONObject.optString("uspoiname");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("pt");
            c0599a.f4679c = new C0597c(optJSONObject2.optInt("x"), optJSONObject2.optInt("y"));
            c0599a.f4681e = optJSONObject.optString("ncityid");
            c0599a.f4682f = optJSONObject.optString("uspoiuid");
            c0599a.f4683g = optJSONObject.optInt("npoitype");
            c0599a.f4680d = optJSONObject.optString("addr");
            c0599a.f4684h = optJSONObject.optString("addtimesec");
            c0599a.f4685i = optJSONObject.optBoolean("bdetail");
            c0599a.f4686j = optString;
            c0599a.f4677a = str;
            return c0599a;
        } catch (NullPointerException e) {
            e.printStackTrace();
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void m6456b() {
        if (f4695b != null) {
            if (f4695b.f4696a != null) {
                f4695b.f4696a.m6674b();
                f4695b.f4696a = null;
            }
            f4695b = null;
        }
    }

    public synchronized boolean m6457b(String str, C0599a c0599a) {
        boolean z = false;
        synchronized (this) {
            if (!(this.f4696a == null || str == null || str.equals("") || c0599a == null)) {
                if (m6459c(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("uspoiname", c0599a.f4678b);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("x", c0599a.f4679c.m6428a());
                        jSONObject2.put("y", c0599a.f4679c.m6430b());
                        jSONObject.put("pt", jSONObject2);
                        jSONObject.put("ncityid", c0599a.f4681e);
                        jSONObject.put("npoitype", c0599a.f4683g);
                        jSONObject.put("uspoiuid", c0599a.f4682f);
                        jSONObject.put("addr", c0599a.f4680d);
                        c0599a.f4684h = String.valueOf(System.currentTimeMillis());
                        jSONObject.put("addtimesec", c0599a.f4684h);
                        jSONObject.put("bdetail", false);
                        jSONObject2 = new JSONObject();
                        jSONObject2.put("Fav_Sync", jSONObject);
                        jSONObject2.put("Fav_Content", c0599a.f4686j);
                        m6452j();
                        if (this.f4696a != null && this.f4696a.m6676b(str, jSONObject2.toString())) {
                            z = true;
                        }
                    } catch (JSONException e) {
                    }
                }
            }
        }
        return z;
    }

    public synchronized boolean m6458c() {
        boolean z;
        if (this.f4696a == null) {
            z = false;
        } else {
            m6452j();
            z = this.f4696a.m6677c();
            C0604b.m6449g();
        }
        return z;
    }

    public boolean m6459c(String str) {
        return (this.f4696a == null || str == null || str.equals("") || !this.f4696a.m6678c(str)) ? false : true;
    }

    public ArrayList<String> m6460d() {
        if (this.f4696a == null) {
            return null;
        }
        if (this.f4698d && this.f4700f != null) {
            return new ArrayList(this.f4700f);
        }
        try {
            Bundle bundle = new Bundle();
            this.f4696a.m6669a(bundle);
            String[] stringArray = bundle.getStringArray("rstString");
            if (stringArray != null) {
                if (this.f4700f == null) {
                    this.f4700f = new Vector();
                } else {
                    this.f4700f.clear();
                }
                for (int i = 0; i < stringArray.length; i++) {
                    if (!stringArray[i].equals("data_version")) {
                        String b = this.f4696a.m6675b(stringArray[i]);
                        if (!(b == null || b.equals(""))) {
                            this.f4700f.add(stringArray[i]);
                        }
                    }
                }
                if (this.f4700f.size() > 0) {
                    try {
                        Collections.sort(this.f4700f, new C0601a(this));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    this.f4698d = true;
                }
            } else if (this.f4700f != null) {
                this.f4700f.clear();
                this.f4700f = null;
            }
            ArrayList<String> arrayList = (this.f4700f == null || this.f4700f.isEmpty()) ? null : new ArrayList(this.f4700f);
            return arrayList;
        } catch (Exception e2) {
            return null;
        }
    }

    public ArrayList<String> m6461e() {
        if (this.f4696a == null) {
            return null;
        }
        if (this.f4697c && this.f4699e != null) {
            return new ArrayList(this.f4699e);
        }
        try {
            Bundle bundle = new Bundle();
            this.f4696a.m6669a(bundle);
            String[] stringArray = bundle.getStringArray("rstString");
            if (stringArray != null) {
                if (this.f4699e == null) {
                    this.f4699e = new Vector();
                } else {
                    this.f4699e.clear();
                }
                for (String str : stringArray) {
                    if (!str.equals("data_version")) {
                        this.f4699e.add(str);
                    }
                }
                if (this.f4699e.size() > 0) {
                    try {
                        Collections.sort(this.f4699e, new C0601a(this));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    this.f4697c = true;
                }
            } else if (this.f4699e != null) {
                this.f4699e.clear();
                this.f4699e = null;
            }
            return (this.f4699e == null || this.f4699e.size() == 0) ? null : new ArrayList(this.f4699e);
        } catch (Exception e2) {
            return null;
        }
    }

    public String m6462f() {
        if (this.f4703i.m6439c() && !this.f4702h.m6447c() && !this.f4702h.m6444b()) {
            return this.f4702h.m6440a();
        }
        this.f4703i.m6434a();
        if (this.f4696a == null) {
            return null;
        }
        ArrayList d = m6460d();
        JSONObject jSONObject = new JSONObject();
        if (d != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                int i = 0;
                Iterator it = d.iterator();
                while (it.hasNext()) {
                    int i2;
                    String str = (String) it.next();
                    if (!(str == null || str.equals("data_version"))) {
                        String b = this.f4696a.m6675b(str);
                        if (!(b == null || b.equals(""))) {
                            JSONObject optJSONObject = new JSONObject(b).optJSONObject("Fav_Sync");
                            optJSONObject.put("key", str);
                            jSONArray.put(i, optJSONObject);
                            i2 = i + 1;
                            i = i2;
                        }
                    }
                    i2 = i;
                    i = i2;
                }
                if (i > 0) {
                    jSONObject.put("favcontents", jSONArray);
                    jSONObject.put("favpoinum", i);
                }
            } catch (JSONException e) {
                return null;
            }
        }
        this.f4703i.m6436b();
        this.f4702h.m6442a(jSONObject.toString());
        return this.f4702h.m6440a();
    }
}
