package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.baidu.location.C0452e;
import com.yf.smart.weloopx.ProGuard;

/* compiled from: ProGuard */
public class SmoothCircularProgressBar extends View {
    private ProGuard f8559a;
    private int f8560b;

    public SmoothCircularProgressBar(Context context) {
        super(context);
        m10578a();
    }

    public SmoothCircularProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmoothCircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m10578a();
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.SmoothCircularProgressBar, i, 0);
        this.f8559a.m10599a(obtainStyledAttributes.getDimension(8, 2.0f));
        setProgressOnly(obtainStyledAttributes.getInt(7, 0));
        int resourceId = obtainStyledAttributes.getResourceId(9, 0);
        if (resourceId != 0) {
            this.f8559a.m10600a(resources.getIntArray(resourceId));
        }
        resourceId = obtainStyledAttributes.getResourceId(10, 0);
        if (resourceId != 0) {
            this.f8559a.m10602b(resources.getIntArray(resourceId));
        }
        resourceId = obtainStyledAttributes.getResourceId(11, 0);
        if (resourceId != 0) {
            this.f8559a.m10603c(resources.getIntArray(resourceId));
        }
        obtainStyledAttributes.recycle();
    }

    private void m10578a() {
        this.f8559a = new ProGuard();
    }

    public void setProgress(int i) {
        if (i != this.f8560b) {
            setProgressOnly(i);
            postInvalidate();
        }
    }

    public void setProgressOnly(int i) {
        int i2;
        if (i < 0) {
            i2 = 0;
        } else {
            i2 = i;
        }
        if (i2 >= 100) {
            i2 = C0452e.f3847m;
        }
        this.f8560b = i2;
        this.f8559a.m10601b((float) ((i2 * 360) / 100));
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8559a.onBoundsChange(new Rect(0, 0, i, i2));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f8559a.draw(canvas);
    }
}
