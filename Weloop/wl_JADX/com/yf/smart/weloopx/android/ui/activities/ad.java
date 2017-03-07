package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;
import pl.gatti.dgcam.DgCamActivityForTommy2;

/* compiled from: ProGuard */
class ad extends ProGuard {
    final /* synthetic */ ProGuard f7785a;

    ad(ProGuard proGuard) {
        this.f7785a = proGuard;
        super(null);
    }

    public void m9781a(View view) {
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
            Intent intent;
            switch (view.getId()) {
                case R.id.option_camera:
                    if (com.yf.smart.weloopx.p146c.ProGuard.m10913d()) {
                        this.f7785a.startActivity(new Intent(this.f7785a.getActivity(), DgCamActivityForTommy2.class));
                        return;
                    }
                    intent = new Intent("pl.gatti.dgcam.ACTION_CAMERA");
                    intent.addFlags(268435456);
                    com.yf.gattlib.p108a.ProGuard.m7347a().m7364e(intent);
                    return;
                case R.id.option_watchface:
                    this.f7785a.startActivity(new Intent(this.f7785a.getActivity(), WatchfaceActivity.class));
                    return;
                case R.id.option_upgrade:
                    if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8082l()) {
                        this.f7785a.m10064i();
                        return;
                    }
                    intent = new Intent(this.f7785a.getActivity(), UpgradeActivity.class);
                    intent.putExtra("IsWatch", this.f7785a.f8138N);
                    this.f7785a.startActivity(intent);
                    return;
                default:
                    return;
            }
        }
        this.f7785a.m9822a(this.f7785a.m9825d(R.string.device_uniit_wati));
    }
}
