package com.yf.smart.weloopx.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.View;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class DeviceSearchView extends View {
    Paint f9068a;
    Bitmap f9069b;
    int f9070c;
    int f9071d;
    Path f9072e;
    PathMeasure f9073f;
    float f9074g;
    float f9075h;
    float f9076i;
    float[] f9077j;
    float[] f9078k;
    Matrix f9079l;

    public DeviceSearchView(Context context) {
        super(context);
        m11414a();
    }

    public DeviceSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m11414a();
    }

    public DeviceSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m11414a();
    }

    public void m11414a() {
        this.f9068a = new Paint();
        this.f9068a.setColor(0);
        this.f9068a.setStrokeWidth(1.0f);
        this.f9068a.setStyle(Style.STROKE);
        this.f9069b = BitmapFactory.decodeResource(getResources(), R.drawable.device_search);
        this.f9070c = this.f9069b.getWidth() / 2;
        this.f9071d = this.f9069b.getHeight() / 2;
        this.f9072e = new Path();
        this.f9072e.moveTo(110.0f, 180.0f);
        this.f9072e.lineTo(140.0f, 140.0f);
        this.f9072e.lineTo(110.0f, 100.0f);
        this.f9072e.lineTo(80.0f, 140.0f);
        this.f9072e.close();
        this.f9073f = new PathMeasure(this.f9072e, false);
        this.f9074g = this.f9073f.getLength();
        this.f9075h = 2.0f;
        this.f9076i = 0.0f;
        this.f9077j = new float[2];
        this.f9078k = new float[2];
        this.f9079l = new Matrix();
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.f9072e, this.f9068a);
        if (this.f9076i < this.f9074g) {
            this.f9073f.getPosTan(this.f9076i, this.f9077j, this.f9078k);
            this.f9079l.reset();
            this.f9079l.postTranslate(this.f9077j[0] - ((float) this.f9070c), this.f9077j[1] - ((float) this.f9071d));
            canvas.drawBitmap(this.f9069b, this.f9079l, null);
            this.f9076i += this.f9075h;
        } else {
            this.f9076i = 0.0f;
        }
        invalidate();
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
    }
}
