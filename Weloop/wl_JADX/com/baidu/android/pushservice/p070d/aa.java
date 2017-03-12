package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.aa */
public class aa extends C0216d {
    protected String f3004f;

    public aa(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3004f = null;
        this.f3004f = str;
    }

    protected void m4514a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "sendmsgtoserver"));
        if (this.f3004f != null) {
            try {
                JSONObject jSONObject = new JSONObject(this.f3004f);
                if (jSONObject.has("to")) {
                    list.add(new BasicNameValuePair(PushConstants.EXTRA_CB_URL, jSONObject.getString("to")));
                    C0385a.m5311b("Send", jSONObject.getString("to"));
                }
                if (jSONObject.has("data")) {
                    list.add(new BasicNameValuePair("cb_data", jSONObject.getString("data")));
                }
            } catch (JSONException e) {
                C0385a.m5313d("Send", "error " + e.getMessage());
            }
            if (C0192a.m4341b()) {
                for (NameValuePair obj : list) {
                    C0385a.m5311b("Send", "send param -- " + obj.toString());
                }
            }
        }
    }
}
