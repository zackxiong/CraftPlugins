package com.yf.smart.weloopx.view;

import android.annotation.SuppressLint;
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
import android.graphics.Typeface;
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
public class ColumnMonth extends View {
    private double f8989A;
    private float f8990B;
    private float f8991C;
    private int f8992D;
    private Typeface f8993E;
    private final String f8994a;
    private int f8995b;
    private int f8996c;
    private int f8997d;
    private int f8998e;
    private int f8999f;
    private int f9000g;
    private int f9001h;
    private int f9002i;
    private int f9003j;
    private Paint f9004k;
    private Paint f9005l;
    private Paint f9006m;
    private Paint f9007n;
    private Paint f9008o;
    private float f9009p;
    private float f9010q;
    private float f9011r;
    private float f9012s;
    private int f9013t;
    private List<SleepItem> f9014u;
    private List<CalorieItem> f9015v;
    private Context f9016w;
    private int f9017x;
    private int f9018y;
    private int f9019z;

    public void setOffectNum(int i) {
        this.f8992D = i;
    }

    public ColumnMonth(Context context) {
        super(context);
        this.f8994a = "ColumnMonth";
        this.f8995b = 68;
        this.f8996c = Color.argb(255, 86, 19, 145);
        this.f8997d = Color.argb(255, 134, 27, 229);
        this.f8998e = Color.argb(255, 165, 63, 255);
        this.f8999f = Color.argb(255, C0452e.f3842i, C0452e.f3842i, C0452e.f3842i);
        this.f9000g = this.f8996c;
        this.f9001h = Color.argb(255, 245, 166, 35);
        this.f9002i = Color.argb(255, 3, C0452e.f3841h, 157);
        this.f9003j = Color.argb(255, 245, BDLocation.TypeServerError, 35);
        this.f9014u = new ArrayList();
        this.f9017x = 7834;
        this.f9018y = 1556;
        this.f9019z = 0;
        this.f8989A = 0.0d;
        this.f8990B = 20.0f;
        this.f8991C = 0.0f;
        this.f8992D = 0;
        m11387a(context);
    }

