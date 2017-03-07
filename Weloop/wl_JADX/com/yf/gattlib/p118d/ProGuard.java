package com.yf.gattlib.p118d;

import android.text.TextUtils;

/* renamed from: com.yf.gattlib.d.c */
class ProGuard implements Runnable {
    final /* synthetic */ ProGuard f6154a;

    ProGuard(ProGuard proGuard) {
        this.f6154a = proGuard;
    }

    public void run() {
        if (!TextUtils.isEmpty(this.f6154a.f6145b) && this.f6154a.f6146c > 0) {
            ProGuard.m8009c(this.f6154a);
            com.yf.gattlib.server.android.ProGuard.m8440a(this.f6154a.f6151h, new com.yf.gattlib.server.android.ProGuard().m8439a(this.f6154a.f6145b, false, false, true));
        }
    }
}
 com.yf.gattlib.d.b.a */
    public interface ProGuard {
        void m8002a();

        void m8003a(String str, boolean z);
    }

    static /* synthetic */ int m8009c(ProGuard proGuard) {
        int i = proGuard.f6146c - 1;
        proGuard.f6146c = i;
        return i;
    }

    public ProGuard(Activity activity, ProGuard proGuard) {
        this(proGuard);
    }

    public ProGuard(ProGuard proGuard) {
        this.f6148e = false;
        this.f6149f = new ProGuard(this);
        this.f6152i = new ProGuard(this);
        this.f6153j = new ProGuard(this);
        this.f6150g = new Handler();
        this.f6151h = com.yf.gattlib.p108a.ProGuard.m7368a().m7374d();
        this.f6144a = proGuard;
        com.yf.gattlib.p108a.ProGuard.m7347a().m7350a(this.f6153j, new IntentFilter("com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"));
        com.yf.gattlib.p108a.ProGuard.m7347a().m7355a(this.f6152i, new IntentFilter("com.yf.gattlib.intent.action.ACTION_GATT_INIT_COMPLETED"));
    }

    public void m8013a(String str) {
        m8008b();
        this.f6148e = true;
        this.f6147d = true;
        this.f6145b = str;
        this.f6146c = 1;
        com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8066a(true);
        com.yf.gattlib.server.android.ProGuard.m8440a(this.f6151h, new com.yf.gattlib.server.android.ProGuard().m8439a(this.f6145b, false, false, true));
        this.f6150g.postDelayed(this.f6149f, 600000);
    }

    public void m8014b(String str) {
        com.yf.gattlib.p117p.ProGuard.m8290a();
        com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8066a(false);
        com.yf.gattlib.server.android.ProGuard.m8444a(this.f6151h, str);
    }

    public void m8012a() {
        this.f6144a = null;
        com.yf.gattlib.p108a.ProGuard.m7347a().m7349a(this.f6153j);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7354a(this.f6152i);
    }

    private void m8008b() {
        this.f6150g.removeCallbacks(this.f6149f);
        this.f6145b = null;
        this.f6146c = 0;
        this.f6148e = false;
    }

    private void m8006a(String str, boolean z) {
        if (this.f6148e) {
            if (z) {
                this.f6147d = false;
                m8008b();
            } else if (this.f6146c > 0) {
                return;
            } else {
                if (this.f6146c <= 0 && this.f6147d) {
                    com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8066a(false);
                    m8008b();
                }
            }
        }
        if (this.f6144a != null) {
            this.f6144a.m8003a(str, z);
        }
    }
}
