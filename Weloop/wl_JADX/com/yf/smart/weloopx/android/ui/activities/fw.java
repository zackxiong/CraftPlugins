package com.yf.smart.weloopx.android.ui.activities;

import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;

/* compiled from: ProGuard */
class fw implements OnTimeChangedListener {
    final /* synthetic */ RemindersAddActivity f8051a;

    fw(RemindersAddActivity remindersAddActivity) {
        this.f8051a = remindersAddActivity;
    }

    public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        this.f8051a.f7576m = i;
        this.f8051a.f7577n = i2;
    }
}
