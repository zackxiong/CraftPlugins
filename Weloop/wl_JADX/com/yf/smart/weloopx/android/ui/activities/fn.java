package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class fn implements Runnable {
    final /* synthetic */ int f8038a;
    final /* synthetic */ fj f8039b;

    fn(fj fjVar, int i) {
        this.f8039b = fjVar;
        this.f8038a = i;
    }

    public void run() {
        this.f8039b.f8034a.f7539b.setVisibility(0);
        this.f8039b.f8034a.f7548k.setVisibility(4);
        if (this.f8038a == 1) {
            this.f8039b.f8034a.m8795e("\u4f60\u7684\u56fa\u4ef6\u5b57\u5e93\u6ca1\u6709\u95ee\u9898");
            return;
        }
        this.f8039b.f8034a.m8795e("\u4fee\u590d\u6210\u529f");
        this.f8039b.f8034a.f7544g.setText("100");
        this.f8039b.f8034a.f7545h.setProgress(360);
        this.f8039b.f8034a.f7540c = 0;
    }
}
