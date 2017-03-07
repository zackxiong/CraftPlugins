package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class SlidingPaneLayout extends ViewGroup {
    static final ProGuard f616a;
    private int f617b;
    private int f618c;
    private Drawable f619d;
    private Drawable f620e;
    private final int f621f;
    private boolean f622g;
    private View f623h;
    private float f624i;
    private float f625j;
    private int f626k;
    private boolean f627l;
    private int f628m;
    private float f629n;
    private float f630o;
    private ProGuard f631p;
    private final ProGuard f632q;
    private boolean f633r;
    private boolean f634s;
    private final Rect f635t;
    private final ArrayList<ProGuard> f636u;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        boolean f606a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f606a = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f606a ? 1 : 0);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.a */
    private class ProGuard implements Runnable {
        final View f607a;
        final /* synthetic */ SlidingPaneLayout f608b;

        ProGuard(SlidingPaneLayout slidingPaneLayout, View view) {
            this.f608b = slidingPaneLayout;
            this.f607a = view;
        }

        public void run() {
            if (this.f607a.getParent() == this.f608b) {
                ak.m1016a(this.f607a, 0, null);
                this.f608b.m1490d(this.f607a);
            }
            this.f608b.f636u.remove(this);
        }
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.b */
    public static class ProGuard extends MarginLayoutParams {
        private static final int[] f609e;
        public float f610a;
        boolean f611b;
        boolean f612c;
        Paint f613d;

        static {
            f609e = new int[]{16843137};
        }

        public ProGuard() {
            super(-1, -1);
            this.f610a = 0.0f;
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
            this.f610a = 0.0f;
        }

        public ProGuard(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f610a = 0.0f;
        }

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f610a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f609e);
            this.f610a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.c */
    public interface ProGuard {
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.d */
    interface ProGuard {
        void m1479a(SlidingPaneLayout slidingPaneLayout, View view);
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.e */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m1480a(SlidingPaneLayout slidingPaneLayout, View view) {
            ak.m1015a(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.f */
    static class ProGuard extends ProGuard {
        private Method f614a;
        private Field f615b;

        ProGuard() {
            try {
                this.f614a = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
            } catch (Throwable e) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.f615b = View.class.getDeclaredField("mRecreateDisplayList");
                this.f615b.setAccessible(true);
            } catch (Throwable e2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public void m1481a(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.f614a == null || this.f615b == null) {
                view.invalidate();
                return;
            }
            try {
                this.f615b.setBoolean(view, true);
                this.f614a.invoke(view, (Object[]) null);
            } catch (Throwable e) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
            }
            super.m1480a(slidingPaneLayout, view);
        }
    }

    /* renamed from: android.support.v4.widget.SlidingPaneLayout.g */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1482a(SlidingPaneLayout slidingPaneLayout, View view) {
            ak.m1017a(view, ((ProGuard) view.getLayoutParams()).f613d);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 17) {
            f616a = new ProGuard();
        } else if (i >= 16) {
            f616a = new ProGuard();
        } else {
            f616a = new ProGuard();
        }
    }

    public void setParallaxDistance(int i) {
        this.f628m = i;
        requestLayout();
    }

    public int getParallaxDistance() {
        return this.f628m;
    }

    public void setSliderFadeColor(int i) {
        this.f617b = i;
    }

    public int getSliderFadeColor() {
        return this.f617b;
    }

    public void setCoveredFadeColor(int i) {
        this.f618c = i;
    }

    public int getCoveredFadeColor() {
        return this.f618c;
    }

    public void setPanelSlideListener(ProGuard proGuard) {
        this.f631p = proGuard;
    }

    void m1493a(View view) {
        int paddingLeft;
        int i;
        boolean f = m1491f();
        int width = f ? getWidth() - getPaddingRight() : getPaddingLeft();
        if (f) {
            paddingLeft = getPaddingLeft();
        } else {
            paddingLeft = getWidth() - getPaddingRight();
        }
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int i2;
        int i3;
        int i4;
        if (view == null || !m1489c(view)) {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i = 0;
        } else {
            i = view.getLeft();
            i4 = view.getRight();
            i3 = view.getTop();
            i2 = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt != view) {
                int i6;
                if (f) {
                    i6 = paddingLeft;
                } else {
                    i6 = width;
                }
                int max = Math.max(i6, childAt.getLeft());
                int max2 = Math.max(paddingTop, childAt.getTop());
                if (f) {
                    i6 = width;
                } else {
                    i6 = paddingLeft;
                }
                i6 = Math.min(i6, childAt.getRight());
                int min = Math.min(height, childAt.getBottom());
                if (max < i || max2 < r3 || i6 > r4 || min > r2) {
                    i6 = 0;
                } else {
                    i6 = 4;
                }
                childAt.setVisibility(i6);
                i5++;
            } else {
                return;
            }
        }
    }

    void m1492a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean m1489c(View view) {
        if (ak.m1035f(view)) {
            return true;
        }
        if (VERSION.SDK_INT >= 18) {
            return false;
        }
        Drawable background = view.getBackground();
        if (background == null) {
            return false;
        }
        if (background.getOpacity() != -1) {
            return false;
        }
        return true;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f634s = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f634s = true;
        int size = this.f636u.size();
        for (int i = 0; i < size; i++) {
            ((ProGuard) this.f636u.get(i)).run();
        }
        this.f636u.clear();
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            if (mode2 == 0) {
                if (!isInEditMode()) {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                } else if (mode2 == 0) {
                    i3 = Integer.MIN_VALUE;
                    i4 = size;
                    size = 300;
                }
            }
            i3 = mode2;
            i4 = size;
            size = size2;
        } else if (!isInEditMode()) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else if (mode == Integer.MIN_VALUE) {
            i3 = mode2;
            i4 = size;
            size = size2;
        } else {
            if (mode == 0) {
                i3 = mode2;
                i4 = 300;
                size = size2;
            }
            i3 = mode2;
            i4 = size;
            size = size2;
        }
        switch (i3) {
            case Integer.MIN_VALUE:
                size2 = 0;
                mode2 = (size - getPaddingTop()) - getPaddingBottom();
                break;
            case 1073741824:
                size2 = (size - getPaddingTop()) - getPaddingBottom();
                mode2 = size2;
                break;
            default:
                size2 = 0;
                mode2 = -1;
                break;
        }
        boolean z = false;
        int paddingLeft = (i4 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f623h = null;
        int i5 = 0;
        int i6 = paddingLeft;
        int i7 = size2;
        float f = 0.0f;
        while (i5 < childCount) {
            float f2;
            int i8;
            boolean z2;
            View childAt = getChildAt(i5);
            ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                proGuard.f612c = false;
                size2 = i6;
                f2 = f;
                i8 = i7;
                z2 = z;
            } else {
                if (proGuard.f610a > 0.0f) {
                    f += proGuard.f610a;
                    if (proGuard.width == 0) {
                        size2 = i6;
                        f2 = f;
                        i8 = i7;
                        z2 = z;
                    }
                }
                mode = proGuard.leftMargin + proGuard.rightMargin;
                if (proGuard.width == -2) {
                    mode = MeasureSpec.makeMeasureSpec(paddingLeft - mode, Integer.MIN_VALUE);
                } else if (proGuard.width == -1) {
                    mode = MeasureSpec.makeMeasureSpec(paddingLeft - mode, 1073741824);
                } else {
                    mode = MeasureSpec.makeMeasureSpec(proGuard.width, 1073741824);
                }
                if (proGuard.height == -2) {
                    i8 = MeasureSpec.makeMeasureSpec(mode2, Integer.MIN_VALUE);
                } else if (proGuard.height == -1) {
                    i8 = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                } else {
                    i8 = MeasureSpec.makeMeasureSpec(proGuard.height, 1073741824);
                }
                childAt.measure(mode, i8);
                mode = childAt.getMeasuredWidth();
                i8 = childAt.getMeasuredHeight();
                if (i3 == Integer.MIN_VALUE && i8 > i7) {
                    i7 = Math.min(i8, mode2);
                }
                i8 = i6 - mode;
                boolean z3 = i8 < 0;
                proGuard.f611b = z3;
                z3 |= z;
                if (proGuard.f611b) {
                    this.f623h = childAt;
                }
                size2 = i8;
                i8 = i7;
                float f3 = f;
                z2 = z3;
                f2 = f3;
            }
            i5++;
            z = z2;
            i7 = i8;
            f = f2;
            i6 = size2;
        }
        if (z || f > 0.0f) {
            int i9 = paddingLeft - this.f621f;
            for (i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getVisibility() != 8) {
                    proGuard = (ProGuard) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        Object obj = (proGuard.width != 0 || proGuard.f610a <= 0.0f) ? null : 1;
                        i8 = obj != null ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.f623h) {
                            if (proGuard.f610a > 0.0f) {
                                if (proGuard.width != 0) {
                                    mode = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (proGuard.height == -2) {
                                    mode = MeasureSpec.makeMeasureSpec(mode2, Integer.MIN_VALUE);
                                } else if (proGuard.height == -1) {
                                    mode = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                                } else {
                                    mode = MeasureSpec.makeMeasureSpec(proGuard.height, 1073741824);
                                }
                                if (z) {
                                    size2 = paddingLeft - (proGuard.rightMargin + proGuard.leftMargin);
                                    i5 = MeasureSpec.makeMeasureSpec(size2, 1073741824);
                                    if (i8 != size2) {
                                        childAt2.measure(i5, mode);
                                    }
                                } else {
                                    childAt2.measure(MeasureSpec.makeMeasureSpec(((int) ((proGuard.f610a * ((float) Math.max(0, i6))) / f)) + i8, 1073741824), mode);
                                }
                            }
                        } else if (proGuard.width < 0 && (i8 > i9 || proGuard.f610a > 0.0f)) {
                            if (obj == null) {
                                size2 = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            } else if (proGuard.height == -2) {
                                size2 = MeasureSpec.makeMeasureSpec(mode2, Integer.MIN_VALUE);
                            } else if (proGuard.height == -1) {
                                size2 = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                            } else {
                                size2 = MeasureSpec.makeMeasureSpec(proGuard.height, 1073741824);
                            }
                            childAt2.measure(MeasureSpec.makeMeasureSpec(i9, 1073741824), size2);
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, (getPaddingTop() + i7) + getPaddingBottom());
        this.f622g = z;
        if (this.f632q.m1711a() != 0 && !z) {
            this.f632q.m1731f();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean f = m1491f();
        if (f) {
            this.f632q.m1712a(2);
        } else {
            this.f632q.m1712a(1);
        }
        int i5 = i3 - i;
        int paddingRight = f ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = f ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f634s) {
            float f2 = (this.f622g && this.f633r) ? 1.0f : 0.0f;
            this.f624i = f2;
        }
        int i6 = 0;
        int i7 = paddingRight;
        while (i6 < childCount) {
            int i8;
            int i9;
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                i8 = paddingRight;
                i9 = i7;
            } else {
                int i10;
                ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (proGuard.f611b) {
                    int min = (Math.min(paddingRight, (i5 - paddingLeft) - this.f621f) - i7) - (proGuard.leftMargin + proGuard.rightMargin);
                    this.f626k = min;
                    i9 = f ? proGuard.rightMargin : proGuard.leftMargin;
                    proGuard.f612c = ((i7 + i9) + min) + (measuredWidth / 2) > i5 - paddingLeft;
                    i8 = (int) (((float) min) * this.f624i);
                    i10 = i7 + (i9 + i8);
                    this.f624i = ((float) i8) / ((float) this.f626k);
                    i8 = 0;
                } else if (!this.f622g || this.f628m == 0) {
                    i8 = 0;
                    i10 = paddingRight;
                } else {
                    i8 = (int) ((1.0f - this.f624i) * ((float) this.f628m));
                    i10 = paddingRight;
                }
                if (f) {
                    i9 = (i5 - i10) + i8;
                    i8 = i9 - measuredWidth;
                } else {
                    i8 = i10 - i8;
                    i9 = i8 + measuredWidth;
                }
                childAt.layout(i8, paddingTop, i9, childAt.getMeasuredHeight() + paddingTop);
                i8 = childAt.getWidth() + paddingRight;
                i9 = i10;
            }
            i6++;
            paddingRight = i8;
            i7 = i9;
        }
        if (this.f634s) {
            if (this.f622g) {
                if (this.f628m != 0) {
                    m1484a(this.f624i);
                }
                if (((ProGuard) this.f623h.getLayoutParams()).f612c) {
                    m1486a(this.f623h, this.f624i, this.f617b);
                }
            } else {
                for (i8 = 0; i8 < childCount; i8++) {
                    m1486a(getChildAt(i8), 0.0f, this.f617b);
                }
            }
            m1493a(this.f623h);
        }
        this.f634s = false;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f634s = true;
        }
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.f622g) {
            this.f633r = view == this.f623h;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
        r7 = this;
        r2 = 0;
        r1 = 1;
        r3 = android.support.v4.view.ProGuard.m1365a(r8);
        r0 = r7.f622g;
        if (r0 != 0) goto L_0x002d;
    L_0x000a:
        if (r3 != 0) goto L_0x002d;
    L_0x000c:
        r0 = r7.getChildCount();
        if (r0 <= r1) goto L_0x002d;
    L_0x0012:
        r0 = r7.getChildAt(r1);
        if (r0 == 0) goto L_0x002d;
    L_0x0018:
        r4 = r7.f632q;
        r5 = r8.getX();
        r5 = (int) r5;
        r6 = r8.getY();
        r6 = (int) r6;
        r0 = r4.m1723b(r0, r5, r6);
        if (r0 != 0) goto L_0x0041;
    L_0x002a:
        r0 = r1;
    L_0x002b:
        r7.f633r = r0;
    L_0x002d:
        r0 = r7.f622g;
        if (r0 == 0) goto L_0x0037;
    L_0x0031:
        r0 = r7.f627l;
        if (r0 == 0) goto L_0x0043;
    L_0x0035:
        if (r3 == 0) goto L_0x0043;
    L_0x0037:
        r0 = r7.f632q;
        r0.m1730e();
        r2 = super.onInterceptTouchEvent(r8);
    L_0x0040:
        return r2;
    L_0x0041:
        r0 = r2;
        goto L_0x002b;
    L_0x0043:
        r0 = 3;
        if (r3 == r0) goto L_0x0048;
    L_0x0046:
        if (r3 != r1) goto L_0x004e;
    L_0x0048:
        r0 = r7.f632q;
        r0.m1730e();
        goto L_0x0040;
    L_0x004e:
        switch(r3) {
            case 0: goto L_0x005e;
            case 1: goto L_0x0051;
            case 2: goto L_0x0082;
            default: goto L_0x0051;
        };
    L_0x0051:
        r0 = r2;
    L_0x0052:
        r3 = r7.f632q;
        r3 = r3.m1715a(r8);
        if (r3 != 0) goto L_0x005c;
    L_0x005a:
        if (r0 == 0) goto L_0x0040;
    L_0x005c:
        r2 = r1;
        goto L_0x0040;
    L_0x005e:
        r7.f627l = r2;
        r0 = r8.getX();
        r3 = r8.getY();
        r7.f629n = r0;
        r7.f630o = r3;
        r4 = r7.f632q;
        r5 = r7.f623h;
        r0 = (int) r0;
        r3 = (int) r3;
        r0 = r4.m1723b(r5, r0, r3);
        if (r0 == 0) goto L_0x0051;
    L_0x0078:
        r0 = r7.f623h;
        r0 = r7.m1496b(r0);
        if (r0 == 0) goto L_0x0051;
    L_0x0080:
        r0 = r1;
        goto L_0x0052;
    L_0x0082:
        r0 = r8.getX();
        r3 = r8.getY();
        r4 = r7.f629n;
        r0 = r0 - r4;
        r0 = java.lang.Math.abs(r0);
        r4 = r7.f630o;
        r3 = r3 - r4;
        r3 = java.lang.Math.abs(r3);
        r4 = r7.f632q;
        r4 = r4.m1727d();
        r4 = (float) r4;
        r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1));
        if (r4 <= 0) goto L_0x0051;
    L_0x00a3:
        r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1));
        if (r0 <= 0) goto L_0x0051;
    L_0x00a7:
        r0 = r7.f632q;
        r0.m1730e();
        r7.f627l = r1;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f622g) {
            return super.onTouchEvent(motionEvent);
        }
        this.f632q.m1719b(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.f629n = x;
                this.f630o = y;
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                if (!m1496b(this.f623h)) {
                    return true;
                }
                x = motionEvent.getX();
                y = motionEvent.getY();
                float f = x - this.f629n;
                float f2 = y - this.f630o;
                int d = this.f632q.m1727d();
                if ((f * f) + (f2 * f2) >= ((float) (d * d)) || !this.f632q.m1723b(this.f623h, (int) x, (int) y)) {
                    return true;
                }
                m1487a(this.f623h, 0);
                return true;
            default:
                return true;
        }
    }

    private boolean m1487a(View view, int i) {
        if (!this.f634s && !m1494a(0.0f, i)) {
            return false;
        }
        this.f633r = false;
        return true;
    }

    private boolean m1488b(View view, int i) {
        if (!this.f634s && !m1494a(1.0f, i)) {
            return false;
        }
        this.f633r = true;
        return true;
    }

    public boolean m1495b() {
        return m1488b(this.f623h, 0);
    }

    public boolean m1497c() {
        return m1487a(this.f623h, 0);
    }

    public boolean m1498d() {
        return !this.f622g || this.f624i == 1.0f;
    }

    public boolean m1499e() {
        return this.f622g;
    }

    private void m1486a(View view, float f, int i) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) (((float) ((-16777216 & i) >>> 24)) * f)) << 24) | (16777215 & i);
            if (proGuard.f613d == null) {
                proGuard.f613d = new Paint();
            }
            proGuard.f613d.setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_OVER));
            if (ak.m1031d(view) != 2) {
                ak.m1016a(view, 2, proGuard.f613d);
            }
            m1490d(view);
        } else if (ak.m1031d(view) != 0) {
            if (proGuard.f613d != null) {
                proGuard.f613d.setColorFilter(null);
            }
            Runnable proGuard2 = new ProGuard(this, view);
            this.f636u.add(proGuard2);
            ak.m1020a((View) this, proGuard2);
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        int save = canvas.save(2);
        if (!(!this.f622g || proGuard.f611b || this.f623h == null)) {
            canvas.getClipBounds(this.f635t);
            if (m1491f()) {
                this.f635t.left = Math.max(this.f635t.left, this.f623h.getRight());
            } else {
                this.f635t.right = Math.min(this.f635t.right, this.f623h.getLeft());
            }
            canvas.clipRect(this.f635t);
        }
        if (VERSION.SDK_INT >= 11) {
            drawChild = super.drawChild(canvas, view, j);
        } else if (!proGuard.f612c || this.f624i <= 0.0f) {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            drawChild = super.drawChild(canvas, view, j);
        } else {
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, (float) view.getLeft(), (float) view.getTop(), proGuard.f613d);
                drawChild = false;
            } else {
                Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
                drawChild = super.drawChild(canvas, view, j);
            }
        }
        canvas.restoreToCount(save);
        return drawChild;
    }

    private void m1490d(View view) {
        f616a.m1479a(this, view);
    }

    boolean m1494a(float f, int i) {
        if (!this.f622g) {
            return false;
        }
        int width;
        ProGuard proGuard = (ProGuard) this.f623h.getLayoutParams();
        if (m1491f()) {
            width = (int) (((float) getWidth()) - ((((float) (proGuard.rightMargin + getPaddingRight())) + (((float) this.f626k) * f)) + ((float) this.f623h.getWidth())));
        } else {
            width = (int) (((float) (proGuard.leftMargin + getPaddingLeft())) + (((float) this.f626k) * f));
        }
        if (!this.f632q.m1716a(this.f623h, width, this.f623h.getTop())) {
            return false;
        }
        m1492a();
        ak.m1024b(this);
        return true;
    }

    public void computeScroll() {
        if (!this.f632q.m1717a(true)) {
            return;
        }
        if (this.f622g) {
            ak.m1024b(this);
        } else {
            this.f632q.m1731f();
        }
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f619d = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f620e = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(getResources().getDrawable(i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(getResources().getDrawable(i));
    }

    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        if (m1491f()) {
            drawable = this.f620e;
        } else {
            drawable = this.f619d;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int right;
            int i;
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (m1491f()) {
                right = childAt.getRight();
                i = right + intrinsicWidth;
            } else {
                i = childAt.getLeft();
                right = i - intrinsicWidth;
            }
            drawable.setBounds(right, top, i, bottom);
            drawable.draw(canvas);
        }
    }

    private void m1484a(float f) {
        Object obj;
        int childCount;
        int i;
        View childAt;
        int i2;
        boolean f2 = m1491f();
        ProGuard proGuard = (ProGuard) this.f623h.getLayoutParams();
        if (proGuard.f612c) {
            if ((f2 ? proGuard.rightMargin : proGuard.leftMargin) <= 0) {
                obj = 1;
                childCount = getChildCount();
                for (i = 0; i < childCount; i++) {
                    childAt = getChildAt(i);
                    if (childAt == this.f623h) {
                        i2 = (int) ((1.0f - this.f625j) * ((float) this.f628m));
                        this.f625j = f;
                        i2 -= (int) ((1.0f - f) * ((float) this.f628m));
                        if (f2) {
                            i2 = -i2;
                        }
                        childAt.offsetLeftAndRight(i2);
                        if (obj == null) {
                            m1486a(childAt, f2 ? this.f625j - 1.0f : 1.0f - this.f625j, this.f618c);
                        }
                    }
                }
            }
        }
        obj = null;
        childCount = getChildCount();
        for (i = 0; i < childCount; i++) {
            childAt = getChildAt(i);
            if (childAt == this.f623h) {
                i2 = (int) ((1.0f - this.f625j) * ((float) this.f628m));
                this.f625j = f;
                i2 -= (int) ((1.0f - f) * ((float) this.f628m));
                if (f2) {
                    i2 = -i2;
                }
                childAt.offsetLeftAndRight(i2);
                if (obj == null) {
                    if (f2) {
                    }
                    m1486a(childAt, f2 ? this.f625j - 1.0f : 1.0f - this.f625j, this.f618c);
                }
            }
        }
    }

    boolean m1496b(View view) {
        if (view == null) {
            return false;
        }
        boolean z = this.f622g && ((ProGuard) view.getLayoutParams()).f612c && this.f624i > 0.0f;
        return z;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new ProGuard();
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new ProGuard((MarginLayoutParams) layoutParams) : new ProGuard(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof ProGuard) && super.checkLayoutParams(layoutParams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f606a = m1499e() ? m1498d() : this.f633r;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f606a) {
            m1495b();
        } else {
            m1497c();
        }
        this.f633r = savedState.f606a;
    }

    private boolean m1491f() {
        return ak.m1033e(this) == 1;
    }
}
