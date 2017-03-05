package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class gx implements Runnable {
    final /* synthetic */ int f8081a;
    final /* synthetic */ UpgradeActivity f8082b;

    gx(UpgradeActivity upgradeActivity, int i) {
        this.f8082b = upgradeActivity;
        this.f8081a = i;
    }

    public void run() {
        this.f8082b.f7753q.setEnabled(false);
        this.f8082b.f7751o.setVisibility(8);
        this.f8082b.f7756t.setVisibility(8);
        this.f8082b.f7755s.setVisibility(8);
        this.f8082b.f7754r.setVisibility(0);
        this.f8082b.f7748l.setVisibility(0);
        switch (this.f8081a) {
            case 3456:
                this.f8082b.f7747k.setText(R.string.disconnected);
                this.f8082b.f7747k.setVisibility(0);
                this.f8082b.f7748l.setText(R.string.found_new_version);
                this.f8082b.f7748l.invalidate();
                this.f8082b.f7749m.setVisibility(0);
                this.f8082b.f7749m.setText(this.f8082b.f7740b.m2787a());
                this.f8082b.f7752p.setVisibility(8);
            case 3457:
                this.f8082b.f7747k.setVisibility(8);
                this.f8082b.f7756t.setVisibility(0);
                this.f8082b.f7756t.invalidate();
                this.f8082b.f7754r.setVisibility(8);
                this.f8082b.f7748l.setText(R.string.is_latest_version);
                this.f8082b.f7749m.setVisibility(8);
                this.f8082b.f7746j.setText(this.f8082b.f7740b.m2791b());
                this.f8082b.f7752p.setVisibility(8);
                ProGuard.m8293a(UpgradeActivity.f7712i, "toBeNewVersionView");
            case 3458:
                this.f8082b.f7747k.setText(R.string.upgrading_tips);
                this.f8082b.f7747k.setVisibility(0);
                this.f8082b.f7748l.setVisibility(8);
                this.f8082b.f7749m.setVisibility(8);
                this.f8082b.f7751o.setVisibility(0);
                this.f8082b.f7752p.setVisibility(0);
            case 3459:
                this.f8082b.f7747k.setVisibility(8);
                this.f8082b.f7747k.setText(R.string.ota_plug_charging_cable);
                this.f8082b.f7747k.setVisibility(0);
                this.f8082b.f7753q.setEnabled(true);
                this.f8082b.f7748l.setText(R.string.found_new_version);
                this.f8082b.f7749m.setVisibility(0);
                this.f8082b.f7749m.setText(this.f8082b.f7740b.m2787a());
                this.f8082b.f7752p.setVisibility(8);
            case 3460:
                this.f8082b.f7747k.setVisibility(8);
                this.f8082b.f7755s.setVisibility(0);
                this.f8082b.f7754r.setVisibility(8);
                this.f8082b.f7748l.setVisibility(0);
                this.f8082b.f7748l.setText(R.string.checking_version);
                this.f8082b.f7749m.setVisibility(8);
                this.f8082b.f7753q.setEnabled(false);
                this.f8082b.f7752p.setVisibility(8);
            case 3461:
                this.f8082b.f7747k.setVisibility(8);
                this.f8082b.f7756t.setVisibility(0);
                this.f8082b.f7756t.invalidate();
                this.f8082b.f7754r.setVisibility(8);
                this.f8082b.f7748l.setText(R.string.upgrading_finished);
                this.f8082b.f7749m.setVisibility(8);
                this.f8082b.f7746j.setText(this.f8082b.f7740b.m2791b());
                this.f8082b.f7752p.setVisibility(8);
            default:
        }
    }
}
