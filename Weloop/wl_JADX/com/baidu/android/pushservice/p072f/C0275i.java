package com.baidu.android.pushservice.p072f;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.util.C0371c;
import com.baidu.frontia.module.deeplink.C0418e;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.i */
public class C0275i extends C0274n {
    private static C0275i f3239e;
    private String f3240c;
    private C0418e f3241d;

    static {
        f3239e = null;
    }

    private C0275i(Context context) {
        super(context);
        this.f3240c = "LbsSender";
        this.f3241d = null;
        this.b = C0383z.f3622i;
    }

    public static C0275i m4901a(Context context) {
        if (f3239e == null) {
            f3239e = new C0275i(context);
        }
        return f3239e;
    }

    String m4902a(boolean z) {
        return C0371c.m5152a(this.a, z);
    }

    public void m4903a(C0418e c0418e) {
        this.f3241d = c0418e;
    }

    void m4904a(String str) {
        JSONObject jSONObject;
        C0371c.m5153a(this.a, System.currentTimeMillis());
        C0385a.m5308a(this.f3240c, "<<< Location info send result return OK!");
        C0385a.m5311b(this.f3240c, "Lbs upload respponse: " + str);
        try {
            jSONObject = new JSONObject(str).getJSONObject("lbsInfo");
        } catch (JSONException e) {
            e.printStackTrace();
            jSONObject = null;
        }
        Object a = C0371c.m5151a(this.a, jSONObject);
        if (this.f3241d != null && !TextUtils.isEmpty(a)) {
            this.f3241d.m5416a(0, a);
            this.f3241d = null;
        }
    }

    void m4905a(String str, List<NameValuePair> list) {
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "uploadGeo"));
        if (C0192a.m4339a(this.a)) {
            C0385a.m5311b(this.f3240c, "Sending LBS data: " + str);
        }
        list.add(new BasicNameValuePair("data", str));
    }

    boolean m4906a() {
        return true;
    }

    boolean m4907b() {
        return true;
    }
}
