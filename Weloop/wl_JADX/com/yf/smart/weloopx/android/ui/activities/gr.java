package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog.Builder;
import android.text.TextUtils;
import android.view.Window;
import android.widget.TextView;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class gr implements Runnable {
    final /* synthetic */ String f8074a;
    final /* synthetic */ UpgradeActivity f8075b;

    gr(UpgradeActivity upgradeActivity, String str) {
        this.f8075b = upgradeActivity;
        this.f8074a = str;
    }

    public void run() {
        if (!this.f8075b.f7745h) {
            ProGuard.m8292a(UpgradeActivity.f7712i + " !mCanShowDialog");
        } else if (this.f8075b.f7713A == null) {
            ProGuard.m8301c(UpgradeActivity.f7712i, "mAlertDialog == null");
            this.f8075b.f7713A = new Builder(this.f8075b).create();
            this.f8075b.f7713A.setCanceledOnTouchOutside(false);
            this.f8075b.f7713A.show();
            Window window = this.f8075b.f7713A.getWindow();
            window.setContentView(R.layout.daily_sync_data_dialog);
            this.f8075b.f7732T = (TextView) window.findViewById(R.id.txtprogress);
            this.f8075b.f7733U = (TextView) window.findViewById(R.id.txtsyncstr);
            if (!TextUtils.isEmpty(this.f8074a)) {
                this.f8075b.f7733U.setText(this.f8074a);
            }
            this.f8075b.f7732T.setVisibility(8);
            window.findViewById(R.id.progressBar1).setVisibility(0);
        } else {
            if (!TextUtils.isEmpty(this.f8074a)) {
                this.f8075b.f7733U.setText(this.f8074a);
            }
            if (!this.f8075b.f7713A.isShowing()) {
                this.f8075b.f7713A.show();
                ProGuard.m8292a(UpgradeActivity.f7712i + " mAlertDialog != null");
            }
        }
    }
}
