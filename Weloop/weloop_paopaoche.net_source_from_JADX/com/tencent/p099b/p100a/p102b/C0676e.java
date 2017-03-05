package com.tencent.p099b.p100a.p102b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.baidu.android.pushservice.PushConstants;
import com.tencent.p099b.p100a.C0708t;
import com.tencent.p099b.p100a.C0712x;
import com.tencent.p099b.p100a.ai;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.b.e */
final class C0676e {
    String f5163a;
    String f5164b;
    DisplayMetrics f5165c;
    int f5166d;
    String f5167e;
    String f5168f;
    String f5169g;
    String f5170h;
    String f5171i;
    String f5172j;
    String f5173k;
    int f5174l;
    String f5175m;
    String f5176n;
    Context f5177o;
    private String f5178p;
    private String f5179q;
    private String f5180r;
    private String f5181s;

    private C0676e(Context context) {
        this.f5164b = "2.0.3";
        this.f5166d = VERSION.SDK_INT;
        this.f5167e = Build.MODEL;
        this.f5168f = Build.MANUFACTURER;
        this.f5169g = Locale.getDefault().getLanguage();
        this.f5174l = 0;
        this.f5175m = null;
        this.f5176n = null;
        this.f5177o = null;
        this.f5178p = null;
        this.f5179q = null;
        this.f5180r = null;
        this.f5181s = null;
        this.f5177o = context.getApplicationContext();
        this.f5165c = C0683l.m6977d(this.f5177o);
        this.f5163a = C0683l.m6986i(this.f5177o);
        this.f5170h = C0708t.m7059b(this.f5177o);
        this.f5171i = C0683l.m6985h(this.f5177o);
        this.f5172j = TimeZone.getDefault().getID();
        Context context2 = this.f5177o;
        this.f5174l = C0683l.m6970b();
        this.f5173k = C0683l.m6992m(this.f5177o);
        this.f5175m = this.f5177o.getPackageName();
        if (this.f5166d >= 14) {
            this.f5178p = C0683l.m6997r(this.f5177o);
        }
        context2 = this.f5177o;
        this.f5179q = C0683l.m6983g().toString();
        this.f5180r = C0683l.m6996q(this.f5177o);
        this.f5181s = C0683l.m6980f();
        this.f5176n = C0683l.m7002w(this.f5177o);
    }

    final void m6951a(JSONObject jSONObject, Thread thread) {
        if (thread == null) {
            if (this.f5165c != null) {
                jSONObject.put("sr", this.f5165c.widthPixels + "*" + this.f5165c.heightPixels);
                jSONObject.put("dpi", this.f5165c.xdpi + "*" + this.f5165c.ydpi);
            }
            if (C0712x.m7120a(this.f5177o).m7129e()) {
                JSONObject jSONObject2 = new JSONObject();
                C0689r.m7017a(jSONObject2, "bs", C0689r.m7021c(this.f5177o));
                C0689r.m7017a(jSONObject2, "ss", C0689r.m7022d(this.f5177o));
                if (jSONObject2.length() > 0) {
                    C0689r.m7017a(jSONObject, "wf", jSONObject2.toString());
                }
            }
            JSONArray f = C0689r.m7024f(this.f5177o);
            if (f != null && f.length() > 0) {
                C0689r.m7017a(jSONObject, "wflist", f.toString());
            }
            C0689r.m7017a(jSONObject, "sen", this.f5178p);
        } else {
            C0689r.m7017a(jSONObject, "thn", thread.getName());
            C0689r.m7017a(jSONObject, "qq", C0708t.m7063c(this.f5177o));
            C0689r.m7017a(jSONObject, "cui", C0708t.m7067d(this.f5177o));
            if (C0683l.m6975c(this.f5180r) && this.f5180r.split("/").length == 2) {
                C0689r.m7017a(jSONObject, "fram", this.f5180r.split("/")[0]);
            }
            if (C0683l.m6975c(this.f5181s) && this.f5181s.split("/").length == 2) {
                C0689r.m7017a(jSONObject, "from", this.f5181s.split("/")[0]);
            }
            if (ai.m6901a(this.f5177o).m6930b(this.f5177o) != null) {
                jSONObject.put("ui", ai.m6901a(this.f5177o).m6930b(this.f5177o).m6945a());
            }
            C0689r.m7017a(jSONObject, "mid", C0708t.m7070e(this.f5177o));
        }
        C0689r.m7017a(jSONObject, "pcn", C0683l.m6993n(this.f5177o));
        C0689r.m7017a(jSONObject, "osn", VERSION.RELEASE);
        C0689r.m7017a(jSONObject, "av", this.f5163a);
        C0689r.m7017a(jSONObject, "ch", this.f5170h);
        C0689r.m7017a(jSONObject, "mf", this.f5168f);
        C0689r.m7017a(jSONObject, "sv", this.f5164b);
        C0689r.m7017a(jSONObject, "osd", Build.DISPLAY);
        C0689r.m7017a(jSONObject, "prod", Build.PRODUCT);
        C0689r.m7017a(jSONObject, PushConstants.EXTRA_TAGS, Build.TAGS);
        C0689r.m7017a(jSONObject, "id", Build.ID);
        C0689r.m7017a(jSONObject, "fng", Build.FINGERPRINT);
        C0689r.m7017a(jSONObject, "lch", this.f5176n);
        C0689r.m7017a(jSONObject, "ov", Integer.toString(this.f5166d));
        jSONObject.put("os", 1);
        C0689r.m7017a(jSONObject, "op", this.f5171i);
        C0689r.m7017a(jSONObject, "lg", this.f5169g);
        C0689r.m7017a(jSONObject, "md", this.f5167e);
        C0689r.m7017a(jSONObject, "tz", this.f5172j);
        if (this.f5174l != 0) {
            jSONObject.put("jb", this.f5174l);
        }
        C0689r.m7017a(jSONObject, "sd", this.f5173k);
        C0689r.m7017a(jSONObject, "apn", this.f5175m);
        C0689r.m7017a(jSONObject, "cpu", this.f5179q);
        C0689r.m7017a(jSONObject, "abi", Build.CPU_ABI);
        C0689r.m7017a(jSONObject, "abi2", Build.CPU_ABI2);
        C0689r.m7017a(jSONObject, "ram", this.f5180r);
        C0689r.m7017a(jSONObject, "rom", this.f5181s);
    }
}
