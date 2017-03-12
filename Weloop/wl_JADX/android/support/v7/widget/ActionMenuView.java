package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.widget.af;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

/* compiled from: ProGuard */
public class ActionMenuView extends ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard, android.support.v7.internal.view.menu.ProGuard {
    private android.support.v7.internal.view.menu.ProGuard f1410a;
    private Context f1411b;
    private Context f1412c;
    private int f1413d;
    private boolean f1414e;
    private ActionMenuPresenter f1415f;
    private android.support.v7.internal.view.menu.ProGuard.ProGuard f1416g;
    private android.support.v7.internal.view.menu.ProGuard.ProGuard f1417h;
    private boolean f1418i;
    private int f1419j;
    private int f1420k;
    private int f1421l;
    private ProGuard f1422m;

    /* renamed from: android.support.v7.widget.ActionMenuView.a */
    public interface ProGuard {
        boolean m1928c();

        boolean m1929d();
    }

    /* renamed from: android.support.v7.widget.ActionMenuView.b */
    private class ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard {
        final /* synthetic */ ActionMenuView f1400a;

        private ProGuard(ActionMenuView actionMenuView) {
            this.f1400a = actionMenuView;
        }

        public void m2531a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
        }

        public boolean m2532a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            return false;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuView.c */
    public static class ProGuard extends android.support.v7.widget.ProGuard.ProGuard {
        @ExportedProperty
        public boolean f1403a;
        @ExportedProperty
        public int f1404b;
        @ExportedProperty
        public int f1405c;
        @ExportedProperty
        public boolean f1406d;
        @ExportedProperty
        public boolean f1407e;
        boolean f1408f;

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
        }

        public ProGuard(ProGuard proGuard) {
            super(proGuard);
            this.f1403a = proGuard.f1403a;
        }

        public ProGuard(int i, int i2) {
            super(i, i2);
            this.f1403a = false;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuView.d */
    private class ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard {
        final /* synthetic */ ActionMenuView f1409a;

        private ProGuard(ActionMenuView actionMenuView) {
            this.f1409a = actionMenuView;
        }

        public boolean m2534a(android.support.v7.internal.view.menu.ProGuard proGuard, MenuItem menuItem) {
            return this.f1409a.f1422m != null && this.f1409a.f1422m.m2535a(menuItem);
        }

        public void m2533a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            if (this.f1409a.f1417h != null) {
                this.f1409a.f1417h.m1755a(proGuard);
            }
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuView.e */
    public interface ProGuard {
        boolean m2535a(MenuItem menuItem);
    }

    public /* synthetic */ android.support.v7.widget.ProGuard.ProGuard m2548b(AttributeSet attributeSet) {
        return m2540a(attributeSet);
    }

    protected /* synthetic */ android.support.v7.widget.ProGuard.ProGuard m2549b(LayoutParams layoutParams) {
        return m2541a(layoutParams);
    }

    protected /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return m2547b();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return m2540a(attributeSet);
    }

    protected /* synthetic */ LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return m2541a(layoutParams);
    }

    protected /* synthetic */ android.support.v7.widget.ProGuard.ProGuard m2557j() {
        return m2547b();
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1411b = context;
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f1420k = (int) (56.0f * f);
        this.f1421l = (int) (f * 4.0f);
        this.f1412c = context;
        this.f1413d = 0;
    }

    public void setPopupTheme(int i) {
        if (this.f1413d != i) {
            this.f1413d = i;
            if (i == 0) {
                this.f1412c = this.f1411b;
            } else {
                this.f1412c = new ContextThemeWrapper(this.f1411b, i);
            }
        }
    }

    public int getPopupTheme() {
        return this.f1413d;
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f1415f = actionMenuPresenter;
        this.f1415f.m2515a(this);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        if (this.f1415f != null) {
            this.f1415f.m2521b(false);
            if (this.f1415f.m2529g()) {
                this.f1415f.m2526d();
                this.f1415f.m2524c();
            }
        }
    }

    public void setOnMenuItemClickListener(ProGuard proGuard) {
        this.f1422m = proGuard;
    }

