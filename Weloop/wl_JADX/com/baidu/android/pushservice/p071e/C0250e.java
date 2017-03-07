package com.baidu.android.pushservice.p071e;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushSDK;
import com.baidu.android.pushservice.ac;
import com.baidu.android.pushservice.db.C0245a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import com.baidu.android.pushservice.p070d.C0214a;
import com.baidu.android.pushservice.p070d.C0226l;
import com.baidu.android.pushservice.p070d.C0235t;
import com.baidu.android.pushservice.p070d.C0235t.C0234a;
import com.baidu.android.pushservice.p070d.C0236u;
import com.baidu.android.pushservice.p070d.C0237v;
import com.baidu.android.pushservice.p070d.C0238w;
import com.baidu.android.pushservice.p070d.C0239x;
import com.baidu.android.pushservice.p072f.C0273h;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.mapapi.SDKInitializer;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.e */
public class C0250e {
    private static C0250e f3110c;
    private ac f3111a;
    private Context f3112b;

    private C0250e(Context context) {
        this.f3111a = PushSDK.getInstance(context).getRegistrationService();
        this.f3112b = context;
        C0245a.m4576a().m4591a(this.f3112b);
    }

    public static C0250e m4709a(Context context) {
        if (f3110c == null) {
            f3110c = new C0250e(context);
        }
        return f3110c;
    }

