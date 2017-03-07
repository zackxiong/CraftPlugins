package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushLightapp;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0206f;
import com.baidu.android.pushservice.p069c.C0207g;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p069c.C0209i;
import com.baidu.android.pushservice.p069c.C0210j;
import com.baidu.android.pushservice.p069c.C0211k;
import com.baidu.android.pushservice.p069c.C0212l;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.d */
public class C0216d extends C0215c {
    protected boolean f3003e;

    public C0216d(C0226l c0226l, Context context) {
        super(c0226l, context);
        this.f3003e = false;
    }

    protected String m4513b(String str) {
        String string;
        String jSONObject;
        C0208h c0208h;
        Intent intent;
        Iterator it;
        String str2;
        Intent createMethodIntent;
        C0206f c0206f;
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            JSONObject jSONObject3 = jSONObject2.getJSONObject("response_params");
            String string2 = jSONObject3.getString(PushConstants.EXTRA_USER_ID);
            string = jSONObject3.getString("appid");
            jSONObject3.put("channel_id", ad.m4377a().m4382c());
            this.b.f3030g = string2;
            this.b.f3029f = string;
            jSONObject = jSONObject2.toString();
            try {
                Intent intent2;
                if (this.b.f3024a.equals(PushConstants.METHOD_WEBAPP_BIND_INTENT) && !TextUtils.isEmpty(this.b.f3032i)) {
                    C0211k c0211k = (C0211k) C0212l.m4479a(this.a).m4471c(this.b.f3032i);
                    if (c0211k != null) {
                        c0211k.m4441a(string);
                        C0212l.m4479a(this.a).m4465a(c0211k, this.f3003e);
                        intent2 = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
                        intent2.putExtra("r_sync_type", 1);
                        intent2.putExtra("r_sync_from", this.a.getPackageName());
                        intent2.setFlags(32);
                        this.a.sendBroadcast(intent2);
                        return jSONObject;
                    }
                } else if (this.b.f3024a.equals(PushConstants.METHOD_LAPP_BIND_INTENT) && !TextUtils.isEmpty(this.b.f3032i)) {
                    c0206f = (C0206f) C0207g.m4472a(this.a).m4471c(this.b.f3032i);
                    if (c0206f != null) {
                        c0206f.m4441a(string);
                        C0207g.m4472a(this.a).m4465a(c0206f, this.f3003e);
                        intent2 = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
                        intent2.putExtra("r_sync_type", 2);
                        intent2.putExtra("r_sync_from", this.a.getPackageName());
                        intent2.setFlags(32);
                        this.a.sendBroadcast(intent2);
                        return jSONObject;
                    }
                } else if (this.b.f3024a.equals(PushConstants.METHOD_SDK_BIND)) {
                    C0209i c0209i = (C0209i) C0210j.m4473a(this.a).m4471c(this.b.f3032i);
                    if (c0209i != null) {
                        c0209i.m4441a(string);
                        C0210j.m4473a(this.a).m4476a(c0209i);
                        intent2 = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
                        intent2.putExtra("r_sync_type", 3);
                        intent2.putExtra("r_sync_sdk_from", this.a.getPackageName());
                        intent2.setFlags(32);
                        this.a.sendBroadcast(intent2);
                        return jSONObject;
                    }
                }
                if (C0192a.m4341b()) {
                    C0385a.m5308a("BaseRegisterProcessor", "RegisterThread userId :  " + string2);
                    C0385a.m5308a("BaseRegisterProcessor", "RegisterThread appId :  " + string);
                    C0385a.m5308a("BaseRegisterProcessor", "RegisterThread content :  " + str);
                }
            } catch (JSONException e) {
                try {
                    if (!(TextUtils.isEmpty(new JSONObject(str).getString("request_id")) || !this.b.f3024a.equals(PushConstants.METHOD_LAPP_UNBIND) || TextUtils.isEmpty(this.b.f3032i))) {
                        c0206f = (C0206f) C0207g.m4472a(this.a).m4471c(this.b.f3032i);
                        if (c0206f != null) {
                            C0207g.m4472a(this.a).m4465a(c0206f, false);
                            return jSONObject;
                        }
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                if (C0192a.m4341b()) {
                    C0385a.m5311b("BaseRegisterProcessor", "Appid or user_id not found @: \r\n" + str);
                }
                c0208h = new C0208h();
                c0208h.m4443b(this.b.f3028e);
                c0208h.m4441a(this.b.f3029f);
                c0208h.f2984e = this.b.f3030g;
                intent = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
                string = C0201b.m4446a(this.a).m4453a(c0208h, this.f3003e);
                intent.putExtra("r_sync_type", 0);
                intent.putExtra("r_sync_rdata", string);
                intent.putExtra("r_sync_rdata_v2", C0201b.m4446a(this.a).m4459b(c0208h, this.f3003e));
                intent.putExtra("r_sync_from", this.a.getPackageName());
                intent.setFlags(32);
                this.a.sendBroadcast(intent);
                it = C0374f.m5251w(this.a).iterator();
                while (it.hasNext()) {
                    str2 = (String) it.next();
                    createMethodIntent = PushConstants.createMethodIntent(this.a);
                    createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart");
                    createMethodIntent.setPackage(str2);
                    this.a.sendBroadcast(createMethodIntent);
                    C0192a.m4338a(this.a, false);
                }
                return jSONObject;
            }
        } catch (JSONException e3) {
            jSONObject = str;
            c0206f = (C0206f) C0207g.m4472a(this.a).m4471c(this.b.f3032i);
            if (c0206f != null) {
                C0207g.m4472a(this.a).m4465a(c0206f, false);
                return jSONObject;
            }
            if (C0192a.m4341b()) {
                C0385a.m5311b("BaseRegisterProcessor", "Appid or user_id not found @: \r\n" + str);
            }
            c0208h = new C0208h();
            c0208h.m4443b(this.b.f3028e);
            c0208h.m4441a(this.b.f3029f);
            c0208h.f2984e = this.b.f3030g;
            intent = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
            string = C0201b.m4446a(this.a).m4453a(c0208h, this.f3003e);
            intent.putExtra("r_sync_type", 0);
            intent.putExtra("r_sync_rdata", string);
            intent.putExtra("r_sync_rdata_v2", C0201b.m4446a(this.a).m4459b(c0208h, this.f3003e));
            intent.putExtra("r_sync_from", this.a.getPackageName());
            intent.setFlags(32);
            this.a.sendBroadcast(intent);
            it = C0374f.m5251w(this.a).iterator();
            while (it.hasNext()) {
                str2 = (String) it.next();
                createMethodIntent = PushConstants.createMethodIntent(this.a);
                createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart");
                createMethodIntent.setPackage(str2);
                this.a.sendBroadcast(createMethodIntent);
                C0192a.m4338a(this.a, false);
            }
            return jSONObject;
        }
        if (TextUtils.isEmpty(this.b.f3025b) || !this.b.f3025b.equals("internal")) {
            c0208h = new C0208h();
            c0208h.m4443b(this.b.f3028e);
            c0208h.m4441a(this.b.f3029f);
            c0208h.f2984e = this.b.f3030g;
            intent = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
            string = C0201b.m4446a(this.a).m4453a(c0208h, this.f3003e);
            intent.putExtra("r_sync_type", 0);
            intent.putExtra("r_sync_rdata", string);
            intent.putExtra("r_sync_rdata_v2", C0201b.m4446a(this.a).m4459b(c0208h, this.f3003e));
            intent.putExtra("r_sync_from", this.a.getPackageName());
            intent.setFlags(32);
            this.a.sendBroadcast(intent);
            it = C0374f.m5251w(this.a).iterator();
            while (it.hasNext()) {
                str2 = (String) it.next();
                createMethodIntent = PushConstants.createMethodIntent(this.a);
                createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart");
                createMethodIntent.setPackage(str2);
                this.a.sendBroadcast(createMethodIntent);
                C0192a.m4338a(this.a, false);
            }
        }
        return jSONObject;
    }
}
