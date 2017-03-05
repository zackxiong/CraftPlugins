package com.yf.gattlib.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: ProGuard */
public class RotateImageView extends ImageView {
    private float f6487a;
    private PointF f6488b;

    public RotateImageView(Context context) {
        super(context);
        m8502a();
    }

    public RotateImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RotateImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8502a();
    }

    private void m8502a() {
        this.f6487a = 0.0f;
        this.f6488b = new PointF(-1.0f, -1.0f);
    }

    protected void onDraw(Canvas canvas) {
        if (this.f6488b.x < 0.0f) {
            this.f6488b.x = (float) (getWidth() / 2);
            this.f6488b.y = (float) (getHeight() / 2);
        }
        canvas.save(37);
        canvas.rotate(this.f6487a, this.f6488b.x, this.f6488b.y);
        super.onDraw(canvas);
        canvas.restoreToCount(37);
        this.f6487a += 1.5f;
        this.f6487a %= 360.0f;
        postInvalidate();
    }
}
