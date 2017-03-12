package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.yf.smart.weloopx.ProGuard;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class ChartView extends View {
    private List<ProGuard> f8510a;
    private ProGuard f8511b;
    private float f8512c;
    private float f8513d;
    private float f8514e;

    public ChartView(Context context) {
        super(context);
        this.f8510a = new ArrayList();
    }

    public ChartView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChartView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8510a = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.ChartView, i, 0);
        this.f8514e = (float) obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        this.f8513d = (float) obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        this.f8512c = (float) obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        obtainStyledAttributes.recycle();
    }

    public void m10546a(ProGuard proGuard) {
        this.f8510a.add(proGuard);
    }

    public void setBottomLabelSeries(ProGuard proGuard) {
        this.f8511b = proGuard;
    }

    public float getXSize() {
        return this.f8512c;
    }

    public void m10545a() {
        this.f8510a.clear();
        this.f8511b = null;
    }

    public void setXSize(float f) {
        this.f8512c = f;
    }

    public float getYSize() {
        return this.f8513d;
    }

    public void setYSize(float f) {
        this.f8513d = f;
    }

    public float getBottomLabelHeight() {
        return this.f8514e;
    }

    public void setBottomLabelHeight(float f) {
        this.f8514e = f;
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(resolveSizeAndState((int) this.f8512c, i, 0), resolveSizeAndState((int) (getBottomLabelHeight() + getYSize()), i2, 0));
    }

    protected void onDraw(Canvas canvas) {
        for (ProGuard a : this.f8510a) {
            a.m10579a(canvas, this);
        }
        if (this.f8511b != null) {
            this.f8511b.m10579a(canvas, this);
        }
    }
}
