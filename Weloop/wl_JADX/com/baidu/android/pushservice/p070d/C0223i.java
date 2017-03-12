package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.i */
public class C0223i extends C0215c {
    protected String f3021e;

    public C0223i(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3021e = str;
    }

    protected void m4537a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "gmsgcount"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_GID, this.f3021e));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("CountGmsg", "CountGmsg param -- " + obj.toString());
            }
        }
    }
}
