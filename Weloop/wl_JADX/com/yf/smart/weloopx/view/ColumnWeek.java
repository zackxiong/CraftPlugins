package com.yf.smart.weloopx.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.baidu.location.BDLocation;
import com.baidu.location.C0452e;
import com.yf.smart.weloopx.data.models.CalorieItem;
import com.yf.smart.weloopx.data.models.SleepItem;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
public class ColumnWeek extends View {
    private double f9020A;
    private float f9021B;
    private float f9022C;
    private int f9023D;
    private final String f9024a;
    private int f9025b;
    private int f9026c;
    private int f9027d;
    private int f9028e;
    private int f9029f;
    private int f9030g;
    private int f9031h;
    private int f9032i;
    private int f9033j;
    private Paint f9034k;
    private Paint f9035l;
    private Paint f9036m;
    private Paint f9037n;
    private Paint f9038o;
    private float f9039p;
    private float f9040q;
    private float f9041r;
    private float f9042s;
    private int f9043t;
    private List<SleepItem> f9044u;
    private List<CalorieItem> f9045v;
    private Context f9046w;
    private int f9047x;
    private int f9048y;
    private int f9049z;

    public ColumnWeek(Context context) {
        super(context);
        this.f9024a = "ColumnWeek";
        this.f9025b = 32;
        this.f9026c = Color.argb(255, 86, 19, 145);
        this.f9027d = Color.argb(255, 134, 27, 229);
        this.f9028e = Color.argb(255, 165, 63, 255);
        this.f9029f = Color.argb(255, 242, 243, 245);
        this.f9030g = this.f9026c;
        this.f9031h = Color.argb(255, 245, 166, 35);
        this.f9032i = Color.argb(255, 3, C0452e.f3841h, 157);
        this.f9033j = Color.argb(255, 245, BDLocation.TypeServerError, 35);
        this.f9044u = new ArrayList();
        this.f9045v = new ArrayList();
        this.f9047x = 7834;
        this.f9048y = 1556;
        this.f9049z = 0;
        this.f9020A = 0.0d;
        this.f9021B = 20.0f;
        this.f9022C = 0.0f;
        this.f9023D = 0;
        m11391a(context);
    }

    public ColumnWeek(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9024a = "ColumnWeek";
        this.f9025b = 32;
        this.f9026c = Color.argb(255, 86, 19, 145);
        this.f9027d = Color.argb(255, 134, 27, 229);
        this.f9028e = Color.argb(255, 165, 63, 255);
        this.f9029f = Color.argb(255, 242, 243, 245);
        this.f9030g = this.f9026c;
        this.f9031h = Color.argb(255, 245, 166, 35);
        this.f9032i = Color.argb(255, 3, C0452e.f3841h, 157);
        this.f9033j = Color.argb(255, 245, BDLocation.TypeServerError, 35);
        this.f9044u = new ArrayList();
        this.f9045v = new ArrayList();
        this.f9047x = 7834;
        this.f9048y = 1556;
        this.f9049z = 0;
        this.f9020A = 0.0d;
        this.f9021B = 20.0f;
        this.f9022C = 0.0f;
        this.f9023D = 0;
        m11391a(context);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f9039p = (float) getWidth();
        this.f9040q = (float) getHeight();
        if (this.f9049z == this.f9047x) {
            m11394b(canvas);
        }
        if (this.f9049z == this.f9048y) {
            m11392a(canvas);
        }
    }

    private void m11391a(Context context) {
        this.f9046w = context;
        this.f9034k = new Paint();
        this.f9034k.setAntiAlias(true);
        this.f9034k.setStrokeWidth(5.0f);
        this.f9034k.setStyle(Style.FILL);
        this.f9035l = new Paint();
        this.f9035l.setAntiAlias(true);
        this.f9035l.setStrokeWidth(3.0f);
        this.f9035l.setStyle(Style.FILL);
        this.f9035l.setColor(this.f9029f);
        this.f9036m = new Paint();
        this.f9036m.setAntiAlias(true);
        this.f9036m.setStyle(Style.FILL);
        this.f9036m.setStrokeWidth(6.0f);
        this.f9036m.setColor(this.f9030g);
        this.f9037n = new Paint();
        this.f9037n.setAntiAlias(true);
        this.f9037n.setStyle(Style.FILL);
        this.f9038o = new Paint();
        this.f9038o.setAntiAlias(true);
        this.f9038o.setColor(this.f9031h);
        this.f9038o.setTextSize(m11393b(8));
        this.f9021B = m11393b(25);
    }

