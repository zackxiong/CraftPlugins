package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0206f;
import com.baidu.android.pushservice.p069c.C0207g;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p069c.C0209i;
import com.baidu.android.pushservice.p069c.C0210j;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.message.a.f */
public class C0307f extends C0301c {
    private static final String f3341b;

    static {
        f3341b = C0307f.class.getSimpleName();
    }

    public C0307f(Context context) {
        super(context);
    }

    public int m5039a(String str, String str2, byte[] bArr) {
        C0209i d = C0210j.m4473a(this.a).m4478d(str);
        String str3 = new String(bArr);
        if (d != null) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(f3341b, "receive sdk message " + str3 + " pkgName = " + d.m4444c());
            }
            Intent intent = new Intent();
            intent.setPackage(d.m4444c());
            intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
            intent.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, str3);
            C0374f.m5184a(this.a, intent, PushConstants.ACTION_SDK_MESSAGE, d.m4444c());
            return 0;
        }
        int i;
        C0208h b = C0201b.m4446a(this.a).m4458b(str);
        Intent intent2;
        if (b != null) {
            PackageInfo packageInfo = null;
            try {
                packageInfo = this.a.getPackageManager().getPackageInfo(b.m4444c(), 0);
            } catch (NameNotFoundException e) {
                if (C0192a.m4341b()) {
                    if (TextUtils.isEmpty(b.m4444c())) {
                        C0385a.m5313d(f3341b, "NameNotFoundException at find PackageName " + b.m4444c());
                    } else {
                        C0385a.m5313d(f3341b, "client package name is null");
                    }
                }
            }
            String str4;
            if (packageInfo == null) {
                str4 = ">>> NOT deliver to app: " + b.m4444c() + ", package has been uninstalled.";
                C0306e.m5029a(this.a, str);
                if (C0192a.m4341b()) {
                    C0385a.m5308a(f3341b, str4);
                    C0374f.m5201b(str4);
                }
            } else {
                intent2 = new Intent();
                intent2.putExtra("msg_id", str2);
                intent2.putExtra(PushConstants.EXTRA_APP_ID, str);
                intent2.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
                intent2.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, str3);
                C0374f.m5184a(this.a, intent2, PushConstants.ACTION_MESSAGE, b.m4444c());
                str4 = ">>> Deliver message to client: " + b.m4444c();
                if (C0192a.m4341b()) {
                    C0385a.m5311b(f3341b, str4);
                    C0374f.m5201b(str4);
                }
            }
            i = 0;
        } else if (((C0206f) C0207g.m4472a(this.a).m4469b(str)) != null) {
            intent2 = new Intent(PushConstants.ACTION_LAPP_MESSAGE);
            intent2.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
            intent2.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, str3);
            intent2.setFlags(32);
            this.a.sendBroadcast(intent2);
            i = 0;
        } else {
            i = 2;
            String str5 = ">>> Not deliver message to client: client NOT found";
            if (C0192a.m4341b()) {
                C0385a.m5311b(f3341b, str5);
                C0374f.m5201b(str5);
            }
        }
        return i;
    }
}
