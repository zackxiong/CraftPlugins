package com.baidu.android.pushservice.p070d;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.ab */
public class ab extends C0217e {
    protected String f3005e;
    protected String f3006f;
    protected String f3007g;
    protected String f3008h;

    public ab(C0226l c0226l, Context context, String str, String str2, String str3, String str4) {
        super(c0226l, context);
        this.f3005e = null;
        this.f3006f = null;
        this.f3007g = null;
        this.f3008h = null;
        this.f3005e = str;
        this.f3006f = str2;
        this.f3007g = str3;
        this.f3008h = str4;
    }

    protected void m4516a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "sendmsgtouser"));
        list.add(new BasicNameValuePair("appid", this.f3005e));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_USER_ID, this.f3006f));
        if (this.f3008h != null && this.f3007g != null) {
            C0385a.m5311b(PushConstants.EXTRA_USER_ID, this.f3006f);
            StringBuilder stringBuilder = new StringBuilder("[\"");
            stringBuilder.append(this.f3007g).append("\"]");
            StringBuilder stringBuilder2 = new StringBuilder("[\"");
            stringBuilder2.append(this.f3008h).append("\"]");
            list.add(new BasicNameValuePair("msg_keys", stringBuilder.toString()));
            list.add(new BasicNameValuePair("messages", stringBuilder2.toString()));
            C0385a.m5311b("Send", "key:" + this.f3007g.toString() + " messages:" + this.f3008h.toString());
            if (C0192a.m4341b()) {
                for (NameValuePair obj : list) {
                    C0385a.m5311b("Send", "sendMsgToUser param -- " + obj.toString());
                }
            }
        }
    }
}
