package com.yf.lib.ui.views;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* renamed from: com.yf.lib.ui.views.a */
class ProGuard implements OnCheckedChangeListener {
    final /* synthetic */ OptionToggleButton f6791a;

    ProGuard(OptionToggleButton optionToggleButton) {
        this.f6791a = optionToggleButton;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f6791a.f6787a && !this.f6791a.f6790d && this.f6791a.f6789c != null && !this.f6791a.f6788b) {
            this.f6791a.f6789c.onCheckedChanged(compoundButton, z);
        }
    }
}
