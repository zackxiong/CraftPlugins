package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.content.Intent;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.ac */
public class ac extends C0215c {
    protected String f3009e;
    protected C0218a f3010f;

    /* renamed from: com.baidu.android.pushservice.d.ac.a */
    public interface C0218a {
        void m4517a(int i);
    }

    public ac(C0226l c0226l, Context context, String str) {
        super(c0226l, context);
        this.f3009e = str;
    }

    protected void m4518a(Intent intent) {
        super.m4507a(intent);
        if (intent != null) {
            int intExtra = intent.getIntExtra(PushConstants.EXTRA_ERROR_CODE, -1);
            if (intExtra != 0 && this.f3010f != null) {
                this.f3010f.m4517a(intExtra);
            }
        }
    }

    protected void m4519a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "settags"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_TAGS, this.f3009e));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("SetTags", "SetTags param -- " + obj.toString());
            }
        }
    }

    protected String m4520b(String str) {
        if (this.f3010f != null) {
            this.f3010f.m4517a(0);
        }
        return super.m4510b(str);
    }
}
