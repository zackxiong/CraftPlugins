package com.yf.smart.weloopx.p146c;

import android.util.Log;
import com.google.gson.Gson;
import com.yf.smart.weloopx.data.models.MultipleBongResult;
import com.yf.smart.weloopx.data.models.ServerResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.ab */
class ab extends ProGuard {
    final /* synthetic */ ProGuard f8698a;

    ab(ProGuard proGuard) {
        this.f8698a = proGuard;
    }

    public void m10824a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8245a("download result: " + str);
        this.f8698a.m10942c("SyncDeviceDataUtil 7. \u4e0b\u8f7d\u670d\u52a1\u7aef\u7684\u6570\u636e = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d((String) proGuard.f2767a)) {
            Gson gson = new Gson();
            if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
                m9146a((MultipleBongResult) gson.fromJson(str, MultipleBongResult.class));
                this.f8698a.m10926a(0, 0, "");
                return;
            }
            this.f8698a.m10926a(-1, 0, ServerResult.getMessage(str));
            this.f8698a.m10925a(this.f8698a.f8764j, this.f8698a.f8764j);
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8245a("server error download:\n" + str);
        this.f8698a.m10926a(-1, (int) R.string.sync_status_download_fail_server_error, "");
        this.f8698a.m10925a(this.f8698a.f8764j, this.f8698a.f8764j);
    }

    public void m10823a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f8698a.m10942c("download onFailure:\n" + str + "\n" + Log.getStackTraceString(proGuard));
        this.f8698a.m10926a(-1, (int) R.string.sync_status_download_fail_check_net, "");
        this.f8698a.m10925a(this.f8698a.f8764j, this.f8698a.f8764j);
    }
}
