package com.yf.lib.ui.views;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;

/* compiled from: ProGuard */
public class OptionToggleButton extends ToggleButton {
    private boolean f6787a;
    private boolean f6788b;
    private OnCheckedChangeListener f6789c;
    private boolean f6790d;

    public OptionToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6787a = false;
        m8644a();
    }

    public OptionToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6787a = false;
        m8644a();
    }

    public OptionToggleButton(Context context) {
        this(context, null);
    }

    public void setChecked(boolean z) {
        if (!this.f6790d) {
            this.f6788b = false;
            super.setChecked(z);
        }
    }

    public void setCheckedFromCode(boolean z) {
        this.f6788b = true;
        super.setChecked(z);
    }

    private void m8644a() {
        super.setOnCheckedChangeListener(new ProGuard(this));
        this.f6787a = true;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f6789c = onCheckedChangeListener;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.f6790d = true;
        super.onRestoreInstanceState(parcelable);
        this.f6790d = false;
    }
}
