package com.baidu.android.pushservice.message.p074a;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.a.c */
public abstract class C0301c {
    private static final String f3335b;
    protected Context f3336a;

    static {
        f3335b = C0301c.class.getSimpleName();
    }

    public C0301c(Context context) {
        this.f3336a = context;
    }

    public abstract int m5018a(String str, String str2, byte[] bArr);

    protected boolean m5019a(byte[] bArr) {
        int parseInt;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (!jSONObject.isNull("bccs_fb")) {
                parseInt = Integer.parseInt(jSONObject.getString("bccs_fb"));
                return parseInt != 1;
            }
        } catch (JSONException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(f3335b, "Message parsing feedback fail:\r\n" + e.getMessage());
            }
        }
        parseInt = 0;
        if (parseInt != 1) {
        }
    }
}
