package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.p070d.C0219b;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.b */
public class C0317b extends C0316c {
    private static final String f3363b;

    static {
        f3363b = C0317b.class.getSimpleName();
    }

    public C0317b(Context context) {
        super(context);
    }

    public int m5049a(C0319e c0319e) {
        JSONObject jSONObject;
        int i = -1;
        String str = new String(c0319e.f3369d);
        if (C0192a.m4341b()) {
            C0385a.m5308a(f3363b, "handleMessage MSG_ID_HANDSHAKE : " + str);
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            C0385a.m5313d(f3363b, e.getMessage());
            jSONObject = null;
        }
        if (jSONObject != null) {
            i = jSONObject.optInt("ret", -1);
        }
        if (C0192a.m4341b()) {
            C0385a.m5308a(f3363b, "handleMessage MSG_ID_HANDSHAKE : result = " + i);
        }
        if (i == 0) {
            C0219b.m4528a(this.a);
        } else if (i == 5003) {
            C0219b.m4528a(this.a);
        } else if (i == 2002) {
            ad.m4377a().m4379a(null, null);
            C0374f.m5226j(this.a);
        }
        return i;
    }
}
