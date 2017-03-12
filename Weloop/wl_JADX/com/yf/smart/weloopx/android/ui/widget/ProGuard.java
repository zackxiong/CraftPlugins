package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.NinePatchDrawable;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.yf.smart.weloopx.android.ui.widget.d */
public class ProGuard extends ProGuard {
    private List<PointF[]> f8571a;
    private List<Paint> f8572b;
    private int[] f8573c;
    private int[] f8574d;
    private List<NinePatchDrawable> f8575e;
    private NinePatchDrawable f8576f;
    private NinePatchDrawable f8577g;
    private Boolean f8578h;
    private Context f8579i;

    public ProGuard(Context context, int[] iArr, int[] iArr2, Boolean bool) {
        this.f8571a = new ArrayList();
        this.f8572b = new ArrayList();
        this.f8573c = null;
        this.f8574d = null;
        this.f8575e = new ArrayList();
        this.f8579i = context;
        this.f8573c = iArr;
        this.f8574d = iArr2;
        this.f8578h = bool;
        this.f8576f = (NinePatchDrawable) context.getResources().getDrawable(R.drawable.calorie_sleep_no_data);
        this.f8577g = (NinePatchDrawable) context.getResources().getDrawable(R.drawable.sleep_week_min_data_gradient);
    }

    public void m10590a(PointF[] pointFArr, NinePatchDrawable ninePatchDrawable) {
        this.f8571a.add(pointFArr);
        this.f8575e.add(ninePatchDrawable);
    }

    public final void m10589a(PointF[] pointFArr) {
    }

    public final PointF[] m10591b() {
        return super.m10581b();
    }

    public void m10588a(Canvas canvas, ChartView chartView) {
        RectF rectF = new RectF();
        float ySize = chartView.getYSize();
        int length = ((PointF[]) this.f8571a.get(0)).length;
        Paint paint = new Paint();
        paint.setTextSize(30.0f);
        paint.setTextAlign(Align.CENTER);
        paint.setFakeBoldText(true);
        paint.setColor(this.f8579i.getResources().getColor(R.color.bottom_line_deep_sleep));
        String str = "hh:mm";
        for (int i = 0; i < length; i++) {
            rectF.bottom = ySize;
            float f = 0.0f;
            for (PointF[] pointFArr : this.f8571a) {
                f = pointFArr[i].y + f;
            }
            float f2 = ((PointF[]) this.f8571a.get(2))[i].y;
            int i2 = 0;
            float f3 = f;
            for (PointF[] pointFArr2 : this.f8571a) {
                NinePatchDrawable ninePatchDrawable = (NinePatchDrawable) this.f8575e.get(i2);
                rectF.left = pointFArr2[i].x;
                rectF.right = rectF.left + m10583a();
                rectF.top = rectF.bottom - f3;
                f3 -= pointFArr2[i].y;
                if (this.f8573c[i] == 0) {
                    this.f8576f.setBounds(new Rect((int) rectF.left, (int) ((rectF.bottom - m10583a()) + 2.0f), (int) rectF.right, (int) (rectF.bottom + 2.0f)));
                    this.f8576f.draw(canvas);
                    break;
                }
                String c = com.yf.smart.weloopx.p145g.ProGuard.m11371c(this.f8573c[i], str);
                if (this.f8573c[i] > 690) {
                    if (pointFArr2[i].y != f2) {
                        ninePatchDrawable.setBounds(new Rect((int) rectF.left, 40, (int) rectF.right, (int) rectF.bottom));
                        ninePatchDrawable.draw(canvas);
                        if (this.f8578h.booleanValue()) {
                            canvas.drawText(c, (rectF.left + rectF.right) / 2.0f, 35.0f, paint);
                        }
                        i2++;
                    } else if (this.f8574d[i] > 600) {
                        ninePatchDrawable.setBounds(new Rect((int) rectF.left, ((int) rectF.bottom) - 400, (int) rectF.right, (int) rectF.bottom));
                        ninePatchDrawable.draw(canvas);
                    } else {
                        ninePatchDrawable.setBounds(new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
                        ninePatchDrawable.draw(canvas);
                    }
                } else if (f <= m10583a()) {
                    this.f8577g.setBounds(new Rect((int) rectF.left, (int) (rectF.bottom - m10583a()), (int) rectF.right, (int) rectF.bottom));
                    this.f8577g.draw(canvas);
                    if (this.f8578h.booleanValue()) {
                        canvas.drawText(c, (rectF.left + rectF.right) / 2.0f, (rectF.bottom - m10583a()) - 5.0f, paint);
                    }
                } else if (i2 != 2 || f2 >= m10583a()) {
                    ninePatchDrawable.setBounds(new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
                    ninePatchDrawable.draw(canvas);
                    if (this.f8578h.booleanValue()) {
                        canvas.drawText(c, (rectF.left + rectF.right) / 2.0f, (rectF.bottom - f) - 5.0f, paint);
                    }
                    i2++;
                } else {
                    this.f8577g.setBounds(new Rect(((int) rectF.left) + 1, (int) (rectF.bottom - m10583a()), ((int) rectF.right) - 1, (int) rectF.bottom));
                    this.f8577g.draw(canvas);
                    if (this.f8578h.booleanValue() && f == f2) {
                        canvas.drawText(c, (rectF.left + rectF.right) / 2.0f, (rectF.bottom - m10583a()) - 5.0f, paint);
                    }
                }
            }
        }
    }
}
