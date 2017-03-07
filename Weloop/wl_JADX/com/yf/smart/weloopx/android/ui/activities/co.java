package com.yf.smart.weloopx.android.ui.activities;

import android.widget.Toast;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class co implements Runnable {
    final /* synthetic */ cn f7877a;

    co(cn cnVar) {
        this.f7877a = cnVar;
    }

    public void run() {
        Toast.makeText(this.f7877a.f7876a, R.string.download_firmware_fail, 0).show();
    }
}