    private String m11390a(int i) {
        String str = "";
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return this.f9046w.getString(R.string.monday);
            case ProGuard.styleable.View_paddingStart /*2*/:
                return this.f9046w.getString(R.string.tuesday);
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return this.f9046w.getString(R.string.wednesday);
            case ProGuard.styleable.View_theme /*4*/:
                return this.f9046w.getString(R.string.thursday);
            case ProGuard.styleable.View_backgroundTint /*5*/:
                return this.f9046w.getString(R.string.friday);
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return this.f9046w.getString(R.string.saturday);
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return this.f9046w.getString(R.string.sunday);
            default:
                return str;
        }
    }

    private void m11392a(Canvas canvas) {
        float f;
        float calorie;
        this.f9021B = 10.0f;
        this.f9022C = m11393b(10);
        this.f9041r = this.f9039p / ((float) this.f9025b);
        this.f9040q -= this.f9021B;
        this.f9040q -= this.f9022C;
        this.f9042s = (float) (((double) this.f9040q) / this.f9020A);
        for (int i = 1; i <= 7; i++) {
            f = ((float) i) * (this.f9041r * 4.0f);
            canvas.drawLine(f, 0.0f, f, (this.f9040q + this.f9021B) - this.f9022C, this.f9035l);
        }
        this.f9036m.setColor(this.f9033j);
        canvas.drawLine(0.0f, (this.f9040q + this.f9021B) - this.f9022C, this.f9039p, (this.f9040q + this.f9021B) - this.f9022C, this.f9036m);
        int size = this.f9045v.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                float f2 = ((float) (((i2 * 4) - 1) + (this.f9023D * 4))) * this.f9041r;
                calorie = (this.f9040q - (((float) ((CalorieItem) this.f9045v.get(i2)).getCalorie()) * this.f9042s)) + this.f9021B;
                float f3 = ((float) ((((i2 * 4) - 1) + 2) + (this.f9023D * 4))) * this.f9041r;
                float f4 = (this.f9040q + this.f9021B) - this.f9022C;
                if (calorie < 0.0f) {
                    calorie = 0.0f;
                }
                Bitmap decodeResource = BitmapFactory.decodeResource(this.f9046w.getResources(), R.drawable.sport_gradient);
                RectF rectF = new RectF();
                rectF.left = f2;
                rectF.right = f3;
                rectF.bottom = f4;
                rectF.top = calorie;
                canvas.drawBitmap(decodeResource, null, rectF, this.f9037n);
            }
        }
        this.f9036m.setColor(this.f9032i);
        this.f9036m.setStrokeWidth(3.0f);
        int size2 = this.f9045v.size();
        f = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        int i3 = 0;
        float f7 = 0.0f;
        while (i3 < 9) {
            if (i3 + 1 > size2) {
                f2 = ((float) i3) * (this.f9041r * 4.0f);
                canvas.drawLine(f, f6, f2, f6, this.f9036m);
                f3 = f6;
                calorie = f5;
            } else {
                f3 = ((float) (((double) this.f9040q) - (((double) this.f9042s) * ((CalorieItem) this.f9045v.get(i3)).getCalorieGoal()))) + this.f9021B;
                if (f3 < 0.0f) {
                    f3 = 5.0f;
                }
                f2 = (this.f9041r * 4.0f) * ((float) i3);
                if (i3 != 0) {
                    canvas.drawLine(f, f7, f2, f3, this.f9036m);
                    calorie = f5;
                } else {
                    calorie = f3;
                }
            }
            i3++;
            f6 = f3;
            f5 = calorie;
            f7 = f3;
            f = f2;
        }
        this.f9038o.setColor(this.f9032i);
        canvas.drawText(getResources().getString(R.string.goal_line), 5.0f, 40.0f + f5, this.f9038o);
        this.f9038o.setColor(-16777216);
        this.f9038o.setTextSize(m11393b(15));
        for (int i4 = 1; i4 <= 7; i4++) {
            canvas.drawText(m11390a(i4), ((this.f9041r * 4.0f) * ((float) i4)) - m11393b(6), (this.f9040q - this.f9022C) + m11393b(18), this.f9038o);
        }
    }

    private void m11394b(Canvas canvas) {
        float f;
        this.f9021B = 10.0f;
        this.f9022C = m11393b(10);
        this.f9040q -= this.f9021B;
        this.f9040q -= this.f9022C;
        this.f9041r = this.f9039p / ((float) this.f9025b);
        this.f9042s = this.f9040q / ((float) this.f9043t);
        com.yf.gattlib.p117p.ProGuard.m8292a("ColumnWeek \u5355\u4f4d\u5bbd\u5ea6 widthCompany= " + this.f9041r + "\uff0c heightCompany = " + this.f9042s);
        this.f9035l.setColor(Color.argb(255, C0452e.f3861z, C0452e.f3822Q, 213));
        for (int i = 1; i <= 7; i++) {
            f = ((float) i) * (this.f9041r * 4.0f);
            canvas.drawLine(f, 0.0f, f, (this.f9040q + this.f9021B) - this.f9022C, this.f9035l);
        }
        canvas.drawLine(0.0f, (this.f9040q + this.f9021B) - this.f9022C, this.f9039p, (this.f9040q + this.f9021B) - this.f9022C, this.f9036m);
        int size = this.f9044u.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                SleepItem sleepItem = (SleepItem) this.f9044u.get(i2);
                int deepSleepMinutes = sleepItem.getDeepSleepMinutes();
                int shallowSleepMinutes = sleepItem.getShallowSleepMinutes();
                int wakeMinutes = sleepItem.getWakeMinutes();
                this.f9037n.setColor(this.f9026c);
                f = this.f9041r * ((float) (((i2 * 4) - 1) + (this.f9023D * 4)));
                float f2 = ((this.f9040q - (((float) deepSleepMinutes) * this.f9042s)) + this.f9021B) - this.f9022C;
                float f3 = this.f9041r * ((float) ((((i2 * 4) - 1) + 2) + (this.f9023D * 4)));
                canvas.drawRect(f, f2, f3, (this.f9040q + this.f9021B) - this.f9022C, this.f9037n);
                this.f9037n.setColor(this.f9027d);
                float f4 = ((this.f9040q - (((float) deepSleepMinutes) * this.f9042s)) - (((float) shallowSleepMinutes) * this.f9042s)) + this.f9021B;
                canvas.drawRect(f, f4, f3, f2, this.f9037n);
                this.f9037n.setColor(this.f9028e);
                Canvas canvas2 = canvas;
                float f5 = f4;
                canvas2.drawRect(f, this.f9021B + (((this.f9040q - (((float) deepSleepMinutes) * this.f9042s)) - (((float) shallowSleepMinutes) * this.f9042s)) - (((float) wakeMinutes) * this.f9042s)), f3, f5, this.f9037n);
            }
        }
        f = (480.0f * this.f9042s) - this.f9021B;
        this.f9036m.setStyle(Style.STROKE);
        this.f9036m.setColor(this.f9031h);
        this.f9036m.setStrokeWidth(3.0f);
        Path path = new Path();
        float f6 = this.f9040q - f;
        if (f6 < 0.0f) {
            f6 = 20.0f;
        }
        path.moveTo((float) 10, f6);
        path.lineTo(this.f9039p, this.f9040q - f);
        this.f9036m.setPathEffect(new DashPathEffect(new float[]{20.0f, 20.0f, 20.0f, 20.0f}, 5.0f));
        canvas.drawPath(path, this.f9036m);
        canvas.drawText(getResources().getString(R.string.eight_hour), (float) 10, f6 + 40.0f, this.f9038o);
        this.f9038o.setColor(-16777216);
        this.f9038o.setTextSize(m11393b(15));
        for (int i3 = 1; i3 <= 7; i3++) {
            f = (this.f9041r * 4.0f) * ((float) i3);
            canvas.drawText(m11390a(i3), f - m11393b(6), (this.f9040q - this.f9022C) + m11393b(18), this.f9038o);
        }
    }

    public void setOffectNum(int i) {
        this.f9023D = i;
    }

    public void setBaseOrMax(int i) {
        this.f9043t = i;
        postInvalidate();
    }

    public void setSleepListData(List<SleepItem> list) {
        this.f9044u = list;
        this.f9049z = this.f9047x;
        postInvalidate();
    }

    private float m11393b(int i) {
        return (((float) (i >= 0 ? 1 : -1)) * 0.5f) + (((float) i) * this.f9046w.getResources().getDisplayMetrics().density);
    }

    public void setMaxSportHistory(double d) {
        this.f9020A = d;
    }

    public void setListSports(List<CalorieItem> list) {
        this.f9045v = list;
        this.f9049z = this.f9048y;
        postInvalidate();
    }
}
