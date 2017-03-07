package com.todddavies.components.progressbar;

import android.os.Handler;
import android.os.Message;

/* renamed from: com.todddavies.components.progressbar.a */
class ProGuard extends Handler {
    final /* synthetic */ ProgressWheel2 f5423a;

    ProGuard(ProgressWheel2 progressWheel2) {
        this.f5423a = progressWheel2;
    }

    public void handleMessage(Message message) {
        this.f5423a.invalidate();
        if (this.f5423a.f5398b) {
            ProgressWheel2 progressWheel2 = this.f5423a;
            progressWheel2.f5397a += this.f5423a.f5392F;
            if (this.f5423a.f5397a > 360) {
                this.f5423a.f5397a = 0;
            }
            this.f5423a.f5394H.sendEmptyMessageDelayed(0, (long) this.f5423a.f5393G);
        }
    }
}
