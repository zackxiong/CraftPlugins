package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class fo implements Runnable {
    final /* synthetic */ ProblemDiagnosisActivity f8040a;

    fo(ProblemDiagnosisActivity problemDiagnosisActivity) {
        this.f8040a = problemDiagnosisActivity;
    }

    public void run() {
        this.f8040a.f7545h.setProgress(this.f8040a.f7540c);
        this.f8040a.f7544g.setText("" + ((this.f8040a.f7540c * 100) / 360));
        this.f8040a.f7546i.invalidate();
    }
}
