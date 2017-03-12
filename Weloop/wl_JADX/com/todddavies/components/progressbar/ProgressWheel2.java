package com.todddavies.components.progressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.yf.ui.ProGuard;

/* compiled from: ProGuard */
public class ProgressWheel2 extends View {
    private RectF f5387A;
    private RectF f5388B;
    private RectF f5389C;
    private RectF f5390D;
    private RectF f5391E;
    private int f5392F;
    private int f5393G;
    private Handler f5394H;
    private String f5395I;
    private String[] f5396J;
    int f5397a;
    boolean f5398b;
    private int f5399c;
    private int f5400d;
    private int f5401e;
    private int f5402f;
    private int f5403g;
    private int f5404h;
    private int f5405i;
    private int f5406j;
    private float f5407k;
    private int f5408l;
    private int f5409m;
    private int f5410n;
    private int f5411o;
    private int f5412p;
    private int f5413q;
    private int f5414r;
    private int f5415s;
    private int f5416t;
    private Paint f5417u;
    private Paint f5418v;
    private Paint f5419w;
    private Paint f5420x;
    private Paint f5421y;
    private RectF f5422z;

    public ProgressWheel2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5399c = 0;
        this.f5400d = 0;
        this.f5401e = 100;
        this.f5402f = 80;
        this.f5403g = 60;
        this.f5404h = 20;
        this.f5405i = 20;
        this.f5406j = 20;
        this.f5407k = 0.0f;
        this.f5408l = 5;
        this.f5409m = 5;
        this.f5410n = 5;
        this.f5411o = 5;
        this.f5412p = -1442840576;
        this.f5413q = -1442840576;
        this.f5414r = 0;
        this.f5415s = -1428300323;
        this.f5416t = -16777216;
        this.f5417u = new Paint();
        this.f5418v = new Paint();
        this.f5419w = new Paint();
        this.f5420x = new Paint();
        this.f5421y = new Paint();
        this.f5422z = new RectF();
        this.f5387A = new RectF();
        this.f5388B = new RectF();
        this.f5389C = new RectF();
        this.f5390D = new RectF();
        this.f5391E = new RectF();
        this.f5392F = 2;
        this.f5393G = 0;
        this.f5394H = new ProGuard(this);
        this.f5397a = 0;
        this.f5398b = false;
        this.f5395I = "";
        this.f5396J = new String[0];
        m7161a(context.obtainStyledAttributes(attributeSet, ProGuard.styleable.ProgressWheel2));
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        measuredWidth = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        if (paddingLeft <= measuredWidth) {
            measuredWidth = paddingLeft;
        }
        setMeasuredDimension((getPaddingLeft() + measuredWidth) + getPaddingRight(), (measuredWidth + getPaddingTop()) + getPaddingBottom());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f5400d = i;
        this.f5399c = i2;
        m7163b();
        m7160a();
        invalidate();
    }

    private void m7160a() {
        this.f5417u.setColor(this.f5412p);
        this.f5417u.setAntiAlias(true);
        this.f5417u.setStyle(Style.STROKE);
        this.f5417u.setStrokeWidth((float) this.f5404h);
        this.f5419w.setColor(this.f5415s);
        this.f5419w.setAntiAlias(true);
        this.f5419w.setStyle(Style.STROKE);
        this.f5419w.setStrokeWidth((float) this.f5405i);
        this.f5418v.setColor(this.f5414r);
        this.f5418v.setAntiAlias(true);
        this.f5418v.setStyle(Style.FILL);
        this.f5420x.setColor(this.f5416t);
        this.f5420x.setStyle(Style.FILL);
        this.f5420x.setAntiAlias(true);
        this.f5420x.setTextSize((float) this.f5406j);
        this.f5421y.setColor(this.f5413q);
        this.f5421y.setAntiAlias(true);
        this.f5421y.setStyle(Style.STROKE);
        this.f5421y.setStrokeWidth(this.f5407k);
    }

    private void m7163b() {
        int min = Math.min(this.f5400d, this.f5399c);
        int i = this.f5400d - min;
        min = this.f5399c - min;
        this.f5408l = getPaddingTop() + (min / 2);
        this.f5409m = (min / 2) + getPaddingBottom();
        this.f5410n = getPaddingLeft() + (i / 2);
        this.f5411o = getPaddingRight() + (i / 2);
        min = getWidth();
        this.f5422z = new RectF((float) this.f5410n, (float) this.f5408l, (float) (min - this.f5411o), (float) (getHeight() - this.f5409m));
        float max = ((float) Math.max(this.f5405i, this.f5404h)) / 2.0f;
        this.f5387A = new RectF(this.f5422z.left + max, this.f5422z.top + max, this.f5422z.right - max, this.f5422z.bottom - max);
        this.f5391E = new RectF((this.f5387A.left + max) + (this.f5407k / 2.0f), (this.f5387A.top + max) + (this.f5407k / 2.0f), (this.f5387A.right - max) - (this.f5407k / 2.0f), (this.f5387A.bottom - max) - (this.f5407k / 2.0f));
        this.f5390D = new RectF((this.f5387A.left - max) - (this.f5407k / 2.0f), (this.f5387A.top - max) - (this.f5407k / 2.0f), (this.f5387A.right + max) + (this.f5407k / 2.0f), (max + this.f5387A.bottom) + (this.f5407k / 2.0f));
        max = ((float) this.f5404h) / 2.0f;
        this.f5389C = new RectF(this.f5422z.left + max, this.f5422z.top + max, this.f5422z.right - max, this.f5422z.bottom - max);
        max = ((float) this.f5405i) / 2.0f;
        this.f5388B = new RectF(this.f5422z.left + max, this.f5422z.top + max, this.f5422z.right - max, this.f5422z.bottom - max);
        this.f5401e = ((min - this.f5411o) - this.f5404h) / 2;
        this.f5402f = (this.f5401e - this.f5404h) + 1;
    }

    private void m7161a(TypedArray typedArray) {
        this.f5404h = (int) typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_barWidth, (float) this.f5404h);
        this.f5405i = (int) typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_rimWidth, (float) this.f5405i);
        this.f5392F = (int) typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_spinSpeed, (float) this.f5392F);
        this.f5393G = typedArray.getInteger(ProGuard.styleable.ProgressWheel2_pw_delayMillis, this.f5393G);
        if (this.f5393G < 0) {
            this.f5393G = 0;
        }
        this.f5412p = typedArray.getColor(ProGuard.styleable.ProgressWheel2_pw_barColor, this.f5412p);
        this.f5403g = (int) typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_barLength, (float) this.f5403g);
        this.f5406j = (int) typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_textSize, (float) this.f5406j);
        this.f5416t = typedArray.getColor(ProGuard.styleable.ProgressWheel2_pw_textColor, this.f5416t);
        if (typedArray.hasValue(ProGuard.styleable.ProgressWheel2_pw_text)) {
            setText(typedArray.getString(ProGuard.styleable.ProgressWheel2_pw_text));
        }
        this.f5415s = typedArray.getColor(ProGuard.styleable.ProgressWheel2_pw_rimColor, this.f5415s);
        this.f5414r = typedArray.getColor(ProGuard.styleable.ProgressWheel2_pw_circleColor, this.f5414r);
        this.f5413q = typedArray.getColor(ProGuard.styleable.ProgressWheel2_pw_contourColor, this.f5413q);
        this.f5407k = typedArray.getDimension(ProGuard.styleable.ProgressWheel2_pw_contourSize, this.f5407k);
        typedArray.recycle();
    }

    protected void onDraw(Canvas canvas) {
        int i = 0;
        super.onDraw(canvas);
        canvas.drawArc(this.f5391E, 360.0f, 360.0f, false, this.f5418v);
        canvas.drawArc(this.f5388B, 360.0f, 360.0f, false, this.f5419w);
        canvas.drawArc(this.f5390D, 360.0f, 360.0f, false, this.f5421y);
        canvas.drawArc(this.f5391E, 360.0f, 360.0f, false, this.f5421y);
        if (this.f5398b) {
            canvas.drawArc(this.f5389C, (float) (this.f5397a - 90), (float) this.f5403g, false, this.f5417u);
        } else {
            canvas.drawArc(this.f5389C, -90.0f, (float) this.f5397a, false, this.f5417u);
        }
        float descent = this.f5420x.descent() - this.f5420x.ascent();
        float height = ((((float) getHeight()) - (((float) this.f5396J.length) * descent)) / 2.0f) - this.f5420x.ascent();
        String[] strArr = this.f5396J;
        int length = strArr.length;
        while (i < length) {
            String str = strArr[i];
            canvas.drawText(str, ((float) (getWidth() / 2)) - (this.f5420x.measureText(str) / 2.0f), height, this.f5420x);
            height += descent;
            i++;
        }
    }

    public void setProgress(int i) {
        this.f5398b = false;
        this.f5397a = i;
        this.f5394H.sendEmptyMessage(0);
    }

    public void setText(String str) {
        this.f5395I = str;
        this.f5396J = this.f5395I.split("\n");
    }

    public int getCircleRadius() {
        return this.f5402f;
    }

    public void setCircleRadius(int i) {
        this.f5402f = i;
    }

    public int getBarLength() {
        return this.f5403g;
    }

    public void setBarLength(int i) {
        this.f5403g = i;
    }

    public int getBarWidth() {
        return this.f5404h;
    }

    public void setBarWidth(int i) {
        this.f5404h = i;
    }

    public int getTextSize() {
        return this.f5406j;
    }

    public void setTextSize(int i) {
        this.f5406j = i;
    }

    public int getPaddingTop() {
        return this.f5408l;
    }

    public void setPaddingTop(int i) {
        this.f5408l = i;
    }

    public int getPaddingBottom() {
        return this.f5409m;
    }

    public void setPaddingBottom(int i) {
        this.f5409m = i;
    }

    public int getPaddingLeft() {
        return this.f5410n;
    }

    public void setPaddingLeft(int i) {
        this.f5410n = i;
    }

    public int getPaddingRight() {
        return this.f5411o;
    }

    public void setPaddingRight(int i) {
        this.f5411o = i;
    }

    public int getBarColor() {
        return this.f5412p;
    }

    public void setBarColor(int i) {
        this.f5412p = i;
    }

    public int getCircleColor() {
        return this.f5414r;
    }

    public void setCircleColor(int i) {
        this.f5414r = i;
    }

    public int getRimColor() {
        return this.f5415s;
    }

    public void setRimColor(int i) {
        this.f5415s = i;
    }

    public Shader getRimShader() {
        return this.f5419w.getShader();
    }

    public void setRimShader(Shader shader) {
        this.f5419w.setShader(shader);
    }

    public int getTextColor() {
        return this.f5416t;
    }

    public void setTextColor(int i) {
        this.f5416t = i;
    }

    public int getSpinSpeed() {
        return this.f5392F;
    }

    public void setSpinSpeed(int i) {
        this.f5392F = i;
    }

    public int getRimWidth() {
        return this.f5405i;
    }

    public void setRimWidth(int i) {
        this.f5405i = i;
    }

    public int getDelayMillis() {
        return this.f5393G;
    }

    public void setDelayMillis(int i) {
        this.f5393G = i;
    }
}
