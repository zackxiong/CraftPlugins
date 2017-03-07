package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.y */
public class C0240y extends C0215c {
    private ArrayList<String> f3084e;

    public C0240y(C0226l c0226l, Context context) {
        super(c0226l, context);
        this.f3084e = new ArrayList();
    }

    protected void m4572a(int i, byte[] bArr) {
        Intent intent = new Intent();
        if (this.b.f3024a.equals(PushConstants.METHOD_LIST_LAPP_TAGS)) {
            intent.setAction(PushConstants.ACTION_LAPP_RECEIVE);
        } else if (this.b.f3024a.equals(PushConstants.METHOD_LIST_SDK_TAGS)) {
            intent.setAction(PushConstants.ACTION_SDK_RECEIVE);
        } else {
            intent.setAction(PushConstants.ACTION_RECEIVE);
        }
        intent.putExtra(PushConstants.EXTRA_METHOD, this.b.f3024a);
        intent.putExtra(PushConstants.EXTRA_ERROR_CODE, i);
        intent.putExtra(PushConstants.EXTRA_CONTENT, bArr);
        if (!this.f3084e.isEmpty()) {
            intent.putStringArrayListExtra(PushConstants.EXTRA_TAGS_LIST, this.f3084e);
        }
        intent.setFlags(32);
        m4507a(intent);
        if (TextUtils.isEmpty(this.b.f3028e)) {
            if (!(this.b.f3024a.equals(PushConstants.METHOD_LIST_LAPP_TAGS) || this.b.f3024a.equals(PushConstants.METHOD_LIST_SDK_TAGS))) {
                return;
            }
        } else if (!(this.b.f3024a.equals(PushConstants.METHOD_LIST_LAPP_TAGS) || this.b.f3024a.equals(PushConstants.METHOD_LIST_SDK_TAGS))) {
            intent.setPackage(this.b.f3028e);
        }
        C0385a.m5311b("Glist", "> sendResult to " + this.b.f3032i + " ,method:" + this.b.f3024a + " ,errorCode : " + i + " ,content : " + new String(bArr));
        this.a.sendBroadcast(intent);
    }

    protected void m4573a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "glist"));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Glist", "Glist param -- " + obj.toString());
            }
        }
    }

    protected String m4574b(String str) {
        String b = super.m4510b(str);
        try {
            JSONArray jSONArray = new JSONObject(b).getJSONObject("response_params").getJSONArray("groups");
            for (int i = 0; i < jSONArray.length(); i++) {
                this.f3084e.add(jSONArray.getJSONObject(i).getString("name"));
            }
        } catch (JSONException e) {
            C0385a.m5313d("Glist", "error " + e.getMessage());
        }
        return b;
    }
}
