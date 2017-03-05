package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ak;
import android.support.v7.internal.widget.ac;
import android.support.v7.internal.widget.af;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* renamed from: android.support.v7.widget.m */
public class ProGuard extends ViewGroup {
    private boolean f1134a;
    private int f1135b;
    private int f1136c;
    private int f1137d;
    private int f1138e;
    private int f1139f;
    private float f1140g;
    private boolean f1141h;
    private int[] f1142i;
    private int[] f1143j;
    private Drawable f1144k;
    private int f1145l;
    private int f1146m;
    private int f1147n;
    private int f1148o;

    /* renamed from: android.support.v7.widget.m.a */
    public static class ProGuard extends MarginLayoutParams {
        public float f1401g;
        public int f1402h;

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1402h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_Layout);
            this.f1401g = obtainStyledAttributes.getFloat(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f1402h = obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public ProGuard(int i, int i2) {
            super(i, i2);
            this.f1402h = -1;
            this.f1401g = 0.0f;
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
            this.f1402h = -1;
        }
    }

    protected /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return m2230j();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return m2221b(attributeSet);
    }

    protected /* synthetic */ LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return m2222b(layoutParams);
    }

    public ProGuard(Context context) {
        this(context, null);
    }

    public ProGuard(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProGuard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1134a = true;
        this.f1135b = -1;
        this.f1136c = 0;
        this.f1138e = 8388659;
        ac a = ac.m2328a(context, attributeSet, android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat, i, 0);
        int a2 = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_android_orientation, -1);
        if (a2 >= 0) {
            setOrientation(a2);
        }
        a2 = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_android_gravity, -1);
        if (a2 >= 0) {
            setGravity(a2);
        }
        boolean a3 = a.m2333a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!a3) {
            setBaselineAligned(a3);
        }
        this.f1140g = a.m2329a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1135b = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1141h = a.m2333a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a.m2332a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_divider));
        this.f1147n = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_showDividers, 0);
        this.f1148o = a.m2340d(android.support.v7.appcompat.ProGuard.styleable.LinearLayoutCompat_dividerPadding, 0);
        a.m2336b();
    }

    public void setShowDividers(int i) {
        if (i != this.f1147n) {
            requestLayout();
        }
        this.f1147n = i;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public int getShowDividers() {
        return this.f1147n;
    }

    public Drawable getDividerDrawable() {
        return this.f1144k;
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable != this.f1144k) {
            this.f1144k = drawable;
            if (drawable != null) {
                this.f1145l = drawable.getIntrinsicWidth();
                this.f1146m = drawable.getIntrinsicHeight();
            } else {
                this.f1145l = 0;
                this.f1146m = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f1148o = i;
    }

    public int getDividerPadding() {
        return this.f1148o;
    }

    public int getDividerWidth() {
        return this.f1145l;
    }

    protected void onDraw(Canvas canvas) {
        if (this.f1144k != null) {
            if (this.f1137d == 1) {
                m2217a(canvas);
            } else {
                m2226b(canvas);
            }
        }
    }

    void m2217a(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        int i = 0;
        while (i < virtualChildCount) {
            View b = m2223b(i);
            if (!(b == null || b.getVisibility() == 8 || !m2228c(i))) {
                m2218a(canvas, (b.getTop() - ((ProGuard) b.getLayoutParams()).topMargin) - this.f1146m);
            }
            i++;
        }
        if (m2228c(virtualChildCount)) {
            int height;
            View b2 = m2223b(virtualChildCount - 1);
            if (b2 == null) {
                height = (getHeight() - getPaddingBottom()) - this.f1146m;
            } else {
                ProGuard proGuard = (ProGuard) b2.getLayoutParams();
                height = proGuard.bottomMargin + b2.getBottom();
            }
            m2218a(canvas, height);
        }
    }

    void m2226b(Canvas canvas) {
        int right;
        int virtualChildCount = getVirtualChildCount();
        boolean a = af.m2418a(this);
        int i = 0;
        while (i < virtualChildCount) {
            ProGuard proGuard;
            View b = m2223b(i);
            if (!(b == null || b.getVisibility() == 8 || !m2228c(i))) {
                proGuard = (ProGuard) b.getLayoutParams();
                if (a) {
                    right = proGuard.rightMargin + b.getRight();
                } else {
                    right = (b.getLeft() - proGuard.leftMargin) - this.f1145l;
                }
                m2227b(canvas, right);
            }
            i++;
        }
        if (m2228c(virtualChildCount)) {
            View b2 = m2223b(virtualChildCount - 1);
            if (b2 != null) {
                proGuard = (ProGuard) b2.getLayoutParams();
                if (a) {
                    right = (b2.getLeft() - proGuard.leftMargin) - this.f1145l;
                } else {
                    right = proGuard.rightMargin + b2.getRight();
                }
            } else if (a) {
                right = getPaddingLeft();
            } else {
                right = (getWidth() - getPaddingRight()) - this.f1145l;
            }
            m2227b(canvas, right);
        }
    }

    void m2218a(Canvas canvas, int i) {
        this.f1144k.setBounds(getPaddingLeft() + this.f1148o, i, (getWidth() - getPaddingRight()) - this.f1148o, this.f1146m + i);
        this.f1144k.draw(canvas);
    }

    void m2227b(Canvas canvas, int i) {
        this.f1144k.setBounds(i, getPaddingTop() + this.f1148o, this.f1145l + i, (getHeight() - getPaddingBottom()) - this.f1148o);
        this.f1144k.draw(canvas);
    }

    public void setBaselineAligned(boolean z) {
        this.f1134a = z;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1141h = z;
    }

    public int getBaseline() {
        if (this.f1135b < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.f1135b) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.f1135b);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i;
            int i2 = this.f1136c;
            if (this.f1137d == 1) {
                i = this.f1138e & 112;
                if (i != 48) {
                    switch (i) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                            i = i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1139f) / 2);
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                            i = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1139f;
                            break;
                    }
                }
            }
            i = i2;
            return (((ProGuard) childAt.getLayoutParams()).topMargin + i) + baseline;
        } else if (this.f1135b == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1135b;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f1135b = i;
    }

    View m2223b(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1140g;
    }

    public void setWeightSum(float f) {
        this.f1140g = Math.max(0.0f, f);
    }

    protected void onMeasure(int i, int i2) {
        if (this.f1137d == 1) {
            m2215a(i, i2);
        } else {
            m2224b(i, i2);
        }
    }

    protected boolean m2228c(int i) {
        if (i == 0) {
            if ((this.f1147n & 1) != 0) {
                return true;
            }
            return false;
        } else if (i == getChildCount()) {
            if ((this.f1147n & 4) == 0) {
                return false;
            }
            return true;
        } else if ((this.f1147n & 2) == 0) {
            return false;
        } else {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        }
    }

    void m2215a(int i, int i2) {
        int i3;
        Object obj;
        int i4;
        int i5;
        View b;
        this.f1139f = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        Object obj2 = 1;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj3 = null;
        Object obj4 = null;
        int i10 = this.f1135b;
        boolean z = this.f1141h;
        int i11 = Integer.MIN_VALUE;
        int i12 = 0;
        while (i12 < virtualChildCount) {
            Object obj5;
            int i13;
            View b2 = m2223b(i12);
            if (b2 == null) {
                this.f1139f += m2229d(i12);
                i3 = i11;
                obj5 = obj4;
                obj = obj2;
                i4 = i7;
                i13 = i6;
            } else if (b2.getVisibility() == 8) {
                i12 += m2214a(b2, i12);
                i3 = i11;
                obj5 = obj4;
                obj = obj2;
                i4 = i7;
                i13 = i6;
            } else {
                if (m2228c(i12)) {
                    this.f1139f += this.f1146m;
                }
                ProGuard proGuard = (ProGuard) b2.getLayoutParams();
                float f2 = f + proGuard.f1401g;
                if (mode2 == 1073741824 && proGuard.height == 0 && proGuard.f1401g > 0.0f) {
                    i3 = this.f1139f;
                    this.f1139f = Math.max(i3, (proGuard.topMargin + i3) + proGuard.bottomMargin);
                    obj4 = 1;
                } else {
                    i3 = Integer.MIN_VALUE;
                    if (proGuard.height == 0 && proGuard.f1401g > 0.0f) {
                        i3 = 0;
                        proGuard.height = -2;
                    }
                    int i14 = i3;
                    m2219a(b2, i12, i, 0, i2, f2 == 0.0f ? this.f1139f : 0);
                    if (i14 != Integer.MIN_VALUE) {
                        proGuard.height = i14;
                    }
                    i3 = b2.getMeasuredHeight();
                    int i15 = this.f1139f;
                    this.f1139f = Math.max(i15, (((i15 + i3) + proGuard.topMargin) + proGuard.bottomMargin) + m2220b(b2));
                    if (z) {
                        i11 = Math.max(i3, i11);
                    }
                }
                if (i10 >= 0 && i10 == i12 + 1) {
                    this.f1136c = this.f1139f;
                }
                if (i12 >= i10 || proGuard.f1401g <= 0.0f) {
                    Object obj6;
                    Object obj7 = null;
                    if (mode == 1073741824 || proGuard.width != -1) {
                        obj6 = obj3;
                    } else {
                        obj6 = 1;
                        obj7 = 1;
                    }
                    i4 = proGuard.rightMargin + proGuard.leftMargin;
                    i13 = b2.getMeasuredWidth() + i4;
                    i6 = Math.max(i6, i13);
                    int a = af.m2415a(i7, ak.m1036g(b2));
                    obj = (obj2 == null || proGuard.width != -1) ? null : 1;
                    if (proGuard.f1401g > 0.0f) {
                        if (obj7 != null) {
                            i3 = i4;
                        } else {
                            i3 = i13;
                        }
                        i3 = Math.max(i9, i3);
                        i4 = i8;
                    } else {
                        if (obj7 == null) {
                            i4 = i13;
                        }
                        i4 = Math.max(i8, i4);
                        i3 = i9;
                    }
                    i12 += m2214a(b2, i12);
                    obj5 = obj4;
                    i9 = i3;
                    i8 = i4;
                    i13 = i6;
                    i3 = i11;
                    i4 = a;
                    obj3 = obj6;
                    f = f2;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i12++;
            i11 = i3;
            obj4 = obj5;
            obj2 = obj;
            i7 = i4;
            i6 = i13;
        }
        if (this.f1139f > 0 && m2228c(virtualChildCount)) {
            this.f1139f += this.f1146m;
        }
        if (z && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f1139f = 0;
            i5 = 0;
            while (i5 < virtualChildCount) {
                b = m2223b(i5);
                if (b == null) {
                    this.f1139f += m2229d(i5);
                    i3 = i5;
                } else if (b.getVisibility() == 8) {
                    i3 = m2214a(b, i5) + i5;
                } else {
                    ProGuard proGuard2 = (ProGuard) b.getLayoutParams();
                    int i16 = this.f1139f;
                    this.f1139f = Math.max(i16, (proGuard2.bottomMargin + ((i16 + i11) + proGuard2.topMargin)) + m2220b(b));
                    i3 = i5;
                }
                i5 = i3 + 1;
            }
        }
        this.f1139f += getPaddingTop() + getPaddingBottom();
        int a2 = ak.m1011a(Math.max(this.f1139f, getSuggestedMinimumHeight()), i2, 0);
        i5 = (16777215 & a2) - this.f1139f;
        int i17;
        if (obj4 != null || (i5 != 0 && f > 0.0f)) {
            if (this.f1140g > 0.0f) {
                f = this.f1140g;
            }
            this.f1139f = 0;
            i11 = 0;
            float f3 = f;
            Object obj8 = obj2;
            i17 = i8;
            i16 = i7;
            i9 = i6;
            i15 = i5;
            while (i11 < virtualChildCount) {
                View b3 = m2223b(i11);
                if (b3.getVisibility() == 8) {
                    i3 = i17;
                    i5 = i16;
                    i4 = i9;
                    obj = obj8;
                } else {
                    float f4;
                    float f5;
                    proGuard2 = (ProGuard) b3.getLayoutParams();
                    float f6 = proGuard2.f1401g;
                    if (f6 > 0.0f) {
                        i5 = (int) ((((float) i15) * f6) / f3);
                        f3 -= f6;
                        i15 -= i5;
                        i4 = ProGuard.getChildMeasureSpec(i, ((getPaddingLeft() + getPaddingRight()) + proGuard2.leftMargin) + proGuard2.rightMargin, proGuard2.width);
                        if (proGuard2.height == 0 && mode2 == 1073741824) {
                            if (i5 <= 0) {
                                i5 = 0;
                            }
                            b3.measure(i4, MeasureSpec.makeMeasureSpec(i5, 1073741824));
                        } else {
                            i5 += b3.getMeasuredHeight();
                            if (i5 < 0) {
                                i5 = 0;
                            }
                            b3.measure(i4, MeasureSpec.makeMeasureSpec(i5, 1073741824));
                        }
                        f4 = f3;
                        i12 = i15;
                        i15 = af.m2415a(i16, ak.m1036g(b3) & -256);
                        f5 = f4;
                    } else {
                        f5 = f3;
                        i12 = i15;
                        i15 = i16;
                    }
                    i16 = proGuard2.leftMargin + proGuard2.rightMargin;
                    i4 = b3.getMeasuredWidth() + i16;
                    i9 = Math.max(i9, i4);
                    Object obj9 = (mode == 1073741824 || proGuard2.width != -1) ? null : 1;
                    if (obj9 == null) {
                        i16 = i4;
                    }
                    i4 = Math.max(i17, i16);
                    obj = (obj8 == null || proGuard2.width != -1) ? null : 1;
                    i13 = this.f1139f;
                    this.f1139f = Math.max(i13, (proGuard2.bottomMargin + ((b3.getMeasuredHeight() + i13) + proGuard2.topMargin)) + m2220b(b3));
                    i3 = i4;
                    i4 = i9;
                    f4 = f5;
                    i5 = i15;
                    i15 = i12;
                    f3 = f4;
                }
                i11++;
                i17 = i3;
                i9 = i4;
                obj8 = obj;
                i16 = i5;
            }
            this.f1139f += getPaddingTop() + getPaddingBottom();
            obj2 = obj8;
            i3 = i17;
            i7 = i16;
            i5 = i9;
        } else {
            i17 = Math.max(i8, i9);
            if (z && mode2 != 1073741824) {
                for (i5 = 0; i5 < virtualChildCount; i5++) {
                    b = m2223b(i5);
                    if (!(b == null || b.getVisibility() == 8 || ((ProGuard) b.getLayoutParams()).f1401g <= 0.0f)) {
                        b.measure(MeasureSpec.makeMeasureSpec(b.getMeasuredWidth(), 1073741824), MeasureSpec.makeMeasureSpec(i11, 1073741824));
                    }
                }
            }
            i3 = i17;
            i5 = i6;
        }
        if (obj2 != null || mode == 1073741824) {
            i3 = i5;
        }
        setMeasuredDimension(ak.m1011a(Math.max(i3 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), i, i7), a2);
        if (obj3 != null) {
            m2211c(virtualChildCount, i2);
        }
    }

    private void m2211c(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View b = m2223b(i3);
            if (b.getVisibility() != 8) {
                ProGuard proGuard = (ProGuard) b.getLayoutParams();
                if (proGuard.width == -1) {
                    int i4 = proGuard.height;
                    proGuard.height = b.getMeasuredHeight();
                    measureChildWithMargins(b, makeMeasureSpec, 0, i2, 0);
                    proGuard.height = i4;
                }
            }
        }
    }

    void m2224b(int i, int i2) {
        Object obj;
        int i3;
        Object obj2;
        int i4;
        ProGuard proGuard;
        this.f1139f = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        Object obj3 = 1;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj4 = null;
        Object obj5 = null;
        if (this.f1142i == null || this.f1143j == null) {
            this.f1142i = new int[4];
            this.f1143j = new int[4];
        }
        int[] iArr = this.f1142i;
        int[] iArr2 = this.f1143j;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z = this.f1134a;
        boolean z2 = this.f1141h;
        if (mode == 1073741824) {
            obj = 1;
        } else {
            obj = null;
        }
        int i9 = Integer.MIN_VALUE;
        int i10 = 0;
        while (i10 < virtualChildCount) {
            Object obj6;
            int i11;
            int i12;
            View b = m2223b(i10);
            if (b == null) {
                this.f1139f += m2229d(i10);
                i3 = i9;
                obj2 = obj5;
                obj6 = obj3;
                i11 = i6;
                i12 = i5;
            } else if (b.getVisibility() == 8) {
                i10 += m2214a(b, i10);
                i3 = i9;
                obj2 = obj5;
                obj6 = obj3;
                i11 = i6;
                i12 = i5;
            } else {
                Object obj7;
                if (m2228c(i10)) {
                    this.f1139f += this.f1145l;
                }
                ProGuard proGuard2 = (ProGuard) b.getLayoutParams();
                float f2 = f + proGuard2.f1401g;
                if (mode == 1073741824 && proGuard2.width == 0 && proGuard2.f1401g > 0.0f) {
                    if (obj != null) {
                        this.f1139f += proGuard2.leftMargin + proGuard2.rightMargin;
                    } else {
                        i3 = this.f1139f;
                        this.f1139f = Math.max(i3, (proGuard2.leftMargin + i3) + proGuard2.rightMargin);
                    }
                    if (z) {
                        i3 = MeasureSpec.makeMeasureSpec(0, 0);
                        b.measure(i3, i3);
                    } else {
                        obj5 = 1;
                    }
                } else {
                    i3 = Integer.MIN_VALUE;
                    if (proGuard2.width == 0 && proGuard2.f1401g > 0.0f) {
                        i3 = 0;
                        proGuard2.width = -2;
                    }
                    int i13 = i3;
                    m2219a(b, i10, i, f2 == 0.0f ? this.f1139f : 0, i2, 0);
                    if (i13 != Integer.MIN_VALUE) {
                        proGuard2.width = i13;
                    }
                    i3 = b.getMeasuredWidth();
                    if (obj != null) {
                        this.f1139f += ((proGuard2.leftMargin + i3) + proGuard2.rightMargin) + m2220b(b);
                    } else {
                        int i14 = this.f1139f;
                        this.f1139f = Math.max(i14, (((i14 + i3) + proGuard2.leftMargin) + proGuard2.rightMargin) + m2220b(b));
                    }
                    if (z2) {
                        i9 = Math.max(i3, i9);
                    }
                }
                Object obj8 = null;
                if (mode2 == 1073741824 || proGuard2.height != -1) {
                    obj7 = obj4;
                } else {
                    obj7 = 1;
                    obj8 = 1;
                }
                i11 = proGuard2.bottomMargin + proGuard2.topMargin;
                i12 = b.getMeasuredHeight() + i11;
                int a = af.m2415a(i6, ak.m1036g(b));
                if (z) {
                    i6 = b.getBaseline();
                    if (i6 != -1) {
                        int i15 = ((((proGuard2.f1402h < 0 ? this.f1138e : proGuard2.f1402h) & 112) >> 4) & -2) >> 1;
                        iArr[i15] = Math.max(iArr[i15], i6);
                        iArr2[i15] = Math.max(iArr2[i15], i12 - i6);
                    }
                }
                i6 = Math.max(i5, i12);
                obj6 = (obj3 == null || proGuard2.height != -1) ? null : 1;
                if (proGuard2.f1401g > 0.0f) {
                    if (obj8 != null) {
                        i3 = i11;
                    } else {
                        i3 = i12;
                    }
                    i3 = Math.max(i8, i3);
                    i11 = i7;
                } else {
                    if (obj8 == null) {
                        i11 = i12;
                    }
                    i11 = Math.max(i7, i11);
                    i3 = i8;
                }
                i10 += m2214a(b, i10);
                obj2 = obj5;
                i8 = i3;
                i7 = i11;
                i12 = i6;
                i3 = i9;
                i11 = a;
                obj4 = obj7;
                f = f2;
            }
            i10++;
            i9 = i3;
            obj5 = obj2;
            obj3 = obj6;
            i6 = i11;
            i5 = i12;
        }
        if (this.f1139f > 0 && m2228c(virtualChildCount)) {
            this.f1139f += this.f1145l;
        }
        if (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) {
            i10 = i5;
        } else {
            i10 = Math.max(i5, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        }
        if (z2 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f1139f = 0;
            i4 = 0;
            while (i4 < virtualChildCount) {
                View b2 = m2223b(i4);
                if (b2 == null) {
                    this.f1139f += m2229d(i4);
                    i3 = i4;
                } else if (b2.getVisibility() == 8) {
                    i3 = m2214a(b2, i4) + i4;
                } else {
                    proGuard = (ProGuard) b2.getLayoutParams();
                    if (obj != null) {
                        this.f1139f = ((proGuard.rightMargin + (proGuard.leftMargin + i9)) + m2220b(b2)) + this.f1139f;
                        i3 = i4;
                    } else {
                        i11 = this.f1139f;
                        this.f1139f = Math.max(i11, (proGuard.rightMargin + ((i11 + i9) + proGuard.leftMargin)) + m2220b(b2));
                        i3 = i4;
                    }
                }
                i4 = i3 + 1;
            }
        }
        this.f1139f += getPaddingLeft() + getPaddingRight();
        int a2 = ak.m1011a(Math.max(this.f1139f, getSuggestedMinimumWidth()), i, 0);
        i4 = (16777215 & a2) - this.f1139f;
        int i16;
        if (obj5 != null || (i4 != 0 && f > 0.0f)) {
            if (this.f1140g > 0.0f) {
                f = this.f1140g;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f1139f = 0;
            i9 = 0;
            float f3 = f;
            Object obj9 = obj3;
            i16 = i7;
            i15 = i6;
            i14 = i4;
            i7 = -1;
            while (i9 < virtualChildCount) {
                float f4;
                Object obj10;
                View b3 = m2223b(i9);
                if (b3 == null) {
                    f4 = f3;
                    i4 = i14;
                    i11 = i7;
                    i14 = i16;
                    obj10 = obj9;
                } else if (b3.getVisibility() == 8) {
                    f4 = f3;
                    i4 = i14;
                    i11 = i7;
                    i14 = i16;
                    obj10 = obj9;
                } else {
                    float f5;
                    proGuard = (ProGuard) b3.getLayoutParams();
                    float f6 = proGuard.f1401g;
                    if (f6 > 0.0f) {
                        i4 = (int) ((((float) i14) * f6) / f3);
                        f3 -= f6;
                        i11 = i14 - i4;
                        i14 = ProGuard.getChildMeasureSpec(i2, ((getPaddingTop() + getPaddingBottom()) + proGuard.topMargin) + proGuard.bottomMargin, proGuard.height);
                        if (proGuard.width == 0 && mode == 1073741824) {
                            if (i4 <= 0) {
                                i4 = 0;
                            }
                            b3.measure(MeasureSpec.makeMeasureSpec(i4, 1073741824), i14);
                        } else {
                            i4 += b3.getMeasuredWidth();
                            if (i4 < 0) {
                                i4 = 0;
                            }
                            b3.measure(MeasureSpec.makeMeasureSpec(i4, 1073741824), i14);
                        }
                        i8 = af.m2415a(i15, ak.m1036g(b3) & -16777216);
                        f5 = f3;
                    } else {
                        i11 = i14;
                        i8 = i15;
                        f5 = f3;
                    }
                    if (obj != null) {
                        this.f1139f += ((b3.getMeasuredWidth() + proGuard.leftMargin) + proGuard.rightMargin) + m2220b(b3);
                    } else {
                        i4 = this.f1139f;
                        this.f1139f = Math.max(i4, (((b3.getMeasuredWidth() + i4) + proGuard.leftMargin) + proGuard.rightMargin) + m2220b(b3));
                    }
                    obj2 = (mode2 == 1073741824 || proGuard.height != -1) ? null : 1;
                    i10 = proGuard.topMargin + proGuard.bottomMargin;
                    i14 = b3.getMeasuredHeight() + i10;
                    i7 = Math.max(i7, i14);
                    if (obj2 != null) {
                        i4 = i10;
                    } else {
                        i4 = i14;
                    }
                    i10 = Math.max(i16, i4);
                    obj2 = (obj9 == null || proGuard.height != -1) ? null : 1;
                    if (z) {
                        i12 = b3.getBaseline();
                        if (i12 != -1) {
                            i3 = ((((proGuard.f1402h < 0 ? this.f1138e : proGuard.f1402h) & 112) >> 4) & -2) >> 1;
                            iArr[i3] = Math.max(iArr[i3], i12);
                            iArr2[i3] = Math.max(iArr2[i3], i14 - i12);
                        }
                    }
                    f4 = f5;
                    i14 = i10;
                    obj10 = obj2;
                    i15 = i8;
                    i4 = i11;
                    i11 = i7;
                }
                i9++;
                i16 = i14;
                i7 = i11;
                obj9 = obj10;
                i14 = i4;
                f3 = f4;
            }
            this.f1139f += getPaddingLeft() + getPaddingRight();
            if (!(iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1)) {
                i7 = Math.max(i7, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            obj3 = obj9;
            i3 = i16;
            i6 = i15;
            i4 = i7;
        } else {
            i16 = Math.max(i7, i8);
            if (z2 && mode != 1073741824) {
                for (i4 = 0; i4 < virtualChildCount; i4++) {
                    View b4 = m2223b(i4);
                    if (!(b4 == null || b4.getVisibility() == 8 || ((ProGuard) b4.getLayoutParams()).f1401g <= 0.0f)) {
                        b4.measure(MeasureSpec.makeMeasureSpec(i9, 1073741824), MeasureSpec.makeMeasureSpec(b4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = i16;
            i4 = i10;
        }
        if (obj3 != null || mode2 == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension((-16777216 & i6) | a2, ak.m1011a(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i2, i6 << 16));
        if (obj4 != null) {
            m2212d(virtualChildCount, i);
        }
    }

    private void m2212d(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View b = m2223b(i3);
            if (b.getVisibility() != 8) {
                ProGuard proGuard = (ProGuard) b.getLayoutParams();
                if (proGuard.height == -1) {
                    int i4 = proGuard.width;
                    proGuard.width = b.getMeasuredWidth();
                    measureChildWithMargins(b, i2, 0, makeMeasureSpec, 0);
                    proGuard.width = i4;
                }
            }
        }
    }

    int m2214a(View view, int i) {
        return 0;
    }

    int m2229d(int i) {
        return 0;
    }

    void m2219a(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    int m2213a(View view) {
        return 0;
    }

    int m2220b(View view) {
        return 0;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1137d == 1) {
            m2216a(i, i2, i3, i4);
        } else {
            m2225b(i, i2, i3, i4);
        }
    }

    void m2216a(int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = i5 - getPaddingRight();
        int paddingRight2 = (i5 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i6 = this.f1138e & 8388615;
        switch (this.f1138e & 112) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                i5 = getPaddingTop() + (((i4 - i2) - this.f1139f) / 2);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                i5 = ((getPaddingTop() + i4) - i2) - this.f1139f;
                break;
            default:
                i5 = getPaddingTop();
                break;
        }
        int i7 = 0;
        int i8 = i5;
        while (i7 < virtualChildCount) {
            View b = m2223b(i7);
            if (b == null) {
                i8 += m2229d(i7);
                i5 = i7;
            } else if (b.getVisibility() != 8) {
                int i9;
                int measuredWidth = b.getMeasuredWidth();
                int measuredHeight = b.getMeasuredHeight();
                ProGuard proGuard = (ProGuard) b.getLayoutParams();
                i5 = proGuard.f1402h;
                if (i5 < 0) {
                    i5 = i6;
                }
                switch (android.support.v4.view.ProGuard.m1269a(i5, ak.m1033e(this)) & 7) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i9 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + proGuard.leftMargin) - proGuard.rightMargin;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                        i9 = (paddingRight - measuredWidth) - proGuard.rightMargin;
                        break;
                    default:
                        i9 = paddingLeft + proGuard.leftMargin;
                        break;
                }
                if (m2228c(i7)) {
                    i5 = this.f1146m + i8;
                } else {
                    i5 = i8;
                }
                int i10 = i5 + proGuard.topMargin;
                m2210a(b, i9, i10 + m2213a(b), measuredWidth, measuredHeight);
                i8 = i10 + ((proGuard.bottomMargin + measuredHeight) + m2220b(b));
                i5 = m2214a(b, i7) + i7;
            } else {
                i5 = i7;
            }
            i7 = i5 + 1;
        }
    }

    void m2225b(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        boolean a = af.m2418a(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = i7 - getPaddingBottom();
        int paddingBottom2 = (i7 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        i7 = this.f1138e & 8388615;
        int i8 = this.f1138e & 112;
        boolean z = this.f1134a;
        int[] iArr = this.f1142i;
        int[] iArr2 = this.f1143j;
        switch (android.support.v4.view.ProGuard.m1269a(i7, ak.m1033e(this))) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.f1139f) / 2);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.f1139f;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (a) {
            i5 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i5 = 1;
            i6 = 0;
        }
        int i9 = 0;
        while (i9 < virtualChildCount) {
            int i10 = i6 + (i5 * i9);
            View b = m2223b(i10);
            if (b == null) {
                paddingLeft += m2229d(i10);
                i7 = i9;
            } else if (b.getVisibility() != 8) {
                int i11;
                int measuredWidth = b.getMeasuredWidth();
                int measuredHeight = b.getMeasuredHeight();
                ProGuard proGuard = (ProGuard) b.getLayoutParams();
                if (!z || proGuard.height == -1) {
                    i7 = -1;
                } else {
                    i7 = b.getBaseline();
                }
                int i12 = proGuard.f1402h;
                if (i12 < 0) {
                    i12 = i8;
                }
                switch (i12 & 112) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                        i11 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + proGuard.topMargin) - proGuard.bottomMargin;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_homeAsUpIndicator /*48*/:
                        i11 = paddingTop + proGuard.topMargin;
                        if (i7 != -1) {
                            i11 += iArr[1] - i7;
                            break;
                        }
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                        i11 = (paddingBottom - measuredHeight) - proGuard.bottomMargin;
                        if (i7 != -1) {
                            i11 -= iArr2[2] - (b.getMeasuredHeight() - i7);
                            break;
                        }
                        break;
                    default:
                        i11 = paddingTop;
                        break;
                }
                if (m2228c(i10)) {
                    i7 = this.f1145l + paddingLeft;
                } else {
                    i7 = paddingLeft;
                }
                paddingLeft = i7 + proGuard.leftMargin;
                m2210a(b, paddingLeft + m2213a(b), i11, measuredWidth, measuredHeight);
                paddingLeft += (proGuard.rightMargin + measuredWidth) + m2220b(b);
                i7 = m2214a(b, i10) + i9;
            } else {
                i7 = i9;
            }
            i9 = i7 + 1;
        }
    }

    private void m2210a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    public void setOrientation(int i) {
        if (this.f1137d != i) {
            this.f1137d = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.f1137d;
    }

    public void setGravity(int i) {
        if (this.f1138e != i) {
            int i2;
            if ((8388615 & i) == 0) {
                i2 = 8388611 | i;
            } else {
                i2 = i;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f1138e = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        if ((this.f1138e & 8388615) != i2) {
            this.f1138e = i2 | (this.f1138e & -8388616);
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.f1138e & 112) != i2) {
            this.f1138e = i2 | (this.f1138e & -113);
            requestLayout();
        }
    }

    public ProGuard m2221b(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected ProGuard m2230j() {
        if (this.f1137d == 0) {
            return new ProGuard(-2, -2);
        }
        if (this.f1137d == 1) {
            return new ProGuard(-1, -2);
        }
        return null;
    }

    protected ProGuard m2222b(LayoutParams layoutParams) {
        return new ProGuard(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof ProGuard;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ProGuard.class.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ProGuard.class.getName());
        }
    }
}
