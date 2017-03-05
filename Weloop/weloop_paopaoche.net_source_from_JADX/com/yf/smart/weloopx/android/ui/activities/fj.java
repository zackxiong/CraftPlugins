package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;
import java.io.InputStream;

/* compiled from: ProGuard */
class fj implements ProGuard {
    final /* synthetic */ ProblemDiagnosisActivity f8034a;

    fj(ProblemDiagnosisActivity problemDiagnosisActivity) {
        this.f8034a = problemDiagnosisActivity;
    }

    public void m9913a() {
        this.f8034a.runOnUiThread(new fk(this));
    }

    public void m9916b() {
        this.f8034a.runOnUiThread(new fl(this));
    }

    public void m9915a(int i, int i2) {
        int i3 = (i2 * 360) / i;
        if (i3 > this.f8034a.f7540c) {
            this.f8034a.f7540c = i3;
            this.f8034a.m9531d();
        }
        com.yf.gattlib.p117p.ProGuard.m8301c("ProblemDiagnosisActivity", "" + ((i2 * 100) / i));
        this.f8034a.f7547j = (i2 * 100) / i;
        this.f8034a.runOnUiThread(new fm(this));
    }

    public void m9914a(int i) {
        this.f8034a.runOnUiThread(new fn(this, i));
    }

    public InputStream m9912a(byte b) {
        if (b == null) {
            return this.f8034a.getResources().openRawResource(R.raw.font);
        }
        if (b == 1) {
            return this.f8034a.getResources().openRawResource(R.raw.unicode);
        }
        return null;
    }
}