    public ColumnMonth(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8994a = "ColumnMonth";
        this.f8995b = 68;
        this.f8996c = Color.argb(255, 86, 19, 145);
        this.f8997d = Color.argb(255, 134, 27, 229);
        this.f8998e = Color.argb(255, 165, 63, 255);
        this.f8999f = Color.argb(255, C0452e.f3842i, C0452e.f3842i, C0452e.f3842i);
        this.f9000g = this.f8996c;
        this.f9001h = Color.argb(255, 245, 166, 35);
        this.f9002i = Color.argb(255, 3, C0452e.f3841h, 157);
        this.f9003j = Color.argb(255, 245, BDLocation.TypeServerError, 35);
        this.f9014u = new ArrayList();
        this.f9017x = 7834;
        this.f9018y = 1556;
        this.f9019z = 0;
        this.f8989A = 0.0d;
        this.f8990B = 20.0f;
        this.f8991C = 0.0f;
        this.f8992D = 0;
        m11387a(context);
    }

    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f9009p = (float) getWidth();
        this.f9010q = (float) getHeight();
        if (this.f9019z == this.f9017x) {
            m11388a(canvas);
        }
        if (this.f9019z == this.f9018y) {
            m11389b(canvas);
        }
    }

    private void m11387a(Context context) {
        this.f9016w = context;
        this.f8993E = Typeface.createFromAsset(context.getAssets(), "fonts/dincond_bold.otf");
        this.f9004k = new Paint();
        this.f9004k.setAntiAlias(true);
        this.f9004k.setStrokeWidth(5.0f);
        this.f9004k.setStyle(Style.FILL);
        this.f9005l = new Paint();
        this.f9005l.setAntiAlias(true);
        this.f9005l.setStrokeWidth(3.0f);
        this.f9005l.setStyle(Style.FILL);
        this.f9005l.setColor(this.f8999f);
        this.f9006m = new Paint();
        this.f9006m.setAntiAlias(true);
        this.f9006m.setStyle(Style.FILL);
        this.f9006m.setStrokeWidth(6.0f);
        this.f9006m.setColor(this.f9000g);
        this.f9007n = new Paint();
        this.f9007n.setAntiAlias(true);
        this.f9007n.setStyle(Style.FILL);
        this.f9008o = new Paint();
        this.f9008o.setAntiAlias(true);
        this.f9008o.setColor(this.f9001h);
        this.f9008o.setTextSize(m11386a(8));
        this.f9013t = 720;
        this.f8990B = m11386a(25);
    }

    private void m11388a(Canvas canvas) {
        float f;
        this.f8990B = m11386a(1);
        this.f8991C = m11386a(20);
        this.f9011r = this.f9009p / ((float) this.f8995b);
        this.f9012s = ((this.f9010q - this.f8990B) - this.f8991C) / ((float) this.f9013t);
        float f2 = 0.0f;
        int i = 0;
        while (i < 5) {
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                case ProGuard.styleable.View_android_focusable /*1*/:
                    f = (4.0f * this.f9011r) + ((((float) i) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    f = (6.0f * this.f9011r) + ((((float) i) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    f = (8.0f * this.f9011r) + ((((float) i) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    f = (10.0f * this.f9011r) + ((((float) i) * this.f9011r) * 12.0f);
                    break;
                default:
                    f = f2;
                    break;
            }
            canvas.drawLine(f, 0.0f, f, this.f9010q - this.f8991C, this.f9005l);
            i++;
            f2 = f;
        }
        canvas.drawLine(0.0f, this.f9010q - this.f8991C, this.f9009p, this.f9010q - this.f8991C, this.f9006m);
        int size = this.f9014u.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                SleepItem sleepItem = (SleepItem) this.f9014u.get(i2);
                int deepSleepMinutes = sleepItem.getDeepSleepMinutes();
                int shallowSleepMinutes = sleepItem.getShallowSleepMinutes();
                int wakeMinutes = sleepItem.getWakeMinutes();
                this.f9007n.setColor(this.f8996c);
                f = this.f9011r * ((float) (((i2 * 2) - 1) + (this.f8992D * 2)));
                float f3 = this.f8990B + ((this.f9010q - (((float) deepSleepMinutes) * this.f9012s)) - this.f8991C);
                float f4 = this.f9011r * ((float) ((((i2 * 2) - 1) + 2) + (this.f8992D * 2)));
                canvas.drawRect(f, f3, f4, this.f8990B + (this.f9010q - this.f8991C), this.f9007n);
                this.f9007n.setColor(this.f8997d);
                float f5 = ((this.f9010q - (((float) deepSleepMinutes) * this.f9012s)) - (((float) shallowSleepMinutes) * this.f9012s)) + this.f8990B;
                canvas.drawRect(f, f5, f4, f3, this.f9007n);
                this.f9007n.setColor(this.f8998e);
                canvas.drawRect(f, this.f8990B + (((this.f9010q - (((float) deepSleepMinutes) * this.f9012s)) - (((float) shallowSleepMinutes) * this.f9012s)) - (((float) wakeMinutes) * this.f9012s)), f4, f5, this.f9007n);
            }
        }
        f = (480.0f * this.f9012s) - this.f8990B;
        this.f9006m.setStyle(Style.STROKE);
        this.f9006m.setColor(this.f9001h);
        this.f9006m.setStrokeWidth(3.0f);
        Path path = new Path();
        float f6 = this.f9010q - f;
        if (f6 < 0.0f) {
            f6 = 20.0f;
        }
        path.moveTo((float) 10, f6);
        path.lineTo(this.f9009p, this.f9010q - f);
        this.f9006m.setPathEffect(new DashPathEffect(new float[]{20.0f, 20.0f, 20.0f, 20.0f}, 5.0f));
        canvas.drawPath(path, this.f9006m);
        canvas.drawText(this.f9016w.getString(R.string.eight_hour), (float) 10, f6 + 40.0f, this.f9008o);
        this.f9008o.setColor(-16777216);
        this.f9008o.setTextSize(m11386a(12));
        this.f9008o.setTypeface(this.f8993E);
        int i3 = 0;
        f6 = f2;
        while (i3 < 5) {
            String valueOf = i3 == 0 ? "1" : String.valueOf(i3 * 7);
            switch (i3) {
                case ProGuard.styleable.View_android_theme /*0*/:
                case ProGuard.styleable.View_android_focusable /*1*/:
                    f6 = (((((float) i3) * this.f9011r) * 12.0f) + (4.0f * this.f9011r)) - 10.0f;
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    f6 = (((((float) i3) * this.f9011r) * 12.0f) + (6.0f * this.f9011r)) - 10.0f;
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    f6 = (((((float) i3) * this.f9011r) * 12.0f) + (8.0f * this.f9011r)) - 18.0f;
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    f6 = (((((float) i3) * this.f9011r) * 12.0f) + (10.0f * this.f9011r)) - 18.0f;
                    break;
                default:
                    break;
            }
            canvas.drawText(valueOf, f6, this.f9010q - m11386a(5), this.f9008o);
            i3++;
        }
    }

    private void m11389b(Canvas canvas) {
        int i;
        float calorie;
        this.f8990B = m11386a(1);
        this.f8991C = m11386a(10);
        this.f9011r = this.f9009p / ((float) this.f8995b);
        this.f9010q -= this.f8990B;
        this.f9010q -= this.f8991C;
        this.f9012s = (float) (((double) this.f9010q) / this.f8989A);
        float f = 0.0f;
        for (int i2 = 0; i2 < 5; i2++) {
            switch (i2) {
                case ProGuard.styleable.View_android_theme /*0*/:
                case ProGuard.styleable.View_android_focusable /*1*/:
                    f = (4.0f * this.f9011r) + ((((float) i2) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    f = (6.0f * this.f9011r) + ((((float) i2) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    f = (8.0f * this.f9011r) + ((((float) i2) * this.f9011r) * 12.0f);
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    f = (10.0f * this.f9011r) + ((((float) i2) * this.f9011r) * 12.0f);
                    break;
                default:
                    break;
            }
            canvas.drawLine(f, 0.0f, f, (this.f9010q + this.f8990B) - this.f8991C, this.f9005l);
        }
        this.f9006m.setColor(this.f9003j);
        canvas.drawLine(0.0f, (this.f9010q + this.f8990B) - this.f8991C, this.f9009p, (this.f9010q + this.f8990B) - this.f8991C, this.f9006m);
        int size = this.f9015v.size();
        if (size > 0) {
            i = 0;
            while (i < size) {
                f = ((float) (((i * 2) - 1) + (this.f8992D * 2))) * this.f9011r;
                calorie = (this.f9010q - (((float) ((CalorieItem) this.f9015v.get(i)).getCalorie()) * this.f9012s)) + this.f8990B;
                float f2 = ((float) ((((i * 2) - 1) + 2) + (this.f8992D * 2))) * this.f9011r;
                float f3 = (this.f9010q + this.f8990B) - this.f8991C;
                if (i == 1 || i == 7 - this.f8992D || i == 12 - this.f8992D || i == 18 - this.f8992D || i == 24 - this.f8992D || i == 29 - this.f8992D) {
                    f -= 2.0f;
                }
                if (calorie < 0.0f) {
                    calorie = 0.0f;
                }
                Bitmap decodeResource = BitmapFactory.decodeResource(this.f9016w.getResources(), R.drawable.sport_gradient);
                RectF rectF = new RectF();
                rectF.left = f;
                rectF.right = f2;
                rectF.bottom = f3;
                rectF.top = calorie;
                canvas.drawBitmap(decodeResource, null, rectF, this.f9007n);
                i++;
            }
        }
        this.f9006m.setColor(this.f9002i);
        this.f9006m.setStrokeWidth(3.0f);
        int size2 = this.f9015v.size();
        f = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        int i3 = 0;
        while (i3 < size2) {
            f2 = ((float) (((double) this.f9010q) - (((double) this.f9012s) * ((CalorieItem) this.f9015v.get(i3)).getCalorieGoal()))) + this.f8990B;
            if (f2 < 0.0f) {
                f2 = 5.0f;
            }
            float f6 = ((float) i3) * (this.f9011r * 4.0f);
            if (i3 != 0) {
                canvas.drawLine(f, f4, f6, f2, this.f9006m);
                calorie = f5;
            } else {
                calorie = f2;
            }
            i3++;
            f5 = calorie;
            f4 = f2;
            f = f6;
        }
        this.f9008o.setColor(this.f9002i);
        canvas.drawText(this.f9016w.getString(R.string.goal_line), 5.0f, 40.0f + f5, this.f9008o);
        this.f9008o.setTextSize(m11386a(12));
        this.f9008o.setColor(-16777216);
        this.f9008o.setTypeface(this.f8993E);
        i = 0;
        calorie = 0.0f;
        while (i < 5) {
            this.f9008o.setColor(-16777216);
            String valueOf = i == 0 ? "1" : String.valueOf(i * 7);
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                case ProGuard.styleable.View_android_focusable /*1*/:
                    calorie = (((((float) i) * this.f9011r) * 12.0f) + (4.0f * this.f9011r)) - 10.0f;
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    calorie = (((((float) i) * this.f9011r) * 12.0f) + (6.0f * this.f9011r)) - 10.0f;
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    calorie = (((((float) i) * this.f9011r) * 12.0f) + (8.0f * this.f9011r)) - 18.0f;
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    calorie = (((((float) i) * this.f9011r) * 12.0f) + (10.0f * this.f9011r)) - 18.0f;
                    break;
                default:
                    break;
            }
            canvas.drawText(valueOf, calorie, ((this.f9010q - m11386a(5)) + this.f8990B) + this.f8991C, this.f9008o);
            i++;
        }
    }

    public int getBaseOrMax() {
        return this.f9013t;
    }

    public void setBaseOrMax(int i) {
        this.f9013t = i;
        postInvalidate();
    }

    public void setSleepListData(List<SleepItem> list) {
        this.f9014u = list;
        this.f9019z = this.f9017x;
        postInvalidate();
    }

    public void setSportListData(List<CalorieItem> list) {
        this.f9015v = list;
        this.f9019z = this.f9018y;
        postInvalidate();
    }

    private float m11386a(int i) {
        return (((float) (i >= 0 ? 1 : -1)) * 0.5f) + (((float) i) * this.f9016w.getResources().getDisplayMetrics().density);
    }

    public double getMaxSportHistory() {
        return this.f8989A;
    }

    public void setMaxSportHistory(double d) {
        this.f8989A = d;
    }
}
