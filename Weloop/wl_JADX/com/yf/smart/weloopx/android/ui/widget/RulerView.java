package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.HorizontalScrollView;

/* compiled from: ProGuard */
public class RulerView extends HorizontalScrollView {
    private ProGuard f8527a;
    private int f8528b;
    private int f8529c;
    private int f8530d;
    private int f8531e;
    private int f8532f;
    private int f8533g;
    private int f8534h;
    private int f8535i;
    private int f8536j;
    private int f8537k;
    private int f8538l;
    private int f8539m;
    private int f8540n;
    private int f8541o;
    private Drawable f8542p;
    private boolean f8543q;
    private boolean f8544r;
    private View f8545s;
    private int f8546t;
    private Runnable f8547u;
    private Paint f8548v;
    private Rect f8549w;

    /* renamed from: com.yf.smart.weloopx.android.ui.widget.RulerView.a */
    public interface ProGuard {
        void m8961a(int i);
    }

    public RulerView(Context context) {
        this(context, null);
    }

    public RulerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RulerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8547u = new ProGuard(this);
        this.f8549w = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.yf.smart.weloopx.ProGuard.styleable.RulerView, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(17, 0);
        if (resourceId != 0) {
            this.f8542p = getResources().getDrawable(resourceId);
            this.f8529c = obtainStyledAttributes.getDimensionPixelOffset(19, 0);
            this.f8530d = obtainStyledAttributes.getDimensionPixelOffset(20, 0);
            this.f8543q = obtainStyledAttributes.getBoolean(21, false);
            this.f8528b = obtainStyledAttributes.getDimensionPixelOffset(18, 0);
        }
        this.f8531e = obtainStyledAttributes.getDimensionPixelOffset(22, 0);
        this.f8532f = obtainStyledAttributes.getDimensionPixelOffset(23, 0);
        this.f8533g = obtainStyledAttributes.getInteger(27, 0);
        this.f8534h = obtainStyledAttributes.getInteger(28, 10);
        this.f8535i = obtainStyledAttributes.getInteger(29, this.f8533g);
        this.f8540n = obtainStyledAttributes.getColor(31, 5592405);
        this.f8538l = obtainStyledAttributes.getDimensionPixelOffset(24, 10);
        this.f8539m = obtainStyledAttributes.getDimensionPixelOffset(25, this.f8538l);
        this.f8541o = obtainStyledAttributes.getInteger(26, 10);
        this.f8546t = obtainStyledAttributes.getInteger(30, 1);
        this.f8544r = obtainStyledAttributes.getBoolean(32, false);
        this.f8537k = obtainStyledAttributes.getDimensionPixelOffset(33, 10);
        obtainStyledAttributes.recycle();
        m10561b();
    }

    private void m10562b(int i) {
        this.f8536j = ((((this.f8534h - this.f8533g) - 1) / this.f8546t) * this.f8531e) + i;
    }

    public void m10566a(int i) {
        if (i < this.f8533g) {
            i = this.f8533g;
        }
        if (i > this.f8534h) {
            i = this.f8534h;
        }
        scrollTo(((((i / this.f8546t) * this.f8546t) - this.f8533g) / this.f8546t) * this.f8531e, 0);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f8543q) {
            this.f8528b = i / 2;
        }
        m10562b(i);
        measureChildren(i, i2);
        m10566a(this.f8535i);
    }

    public void setOnScaleListener(ProGuard proGuard) {
        this.f8527a = proGuard;
    }

    public int getScaleStart() {
        return this.f8533g;
    }

    public int getScaleEnd() {
        return this.f8534h;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        if (this.f8545s != null) {
            this.f8545s.setOnClickListener(onClickListener);
        }
        super.setOnClickListener(onClickListener);
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        m10559a();
        removeCallbacks(this.f8547u);
        postDelayed(this.f8547u, 100);
    }

    private void m10559a() {
        this.f8535i = this.f8533g + (this.f8546t * (getScrollX() / this.f8531e));
        if (this.f8527a != null) {
            this.f8527a.m8961a(this.f8535i);
        }
    }

    public int getScalePosition() {
        return this.f8535i;
    }

    public void setScalePosition(int i) {
        this.f8535i = (i / this.f8546t) * this.f8546t;
    }

    private void m10561b() {
        this.f8548v = new Paint();
        this.f8548v.setStrokeWidth((float) this.f8532f);
        this.f8548v.setColor(this.f8540n);
        this.f8548v.setTextSize((float) this.f8537k);
        m10564c();
    }

    private void m10564c() {
        View proGuard = new ProGuard(this, getContext());
        this.f8545s = proGuard;
        proGuard.setOnTouchListener(new ProGuard(this));
        proGuard.setClickable(true);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        addView(proGuard, -2, -1);
        postDelayed(new ProGuard(this), 1);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.f8528b;
        Rect rect = this.f8549w;
        int i2 = this.f8533g;
        int i3 = i;
        while (i2 < this.f8534h) {
            int i4;
            if (i2 % this.f8541o == 0) {
                i4 = 1;
            } else {
                i4 = 0;
            }
            int i5 = (i4 != 0 ? this.f8539m : this.f8538l) + 0;
            canvas.drawLine((float) i3, (float) null, (float) i3, (float) i5, this.f8548v);
            if (i4 != 0 && this.f8544r) {
                String str = "" + i2;
                this.f8548v.getTextBounds(str, 0, str.length(), rect);
                canvas.drawText(str, (float) (i3 - (rect.width() / 2)), (float) ((i5 + 5) + rect.height()), this.f8548v);
            }
            i2 = this.f8546t + i2;
            i3 += this.f8531e;
        }
        int scrollX = (getScrollX() + this.f8528b) - (this.f8529c / 2);
        this.f8542p.setBounds(scrollX, 0, this.f8529c + scrollX, this.f8530d);
        this.f8542p.draw(canvas);
    }
}
