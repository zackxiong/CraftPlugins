package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.s */
public class C0233s extends C0215c {
    protected String f3042e;

    public C0233s(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3042e = str;
    }

    protected void m4549a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "gunbind"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_GID, this.f3042e));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Gunbind", "Gunbind param -- " + obj.toString());
            }
        }
    }
}
