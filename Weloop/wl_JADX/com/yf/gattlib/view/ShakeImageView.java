package com.yf.gattlib.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* compiled from: ProGuard */
public class ShakeImageView extends ImageView {
    private int f6489a;
    private float f6490b;
    private PointF f6491c;
    private boolean f6492d;
    private float f6493e;

    public ShakeImageView(Context context) {
        super(context);
        this.f6489a = 37;
        m8503a();
    }

    public ShakeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6489a = 37;
        m8503a();
    }

    public ShakeImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6489a = 37;
        m8503a();
    }

    protected void onVisibilityChanged(View view, int i) {
        m8503a();
        super.onVisibilityChanged(view, i);
    }

    private void m8503a() {
        this.f6492d = false;
        this.f6490b = 1.03f;
        this.f6493e = -0.01f;
        this.f6491c = new PointF(-1.0f, -1.0f);
    }

    protected void onDraw(Canvas canvas) {
        if (this.f6491c.x < 0.0f) {
            this.f6491c.x = (float) (getWidth() / 2);
            this.f6491c.y = (float) (getHeight() / 2);
        }
        canvas.save(this.f6489a);
        canvas.scale(this.f6490b, this.f6490b, this.f6491c.x, this.f6491c.y);
        super.onDraw(canvas);
        canvas.restoreToCount(this.f6489a);
        this.f6490b += this.f6493e;
        if (this.f6493e < 0.0f && this.f6490b < 0.95f) {
            this.f6493e = 0.01f;
        }
        if ((this.f6493e <= 0.0f || this.f6490b <= 1.0f) && !this.f6492d) {
            postInvalidate();
        }
    }
}
