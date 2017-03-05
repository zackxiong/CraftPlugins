package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog.Builder;
import android.text.TextUtils;
import android.view.Window;
import android.widget.TextView;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ch implements Runnable {
    final /* synthetic */ String f7868a;
    final /* synthetic */ DfuActivity f7869b;

    ch(DfuActivity dfuActivity, String str) {
        this.f7869b = dfuActivity;
        this.f7868a = str;
    }

    public void run() {
        if (!this.f7869b.f7426y) {
            ProGuard.m8292a("DfuActivity !mCanShowDialog");
        } else if (this.f7869b.f7392C == null) {
            ProGuard.m8301c("DfuActivity", "mAlertDialog == null");
            this.f7869b.f7392C = new Builder(this.f7869b).create();
            this.f7869b.f7392C.setCanceledOnTouchOutside(false);
            this.f7869b.f7392C.show();
            Window window = this.f7869b.f7392C.getWindow();
            window.setContentView(R.layout.daily_sync_data_dialog);
            this.f7869b.f7393D = (TextView) window.findViewById(R.id.txtprogress);
            this.f7869b.f7394E = (TextView) window.findViewById(R.id.txtsyncstr);
            if (!TextUtils.isEmpty(this.f7868a)) {
                this.f7869b.f7394E.setText(this.f7868a);
            }
            this.f7869b.f7393D.setVisibility(8);
            window.findViewById(R.id.progressBar1).setVisibility(0);
        } else if (!this.f7869b.f7392C.isShowing()) {
            this.f7869b.f7392C.show();
            ProGuard.m8292a("DfuActivity mAlertDialog != null");
        }
    }
}
