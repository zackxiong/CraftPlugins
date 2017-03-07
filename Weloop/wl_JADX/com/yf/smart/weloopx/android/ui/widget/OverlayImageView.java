package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yf.smart.weloopx.ProGuard;

/* compiled from: ProGuard */
public class OverlayImageView extends ImageView {
    private ColorStateList f8525a;
    private Drawable f8526b;

    public OverlayImageView(Context context) {
        super(context);
        this.f8525a = null;
        this.f8526b = null;
    }

    public OverlayImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8525a = null;
        this.f8526b = null;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.OverlayImageView, i, 0);
        this.f8526b = obtainStyledAttributes.getDrawable(1);
        this.f8525a = obtainStyledAttributes.getColorStateList(0);
        obtainStyledAttributes.recycle();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f8526b != null) {
            this.f8526b.setBounds(0, 0, getRight() - getLeft(), getBottom() - getTop());
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f8526b != null) {
            this.f8526b.setState(getDrawableState());
            this.f8526b.draw(canvas);
        }
        if (this.f8525a != null) {
            canvas.drawColor(this.f8525a.getColorForState(getDrawableState(), 0));
        }
    }
}
