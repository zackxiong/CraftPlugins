package pl.gatti.dgcam;

import android.text.TextUtils;
import java.io.File;

/* renamed from: pl.gatti.dgcam.r */
class ProGuard implements Runnable {
    final /* synthetic */ ProGuard f9774a;

    ProGuard(ProGuard proGuard) {
        this.f9774a = proGuard;
    }

    public void run() {
        if (!TextUtils.isEmpty(this.f9774a.f9773a.f9698F) && new File(this.f9774a.f9773a.f9698F).exists()) {
            com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u7f29\u7565\u56fe\u6587\u4ef6\u5b58\u5728");
            this.f9774a.f9773a.f9701I.m3884a(this.f9774a.f9773a.f9721o, this.f9774a.f9773a.f9698F);
        }
    }
}
