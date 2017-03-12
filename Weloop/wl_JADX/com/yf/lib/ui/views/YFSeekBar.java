package com.yf.lib.ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

/* compiled from: ProGuard */
public class YFSeekBar extends SeekBar {
    public YFSeekBar(Context context) {
        super(context);
    }

    public YFSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public YFSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
