package com.baidu.android.pushservice.p070d;

import android.app.PendingIntent;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;

/* renamed from: com.baidu.android.pushservice.d.l */
public class C0226l {
    public String f3024a;
    public String f3025b;
    public String f3026c;
    public String f3027d;
    public String f3028e;
    public String f3029f;
    public String f3030g;
    public String f3031h;
    public String f3032i;

    public C0226l() {
        this.f3024a = "";
        this.f3025b = "";
        this.f3026c = "";
        this.f3027d = "";
        this.f3028e = "";
        this.f3029f = "";
        this.f3030g = "";
        this.f3031h = "";
        this.f3032i = "";
    }

    public C0226l(Intent intent) {
        this.f3024a = "";
        this.f3025b = "";
        this.f3026c = "";
        this.f3027d = "";
        this.f3028e = "";
        this.f3029f = "";
        this.f3030g = "";
        this.f3031h = "";
        this.f3032i = "";
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(PushConstants.EXTRA_APP);
        if (pendingIntent != null) {
            this.f3028e = pendingIntent.getTargetPackage();
        }
        if (TextUtils.isEmpty(this.f3028e)) {
            this.f3028e = intent.getStringExtra(PushConstants.PACKAGE_NAME);
        }
        this.f3027d = intent.getStringExtra(PushConstants.EXTRA_ACCESS_TOKEN);
        this.f3032i = intent.getStringExtra(PushConstants.EXTRA_API_KEY);
        this.f3024a = intent.getStringExtra(PushConstants.EXTRA_METHOD);
        this.f3025b = intent.getStringExtra("method_type");
        this.f3026c = intent.getStringExtra("method_version");
        this.f3031h = intent.getStringExtra("bduss");
        this.f3029f = intent.getStringExtra("appid");
    }

    public C0226l(String str, String str2, String str3) {
        this.f3024a = "";
        this.f3025b = "";
        this.f3026c = "";
        this.f3027d = "";
        this.f3028e = "";
        this.f3029f = "";
        this.f3030g = "";
        this.f3031h = "";
        this.f3032i = "";
        this.f3032i = str2;
        this.f3029f = str3;
        this.f3024a = str;
    }

    public String toString() {
        return "method=" + this.f3024a + ", rsarsaAccessToken=" + this.f3027d + ", packageName=" + this.f3028e + ", appId=" + this.f3029f + ", userId=" + this.f3030g + ", rsaBduss=" + this.f3031h;
    }
}
