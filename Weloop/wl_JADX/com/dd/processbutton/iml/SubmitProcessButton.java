package com.dd.processbutton.iml;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.dd.processbutton.ProcessButton;

/* compiled from: ProGuard */
public class SubmitProcessButton extends ProcessButton {
    public SubmitProcessButton(Context context) {
        super(context);
    }

    public SubmitProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SubmitProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void m6704a(Canvas canvas) {
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, (int) ((((float) getProgress()) / ((float) getMaxProgress())) * ((float) getMeasuredWidth())), getMeasuredHeight());
            progressDrawable.draw(canvas);
        }
    }
}
