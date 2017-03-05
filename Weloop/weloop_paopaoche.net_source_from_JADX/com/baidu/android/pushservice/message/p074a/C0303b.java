package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.a.b */
public class C0303b extends C0301c {
    private static final String f3338b;

    static {
        f3338b = C0303b.class.getSimpleName();
    }

    public C0303b(Context context) {
        super(context);
    }

    public int m5021a(String str, String str2, byte[] bArr) {
        JSONObject jSONObject;
        String string;
        int i;
        JSONObject jSONObject2;
        JSONException e;
        Intent intent = null;
        try {
            jSONObject = new JSONObject(new String(bArr));
            try {
                string = jSONObject.getString("action");
                JSONObject jSONObject3 = jSONObject;
                i = 1;
                jSONObject2 = jSONObject3;
            } catch (JSONException e2) {
                e = e2;
                if (C0192a.m4339a(this.a)) {
                    C0385a.m5311b(f3338b, "Supper message parsing action Fail:\r\n" + e.getMessage());
                }
                jSONObject2 = jSONObject;
                string = null;
                i = 0;
                if (i != 0) {
                }
                intent = new Intent("com.baidu.pushservice.action.supper.MESSAGE");
                intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
                if (C0192a.m4339a(this.a)) {
                    C0374f.m5201b(">>> Deliver baidu supper msg with g action: com.baidu.pushservice.action.supper.MESSAGE");
                }
                if (intent != null) {
                    intent.setFlags(32);
                    this.a.sendBroadcast(intent);
                }
                return 0;
            }
        } catch (JSONException e3) {
            e = e3;
            jSONObject = null;
            if (C0192a.m4339a(this.a)) {
                C0385a.m5311b(f3338b, "Supper message parsing action Fail:\r\n" + e.getMessage());
            }
            jSONObject2 = jSONObject;
            string = null;
            i = 0;
            if (i != 0) {
            }
            intent = new Intent("com.baidu.pushservice.action.supper.MESSAGE");
            intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
            if (C0192a.m4339a(this.a)) {
                C0374f.m5201b(">>> Deliver baidu supper msg with g action: com.baidu.pushservice.action.supper.MESSAGE");
            }
            if (intent != null) {
                intent.setFlags(32);
                this.a.sendBroadcast(intent);
            }
            return 0;
        }
        if (i != 0 || TextUtils.isEmpty(string)) {
            intent = new Intent("com.baidu.pushservice.action.supper.MESSAGE");
            intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, bArr);
            if (C0192a.m4339a(this.a)) {
                C0374f.m5201b(">>> Deliver baidu supper msg with g action: com.baidu.pushservice.action.supper.MESSAGE");
            }
        } else if (string.equalsIgnoreCase("push.NOTIFICATION")) {
            try {
                C0306e.m5032a(this.a, !jSONObject2.isNull("title") ? jSONObject2.getString("title") : null, jSONObject2.getString("description"), !jSONObject2.isNull("iconUrl") ? jSONObject2.getString("iconUrl") : null, !jSONObject2.isNull("url") ? jSONObject2.getString("url") : null, str2);
            } catch (JSONException e4) {
                if (C0192a.m4339a(this.a)) {
                    C0385a.m5311b(f3338b, "Supper message parsing notification action Fail:\r\n" + e4.getMessage());
                }
            }
        } else {
            String string2;
            try {
                string2 = jSONObject2.getString(LightAppTableDefine.DB_TABLE_MESSAGE);
            } catch (JSONException e42) {
                if (C0192a.m4339a(this.a)) {
                    C0385a.m5311b(f3338b, "Supper message parsing default action Fail:\r\n" + e42.getMessage());
                }
                string2 = null;
            }
            intent = new Intent(string);
            intent.putExtra(LightAppTableDefine.DB_TABLE_MESSAGE, string2);
            if (C0192a.m4339a(this.a)) {
                C0374f.m5201b(">>> Deliver baidu supper msg with s action: " + string);
            }
        }
        if (intent != null) {
            intent.setFlags(32);
            this.a.sendBroadcast(intent);
        }
        return 0;
    }
}
