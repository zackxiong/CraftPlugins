package com.yf.gattlib.client.dfu;

/* renamed from: com.yf.gattlib.client.dfu.e */
class ProGuard extends Thread {
    final /* synthetic */ ProGuard f6099a;

    ProGuard(ProGuard proGuard) {
        this.f6099a = proGuard;
    }

    public void run() {
        this.f6099a.f6074L = this;
        this.f6099a.f6073K = false;
        this.f6099a.f6088r = 0;
        this.f6099a.f6076f.m7947c();
        while (!this.f6099a.f6083m && !this.f6099a.f6082l) {
            long currentTimeMillis = System.currentTimeMillis();
            while (!this.f6099a.f6082l && this.f6099a.f6073K) {
                try {
                    Thread.sleep(32);
                } catch (Throwable e) {
                    com.yf.gattlib.p117p.ProGuard.m8295a(e);
                }
                if (System.currentTimeMillis() - currentTimeMillis > 8000) {
                    this.f6099a.f6076f.m7945a("File transfer failed", 0);
                    return;
                }
            }
            int i = 25;
            while (i > 0 && !this.f6099a.f6083m) {
                try {
                    Thread.sleep(7);
                } catch (Throwable e2) {
                    com.yf.gattlib.p117p.ProGuard.m8295a(e2);
                }
                if (!this.f6099a.f6082l) {
                    try {
                        this.f6099a.m7930w();
                        i--;
                    } catch (Throwable e3) {
                        com.yf.gattlib.p117p.ProGuard.m8295a(e3);
                        this.f6099a.f6076f.m7945a("Error on reading file", 0);
                        return;
                    }
                }
                return;
            }
            this.f6099a.f6073K = true;
        }
        this.f6099a.f6074L = null;
    }
}
