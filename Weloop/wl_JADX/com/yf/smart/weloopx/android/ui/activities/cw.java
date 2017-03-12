package com.yf.smart.weloopx.android.ui.activities;

import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cw implements OnTimeChangedListener {
    final /* synthetic */ DisturbActivity f7885a;

    cw(DisturbActivity disturbActivity) {
        this.f7885a = disturbActivity;
    }

    public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        this.f7885a.f7437I = true;
        CharSequence a;
        if (this.f7885a.f7431C == 1) {
            this.f7885a.f7432D = i;
            this.f7885a.f7433E = i2;
            a = this.f7885a.m9386a(this.f7885a.f7432D, this.f7885a.f7433E);
            this.f7885a.f7459t.setText(a);
            this.f7885a.f7430B[0] = (byte) this.f7885a.f7432D;
            this.f7885a.f7430B[1] = (byte) this.f7885a.f7433E;
            if (this.f7885a.m9385a(this.f7885a.f7459t.getText().toString(), this.f7885a.f7460u.getText().toString()) <= 0) {
                this.f7885a.f7458s.setText(R.string.anti_disturb_first_day);
            } else {
                this.f7885a.f7458s.setText(R.string.anti_disturb_next_day);
            }
            this.f7885a.f7463y.setText(a);
        } else if (this.f7885a.f7431C == 2) {
            this.f7885a.f7434F = i;
            this.f7885a.f7435G = i2;
            a = this.f7885a.m9386a(this.f7885a.f7434F, this.f7885a.f7435G);
            this.f7885a.f7460u.setText(a);
            this.f7885a.f7430B[2] = (byte) this.f7885a.f7434F;
            this.f7885a.f7430B[3] = (byte) this.f7885a.f7435G;
            if (this.f7885a.m9385a(this.f7885a.f7459t.getText().toString(), this.f7885a.f7460u.getText().toString()) <= 0) {
                this.f7885a.f7458s.setText(R.string.anti_disturb_first_day);
            } else {
                this.f7885a.f7458s.setText(R.string.anti_disturb_next_day);
            }
            this.f7885a.f7464z.setText(a);
        }
    }
}
