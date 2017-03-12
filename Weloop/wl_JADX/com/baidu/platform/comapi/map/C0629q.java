package com.baidu.platform.comapi.map;

import android.os.Handler;
import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.utils.C0587b;
import com.baidu.platform.comapi.p086a.C0597c;
import com.baidu.platform.comapi.p088c.C0607c;
import com.baidu.platform.comjni.engine.C0642a;
import com.baidu.platform.comjni.map.basemap.C0643a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.platform.comapi.map.q */
public class C0629q {
    private static final String f4834a;
    private static C0629q f4835c;
    private C0643a f4836b;
    private C0633v f4837d;
    private Handler f4838e;

    static {
        f4834a = C0629q.class.getSimpleName();
    }

    private C0629q() {
    }

    public static C0629q m6585a() {
        if (f4835c == null) {
            f4835c = new C0629q();
            f4835c.m6588g();
        }
        return f4835c;
    }

    private void m6588g() {
        m6589h();
        this.f4837d = new C0633v();
        this.f4838e = new C0630r(this);
        C0642a.m6620a(65289, this.f4838e);
    }

    private void m6589h() {
        C0587b.m6379a(C0556a.m6153a().m6162e());
        this.f4836b = new C0643a();
        this.f4836b.m6632a();
        String k = C0607c.m6490k();
        String a = C0587b.m6378a();
        String b = C0587b.m6381b();
        String c = C0587b.m6382c();
        int d = C0587b.m6383d();
        int e = C0587b.m6384e();
        int f = C0587b.m6385f();
        String str = C0607c.m6489j() >= 180 ? "/h/" : "/l/";
        String str2 = k + "/cfg";
        String str3 = a + "/vmp";
        k = str2 + str;
        String str4 = str2 + "/a/";
        this.f4836b.m6634a(k, str3 + str, b + "/tmp/", c + "/tmp/", str3 + str, str4, C0607c.m6481f(), C0607c.m6485h(), C0607c.m6489j(), d, e, f, 0);
        this.f4836b.m6653e();
    }

