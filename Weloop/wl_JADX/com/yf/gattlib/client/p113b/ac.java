package com.yf.gattlib.client.p113b;

import android.content.Intent;
import android.util.Log;
import com.yf.gattlib.p108a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ac */
public class ac extends ad {
    private static final String f5744a;

    static {
        f5744a = ac.class.getSimpleName();
    }

    public int[] m7520a() {
        return new int[]{112, 113};
    }

    public void m7519a(byte[] bArr, Object... objArr) {
        ProGuard.m7368a();
        int a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
        Log.e(f5744a, "code=" + a);
        if (a == 112) {
            ProGuard.m7347a().m7362c(new Intent("com.yf.gattlib.intent.action_start_sleep"));
        } else if (a == 113) {
            ProGuard.m7347a().m7362c(new Intent("com.yf.gattlib.intent.action_end_sleep"));
        }
        m7495b(bArr);
        m7501i();
    }
}
