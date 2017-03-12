package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.p */
public class C0230p extends C0215c {
    protected String f3040e;

    public C0230p(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3040e = str;
    }

    protected void m4546a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "gbind"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_GID, this.f3040e));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Gbind", "Gbind param -- " + obj.toString());
            }
        }
    }
}
