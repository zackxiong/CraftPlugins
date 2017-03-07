package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p071e.C0251o;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0402c;
import java.util.HashMap;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.v */
public class C0237v extends C0215c {
    protected String f3061e;
    private C0251o f3062f;
    private String f3063g;
    private String f3064h;
    private String f3065i;
    private String f3066j;

    public C0237v(C0226l c0226l, String str, String str2, String str3, String str4, C0251o c0251o, Context context) {
        super(c0226l, context);
        this.f3063g = null;
        this.f3064h = "";
        this.f3065i = "";
        this.f3066j = "";
        this.f3061e = str;
        this.f3064h = str2;
        this.f3065i = str3;
        this.f3066j = str4;
        this.f3062f = c0251o;
    }

    protected void m4560a(int i) {
        super.m4505a(i);
        if (this.f3062f != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("details", this.f3063g);
            this.f3062f.m4778a(i, hashMap);
        }
    }

    protected void m4561a(int i, byte[] bArr) {
        super.m4506a(i, bArr);
        if (this.f3062f != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("details", this.f3063g);
            this.f3062f.m4778a(i, hashMap);
        }
    }

    protected void m4562a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "lightapp_deltags"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_TAGS, this.f3061e));
        list.add(new BasicNameValuePair("cuid", C0402c.m5346a(this.a)));
        list.add(new BasicNameValuePair("csrftoken", this.f3064h));
        list.add(new BasicNameValuePair("nonce", this.f3065i));
        list.add(new BasicNameValuePair("referer", this.f3066j));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("BaseApiProcessor", "lightapp_unsubscribe_service param -- " + obj.toString());
            }
        }
    }

    protected String m4563b(String str) {
        String b = super.m4510b(str);
        try {
            this.f3063g = new JSONObject(b).getJSONObject("response_params").getJSONArray("details").toString();
        } catch (JSONException e) {
            C0385a.m5313d("BaseApiProcessor", "error " + e.getMessage());
        }
        return b;
    }
}
