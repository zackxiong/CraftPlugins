package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p146c.ProGuard;

/* compiled from: ProGuard */
class bc implements OnClickListener {
    final /* synthetic */ ProGuard f7827a;

    bc(ProGuard proGuard) {
        this.f7827a = proGuard;
    }

    public void onClick(View view) {
        if ("\u95ee\u9898\u53cd\u9988".equals(this.f7827a.m9825d(R.string.problem_diagnosis))) {
            this.f7827a.startActivity(new Intent(this.f7827a.getActivity(), UploadLogActivity.class));
            return;
        }
        Intent intent = new Intent(this.f7827a.getActivity(), ProblemDiagnosisActivity.class);
        intent.putExtra("device_type", ProGuard.m10918h());
        this.f7827a.startActivity(intent);
    }
}
