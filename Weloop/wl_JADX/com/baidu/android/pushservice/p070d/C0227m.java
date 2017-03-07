package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.m */
public class C0227m extends C0215c {
    int f3033e;
    int f3034f;

    public C0227m(C0226l c0226l, Context context, int i, int i2) {
        super(c0226l, context);
        this.f3033e = 1;
        this.f3034f = 1;
        this.f3033e = i;
        this.f3034f = i2;
    }

    protected void m4540a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "fetch"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_FETCH_TYPE, this.f3033e + ""));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_FETCH_NUM, this.f3034f + ""));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Fetch", "FETCH param -- " + obj.toString());
            }
        }
    }
}