    protected void onMeasure(int i, int i2) {
        boolean z = this.f1418i;
        this.f1418i = MeasureSpec.getMode(i) == 1073741824;
        if (z != this.f1418i) {
            this.f1419j = 0;
        }
        int size = MeasureSpec.getSize(i);
        if (!(!this.f1418i || this.f1410a == null || size == this.f1419j)) {
            this.f1419j = size;
            this.f1410a.m2028b(true);
        }
        int childCount = getChildCount();
        if (!this.f1418i || childCount <= 0) {
            for (int i3 = 0; i3 < childCount; i3++) {
                ProGuard proGuard = (ProGuard) getChildAt(i3).getLayoutParams();
                proGuard.rightMargin = 0;
                proGuard.leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        m2539c(i, i2);
    }

    private void m2539c(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i3 = size - paddingLeft;
        int i4 = i3 / this.f1420k;
        size = i3 % this.f1420k;
        if (i4 == 0) {
            setMeasuredDimension(i3, 0);
            return;
        }
        int i5;
        ProGuard proGuard;
        Object obj;
        Object obj2;
        int i6 = this.f1420k + (size / i4);
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        paddingLeft = 0;
        Object obj3 = null;
        long j = 0;
        int childCount = getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            int i11;
            long j2;
            int i12;
            int i13;
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                i11 = paddingLeft;
                j2 = j;
                i12 = i7;
                i13 = i4;
                i4 = i8;
            } else {
                boolean z = childAt instanceof ActionMenuItemView;
                i5 = paddingLeft + 1;
                if (z) {
                    childAt.setPadding(this.f1421l, 0, this.f1421l, 0);
                }
                proGuard = (ProGuard) childAt.getLayoutParams();
                proGuard.f1408f = false;
                proGuard.f1405c = 0;
                proGuard.f1404b = 0;
                proGuard.f1406d = false;
                proGuard.leftMargin = 0;
                proGuard.rightMargin = 0;
                boolean z2 = z && ((ActionMenuItemView) childAt).m1936b();
                proGuard.f1407e = z2;
                if (proGuard.f1403a) {
                    paddingLeft = 1;
                } else {
                    paddingLeft = i4;
                }
                int a = m2536a(childAt, i6, paddingLeft, childMeasureSpec, paddingTop);
                i8 = Math.max(i8, a);
                if (proGuard.f1406d) {
                    paddingLeft = i9 + 1;
                } else {
                    paddingLeft = i9;
                }
                if (proGuard.f1403a) {
                    obj = 1;
                } else {
                    obj = obj3;
                }
                int i14 = i4 - a;
                i9 = Math.max(i7, childAt.getMeasuredHeight());
                if (a == 1) {
                    long j3 = ((long) (1 << i10)) | j;
                    i12 = i9;
                    i13 = i14;
                    i9 = paddingLeft;
                    obj3 = obj;
                    j2 = j3;
                    i4 = i8;
                    i11 = i5;
                } else {
                    i11 = i5;
                    i4 = i8;
                    long j4 = j;
                    i12 = i9;
                    i13 = i14;
                    obj3 = obj;
                    i9 = paddingLeft;
                    j2 = j4;
                }
            }
            i10++;
            i8 = i4;
            i7 = i12;
            i4 = i13;
            j = j2;
            paddingLeft = i11;
        }
        if (obj3 == null || paddingLeft != 2) {
            obj2 = null;
        } else {
            obj2 = 1;
        }
        Object obj4 = null;
        long j5 = j;
        paddingTop = i4;
        while (i9 > 0 && paddingTop > 0) {
            i5 = Integer.MAX_VALUE;
            j = 0;
            i4 = 0;
            int i15 = 0;
            while (i15 < childCount) {
                proGuard = (ProGuard) getChildAt(i15).getLayoutParams();
                if (proGuard.f1406d) {
                    int i16 = proGuard.f1404b;
                    if (r0 < i5) {
                        i4 = proGuard.f1404b;
                        j = (long) (1 << i15);
                        size = 1;
                    } else if (proGuard.f1404b == i5) {
                        j |= (long) (1 << i15);
                        size = i4 + 1;
                        i4 = i5;
                    } else {
                        size = i4;
                        i4 = i5;
                    }
                } else {
                    size = i4;
                    i4 = i5;
                }
                i15++;
                i5 = i4;
                i4 = size;
            }
            j5 |= j;
            if (i4 > paddingTop) {
                j = j5;
                break;
            }
            i15 = i5 + 1;
            i5 = 0;
            i4 = paddingTop;
            long j6 = j5;
            while (i5 < childCount) {
                View childAt2 = getChildAt(i5);
                proGuard = (ProGuard) childAt2.getLayoutParams();
                if ((((long) (1 << i5)) & j) != 0) {
                    if (obj2 != null && proGuard.f1407e && i4 == 1) {
                        childAt2.setPadding(this.f1421l + i6, 0, this.f1421l, 0);
                    }
                    proGuard.f1404b++;
                    proGuard.f1408f = true;
                    size = i4 - 1;
                } else if (proGuard.f1404b == i15) {
                    j6 |= (long) (1 << i5);
                    size = i4;
                } else {
                    size = i4;
                }
                i5++;
                i4 = size;
            }
            j5 = j6;
            i10 = 1;
            paddingTop = i4;
        }
        j = j5;
        obj = (obj3 == null && paddingLeft == 1) ? 1 : null;
        if (paddingTop <= 0 || j == 0 || (paddingTop >= paddingLeft - 1 && obj == null && i8 <= 1)) {
            obj2 = obj4;
        } else {
            float f;
            View childAt3;
            float bitCount = (float) Long.bitCount(j);
            if (obj == null) {
                if (!((1 & j) == 0 || ((ProGuard) getChildAt(0).getLayoutParams()).f1407e)) {
                    bitCount -= 0.5f;
                }
                if (!((((long) (1 << (childCount - 1))) & j) == 0 || ((ProGuard) getChildAt(childCount - 1).getLayoutParams()).f1407e)) {
                    f = bitCount - 0.5f;
                    paddingLeft = f <= 0.0f ? (int) (((float) (paddingTop * i6)) / f) : 0;
                    i4 = 0;
                    obj2 = obj4;
                    while (i4 < childCount) {
                        if ((((long) (1 << i4)) & j) != 0) {
                            obj = obj2;
                        } else {
                            childAt3 = getChildAt(i4);
                            proGuard = (ProGuard) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                proGuard.f1405c = paddingLeft;
                                proGuard.f1408f = true;
                                if (i4 == 0 && !proGuard.f1407e) {
                                    proGuard.leftMargin = (-paddingLeft) / 2;
                                }
                                obj = 1;
                            } else if (proGuard.f1403a) {
                                if (i4 != 0) {
                                    proGuard.leftMargin = paddingLeft / 2;
                                }
                                if (i4 != childCount - 1) {
                                    proGuard.rightMargin = paddingLeft / 2;
                                }
                                obj = obj2;
                            } else {
                                proGuard.f1405c = paddingLeft;
                                proGuard.f1408f = true;
                                proGuard.rightMargin = (-paddingLeft) / 2;
                                obj = 1;
                            }
                        }
                        i4++;
                        obj2 = obj;
                    }
                }
            }
            f = bitCount;
            if (f <= 0.0f) {
            }
            i4 = 0;
            obj2 = obj4;
            while (i4 < childCount) {
                if ((((long) (1 << i4)) & j) != 0) {
                    childAt3 = getChildAt(i4);
                    proGuard = (ProGuard) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        proGuard.f1405c = paddingLeft;
                        proGuard.f1408f = true;
                        proGuard.leftMargin = (-paddingLeft) / 2;
                        obj = 1;
                    } else if (proGuard.f1403a) {
                        if (i4 != 0) {
                            proGuard.leftMargin = paddingLeft / 2;
                        }
                        if (i4 != childCount - 1) {
                            proGuard.rightMargin = paddingLeft / 2;
                        }
                        obj = obj2;
                    } else {
                        proGuard.f1405c = paddingLeft;
                        proGuard.f1408f = true;
                        proGuard.rightMargin = (-paddingLeft) / 2;
                        obj = 1;
                    }
                } else {
                    obj = obj2;
                }
                i4++;
                obj2 = obj;
            }
        }
        if (obj2 != null) {
            for (paddingLeft = 0; paddingLeft < childCount; paddingLeft++) {
                childAt = getChildAt(paddingLeft);
                proGuard = (ProGuard) childAt.getLayoutParams();
                if (proGuard.f1408f) {
                    childAt.measure(MeasureSpec.makeMeasureSpec(proGuard.f1405c + (proGuard.f1404b * i6), 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode == 1073741824) {
            i7 = size2;
        }
        setMeasuredDimension(i3, i7);
    }

    static int m2536a(View view, int i, int i2, int i3, int i4) {
        boolean z;
        int i5;
        boolean z2 = false;
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i3) - i4, MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        if (actionMenuItemView == null || !actionMenuItemView.m1936b()) {
            z = false;
        } else {
            z = true;
        }
        if (i2 <= 0 || (z && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z && r1 < 2) {
                i5 = 2;
            }
        }
        if (!proGuard.f1403a && z) {
            z2 = true;
        }
        proGuard.f1406d = z2;
        proGuard.f1404b = i5;
        view.measure(MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1418i) {
            int i5;
            int i6;
            ProGuard proGuard;
            int paddingLeft;
            int childCount = getChildCount();
            int i7 = (i4 - i2) / 2;
            int dividerWidth = getDividerWidth();
            int i8 = 0;
            int i9 = 0;
            int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
            Object obj = null;
            boolean a = af.m2418a(this);
            int i10 = 0;
            while (i10 < childCount) {
                Object obj2;
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() == 8) {
                    obj2 = obj;
                    i5 = i9;
                    i6 = paddingRight;
                    paddingRight = i8;
                } else {
                    proGuard = (ProGuard) childAt.getLayoutParams();
                    if (proGuard.f1403a) {
                        i6 = childAt.getMeasuredWidth();
                        if (m2545a(i10)) {
                            i6 += dividerWidth;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        if (a) {
                            paddingLeft = proGuard.leftMargin + getPaddingLeft();
                            i5 = paddingLeft + i6;
                        } else {
                            i5 = (getWidth() - getPaddingRight()) - proGuard.rightMargin;
                            paddingLeft = i5 - i6;
                        }
                        int i11 = i7 - (measuredHeight / 2);
                        childAt.layout(paddingLeft, i11, i5, measuredHeight + i11);
                        i6 = paddingRight - i6;
                        obj2 = 1;
                        i5 = i9;
                        paddingRight = i8;
                    } else {
                        i5 = (childAt.getMeasuredWidth() + proGuard.leftMargin) + proGuard.rightMargin;
                        paddingLeft = i8 + i5;
                        i5 = paddingRight - i5;
                        if (m2545a(i10)) {
                            paddingLeft += dividerWidth;
                        }
                        Object obj3 = obj;
                        i6 = i5;
                        i5 = i9 + 1;
                        paddingRight = paddingLeft;
                        obj2 = obj3;
                    }
                }
                i10++;
                i8 = paddingRight;
                paddingRight = i6;
                i9 = i5;
                obj = obj2;
            }
            if (childCount == 1 && obj == null) {
                View childAt2 = getChildAt(0);
                i6 = childAt2.getMeasuredWidth();
                i5 = childAt2.getMeasuredHeight();
                paddingRight = ((i3 - i) / 2) - (i6 / 2);
                i9 = i7 - (i5 / 2);
                childAt2.layout(paddingRight, i9, i6 + paddingRight, i5 + i9);
                return;
            }
            paddingLeft = i9 - (obj != null ? 0 : 1);
            paddingRight = Math.max(0, paddingLeft > 0 ? paddingRight / paddingLeft : 0);
            View childAt3;
            if (a) {
                i6 = getWidth() - getPaddingRight();
                i5 = 0;
                while (i5 < childCount) {
                    childAt3 = getChildAt(i5);
                    proGuard = (ProGuard) childAt3.getLayoutParams();
                    if (childAt3.getVisibility() == 8) {
                        paddingLeft = i6;
                    } else if (proGuard.f1403a) {
                        paddingLeft = i6;
                    } else {
                        i6 -= proGuard.rightMargin;
                        i8 = childAt3.getMeasuredWidth();
                        i10 = childAt3.getMeasuredHeight();
                        dividerWidth = i7 - (i10 / 2);
                        childAt3.layout(i6 - i8, dividerWidth, i6, i10 + dividerWidth);
                        paddingLeft = i6 - ((proGuard.leftMargin + i8) + paddingRight);
                    }
                    i5++;
                    i6 = paddingLeft;
                }
                return;
            }
            i6 = getPaddingLeft();
            i5 = 0;
            while (i5 < childCount) {
                childAt3 = getChildAt(i5);
                proGuard = (ProGuard) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    paddingLeft = i6;
                } else if (proGuard.f1403a) {
                    paddingLeft = i6;
                } else {
                    i6 += proGuard.leftMargin;
                    i8 = childAt3.getMeasuredWidth();
                    i10 = childAt3.getMeasuredHeight();
                    dividerWidth = i7 - (i10 / 2);
                    childAt3.layout(i6, dividerWidth, i6 + i8, i10 + dividerWidth);
                    paddingLeft = ((proGuard.rightMargin + i8) + paddingRight) + i6;
                }
                i5++;
                i6 = paddingLeft;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m2556i();
    }

    public boolean m2544a() {
        return this.f1414e;
    }

    public void setOverflowReserved(boolean z) {
        this.f1414e = z;
    }

    protected ProGuard m2547b() {
        ProGuard proGuard = new ProGuard(-2, -2);
        proGuard.h = 16;
        return proGuard;
    }

    public ProGuard m2540a(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected ProGuard m2541a(LayoutParams layoutParams) {
        if (layoutParams == null) {
            return m2547b();
        }
        ProGuard proGuard = layoutParams instanceof ProGuard ? new ProGuard((ProGuard) layoutParams) : new ProGuard(layoutParams);
        if (proGuard.h > 0) {
            return proGuard;
        }
        proGuard.h = 16;
        return proGuard;
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof ProGuard);
    }

    public ProGuard m2550c() {
        ProGuard b = m2547b();
        b.f1403a = true;
        return b;
    }

    public boolean m2546a(android.support.v7.internal.view.menu.ProGuard proGuard) {
        return this.f1410a.m2022a((MenuItem) proGuard, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void m2542a(android.support.v7.internal.view.menu.ProGuard proGuard) {
        this.f1410a = proGuard;
    }

    public Menu getMenu() {
        if (this.f1410a == null) {
            Context context = getContext();
            this.f1410a = new android.support.v7.internal.view.menu.ProGuard(context);
            this.f1410a.m2014a(new ProGuard());
            this.f1415f = new ActionMenuPresenter(context);
            this.f1415f.m2523c(true);
            this.f1415f.m1969a(this.f1416g != null ? this.f1416g : new ProGuard());
            this.f1410a.m2017a(this.f1415f, this.f1412c);
            this.f1415f.m2515a(this);
        }
        return this.f1410a;
    }

    public void m2543a(android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard, android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard2) {
        this.f1416g = proGuard;
        this.f1417h = proGuard2;
    }

    public android.support.v7.internal.view.menu.ProGuard m2551d() {
        return this.f1410a;
    }

    public boolean m2552e() {
        return this.f1415f != null && this.f1415f.m2524c();
    }

    public boolean m2553f() {
        return this.f1415f != null && this.f1415f.m2526d();
    }

    public boolean m2554g() {
        return this.f1415f != null && this.f1415f.m2529g();
    }

    public boolean m2555h() {
        return this.f1415f != null && this.f1415f.m2530h();
    }

    public void m2556i() {
        if (this.f1415f != null) {
            this.f1415f.m2527e();
        }
    }

    protected boolean m2545a(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ProGuard)) {
            z = 0 | ((ProGuard) childAt).m1929d();
        }
        return (i <= 0 || !(childAt2 instanceof ProGuard)) ? z : ((ProGuard) childAt2).m1928c() | z;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f1415f.m2525d(z);
    }
}
