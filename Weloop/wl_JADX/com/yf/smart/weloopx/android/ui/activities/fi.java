package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class fi implements Runnable {
    final /* synthetic */ ProblemDiagnosisActivity f8033a;

    fi(ProblemDiagnosisActivity problemDiagnosisActivity) {
        this.f8033a = problemDiagnosisActivity;
    }

    public void run() {
        ah.m10189a(this.f8033a.getFragmentManager(), "ignore_device", this.f8033a.getString(R.string.ignore_device_at_buluetooth_settings), (int) R.layout.confirm_gray_dialog1, true, false);
    }
}
