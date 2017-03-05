package com.yf.smart.weloopx.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.view.View;
import com.yf.smart.weloopx.ProGuard;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class PathView extends View {
    private Paint f9080a;
    private Paint f9081b;
    private Path f9082c;
    private Path f9083d;
    private PathEffect f9084e;
    private Context f9085f;
    private int f9086g;
    private int f9087h;
    private int f9088i;
    private ArrayList<Integer> f9089j;
    private int f9090k;
    private int f9091l;
    private int f9092m;
    private int f9093n;
    private int f9094o;
    private int f9095p;
    private int f9096q;
    private int f9097r;
    private int[] f9098s;

    public PathView(Context context) {
        super(context);
        this.f9090k = 20;
        this.f9091l = -16776961;
        this.f9092m = -16711747;
        this.f9093n = -13418619;
        this.f9094o = 6;
        this.f9095p = 0;
        this.f9096q = 10;
        this.f9097r = -14540254;
        this.f9085f = context;
        m11416a();
    }

    public PathView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PathView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9090k = 20;
        this.f9091l = -16776961;
        this.f9092m = -16711747;
        this.f9093n = -13418619;
        this.f9094o = 6;
        this.f9095p = 0;
        this.f9096q = 10;
        this.f9097r = -14540254;
        this.f9085f = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.PathView, i, 0);
        this.f9090k = obtainStyledAttributes.getDimensionPixelOffset(9, this.f9090k);
        this.f9091l = obtainStyledAttributes.getColor(10, this.f9091l);
        this.f9092m = obtainStyledAttributes.getColor(15, this.f9092m);
        this.f9093n = obtainStyledAttributes.getColor(16, this.f9093n);
        this.f9094o = obtainStyledAttributes.getDimensionPixelOffset(11, this.f9094o);
        this.f9095p = obtainStyledAttributes.getDimensionPixelOffset(12, this.f9095p);
        this.f9096q = obtainStyledAttributes.getDimensionPixelOffset(13, this.f9096q);
        this.f9097r = obtainStyledAttributes.getColor(14, this.f9097r);
        int resourceId = obtainStyledAttributes.getResourceId(17, 0);
        if (resourceId != 0) {
            this.f9098s = getResources().getIntArray(resourceId);
        }
        obtainStyledAttributes.recycle();
        m11416a();
    }

    private void m11416a() {
        this.f9089j = new ArrayList();
        this.f9084e = new CornerPathEffect(10.0f);
        this.f9082c = new Path();
        this.f9083d = new Path();
        this.f9088i = m11419a(this.f9085f, 5.0f);
    }

    private Paint m11415a(float f, float f2) {
        Shader linearGradient;
        Paint paint = new Paint(1);
        paint.setColor(this.f9091l);
        paint.setStyle(Style.STROKE);
        paint.setStrokeCap(Cap.ROUND);
        paint.setStrokeWidth((float) this.f9090k);
        if (this.f9098s == null || this.f9098s.length < 2) {
            linearGradient = new LinearGradient(0.0f, f, 0.0f, f2, this.f9092m, this.f9093n, TileMode.CLAMP);
        } else {
            linearGradient = new LinearGradient(0.0f, f, 0.0f, f2, this.f9098s, null, TileMode.CLAMP);
        }
        paint.setShader(linearGradient);
        paint.setPathEffect(this.f9084e);
        return paint;
    }

    private Paint m11418b() {
        Paint paint = new Paint(1);
        paint.setColor(this.f9097r);
        paint.setStyle(Style.STROKE);
        paint.setStrokeCap(Cap.ROUND);
        paint.setStrokeWidth((float) this.f9090k);
        paint.setShadowLayer((float) this.f9094o, (float) this.f9095p, (float) this.f9096q, this.f9097r);
        paint.setPathEffect(this.f9084e);
        return paint;
    }

    public void setMaxNum(int i) {
        this.f9087h = i;
    }

    public void setMinNum(int i) {
        this.f9086g = i;
    }

    public void setData(String str) {
        this.f9089j.clear();
        for (String parseInt : str.split(",")) {
            try {
                int parseInt2 = Integer.parseInt(parseInt);
                this.f9089j.add(Integer.valueOf(parseInt2));
                if (parseInt2 < this.f9086g) {
                    this.f9086g = parseInt2;
                } else if (parseInt2 > this.f9087h) {
                    this.f9087h = parseInt2;
                }
            } catch (Exception e) {
            }
        }
        m11417a(getWidth(), getHeight());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m11417a(i, i2);
    }

    private void m11417a(int i, int i2) {
        Object obj = 1;
        if (i > 0 && i2 > 0 && this.f9089j != null && this.f9089j.size() >= 1) {
            obj = null;
        }
        if (obj == null) {
            this.f9083d.reset();
            this.f9082c.reset();
            float paddingBottom = ((float) (((i2 - getPaddingBottom()) - getPaddingTop()) - this.f9088i)) / ((float) (this.f9087h - this.f9086g));
            float paddingLeft = ((float) ((i - getPaddingLeft()) - getPaddingRight())) / ((float) this.f9089j.size());
            int paddingBottom2 = i2 - getPaddingBottom();
            float paddingLeft2 = (float) getPaddingLeft();
            for (int i3 = 0; i3 < this.f9089j.size(); i3++) {
                float intValue = ((float) paddingBottom2) - (((float) (((Integer) this.f9089j.get(i3)).intValue() - this.f9086g)) * paddingBottom);
                if (i3 == 0) {
                    this.f9082c.moveTo(paddingLeft2, intValue);
                    this.f9083d.moveTo(paddingLeft2, intValue);
                } else {
                    this.f9082c.lineTo(paddingLeft2, intValue);
                    this.f9083d.lineTo(paddingLeft2, intValue);
                }
                paddingLeft2 += paddingLeft;
            }
            this.f9080a = m11415a((float) (getPaddingTop() + this.f9088i), (float) (paddingBottom2 - getPaddingBottom()));
            this.f9081b = m11418b();
            invalidate();
        }
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.f9083d, this.f9081b);
        canvas.drawPath(this.f9082c, this.f9080a);
    }

    public int m11419a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }
}
