package com.yf.lib.ui.views.wheel;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.yf.lib.ui.views.wheel.ProGuard.ProGuard;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ProGuard */
public class WheelView extends View {
    private int f6834A;
    private int f6835B;
    private int f6836C;
    boolean f6837a;
    ProGuard f6838b;
    private int f6839c;
    private int f6840d;
    private int f6841e;
    private Drawable f6842f;
    private boolean f6843g;
    private String f6844h;
    private int f6845i;
    private float f6846j;
    private int f6847k;
    private Drawable f6848l;
    private Drawable f6849m;
    private boolean f6850n;
    private ProGuard f6851o;
    private boolean f6852p;
    private int f6853q;
    private LinearLayout f6854r;
    private int f6855s;
    private com.yf.lib.ui.views.wheel.p137a.ProGuard f6856t;
    private ProGuard f6857u;
    private List<ProGuard> f6858v;
    private List<ProGuard> f6859w;
    private List<ProGuard> f6860x;
    private DataSetObserver f6861y;
    private int f6862z;

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6839c = 0;
        this.f6840d = 5;
        this.f6841e = 0;
        this.f6843g = false;
        this.f6844h = "";
        this.f6845i = 0;
        this.f6846j = 60.0f;
        this.f6847k = -1;
        this.f6850n = true;
        this.f6837a = false;
        this.f6857u = new ProGuard(this);
        this.f6858v = new LinkedList();
        this.f6859w = new LinkedList();
        this.f6860x = new LinkedList();
        this.f6838b = new ProGuard(this);
        this.f6861y = new ProGuard(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.yf.lib.ProGuard.styleable.WheelView, i, 0);
        try {
            m8718a(obtainStyledAttributes);
            m8694a(context);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    void m8718a(TypedArray typedArray) {
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_centerDrawable)) {
            this.f6842f = typedArray.getDrawable(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_centerDrawable);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_shadowColors)) {
            int resourceId = typedArray.getResourceId(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_shadowColors, 0);
            if (resourceId != 0) {
                setShadowColor(getResources().getIntArray(resourceId));
            }
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_topShadow)) {
            this.f6848l = typedArray.getDrawable(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_topShadow);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_bottomShadow)) {
            this.f6849m = typedArray.getDrawable(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_bottomShadow);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_bg)) {
            setBackground(typedArray.getDrawable(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_bg));
        } else if (getBackground() == null) {
            setBackgroundResource(com.yf.lib.ProGuard.drawable.libyf_wheel_bg);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitText)) {
            this.f6844h = typedArray.getString(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitText);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitTextSize)) {
            this.f6846j = (float) typedArray.getDimensionPixelSize(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitTextSize, 60);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitTextColor)) {
            this.f6847k = typedArray.getColor(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitTextColor, -1);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitMarginStart)) {
            this.f6845i = typedArray.getDimensionPixelSize(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitMarginStart, 0);
        }
        if (typedArray.hasValue(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitEnable)) {
            this.f6843g = typedArray.getBoolean(com.yf.lib.ProGuard.styleable.WheelView_libyf_WheelView_unitEnable, false);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WheelView(Context context) {
        super(context);
        this.f6839c = 0;
        this.f6840d = 5;
        this.f6841e = 0;
        this.f6843g = false;
        this.f6844h = "";
        this.f6845i = 0;
        this.f6846j = 60.0f;
        this.f6847k = -1;
        this.f6850n = true;
        this.f6837a = false;
        this.f6857u = new ProGuard(this);
        this.f6858v = new LinkedList();
        this.f6859w = new LinkedList();
        this.f6860x = new LinkedList();
        this.f6838b = new ProGuard(this);
        this.f6861y = new ProGuard(this);
        m8694a(context);
    }

    private void m8694a(Context context) {
        if (this.f6842f == null) {
            this.f6842f = getContext().getResources().getDrawable(com.yf.lib.ProGuard.drawable.libyf_wheel_val);
        }
        int[] iArr = new int[]{-15658735, 11184810, 11184810};
        if (this.f6848l == null) {
            this.f6848l = new GradientDrawable(Orientation.TOP_BOTTOM, iArr);
        }
        if (this.f6849m == null) {
            this.f6849m = new GradientDrawable(Orientation.BOTTOM_TOP, iArr);
        }
        this.f6851o = new ProGuard(getContext(), this.f6838b);
    }

    public void setShadowColor(int[] iArr) {
        this.f6848l = new GradientDrawable(Orientation.TOP_BOTTOM, iArr);
        this.f6849m = new GradientDrawable(Orientation.BOTTOM_TOP, iArr);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f6851o.m8760a(interpolator);
    }

    public int getVisibleItems() {
        return this.f6840d;
    }

    public void setVisibleItems(int i) {
        this.f6840d = i;
    }

    public com.yf.lib.ui.views.wheel.p137a.ProGuard getViewAdapter() {
        return this.f6856t;
    }

    public void setViewAdapter(com.yf.lib.ui.views.wheel.p137a.ProGuard proGuard) {
        if (this.f6856t != null) {
            this.f6856t.m8727b(this.f6861y);
        }
        this.f6856t = proGuard;
        if (this.f6856t != null) {
            this.f6856t.m8726a(this.f6861y);
        }
        m8719a(true);
    }

    protected void m8716a(int i, int i2) {
        for (ProGuard a : this.f6858v) {
            a.m8732a(this, i, i2);
        }
    }

    protected void m8714a() {
        for (ProGuard a : this.f6859w) {
            a.m8734a(this);
        }
    }

    protected void m8720b() {
        for (ProGuard b : this.f6859w) {
            b.m8735b(this);
        }
    }

    protected void m8715a(int i) {
        for (ProGuard a : this.f6860x) {
            a.m8733a(this, i);
        }
    }

    public int getCurrentItem() {
        return this.f6839c;
    }

    public void m8717a(int i, boolean z) {
        if (this.f6856t != null && this.f6856t.m8723a() != 0) {
            int a = this.f6856t.m8723a();
            if (i < 0 || i >= a) {
                if (this.f6837a) {
                    while (i < 0) {
                        i += a;
                    }
                    i %= a;
                } else {
                    return;
                }
            }
            if (i == this.f6839c) {
                return;
            }
            if (z) {
                int i2 = i - this.f6839c;
                if (this.f6837a) {
                    a = (a + Math.min(i, this.f6839c)) - Math.max(i, this.f6839c);
                    if (a < Math.abs(i2)) {
                        if (i2 >= 0) {
                            a = -a;
                        }
                        m8721b(a, 0);
                        return;
                    }
                }
                a = i2;
                m8721b(a, 0);
                return;
            }
            this.f6853q = 0;
            a = this.f6839c;
            this.f6839c = i;
            m8716a(a, this.f6839c);
            invalidate();
        }
    }

    public void setCurrentItem(int i) {
        m8717a(i, false);
    }

    public boolean m8722c() {
        return this.f6837a;
    }

    public void setCyclic(boolean z) {
        this.f6837a = z;
        m8719a(false);
    }

    public void setDrawShadows(boolean z) {
        this.f6850n = z;
    }

    public void setWheelBackground(int i) {
        setBackgroundResource(i);
    }

    public void setWheelForeground(int i) {
        this.f6842f = getContext().getResources().getDrawable(i);
    }

    public void m8719a(boolean z) {
        if (z) {
            this.f6857u.m8742c();
            if (this.f6854r != null) {
                this.f6854r.removeAllViews();
            }
            this.f6853q = 0;
        } else if (this.f6854r != null) {
            this.f6857u.m8739a(this.f6854r, this.f6855s, new ProGuard());
        }
        invalidate();
    }

    private int m8692a(LinearLayout linearLayout) {
        if (!(linearLayout == null || linearLayout.getChildAt(0) == null)) {
            this.f6841e = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        return Math.max((this.f6841e * this.f6840d) - ((this.f6841e * 0) / 50), getSuggestedMinimumHeight());
    }

    private int getItemHeight() {
        if (this.f6841e != 0) {
            return this.f6841e;
        }
        if (this.f6854r == null || this.f6854r.getChildAt(0) == null) {
            return getHeight() / this.f6840d;
        }
        this.f6841e = this.f6854r.getChildAt(0).getHeight();
        return this.f6841e;
    }

    private int m8704c(int i, int i2) {
        this.f6854r.measure(MeasureSpec.makeMeasureSpec(i, 0), MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.f6854r.getMeasuredWidth();
        if (i2 != 1073741824) {
            measuredWidth = Math.max(measuredWidth + 20, getSuggestedMinimumWidth());
            if (i2 != Integer.MIN_VALUE || i >= measuredWidth) {
                i = measuredWidth;
            }
        }
        this.f6854r.measure(MeasureSpec.makeMeasureSpec(i - 20, 1073741824), MeasureSpec.makeMeasureSpec(0, 0));
        return i;
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.f6862z == size && this.f6834A == size2) {
            setMeasuredDimension(this.f6835B, this.f6836C);
            return;
        }
        m8713g();
        this.f6862z = size;
        this.f6834A = size2;
        size = m8704c(size, mode);
        if (mode2 != 1073741824) {
            mode = m8692a(this.f6854r);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(mode, size2) : mode;
        }
        this.f6835B = size;
        this.f6836C = size2;
        setMeasuredDimension(size, size2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m8709d(i3 - i, i4 - i2);
    }

    private void m8709d(int i, int i2) {
        this.f6854r.layout(0, 0, i - 20, i2);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f6856t != null && this.f6856t.m8723a() > 0) {
            m8711e();
            m8702b(canvas);
            m8705c(canvas);
            if (this.f6843g) {
                m8696a(canvas, this.f6844h, this.f6845i, this.f6846j, this.f6847k);
            }
        }
        if (this.f6850n) {
            m8695a(canvas);
        }
    }

    private void m8695a(Canvas canvas) {
        int itemHeight = getItemHeight() * 2;
        this.f6848l.setBounds(0, 0, getWidth(), itemHeight);
        this.f6848l.draw(canvas);
        this.f6849m.setBounds(0, getHeight() - itemHeight, getWidth(), getHeight());
        this.f6849m.draw(canvas);
    }

    private void m8702b(Canvas canvas) {
        canvas.save();
        canvas.translate(10.0f, (float) ((-(((this.f6839c - this.f6855s) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.f6853q));
        this.f6854r.draw(canvas);
        canvas.restore();
    }

    private void m8705c(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = (int) (((double) (getItemHeight() / 2)) * 1.1d);
        this.f6842f.setBounds(-10, height - itemHeight, getWidth() + 10, height + itemHeight);
        this.f6842f.draw(canvas);
    }

    private void m8696a(Canvas canvas, String str, int i, float f, int i2) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int itemHeight = getItemHeight() / 2;
        Paint paint = new Paint();
        paint.setTextSize(f);
        paint.setColor(i2);
        paint.setTextAlign(Align.CENTER);
        paint.setTypeface(Typeface.defaultFromStyle(1));
        canvas.drawText(str, (float) ((width + ((width / 2) / 2)) + i), (float) (height + (itemHeight / 2)), paint);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || getViewAdapter() == null) {
            return true;
        }
        switch (motionEvent.getAction()) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                if (!this.f6852p) {
                    int y = ((int) motionEvent.getY()) - (getHeight() / 2);
                    if (y > 0) {
                        y += getItemHeight() / 2;
                    } else {
                        y -= getItemHeight() / 2;
                    }
                    y /= getItemHeight();
                    if (y != 0 && m8706c(this.f6839c + y)) {
                        m8715a(y + this.f6839c);
                        break;
                    }
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
        }
        return this.f6851o.m8761a(motionEvent);
    }

    private void m8701b(int i) {
        this.f6853q += i;
        int itemHeight = getItemHeight();
        int i2 = this.f6853q / itemHeight;
        int i3 = this.f6839c - i2;
        int a = this.f6856t.m8723a();
        int i4 = this.f6853q % itemHeight;
        if (Math.abs(i4) <= itemHeight / 2) {
            i4 = 0;
        }
        if (this.f6837a && a > 0) {
            if (i4 > 0) {
                i4 = i3 - 1;
                i3 = i2 + 1;
            } else if (i4 < 0) {
                i4 = i3 + 1;
                i3 = i2 - 1;
            } else {
                i4 = i3;
                i3 = i2;
            }
            while (i4 < 0) {
                i4 += a;
            }
            i4 %= a;
        } else if (i3 < 0) {
            i3 = this.f6839c;
            i4 = 0;
        } else if (i3 >= a) {
            i3 = (this.f6839c - a) + 1;
            i4 = a - 1;
        } else if (i3 > 0 && i4 > 0) {
            i4 = i3 - 1;
            i3 = i2 + 1;
        } else if (i3 >= a - 1 || i4 >= 0) {
            i4 = i3;
            i3 = i2;
        } else {
            i4 = i3 + 1;
            i3 = i2 - 1;
        }
        i2 = this.f6853q;
        if (i4 != this.f6839c) {
            m8717a(i4, false);
        } else {
            invalidate();
        }
        this.f6853q = i2 - (i3 * itemHeight);
        if (this.f6853q <= getHeight()) {
            return;
        }
        if (getHeight() <= 0) {
            this.f6853q = 0;
        } else {
            this.f6853q = (this.f6853q % getHeight()) + getHeight();
        }
    }

    public void m8721b(int i, int i2) {
        this.f6851o.m8759a((getItemHeight() * i) - this.f6853q, i2);
    }

    private ProGuard getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i = this.f6839c;
        int i2 = 1;
        while (getItemHeight() * i2 < getHeight()) {
            i--;
            i2 += 2;
        }
        if (this.f6853q != 0) {
            if (this.f6853q > 0) {
                i--;
            }
            int itemHeight = this.f6853q / getItemHeight();
            i -= itemHeight;
            i2 = (int) (Math.asin((double) itemHeight) + ((double) (i2 + 1)));
        }
        return new ProGuard(i, i2);
    }

    private boolean m8710d() {
        int a;
        boolean z;
        ProGuard itemsRange = getItemsRange();
        if (this.f6854r != null) {
            a = this.f6857u.m8739a(this.f6854r, this.f6855s, itemsRange);
            z = this.f6855s != a;
            this.f6855s = a;
        } else {
            m8712f();
            z = true;
        }
        if (!z) {
            if (this.f6855s == itemsRange.m8728a() && this.f6854r.getChildCount() == itemsRange.m8731c()) {
                z = false;
            } else {
                z = true;
            }
        }
        if (this.f6855s <= itemsRange.m8728a() || this.f6855s > itemsRange.m8730b()) {
            this.f6855s = itemsRange.m8728a();
        } else {
            a = this.f6855s - 1;
            while (a >= itemsRange.m8728a() && m8703b(a, true)) {
                this.f6855s = a;
                a--;
            }
        }
        a = this.f6855s;
        for (int childCount = this.f6854r.getChildCount(); childCount < itemsRange.m8731c(); childCount++) {
            if (!m8703b(this.f6855s + childCount, false) && this.f6854r.getChildCount() == 0) {
                a++;
            }
        }
        this.f6855s = a;
        return z;
    }

    private void m8711e() {
        if (m8710d()) {
            m8704c(getWidth(), 1073741824);
            m8709d(getWidth(), getHeight());
        }
    }

    private void m8712f() {
        if (this.f6854r == null) {
            this.f6854r = new LinearLayout(getContext());
            this.f6854r.setOrientation(1);
            this.f6854r.setLayoutParams(new LayoutParams(-2, -2));
        }
    }

    private void m8713g() {
        if (this.f6854r != null) {
            this.f6857u.m8739a(this.f6854r, this.f6855s, new ProGuard());
        } else {
            m8712f();
        }
        for (int a = this.f6856t.m8723a() - 1; a >= 0; a--) {
            if (m8703b(a, true)) {
                this.f6855s = a;
            }
        }
    }

    private boolean m8703b(int i, boolean z) {
        View d = m8708d(i);
        if (d == null) {
            return false;
        }
        if (z) {
            this.f6854r.addView(d, 0);
        } else {
            this.f6854r.addView(d);
        }
        return true;
    }

    private boolean m8706c(int i) {
        return this.f6856t != null && this.f6856t.m8723a() > 0 && (this.f6837a || (i >= 0 && i < this.f6856t.m8723a()));
    }

    private View m8708d(int i) {
        if (this.f6856t == null || this.f6856t.m8723a() == 0) {
            return null;
        }
        int a = this.f6856t.m8723a();
        if (!m8706c(i)) {
            return this.f6856t.m8725a(this.f6857u.m8741b(), this.f6854r);
        }
        while (i < 0) {
            i += a;
        }
        return this.f6856t.m8724a(i % a, this.f6857u.m8740a(), this.f6854r);
    }

    public void setUnitMarginStart(int i) {
        this.f6845i = i;
    }

    public void setUnitText(String str) {
        this.f6844h = str;
    }

    public void setUnitTextColor(int i) {
        this.f6847k = i;
    }

    public void setUnitTextSize(float f) {
        this.f6846j = f;
    }

    public void setDrawUnit(boolean z) {
        this.f6843g = z;
    }
}
