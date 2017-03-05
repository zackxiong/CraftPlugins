package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0206f;
import com.baidu.android.pushservice.p069c.C0207g;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p069c.C0209i;
import com.baidu.android.pushservice.p069c.C0210j;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.a.g */
public class C0308g extends C0301c {
    private static final String f3342b;

    static {
        f3342b = C0308g.class.getSimpleName();
    }

    public C0308g(Context context) {
        super(context);
    }

    public int m5040a(String str, String str2, byte[] bArr) {
        C0209i d = C0210j.m4473a(this.a).m4478d(str);
        JSONObject jSONObject;
        if (d != null) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(f3342b, "receive sdk message " + new String(bArr) + " pkgName = " + d.m4444c());
            }
            Object obj = "";
            try {
                jSONObject = new JSONObject(new String(bArr));
                if (!jSONObject.isNull("description")) {
                    obj = jSONObject.getString("description");
                }
            } catch (JSONException e) {
            }
            if (TextUtils.isEmpty(obj)) {
                return 0;
            }
            Intent intent = new Intent(PushConstants.ACTION_SDK_MESSAGE);
            intent.setPackage(d.m4444c());
            intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
            intent.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, obj);
            intent.setFlags(32);
            this.a.sendBroadcast(intent);
            return 0;
        }
        int i;
        C0208h b = C0201b.m4446a(this.a).m4458b(str);
        String str3;
        if (b != null) {
            PublicMsg a = C0310i.m5042a(str2, str, bArr);
            boolean a2 = m5019a(bArr);
            if (a != null) {
                String str4;
                Intent intent2 = new Intent();
                String str5 = "";
                if (a2) {
                    i = 5;
                    str4 = PushConstants.ACTION_FB_MESSAGE;
                } else {
                    str3 = PushConstants.ACTION_MESSAGE;
                    intent2.putExtra("msg_id", str2);
                    intent2.putExtra(PushConstants.EXTRA_APP_ID, str);
                    i = 0;
                    str4 = str3;
                }
                intent2.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, a.mDescription);
                if (!TextUtils.isEmpty(a.mCustomContent)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(a.mCustomContent);
                        Iterator keys = jSONObject2.keys();
                        while (keys.hasNext()) {
                            str3 = (String) keys.next();
                            intent2.putExtra(str3, jSONObject2.getString(str3));
                        }
                        intent2.putExtra(PushConstants.EXTRA_EXTRA, a.mCustomContent);
                    } catch (JSONException e2) {
                        C0385a.m5312c(f3342b, "Custom content to JSONObject exception::" + e2.getMessage());
                    }
                }
                C0374f.m5184a(this.a, intent2, str4, b.m4444c());
                str3 = ">>> Deliver message to client: " + b.m4444c() + " msg: " + a.mDescription;
                if (C0192a.m4341b()) {
                    C0385a.m5308a(f3342b, str3);
                    C0374f.m5201b(str3);
                }
            } else {
                i = 0;
            }
        } else {
            C0206f c0206f = (C0206f) C0207g.m4472a(this.a).m4469b(str);
            if (c0206f != null) {
                Object obj2 = "";
                try {
                    jSONObject = new JSONObject(new String(bArr));
                    if (!jSONObject.isNull("description")) {
                        obj2 = jSONObject.getString("description");
                    }
                } catch (JSONException e3) {
                }
                if (TextUtils.isEmpty(obj2)) {
                    return 0;
                }
                intent = new Intent();
                intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
                intent.putExtra(PushConstants.EXTRA_PUSH_MESSAGE_STRING, obj2);
                C0374f.m5184a(this.a, intent, PushConstants.ACTION_LAPP_MESSAGE, c0206f.m4444c());
                return 0;
            }
            i = 2;
            str3 = ">>> NOT delivere message to app: " + (b == null ? "client not found." : " client_userId-" + b.f2984e + " in " + b.m4444c());
            C0306e.m5029a(this.a, str);
            C0385a.m5308a(f3342b, str3);
            if (C0192a.m4341b()) {
                C0374f.m5201b(str3);
            }
        }
        return i;
    }
}
