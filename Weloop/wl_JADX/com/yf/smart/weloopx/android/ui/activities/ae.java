package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p146c.ProGuard;
import pl.gatti.dgcam.DgCamActivityForTommy2;

/* compiled from: ProGuard */
class ae implements OnCheckedChangeListener {
    final /* synthetic */ ProGuard f7786a;

    ae(ProGuard proGuard) {
        this.f7786a = proGuard;
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (this.f7786a.m10080l()) {
            radioGroup.setOnCheckedChangeListener(null);
            Intent intent;
            switch (i) {
                case R.id.option_camera:
                    if (!ProGuard.m10913d()) {
                        intent = new Intent("pl.gatti.dgcam.ACTION_CAMERA");
                        intent.addFlags(268435456);
                        com.yf.gattlib.p108a.ProGuard.m7347a().m7364e(intent);
                        break;
                    }
                    this.f7786a.startActivity(new Intent(this.f7786a.getActivity(), DgCamActivityForTommy2.class));
                    break;
                case R.id.option_watchface:
                    this.f7786a.startActivity(new Intent(this.f7786a.getActivity(), WatchfaceActivity.class));
                    break;
                case R.id.option_upgrade:
                    if (!com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8082l()) {
                        intent = new Intent(this.f7786a.getActivity(), UpgradeActivity.class);
                        intent.putExtra("IsWatch", this.f7786a.f8138N);
                        this.f7786a.startActivity(intent);
                        break;
                    }
                    this.f7786a.m10064i();
                    break;
            }
            radioGroup.clearCheck();
            radioGroup.setOnCheckedChangeListener(this.f7786a.ar);
        }
    }
}
