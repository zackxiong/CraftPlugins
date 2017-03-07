package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;

/* compiled from: ProGuard */
public class OptionToggleButton extends ToggleButton {
    private boolean f8521a;
    private boolean f8522b;
    private OnCheckedChangeListener f8523c;
    private boolean f8524d;

    public OptionToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8521a = false;
        m10553a();
    }

    public OptionToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8521a = false;
        m10553a();
    }

    public OptionToggleButton(Context context) {
        this(context, null);
    }

    public void setChecked(boolean z) {
        if (!this.f8524d) {
            this.f8522b = false;
            super.setChecked(z);
        }
    }

    public void setCheckedFromCode(boolean z) {
        this.f8522b = true;
        super.setChecked(z);
    }

    private void m10553a() {
        super.setOnCheckedChangeListener(new ProGuard(this));
        this.f8521a = true;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f8523c = onCheckedChangeListener;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.f8524d = true;
        super.onRestoreInstanceState(parcelable);
        this.f8524d = false;
    }
}
