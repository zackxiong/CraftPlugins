package com.baidu.android.pushservice.p072f;

import android.content.Context;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.util.C0371c;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.frontia.module.deeplink.C0418e;

/* renamed from: com.baidu.android.pushservice.f.t */
public class C0284t {
    private final Context f3260a;
    private C0275i f3261b;
    private final C0281q f3262c;

    public C0284t(Context context) {
        this.f3260a = context;
        this.f3262c = new C0281q(context);
        this.f3261b = C0275i.m4901a(context);
    }

    public static long m4929a(Context context, C0268b c0268b) {
        return PushDatabase.insertADPushBehavior(context, c0268b);
    }

    public static long m4930a(Context context, C0269c c0269c) {
        return PushDatabase.insertApiBehavior(context, c0269c);
    }

    public static long m4931a(Context context, C0272g c0272g) {
        return PushDatabase.insertCrashBehavior(context, c0272g);
    }

    public static long m4932a(Context context, C0276j c0276j) {
        return PushDatabase.insertPromptBehavior(context, c0276j);
    }

    public static long m4933a(Context context, C0277k c0277k) {
        return PushDatabase.insertAppInfo(context, c0277k);
    }

    public static long m4934a(Context context, C0278l c0278l) {
        return PushDatabase.insertPushBehavior(context, c0278l);
    }

    public static long m4935a(Context context, C0285u c0285u) {
        return PushDatabase.insertWifiActionBehavior(context, c0285u);
    }

    public static long m4936b(Context context, C0276j c0276j) {
        return PushDatabase.insertAgentOrHttpBehavior(context, c0276j);
    }

    private boolean m4937b() {
        if (PushSettings.m4232i() || this.f3261b.m4899c()) {
            return false;
        }
        return System.currentTimeMillis() - C0371c.m5155c(this.f3260a) > (PushSettings.m4231h() ? (long) PushSettings.m4230g() : 43200000);
    }

    public void m4938a() {
        if (this.f3262c != null) {
            this.f3262c.m4924b();
        }
    }

    public void m4939a(boolean z, C0418e c0418e) {
        if (this.f3261b == null) {
            this.f3261b = C0275i.m4901a(this.f3260a);
        }
        this.f3261b.m4903a(c0418e);
        if (z || m4937b()) {
            this.f3261b.m4896b(z);
        }
    }
}
