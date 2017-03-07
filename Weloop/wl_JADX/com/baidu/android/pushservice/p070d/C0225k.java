package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;

/* renamed from: com.baidu.android.pushservice.d.k */
public class C0225k extends C0215c {
    String[] f3023e;

    public C0225k(C0226l c0226l, Context context, String[] strArr) {
        super(c0226l, context);
        this.f3023e = strArr;
    }

    protected void m4539a(List<NameValuePair> list) {
        super.m4509a((List) list);
        if (r1 == 0) {
            m4505a((int) PushConstants.ERROR_PARAMS_ERROR);
            if (C0192a.m4341b()) {
                C0385a.m5311b("Delete", "Delete param -- msgIds == null");
                return;
            }
            return;
        }
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "delete"));
        JSONArray jSONArray = new JSONArray();
        for (Object put : this.f3023e) {
            jSONArray.put(put);
        }
        list.add(new BasicNameValuePair(PushConstants.EXTRA_MSG_IDS, jSONArray.toString()));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Delete", "Delete param -- " + obj.toString());
            }
        }
    }
}