    public ArrayList<C0628p> m6590a(String str) {
        if (str.equals("") || this.f4836b == null) {
            return null;
        }
        String str2 = "";
        String a = this.f4836b.m6627a(str);
        if (a == null || a.equals("")) {
            return null;
        }
        ArrayList<C0628p> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(a);
            if (jSONObject == null || jSONObject.length() == 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("dataset");
            if (optJSONArray == null) {
                return null;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                C0628p c0628p = new C0628p();
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                c0628p.f4829a = jSONObject2.optInt("id");
                c0628p.f4830b = jSONObject2.optString("name");
                c0628p.f4831c = jSONObject2.optInt("size");
                c0628p.f4832d = jSONObject2.optInt("cty");
                if (jSONObject2.has("child")) {
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("child");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        C0628p c0628p2 = new C0628p();
                        JSONObject optJSONObject = optJSONArray2.optJSONObject(i2);
                        c0628p2.f4829a = optJSONObject.optInt("id");
                        c0628p2.f4830b = optJSONObject.optString("name");
                        c0628p2.f4831c = optJSONObject.optInt("size");
                        c0628p2.f4832d = optJSONObject.optInt("cty");
                        arrayList2.add(c0628p2);
                    }
                    c0628p.m6584a(arrayList2);
                }
                arrayList.add(c0628p);
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void m6591a(C0576u c0576u) {
        if (this.f4837d != null) {
            this.f4837d.m6607a(c0576u);
        }
    }

    public boolean m6592a(int i) {
        return (this.f4836b == null || i < 0) ? false : this.f4836b.m6651d(i);
    }

    public boolean m6593a(boolean z, boolean z2) {
        return this.f4836b == null ? false : this.f4836b.m6635a(z, z2);
    }

    public void m6594b() {
        C0642a.m6621b(65289, this.f4838e);
        this.f4836b.m6641b();
        f4835c = null;
    }

    public void m6595b(C0576u c0576u) {
        if (this.f4837d != null) {
            this.f4837d.m6608b(c0576u);
        }
    }

    public boolean m6596b(int i) {
        return (this.f4836b == null || i < 0) ? false : this.f4836b.m6633a(i, false, 0);
    }

    public ArrayList<C0628p> m6597c() {
        if (this.f4836b == null) {
            return null;
        }
        String str = "";
        String k = this.f4836b.m6660k();
        ArrayList<C0628p> arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(k).optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                C0628p c0628p = new C0628p();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                c0628p.f4829a = optJSONObject.optInt("id");
                c0628p.f4830b = optJSONObject.optString("name");
                c0628p.f4831c = optJSONObject.optInt("size");
                c0628p.f4832d = optJSONObject.optInt("cty");
                if (optJSONObject.has("child")) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("child");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        C0628p c0628p2 = new C0628p();
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                        c0628p2.f4829a = optJSONObject2.optInt("id");
                        c0628p2.f4830b = optJSONObject2.optString("name");
                        c0628p2.f4831c = optJSONObject2.optInt("size");
                        c0628p2.f4832d = optJSONObject2.optInt("cty");
                        arrayList2.add(c0628p2);
                    }
                    c0628p.m6584a(arrayList2);
                }
                arrayList.add(c0628p);
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean m6598c(int i) {
        return (this.f4836b == null || i < 0) ? false : this.f4836b.m6643b(i, false, 0);
    }

    public ArrayList<C0628p> m6599d() {
        String str = "";
        if (this.f4836b == null) {
            return null;
        }
        String a = this.f4836b.m6627a("");
        ArrayList<C0628p> arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(a).optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                C0628p c0628p = new C0628p();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                c0628p.f4829a = optJSONObject.optInt("id");
                c0628p.f4830b = optJSONObject.optString("name");
                c0628p.f4831c = optJSONObject.optInt("size");
                c0628p.f4832d = optJSONObject.optInt("cty");
                if (optJSONObject.has("child")) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("child");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        C0628p c0628p2 = new C0628p();
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                        c0628p2.f4829a = optJSONObject2.optInt("id");
                        c0628p2.f4830b = optJSONObject2.optString("name");
                        c0628p2.f4831c = optJSONObject2.optInt("size");
                        c0628p2.f4832d = optJSONObject2.optInt("cty");
                        arrayList2.add(c0628p2);
                    }
                    c0628p.m6584a(arrayList2);
                }
                arrayList.add(c0628p);
            }
            return arrayList;
        } catch (JSONException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public boolean m6600d(int i) {
        return this.f4836b == null ? false : this.f4836b.m6643b(0, true, i);
    }

    public ArrayList<C0632t> m6601e() {
        if (this.f4836b == null) {
            return null;
        }
        String str = "";
        String j = this.f4836b.m6659j();
        if (j == null || j.equals("")) {
            return null;
        }
        ArrayList<C0632t> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(j);
            if (jSONObject.length() == 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("dataset");
            for (int i = 0; i < optJSONArray.length(); i++) {
                C0632t c0632t = new C0632t();
                C0631s c0631s = new C0631s();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                c0631s.f4840a = optJSONObject.optInt("id");
                c0631s.f4841b = optJSONObject.optString("name");
                c0631s.f4842c = optJSONObject.optString("pinyin");
                c0631s.f4847h = optJSONObject.optInt("size");
                c0631s.f4848i = optJSONObject.optInt("ratio");
                c0631s.f4851l = optJSONObject.optInt("status");
                c0631s.f4846g = new C0597c();
                c0631s.f4846g.m6429a(optJSONObject.optInt("x"));
                c0631s.f4846g.m6431b(optJSONObject.optInt("y"));
                if (optJSONObject.optInt("up") == 1) {
                    c0631s.f4849j = true;
                } else {
                    c0631s.f4849j = false;
                }
                c0631s.f4844e = optJSONObject.optInt("lev");
                if (c0631s.f4849j) {
                    c0631s.f4850k = optJSONObject.optInt("svr_size");
                } else {
                    c0631s.f4850k = 0;
                }
                c0632t.m6605a(c0631s);
                arrayList.add(c0632t);
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean m6602e(int i) {
        return (this.f4836b == null || i < 0) ? false : this.f4836b.m6642b(i, false);
    }

    public C0632t m6603f(int i) {
        if (this.f4836b == null || i < 0) {
            return null;
        }
        String str = "";
        String e = this.f4836b.m6652e(i);
        if (e == null || e.equals("")) {
            return null;
        }
        C0632t c0632t = new C0632t();
        C0631s c0631s = new C0631s();
        try {
            JSONObject jSONObject = new JSONObject(e);
            if (jSONObject.length() == 0) {
                return null;
            }
            c0631s.f4840a = jSONObject.optInt("id");
            c0631s.f4841b = jSONObject.optString("name");
            c0631s.f4842c = jSONObject.optString("pinyin");
            c0631s.f4843d = jSONObject.optString("headchar");
            c0631s.f4847h = jSONObject.optInt("size");
            c0631s.f4848i = jSONObject.optInt("ratio");
            c0631s.f4851l = jSONObject.optInt("status");
            c0631s.f4846g = new C0597c();
            c0631s.f4846g.m6429a(jSONObject.optInt("x"));
            c0631s.f4846g.m6431b(jSONObject.optInt("y"));
            if (jSONObject.optInt("up") == 1) {
                c0631s.f4849j = true;
            } else {
                c0631s.f4849j = false;
            }
            c0631s.f4844e = jSONObject.optInt("lev");
            c0631s.f4845f = jSONObject.optInt("ver");
            c0632t.m6605a(c0631s);
            return c0632t;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
