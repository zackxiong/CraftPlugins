package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import com.yf.smart.weloopx.ProGuard;

/* compiled from: ProGuard */
public class CircularImageView extends ImageView {
    private int f8515a;
    private int f8516b;
    private Bitmap f8517c;
    private Paint f8518d;
    private Paint f8519e;

    public CircularImageView(Context context) {
        this(context, null);
    }

    public CircularImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8518d = new Paint();
        this.f8518d.setAntiAlias(true);
        this.f8519e = new Paint();
        this.f8519e.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.CircularImageView, i, 0);
        if (obtainStyledAttributes.getBoolean(0, true)) {
            setBorderWidth(obtainStyledAttributes.getDimensionPixelOffset(1, (int) ((4.0f * getContext().getResources().getDisplayMetrics().density) + 0.5f)));
            setBorderColor(obtainStyledAttributes.getColor(2, -1));
        }
        if (obtainStyledAttributes.getBoolean(3, false)) {
            m10550a();
        }
        obtainStyledAttributes.recycle();
    }

    public void setBorderWidth(int i) {
        this.f8515a = i;
        requestLayout();
        invalidate();
    }

    public void setBorderColor(int i) {
        if (this.f8519e != null) {
            this.f8519e.setColor(i);
        }
        invalidate();
    }

    public void m10550a() {
        setLayerType(1, this.f8519e);
        this.f8519e.setShadowLayer(4.0f, 0.0f, 2.0f, -16777216);
    }

    public void onDraw(Canvas canvas) {
        this.f8517c = m10549a(getDrawable());
        if (this.f8517c != null) {
            this.f8516b = canvas.getWidth();
            if (canvas.getHeight() < this.f8516b) {
                this.f8516b = canvas.getHeight();
            }
            this.f8518d.setShader(new BitmapShader(Bitmap.createScaledBitmap(this.f8517c, this.f8516b, this.f8516b, false), TileMode.CLAMP, TileMode.CLAMP));
            int i = (this.f8516b - (this.f8515a * 2)) / 2;
            canvas.drawCircle((float) (this.f8515a + i), (float) (this.f8515a + i), ((float) (((this.f8516b - (this.f8515a * 2)) / 2) + this.f8515a)) - 4.0f, this.f8519e);
            canvas.drawCircle((float) (this.f8515a + i), (float) (i + this.f8515a), ((float) ((this.f8516b - (this.f8515a * 2)) / 2)) - 4.0f, this.f8518d);
        }
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m10547a(i), m10548b(i2));
    }

    private int m10547a(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode == 1073741824 || mode == Integer.MIN_VALUE) {
            return size;
        }
        return this.f8516b;
    }

    private int m10548b(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (!(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            size = this.f8516b;
        }
        return size + 2;
    }

    public Bitmap m10549a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }
}
