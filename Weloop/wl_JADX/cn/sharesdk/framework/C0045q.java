package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.C0054a;

/* renamed from: cn.sharesdk.framework.q */
class C0045q extends Thread {
    final /* synthetic */ C0054a f2005a;
    final /* synthetic */ C0044p f2006b;

    C0045q(C0044p c0044p, C0054a c0054a) {
        this.f2006b = c0044p;
        this.f2005a = c0054a;
    }

    public void run() {
        try {
            this.f2005a.m3122a(this.f2006b.f2000i, this.f2005a.m3130e(this.f2006b.f2000i));
        } catch (Throwable th) {
            if (ShareSDK.isDebug()) {
                th.printStackTrace();
            }
        }
    }
}