    private String m4710a(int i, String str, String str2, String str3, String str4, String str5, int i2) {
        JSONObject jSONObject = new JSONObject();
        if (i == 0) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put(PushConstants.EXTRA_APP_ID, str2);
                }
                if (!TextUtils.isEmpty(str4)) {
                    jSONObject.put(PushConstants.EXTRA_USER_ID, str4);
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("channel_id", str);
                }
                if (i2 == 0) {
                    jSONObject.put("add_shortcut", true);
                } else if (i2 == 1) {
                    jSONObject.put("add_shortcut", false);
                }
                if (!TextUtils.isEmpty(str3)) {
                    jSONObject.put("api_key", str3);
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.e("LightAppManager", "generate msg error: " + e);
                }
            }
        } else {
            jSONObject.put("error", i);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(PushConstants.EXTRA_APP_ID, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("api_key", str3);
            }
            jSONObject.put(PushConstants.EXTRA_ERROR_CODE, str5);
        }
        return jSONObject.toString();
    }

    private void m4712a(C0214a c0214a) {
        if (this.f3111a != null) {
            this.f3111a.m4374a(c0214a);
            return;
        }
        this.f3111a = PushSDK.getInstance(this.f3112b).getRegistrationService();
        C0245a.m4576a().m4591a(this.f3112b);
        if (this.f3111a != null) {
            this.f3111a.m4374a(c0214a);
        } else if (C0192a.m4341b()) {
            Log.d("LightAppManager", " mRegistrationService null! try restart pushserice, ple");
        }
    }

    private void m4717a(String str, String str2, String str3, C0234a c0234a) {
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
            Runnable c0235t = new C0235t(this.f3112b, str, str2, c0234a);
            c0235t.m4555a(0);
            new Thread(c0235t).start();
        }
    }

    private void m4718b(String str, String str2, String str3, String str4, C0246a c0246a, boolean z) {
        C0226l c0226l = new C0226l(PushConstants.METHOD_LAPP_UNBIND, str, str3);
        C0257k c0257k = new C0257k(this, z, str, str3, c0246a);
        if (!TextUtils.isEmpty(str)) {
            m4712a(new C0239x(c0226l, 3, str2, null, null, str4, null, c0257k, this.f3112b));
        } else if (!TextUtils.isEmpty(str3)) {
            Object pushHash = BaiduAppSSOJni.getPushHash(this.f3112b, C0245a.m4576a().m4627k(str4), str3, null);
            if (!TextUtils.isEmpty(pushHash)) {
                m4712a(new C0239x(c0226l, 3, str4, pushHash, c0257k, this.f3112b));
            } else if (c0246a == null) {
            } else {
                C0246a c0246a2;
                if (z) {
                    c0246a2 = c0246a;
                    c0246a2.m4645d(PushConstants.ERROR_NOT_REGISTER_OR_FOUND, m4710a((int) PushConstants.ERROR_NOT_REGISTER_OR_FOUND, null, str3, str, null, PushConstants.ERROR_NOT_REGISTER_FOUND, -1));
                    return;
                }
                c0246a2 = c0246a;
                c0246a2.m4641b(PushConstants.ERROR_NOT_REGISTER_OR_FOUND, m4710a((int) PushConstants.ERROR_NOT_REGISTER_OR_FOUND, null, str3, str, null, PushConstants.ERROR_NOT_REGISTER_FOUND, -1));
            }
        }
    }

    private void m4719b(String str, String str2, String str3, String str4, String str5, String str6, C0246a c0246a, int i) {
        C0226l c0226l = new C0226l(PushConstants.METHOD_SET_LAPP_TAGS, str, null);
        C0258l c0258l = new C0258l(this, c0246a, str, i, str2);
        m4712a(new C0238w(c0226l, str2, str3, str4, str5, str6, r0, this.f3112b, i));
    }

    private void m4720b(String str, String str2, String str3, String str4, boolean z, String str5, C0246a c0246a, int i) {
        m4717a(str, str3, str4, new C0255i(this, str4, z, c0246a, str3, str, i, str2, str5));
    }

    private void m4721e(String str, String str2) {
        String[] g = C0245a.m4576a().m4622g(str, str2);
        if (g != null) {
            C0261p.m4793a(this.f3112b, g[0], g[1], g[2]);
        }
    }

    public int m4722a() {
        return C0192a.m4336a();
    }

    public int m4723a(int i, String str, C0246a c0246a) {
        int a = C0245a.m4576a().m4580a(i, str);
        if (c0246a != null) {
            c0246a.m4635a(a);
        }
        return a;
    }

    public long m4724a(String str, String str2, String str3, String str4, String str5, int i, int i2) {
        return C0245a.m4576a().m4584a(str, str2, str3, str4, str5, i, i2);
    }

    public String m4725a(Context context, String str) {
        String m = C0245a.m4576a().m4629m(str);
        if (!TextUtils.isEmpty(m) && C0374f.m5212d(context, m)) {
            if (!m.startsWith(GetApn.PKGNAME_PREFIX) && !m.startsWith("com.baidu.voiceassistant")) {
                return m;
            }
            try {
                int i = context.getPackageManager().getPackageInfo(m, 1).versionCode;
                if (i <= 16787720) {
                    if (!C0192a.m4341b()) {
                        return m;
                    }
                    Log.d("LightAppManager", " lightapp msg not blocked by searchbox " + i);
                    return m;
                }
            } catch (NameNotFoundException e) {
                if (C0192a.m4341b()) {
                    Log.d("LightAppManager", " searchbox not found ");
                }
            }
        }
        return null;
    }

    public String m4726a(C0246a c0246a) {
        String e = C0245a.m4576a().m4614e();
        if (!TextUtils.isEmpty(e)) {
            if (c0246a != null) {
                c0246a.m4649g(0, e);
            }
            return e;
        } else if (c0246a == null) {
            return null;
        } else {
            c0246a.m4649g(-1, null);
            return null;
        }
    }

    public String m4727a(C0246a c0246a, int i, int i2) {
        String a = C0245a.m4576a().m4586a(i, i2);
        if (!TextUtils.isEmpty(a)) {
            if (c0246a != null) {
                c0246a.m4652j(0, a);
            }
            return a;
        } else if (c0246a == null) {
            return null;
        } else {
            c0246a.m4652j(-1, null);
            return null;
        }
    }

    public String m4728a(String str, int i, boolean z, int i2, int i3, C0246a c0246a) {
        HashMap a = C0245a.m4576a().m4590a(str, i, z, i2, i3);
        if (a != null) {
            boolean z2;
            String str2 = (String) a.get("msg");
            try {
                z2 = Integer.valueOf((String) a.get("ismore")).intValue() == 1;
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.d("LightAppManager", "getMsgs E: " + e);
                }
                z2 = false;
            }
            if (c0246a == null) {
                return str2;
            }
            c0246a.m4637a(0, str2, z2);
            return str2;
        }
        if (c0246a != null) {
            c0246a.m4637a(1, null, false);
        }
        return null;
    }

    protected String m4729a(String str, String str2) {
        return C0245a.m4576a().m4587a(str, str2);
    }

    public String m4730a(ArrayList<String> arrayList, C0246a c0246a) {
        String a = C0245a.m4576a().m4588a((ArrayList) arrayList);
        if (!TextUtils.isEmpty(a)) {
            if (c0246a != null) {
                c0246a.m4651i(0, a);
            }
            return a;
        } else if (c0246a == null) {
            return null;
        } else {
            c0246a.m4651i(-1, null);
            return null;
        }
    }

    public ArrayList<String> m4731a(String str, int i) {
        ArrayList<String> arrayList = new ArrayList();
        HashMap g = C0245a.m4576a().m4620g();
        if (g == null) {
            return arrayList;
        }
        HashMap p = C0245a.m4576a().m4632p(str);
        for (String str2 : g.keySet()) {
            if (p == null || !p.containsKey(str2)) {
                arrayList.add(str2);
            } else {
                int intValue = ((Integer) p.get(str2)).intValue();
                if (!(intValue == 0 || intValue == i)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    protected void m4732a(C0249d c0249d, String str, String str2, String str3) {
        C0245a.m4576a().m4585a(c0249d.m4694b(), c0249d.m4696c(), c0249d.m4698d(), c0249d.m4702f(), str, str2, str3);
    }

    public void m4733a(String str, C0246a c0246a) {
        boolean e = C0245a.m4576a().m4615e(str);
        if (c0246a != null) {
            c0246a.m4638a(e);
        }
    }

    protected void m4734a(String str, C0249d c0249d) {
        C0245a.m4576a().m4583a(c0249d.m4694b(), c0249d.m4696c(), c0249d.m4698d(), c0249d.m4702f(), str);
    }

    public void m4735a(String str, String str2, C0246a c0246a) {
        m4718b(null, null, str, str2, c0246a, true);
    }

    public void m4736a(String str, String str2, String str3, C0246a c0246a) {
        m4718b(str, str2, null, str3, c0246a, true);
    }

    public void m4737a(String str, String str2, String str3, String str4) {
        C0245a.m4576a().m4582a(str, str2, str3, str4);
    }

    public void m4738a(String str, String str2, String str3, String str4, C0246a c0246a) {
        m4739a(str, str2, str3, str4, c0246a, true);
    }

    public void m4739a(String str, String str2, String str3, String str4, C0246a c0246a, boolean z) {
        m4712a(new C0239x(new C0226l(PushConstants.METHOD_LAPP_UNBIND, str, null), 1, str2, str3, str4, null, null, new C0254h(this, str, z, c0246a), this.f3112b));
    }

    public void m4740a(String str, String str2, String str3, String str4, String str5, C0246a c0246a) {
        try {
            JSONObject jSONObject = new JSONObject(m4729a(str, null));
            int i = jSONObject.getInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE);
            if (i == 0) {
                m4743a(str, str2, str3, str4, false, str5, c0246a, 5);
            } else if (i == 1) {
                String string = jSONObject.getString("push_token");
                try {
                    jSONObject.put(ProGuard.f5475c, "bind_light");
                    jSONObject.put("error", 0);
                    jSONObject.put("pushToken", string);
                    jSONObject.put("api_key", str);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                c0246a.m4636a(0, jSONObject.toString());
            } else if (i == -1) {
                c0246a.m4636a((int) PushConstants.ERROR_WEAK_SUBSCRIBE_BLACKED, null);
            }
        } catch (Exception e2) {
            c0246a.m4636a((int) PushConstants.ERROR_UNKNOWN, null);
        }
    }

    public void m4741a(String str, String str2, String str3, String str4, String str5, String str6, C0246a c0246a) {
        try {
            JSONObject jSONObject = new JSONObject(m4729a(str, str2));
            int i = jSONObject.getInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE);
            if (i == 0) {
                m4742a(str, str2, str3, str4, str5, str6, c0246a, 2);
            } else if (i == 1) {
                try {
                    jSONObject.put("error", 0);
                    jSONObject.put("api_key", str);
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    jSONObject2.put("tag", str2);
                    jSONObject2.put("result", 0);
                    jSONArray.put(jSONObject2);
                    jSONObject.put("tag", jSONArray.toString());
                } catch (Exception e) {
                    Log.e("LightAppManager", "error " + e.getMessage());
                }
                c0246a.m4647e(0, jSONObject.toString());
            } else if (i == -1) {
                c0246a.m4647e(PushConstants.ERROR_WEAK_SUBSCRIBE_BLACKED, null);
            }
        } catch (Exception e2) {
            c0246a.m4647e(PushConstants.ERROR_UNKNOWN, null);
        }
    }

    public void m4742a(String str, String str2, String str3, String str4, String str5, String str6, C0246a c0246a, int i) {
        if (C0245a.m4576a().m4619f(str)) {
            m4719b(str, str2, str3, str4, str5, str6, c0246a, i);
            return;
        }
        m4717a(str, null, str6, new C0259m(this, str, str2, str3, str4, str5, str6, c0246a, i));
    }

    public void m4743a(String str, String str2, String str3, String str4, boolean z, String str5, C0246a c0246a, int i) {
        C0226l c0226l = new C0226l(PushConstants.METHOD_LAPP_BIND_INTENT, str, null);
        C0252f c0252f = new C0252f(this, c0246a, str, i, str5, z);
        m4712a(new C0236u(c0226l, i, str2, str3, str4, str5, r0, this.f3112b));
    }

    public void m4744a(String str, String str2, String str3, boolean z, C0246a c0246a) {
        m4720b(str, str2, null, str3, z, null, c0246a, 3);
    }

    public void m4745a(String str, String str2, boolean z) {
        C0245a.m4576a().m4593a(str, str2, z);
    }

    public void m4746a(String str, String str2, boolean z, C0246a c0246a) {
        m4720b(null, null, str, str2, z, null, c0246a, 2);
    }

    public void m4747a(String str, String str2, boolean z, String str3, C0246a c0246a) {
        try {
            JSONObject jSONObject = new JSONObject(str3);
            String optString = jSONObject.optString(ProGuard.f5475c);
            if (TextUtils.isEmpty(optString) || optString.equals(LightAppTableDefine.DB_TABLE_SUBSCRIBE)) {
                m4720b(null, null, str, str2, z, str3, c0246a, 2);
            } else if (optString.equals("subscribe_service")) {
                String string = jSONObject.getString("nonce");
                r3 = jSONObject.getString("csrfToken");
                m4742a(str, jSONObject.getString(PushConstants.EXTRA_TAGS), r3, string, jSONObject.optString("referer", null), str2, c0246a, 1);
            } else if (optString.equals("bind_light")) {
                r3 = jSONObject.getString("nonce");
                m4743a(str, jSONObject.getString("csrfToken"), r3, jSONObject.optString("referer", null), z, str2, c0246a, 4);
            } else {
                c0246a.m4643c(PushConstants.ERROR_PARAMS_ERROR, m4710a((int) PushConstants.ERROR_PARAMS_ERROR, null, str, str, null, PushConstants.getErrorMsg(PushConstants.ERROR_PARAMS_ERROR) + " WRONG TYPE", 0));
            }
        } catch (Exception e) {
            c0246a.m4643c(PushConstants.ERROR_PARAMS_ERROR, m4710a((int) PushConstants.ERROR_PARAMS_ERROR, null, str, str, null, PushConstants.getErrorMsg(PushConstants.ERROR_PARAMS_ERROR) + e, 0));
        }
    }

    public void m4748a(ArrayList<String> arrayList) {
        C0245a.m4576a().m4611d((ArrayList) arrayList);
    }

    protected void m4749a(boolean z, String str, C0249d c0249d) {
        if (c0249d.m4705g() && z && c0249d.m4690a() != null) {
            C0261p.m4792a(this.f3112b, str, c0249d);
        }
    }

    public boolean m4750a(String str) {
        return !TextUtils.isEmpty(str) ? C0245a.m4576a().m4612d(str) : false;
    }

    public boolean m4751a(String str, String str2, int i) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? false : C0245a.m4576a().m4613d(str2, str) ? C0245a.m4576a().m4595a(str2, str, i) : C0245a.m4576a().m4603b(str2, str, i);
    }

    public boolean m4752a(String str, boolean z) {
        return TextUtils.isEmpty(str) ? false : C0245a.m4576a().m4596a(str, z);
    }

    public int m4753b(int i, String str, C0246a c0246a) {
        int b = C0245a.m4576a().m4597b(i, str);
        List arrayList = new ArrayList();
        arrayList.add(str);
        C0245a.m4576a().m4594a(null, arrayList);
        if (c0246a != null) {
            c0246a.m4642c(b);
        }
        return b;
    }

    public int m4754b(ArrayList<String> arrayList, C0246a c0246a) {
        int b = C0245a.m4576a().m4600b((ArrayList) arrayList);
        C0245a.m4576a().m4594a((List) arrayList, null);
        if (c0246a != null) {
            c0246a.m4640b(b);
        }
        return b;
    }

    public String m4755b(C0246a c0246a) {
        Collection f = C0245a.m4576a().m4617f();
        String str = "";
        if (f != null) {
            JSONArray jSONArray = new JSONArray(f);
            if (jSONArray != null) {
                str = jSONArray.toString();
            }
        }
        if (TextUtils.isEmpty(str)) {
            if (c0246a != null) {
                c0246a.m4650h(-1, null);
            }
            return null;
        } else if (c0246a == null) {
            return str;
        } else {
            c0246a.m4650h(0, str);
            return str;
        }
    }

    public ArrayList<String> m4756b(String str, int i) {
        return C0245a.m4576a().m4589a(str, i);
    }

    public void m4757b(String str, C0246a c0246a) {
        boolean e = C0245a.m4576a().m4615e(str);
        boolean g = C0245a.m4576a().m4621g(str);
        if (c0246a != null) {
            c0246a.m4639a(g, e);
        }
    }

    public void m4758b(String str, String str2, C0246a c0246a) {
        m4718b(null, null, str, str2, c0246a, false);
    }

    public void m4759b(String str, String str2, String str3, String str4, String str5, C0246a c0246a) {
        m4712a(new C0237v(new C0226l(PushConstants.METHOD_DEL_LAPP_TAGS, str, null), str2, str3, str4, str5, new C0260n(this, c0246a), this.f3112b));
    }

    public boolean m4760b() {
        HashMap g = C0245a.m4576a().m4620g();
        return (g == null || g.isEmpty()) ? false : true;
    }

    public boolean m4761b(String str) {
        return C0245a.m4576a().m4624h(str);
    }

    public boolean m4762b(String str, String str2) {
        boolean i = C0245a.m4576a().m4625i(str2);
        if (C0192a.m4341b()) {
            if (i) {
                Log.d("LightAppManager", "has registered");
            } else {
                Log.d("LightAppManager", "registering");
            }
        }
        return i ? C0245a.m4576a().m4626j(str2) : C0245a.m4576a().m4609c(str, str2);
    }

    public boolean m4763b(String str, String str2, String str3, String str4) {
        return C0245a.m4576a().m4604b(str, str2, str3, str4);
    }

    public int m4764c(int i, String str, C0246a c0246a) {
        int c = C0245a.m4576a().m4605c(i, str);
        List arrayList = new ArrayList();
        arrayList.add(str);
        C0245a.m4576a().m4594a(null, arrayList);
        if (c0246a != null) {
            c0246a.m4646e(c);
        }
        return c;
    }

    public int m4765c(ArrayList<String> arrayList, C0246a c0246a) {
        int c = C0245a.m4576a().m4607c((ArrayList) arrayList);
        C0245a.m4576a().m4594a((List) arrayList, null);
        if (c0246a != null) {
            c0246a.m4644d(c);
        }
        return c;
    }

    public ArrayList<C0273h> m4766c() {
        return C0245a.m4576a().m4623h();
    }

    public boolean m4767c(String str) {
        List arrayList = new ArrayList();
        arrayList.add(str);
        int b = C0245a.m4576a().m4600b((ArrayList) arrayList);
        C0245a.m4576a().m4594a(arrayList, null);
        return b >= 0;
    }

    public boolean m4768c(String str, int i) {
        return C0245a.m4576a().m4602b(str, i);
    }

    public boolean m4769c(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? false : C0245a.m4576a().m4616e(str2, str);
    }

    public int m4770d(String str) {
        return C0245a.m4576a().m4630n(str);
    }

    public void m4771d(String str, String str2) {
        C0245a.m4576a().m4618f(str, str2);
    }

    public boolean m4772e(String str) {
        return C0245a.m4576a().m4631o(str);
    }

    public int m4773f(String str) {
        return C0245a.m4576a().m4598b(str);
    }

    public int m4774g(String str) {
        return C0245a.m4576a().m4606c(str);
    }

    public String m4775h(String str) {
        String str2 = "";
        try {
            JSONObject jSONObject = new JSONObject(C0245a.m4576a().m4633q(str)).getJSONObject("thumbnails");
            int i = this.f3112b.getResources().getDisplayMetrics().densityDpi;
            switch (i) {
                case 120:
                    return jSONObject.getString("S");
                case 160:
                    return jSONObject.getString("M");
                case 240:
                    return jSONObject.getString("L");
                default:
                    return i > 240 ? jSONObject.getString("XL") : jSONObject.getString("S");
            }
        } catch (JSONException e) {
            Log.e("LightAppManager", "error " + e.getMessage());
            return str2;
        }
    }

    public C0273h m4776i(String str) {
        return C0245a.m4576a().m4628l(str);
    }

    public String m4777j(String str) {
        return C0245a.m4576a().m4634r(str);
    }
}
