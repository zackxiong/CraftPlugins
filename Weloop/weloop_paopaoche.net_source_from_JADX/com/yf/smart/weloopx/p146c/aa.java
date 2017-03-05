package com.yf.smart.weloopx.p146c;

import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.yf.smart.weloopx.data.models.BongDataResult;
import com.yf.smart.weloopx.data.models.DailyGain;
import com.yf.smart.weloopx.data.models.OriginalData;
import com.yf.smart.weloopx.data.models.ServerResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.ActivityDataChangedEvent;
import com.yf.smart.weloopx.event.UploadOriginalEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.aa */
class aa extends ProGuard {
    final /* synthetic */ OriginalData f8695a;
    final /* synthetic */ String f8696b;
    final /* synthetic */ ProGuard f8697c;

    aa(ProGuard proGuard, OriginalData originalData, String str) {
        this.f8697c = proGuard;
        this.f8695a = originalData;
        this.f8696b = str;
    }

    public void m10822a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        this.f8697c.m10942c("SyncDeviceDataUtil 5. \u4e0a\u4f20\u8bbe\u5907\u6570\u636e onSuccess and result = " + str);
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            com.yf.gattlib.p117p.ProGuard.m8245a("server error upload:\n" + str);
            com.yf.lib.p135a.ProGuard.m8510a().m8512a("upload_original_fail", new Object[0]);
            this.f8697c.m10926a(-1, (int) R.string.sync_status_upload_fail_server_error, "");
            this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8764j);
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10714a(this.f8695a.getId());
            int i = !this.f8697c.m10964c() ? 1 : 0;
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new UploadOriginalEvent());
            com.yf.lib.p135a.ProGuard.m8510a().m8512a("upload_original_success", new Object[0]);
            if (i != 0) {
                this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8765k + 1);
                BongDataResult bongDataResult = (BongDataResult) this.f8697c.f8768n.fromJson(str, BongDataResult.class);
                this.f8697c.m10942c("SyncDeviceDataUtil 5.1 \u4e0a\u4f20\u539f\u59cb\u6570\u636e\u8fd4\u56de Upload ori data and get activitys result: " + str);
                com.yf.gattlib.p117p.ProGuard.m8245a("upload result: " + str);
                if (bongDataResult.getDailyGain() == null || bongDataResult.getDailyGain().size() <= 0) {
                    this.f8697c.m10942c("SyncDeviceDataUtil 5.2  NULL");
                    this.f8697c.m10926a(-1, (int) R.string.sync_status_upload_fail, "");
                    return;
                }
                this.f8697c.m10942c("SyncDeviceDataUtil 5.3 \u4fdd\u5b58\u8fd4\u56de\u7684\u6570\u636e");
                DailyGain dailyGain = (DailyGain) bongDataResult.getDailyGain().get(0);
                this.f8697c.m10933a(dailyGain);
                com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10669a(dailyGain);
                com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10673a(bongDataResult.getActivities());
                com.yf.lib.p135a.ProGuard.m8508a().m8614c(new ActivityDataChangedEvent(1));
                this.f8697c.m10942c("SyncDeviceDataUtil \u5220\u9664\u8dd1\u6b65\u6570\u636e\u7ed3\u679c = " + ProGuard.f8756f.m11108b(this.f8697c.f8762h));
                this.f8697c.m10942c("SyncDeviceDataUtil \u662f\u5426\u6709\u8dd1\u6b65\u4fe1\u606f runningDataInfo = " + TextUtils.isEmpty(this.f8696b));
                if (!TextUtils.isEmpty(this.f8696b)) {
                    com.yf.gattlib.p108a.ProGuard.m7368a().m7375e().m7362c(new Intent("com.yf.weloopx.runtrain.new"));
                }
                this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8764j);
            }
        } else {
            this.f8697c.m10942c("SyncDeviceDataUtil \u4e0a\u4f20\u539f\u59cb\u6570\u636e\u5931\u8d25");
            com.yf.lib.p135a.ProGuard.m8510a().m8512a("upload_original_fail", new Object[0]);
            str = ((ServerResult) com.yf.smart.weloopx.data.ProGuard.fromJson(str, ServerResult.class)).getMessage();
            if (this.f8697c.m10935a(str) || this.f8697c.m10940b(str)) {
                ProGuard.f8756f.m11108b(this.f8697c.f8762h);
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10714a(this.f8695a.getId());
                this.f8697c.m10964c();
            } else {
                this.f8697c.m10926a(-1, (int) R.string.sync_status_upload_fail, str);
                this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8764j);
            }
        }
        this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8764j);
    }

    public void m10821a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8302d("\u4e0a\u4f20\u539f\u59cb\u6570\u636e\u5931\u8d25");
        com.yf.gattlib.p117p.ProGuard.m8245a("upload onFailure:\n" + str + "\n" + Log.getStackTraceString(proGuard));
        com.yf.lib.p135a.ProGuard.m8510a().m8512a("upload_original_fail", new Object[0]);
        this.f8697c.m10926a(-1, (int) R.string.sync_status_upload_fail_check_net, "");
        this.f8697c.m10925a(this.f8697c.f8764j, this.f8697c.f8764j);
        this.f8697c.m10942c("SyncDeviceDataUtil \u4e0a\u4f20\u5931\u8d25\u7684msg = " + str);
    }
}
