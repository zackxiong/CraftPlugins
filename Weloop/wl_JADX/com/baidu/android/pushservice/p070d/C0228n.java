package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.n */
public class C0228n extends C0215c {
    int f3035e;
    int f3036f;
    String f3037g;

    public C0228n(C0226l c0226l, Context context, String str, int i, int i2) {
        super(c0226l, context);
        this.f3035e = 1;
        this.f3036f = 1;
        this.f3037g = str;
        this.f3035e = i;
        this.f3036f = i2;
    }

    protected void m4541a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "fetchgmsg"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_GID, this.f3037g));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_FETCH_TYPE, this.f3035e + ""));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_FETCH_NUM, this.f3036f + ""));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("FetchGmsg", "FETCHGmsg param -- " + obj.toString());
            }
        }
    }
}
