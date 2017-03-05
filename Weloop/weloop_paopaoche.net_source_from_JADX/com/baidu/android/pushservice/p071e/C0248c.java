package com.baidu.android.pushservice.p071e;

import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.module.deeplink.LightApi;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.c */
public class C0248c implements C0246a {
    private LightApi f3098a;

    public C0248c(LightApi lightApi) {
        this.f3098a = lightApi;
    }

    private void m4671k(int i, String str) {
        if (this.f3098a != null) {
            synchronized (this.f3098a.myLock) {
                if (!this.f3098a.resFlag) {
                    this.f3098a.resFlag = true;
                    this.f3098a.waitFlag = true;
                    this.f3098a.sendResponse(i, str);
                    synchronized (this.f3098a.waitLock) {
                        this.f3098a.waitLock.notify();
                    }
                }
            }
        }
    }

    public void m4672a(int i) {
        JSONObject jSONObject = new JSONObject();
        int i2 = i >= 0 ? 0 : 1;
        try {
            jSONObject.put("error", i2);
            jSONObject.put("count", i);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4673a(int i, String str) {
        if (i != 0 || TextUtils.isEmpty(str)) {
            m4671k(1, i + " - " + PushConstants.getErrorMsg(i));
        } else {
            m4671k(0, str);
        }
    }

    public void m4674a(int i, String str, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error", i);
            jSONObject.put("msgs", str);
            jSONObject.put("ismore", z);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i, jSONObject.toString());
    }

    public void m4675a(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error", 0);
            jSONObject.put("is_bind", z);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(0, jSONObject.toString());
    }

    public void m4676a(boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error", 0);
            jSONObject.put("is_bind", z2);
            jSONObject.put("is_subscribe", z);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(0, jSONObject.toString());
    }

    public void m4677b(int i) {
        JSONObject jSONObject = new JSONObject();
        int i2 = i > 0 ? 0 : 1;
        try {
            jSONObject.put("error", i2);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4678b(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        if (i == 0) {
            try {
                jSONObject.put("error", 0);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            m4671k(0, jSONObject.toString());
            return;
        }
        m4671k(1, i + " - " + PushConstants.getErrorMsg(i));
    }

    public void m4679c(int i) {
        JSONObject jSONObject = new JSONObject();
        int i2 = i > 0 ? 0 : 1;
        try {
            jSONObject.put("error", i2);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4680c(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (i == 0) {
                jSONObject.put("error", 0);
                m4671k(0, jSONObject.toString());
                return;
            }
            m4671k(1, i + " - " + PushConstants.getErrorMsg(i));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void m4681d(int i) {
        JSONObject jSONObject = new JSONObject();
        int i2 = i >= 0 ? 0 : 1;
        try {
            jSONObject.put("error", i2);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4682d(int i, String str) {
        m4678b(i, str);
    }

    public void m4683e(int i) {
        JSONObject jSONObject = new JSONObject();
        int i2 = i > 0 ? 0 : 1;
        try {
            jSONObject.put("error", i2);
        } catch (JSONException e) {
            C0385a.m5308a("LightApiListenerForHttp", "jsonException caught: " + e.getMessage());
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4684e(int i, String str) {
        int i2 = 0;
        if (i != 0) {
            i2 = 1;
            str = i + " - " + PushConstants.getErrorMsg(i);
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getJSONArray("tag").getJSONObject(0).getString("tag");
                jSONObject.remove("tag");
                jSONObject.put("tag", string);
                str = jSONObject.toString();
            } catch (JSONException e) {
            }
        }
        m4671k(i2, str);
    }

    public void m4685f(int i, String str) {
        int i2 = 0;
        if (i != 0) {
            i2 = 1;
            str = i + " - " + PushConstants.getErrorMsg(i);
        } else {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONArray(str).getJSONObject(0);
                jSONObject.put("error", 0);
                jSONObject.put("tag", jSONObject2.getString("tag"));
                str = jSONObject.toString();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        m4671k(i2, str);
    }

    public void m4686g(int i, String str) {
        int i2 = 0;
        JSONObject jSONObject = new JSONObject();
        if (i != 0) {
            i2 = 1;
        } else {
            try {
                jSONObject.put("error", 0);
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("apps", str);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4687h(int i, String str) {
        int i2 = 0;
        JSONObject jSONObject = new JSONObject();
        if (i != 0) {
            i2 = 1;
        } else {
            try {
                jSONObject.put("error", 0);
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("appids", str);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4688i(int i, String str) {
        int i2 = 0;
        JSONObject jSONObject = new JSONObject();
        if (i != 0) {
            i2 = 1;
        } else {
            try {
                jSONObject.put("error", 0);
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("appinfos", str);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        m4671k(i2, jSONObject.toString());
    }

    public void m4689j(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (i == 0) {
                jSONObject.put("error", 0);
                m4671k(0, jSONObject.toString());
                return;
            }
            m4671k(1, i + " - " + PushConstants.getErrorMsg(i));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
