package com.yf.smart.weloopx.android.ui.activities;

import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;

/* compiled from: ProGuard */
class fu implements OnTimeChangedListener {
    final /* synthetic */ RemindersAddActivity f8049a;

    fu(RemindersAddActivity remindersAddActivity) {
        this.f8049a = remindersAddActivity;
    }

    public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        this.f8049a.f7576m = i;
        this.f8049a.f7577n = i2;
    }
}
