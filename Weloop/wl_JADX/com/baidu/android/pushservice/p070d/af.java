package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.af */
public class af extends C0216d {
    public af(C0226l c0226l, Context context) {
        super(c0226l, context);
    }

    protected void m4527a(List<NameValuePair> list) {
        C0219b.m4530a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "unbindapp"));
        list.add(new BasicNameValuePair("appid", this.b.f3029f));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("UnbindApp", "UNBINDAPP param -- " + obj.toString());
            }
        }
    }
}
