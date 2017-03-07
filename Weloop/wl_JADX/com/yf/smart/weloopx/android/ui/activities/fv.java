package com.yf.smart.weloopx.android.ui.activities;

import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class fv implements OnDateChangedListener {
    final /* synthetic */ RemindersAddActivity f8050a;

    fv(RemindersAddActivity remindersAddActivity) {
        this.f8050a = remindersAddActivity;
    }

    public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
        this.f8050a.f7573j = i;
        this.f8050a.f7574k = i2;
        this.f8050a.f7575l = i3;
        ProGuard.m8292a("RemindersAddActivity \u9009\u62e9\u7684\u5e74 = " + i + ", \u6708 = " + i2 + ", \u65e5 = " + i3);
    }
}
