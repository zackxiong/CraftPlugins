package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.j */
public class C0224j extends C0215c {
    protected String f3022e;

    public C0224j(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3022e = str;
    }

    protected void m4538a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "deltags"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_TAGS, this.f3022e));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("DelTags", "DelTags param -- " + obj.toString());
            }
        }
    }
}
