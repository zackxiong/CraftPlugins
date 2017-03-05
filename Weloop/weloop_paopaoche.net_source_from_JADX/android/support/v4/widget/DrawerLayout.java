package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: ProGuard */
public class DrawerLayout extends ViewGroup {
    static final ProGuard f552a;
    private static final int[] f553b;
    private static final boolean f554c;
    private boolean f555A;
    private final ProGuard f556d;
    private int f557e;
    private int f558f;
    private float f559g;
    private Paint f560h;
    private final ProGuard f561i;
    private final ProGuard f562j;
    private final ProGuard f563k;
    private final ProGuard f564l;
    private int f565m;
    private boolean f566n;
    private boolean f567o;
    private int f568p;
    private int f569q;
    private boolean f570r;
    private boolean f571s;
    private ProGuard f572t;
    private float f573u;
    private float f574v;
    private Drawable f575w;
    private Drawable f576x;
    private Drawable f577y;
    private Object f578z;

    /* compiled from: ProGuard */
    protected static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        int f541a;
        int f542b;
        int f543c;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f541a = 0;
            this.f542b = 0;
            this.f543c = 0;
            this.f541a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f541a = 0;
            this.f542b = 0;
            this.f543c = 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f541a);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.a */
    final class ProGuard extends android.support.v4.view.ProGuard {
        public void m1380a(View view, android.support.v4.view.p016a.ProGuard proGuard) {
            super.m582a(view, proGuard);
            if (!DrawerLayout.m1428m(view)) {
                proGuard.m752a(null);
            }
        }
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.b */
    interface ProGuard {
        int m1381a(Object obj);

        void m1382a(View view, Object obj, int i);

        void m1383a(MarginLayoutParams marginLayoutParams, Object obj, int i);
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.c */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m1385a(View view, Object obj, int i) {
            ProGuard.m1565a(view, obj, i);
        }

        public void m1386a(MarginLayoutParams marginLayoutParams, Object obj, int i) {
            ProGuard.m1566a(marginLayoutParams, obj, i);
        }

        public int m1384a(Object obj) {
            return ProGuard.m1564a(obj);
        }
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.d */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m1388a(View view, Object obj, int i) {
        }

        public void m1389a(MarginLayoutParams marginLayoutParams, Object obj, int i) {
        }

        public int m1387a(Object obj) {
            return 0;
        }
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.e */
    public interface ProGuard {
        void m1390a(int i);

        void m1391a(View view);

        void m1392a(View view, float f);

        void m1393b(View view);
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.f */
    public static class ProGuard extends MarginLayoutParams {
        public int f544a;
        float f545b;
        boolean f546c;
        boolean f547d;

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f544a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f553b);
            this.f544a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public ProGuard(int i, int i2) {
            super(i, i2);
            this.f544a = 0;
        }

        public ProGuard(ProGuard proGuard) {
            super(proGuard);
            this.f544a = 0;
            this.f544a = proGuard.f544a;
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
            this.f544a = 0;
        }

        public ProGuard(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f544a = 0;
        }
    }

    /* renamed from: android.support.v4.widget.DrawerLayout.g */
    private class ProGuard extends android.support.v4.widget.ProGuard.ProGuard {
        final /* synthetic */ DrawerLayout f548a;
        private final int f549b;
        private ProGuard f550c;
        private final Runnable f551d;

        public void m1410a() {
            this.f548a.removeCallbacks(this.f551d);
        }

        public boolean m1415a(View view, int i) {
            return this.f548a.m1444g(view) && this.f548a.m1436a(view, this.f549b) && this.f548a.m1429a(view) == 0;
        }

        public void m1411a(int i) {
            this.f548a.m1433a(this.f549b, i, this.f550c.m1724c());
        }

        public void m1414a(View view, int i, int i2, int i3, int i4) {
            float f;
            int width = view.getWidth();
            if (this.f548a.m1436a(view, 3)) {
                f = ((float) (width + i)) / ((float) width);
            } else {
                f = ((float) (this.f548a.getWidth() - i)) / ((float) width);
            }
            this.f548a.m1439b(view, f);
            view.setVisibility(f == 0.0f ? 4 : 0);
            this.f548a.invalidate();
        }

        public void m1418b(View view, int i) {
            ((ProGuard) view.getLayoutParams()).f546c = false;
            m1407b();
        }

        private void m1407b() {
            int i = 3;
            if (this.f549b == 3) {
                i = 5;
            }
            View a = this.f548a.m1431a(i);
            if (a != null) {
                this.f548a.m1446i(a);
            }
        }

        public void m1413a(View view, float f, float f2) {
            int i;
            float d = this.f548a.m1441d(view);
            int width = view.getWidth();
            if (this.f548a.m1436a(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && d > 0.5f)) ? 0 : -width;
            } else {
                i = this.f548a.getWidth();
                if (f < 0.0f || (f == 0.0f && d > 0.5f)) {
                    i -= width;
                }
            }
            this.f550c.m1714a(i, view.getTop());
            this.f548a.invalidate();
        }

        public void m1412a(int i, int i2) {
            this.f548a.postDelayed(this.f551d, 160);
        }

        public boolean m1419b(int i) {
            return false;
        }

        public void m1417b(int i, int i2) {
            View a;
            if ((i & 1) == 1) {
                a = this.f548a.m1431a(3);
            } else {
                a = this.f548a.m1431a(5);
            }
            if (a != null && this.f548a.m1429a(a) == 0) {
                this.f550c.m1713a(a, i2);
            }
        }

        public int m1408a(View view) {
            return this.f548a.m1444g(view) ? view.getWidth() : 0;
        }

        public int m1409a(View view, int i, int i2) {
            if (this.f548a.m1436a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = this.f548a.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        public int m1416b(View view, int i, int i2) {
            return view.getTop();
        }
    }

    static {
        boolean z = true;
        f553b = new int[]{16842931};
        if (VERSION.SDK_INT < 19) {
            z = false;
        }
        f554c = z;
        if (VERSION.SDK_INT >= 21) {
            f552a = new ProGuard();
        } else {
            f552a = new ProGuard();
        }
    }

    public void setScrimColor(int i) {
        this.f558f = i;
        invalidate();
    }

    public void setDrawerListener(ProGuard proGuard) {
        this.f572t = proGuard;
    }

    public void setDrawerLockMode(int i) {
        m1432a(i, 3);
        m1432a(i, 5);
    }

    public void m1432a(int i, int i2) {
        int a = android.support.v4.view.ProGuard.m1269a(i2, ak.m1033e(this));
        if (a == 3) {
            this.f568p = i;
        } else if (a == 5) {
            this.f569q = i;
        }
        if (i != 0) {
            (a == 3 ? this.f561i : this.f562j).m1730e();
        }
        View a2;
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                a2 = m1431a(a);
                if (a2 != null) {
                    m1446i(a2);
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                a2 = m1431a(a);
                if (a2 != null) {
                    m1445h(a2);
                }
            default:
        }
    }

    public int m1429a(View view) {
        int e = m1442e(view);
        if (e == 3) {
            return this.f568p;
        }
        if (e == 5) {
            return this.f569q;
        }
        return 0;
    }

    void m1433a(int i, int i2, View view) {
        int i3 = 1;
        int a = this.f561i.m1711a();
        int a2 = this.f562j.m1711a();
        if (!(a == 1 || a2 == 1)) {
            i3 = (a == 2 || a2 == 2) ? 2 : 0;
        }
        if (view != null && i2 == 0) {
            ProGuard proGuard = (ProGuard) view.getLayoutParams();
            if (proGuard.f545b == 0.0f) {
                m1438b(view);
            } else if (proGuard.f545b == 1.0f) {
                m1440c(view);
            }
        }
        if (i3 != this.f565m) {
            this.f565m = i3;
            if (this.f572t != null) {
                this.f572t.m1390a(i3);
            }
        }
    }

    void m1438b(View view) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        if (proGuard.f547d) {
            proGuard.f547d = false;
            if (this.f572t != null) {
                this.f572t.m1393b(view);
            }
            m1420a(view, false);
            if (hasWindowFocus()) {
                View rootView = getRootView();
                if (rootView != null) {
                    rootView.sendAccessibilityEvent(32);
                }
            }
        }
    }

    void m1440c(View view) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        if (!proGuard.f547d) {
            proGuard.f547d = true;
            if (this.f572t != null) {
                this.f572t.m1391a(view);
            }
            m1420a(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
            view.requestFocus();
        }
    }

    private void m1420a(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m1444g(childAt)) && !(z && childAt == view)) {
                ak.m1030c(childAt, 4);
            } else {
                ak.m1030c(childAt, 1);
            }
        }
    }

    void m1434a(View view, float f) {
        if (this.f572t != null) {
            this.f572t.m1392a(view, f);
        }
    }

    void m1439b(View view, float f) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        if (f != proGuard.f545b) {
            proGuard.f545b = f;
            m1434a(view, f);
        }
    }

    float m1441d(View view) {
        return ((ProGuard) view.getLayoutParams()).f545b;
    }

    int m1442e(View view) {
        return android.support.v4.view.ProGuard.m1269a(((ProGuard) view.getLayoutParams()).f544a, ak.m1033e(this));
    }

    boolean m1436a(View view, int i) {
        return (m1442e(view) & i) == i;
    }

    View m1430a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (((ProGuard) childAt.getLayoutParams()).f547d) {
                return childAt;
            }
        }
        return null;
    }

    View m1431a(int i) {
        int a = android.support.v4.view.ProGuard.m1269a(i, ak.m1033e(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m1442e(childAt) & 7) == a) {
                return childAt;
            }
        }
        return null;
    }

    static String m1421b(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        if ((i & 5) == 5) {
            return "RIGHT";
        }
        return Integer.toHexString(i);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f567o = true;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f567o = true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int r14, int r15) {
        /*
        r13 = this;
        r1 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r4 = 0;
        r12 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = android.view.View.MeasureSpec.getMode(r14);
        r5 = android.view.View.MeasureSpec.getMode(r15);
        r2 = android.view.View.MeasureSpec.getSize(r14);
        r0 = android.view.View.MeasureSpec.getSize(r15);
        if (r3 != r12) goto L_0x001b;
    L_0x0019:
        if (r5 == r12) goto L_0x0056;
    L_0x001b:
        r6 = r13.isInEditMode();
        if (r6 == 0) goto L_0x0058;
    L_0x0021:
        if (r3 != r7) goto L_0x0050;
    L_0x0023:
        if (r5 != r7) goto L_0x0054;
    L_0x0025:
        r1 = r0;
    L_0x0026:
        r13.setMeasuredDimension(r2, r1);
        r0 = r13.f578z;
        if (r0 == 0) goto L_0x0060;
    L_0x002d:
        r0 = android.support.v4.view.ak.m1042m(r13);
        if (r0 == 0) goto L_0x0060;
    L_0x0033:
        r0 = 1;
        r3 = r0;
    L_0x0035:
        r6 = android.support.v4.view.ak.m1033e(r13);
        r7 = r13.getChildCount();
        r5 = r4;
    L_0x003e:
        if (r5 >= r7) goto L_0x0138;
    L_0x0040:
        r8 = r13.getChildAt(r5);
        r0 = r8.getVisibility();
        r9 = 8;
        if (r0 != r9) goto L_0x0062;
    L_0x004c:
        r0 = r5 + 1;
        r5 = r0;
        goto L_0x003e;
    L_0x0050:
        if (r3 != 0) goto L_0x0023;
    L_0x0052:
        r2 = r1;
        goto L_0x0023;
    L_0x0054:
        if (r5 == 0) goto L_0x0026;
    L_0x0056:
        r1 = r0;
        goto L_0x0026;
    L_0x0058:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "DrawerLayout must be measured with MeasureSpec.EXACTLY.";
        r0.<init>(r1);
        throw r0;
    L_0x0060:
        r3 = r4;
        goto L_0x0035;
    L_0x0062:
        r0 = r8.getLayoutParams();
        r0 = (android.support.v4.widget.DrawerLayout.ProGuard) r0;
        if (r3 == 0) goto L_0x007d;
    L_0x006a:
        r9 = r0.f544a;
        r9 = android.support.v4.view.ProGuard.m1269a(r9, r6);
        r10 = android.support.v4.view.ak.m1042m(r8);
        if (r10 == 0) goto L_0x009e;
    L_0x0076:
        r10 = f552a;
        r11 = r13.f578z;
        r10.m1382a(r8, r11, r9);
    L_0x007d:
        r9 = r13.m1443f(r8);
        if (r9 == 0) goto L_0x00a6;
    L_0x0083:
        r9 = r0.leftMargin;
        r9 = r2 - r9;
        r10 = r0.rightMargin;
        r9 = r9 - r10;
        r9 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r12);
        r10 = r0.topMargin;
        r10 = r1 - r10;
        r0 = r0.bottomMargin;
        r0 = r10 - r0;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r12);
        r8.measure(r9, r0);
        goto L_0x004c;
    L_0x009e:
        r10 = f552a;
        r11 = r13.f578z;
        r10.m1383a(r0, r11, r9);
        goto L_0x007d;
    L_0x00a6:
        r9 = r13.m1444g(r8);
        if (r9 == 0) goto L_0x0109;
    L_0x00ac:
        r9 = r13.m1442e(r8);
        r9 = r9 & 7;
        r10 = r4 & r9;
        if (r10 == 0) goto L_0x00eb;
    L_0x00b6:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Child drawer has absolute gravity ";
        r1 = r1.append(r2);
        r2 = m1421b(r9);
        r1 = r1.append(r2);
        r2 = " but this ";
        r1 = r1.append(r2);
        r2 = "DrawerLayout";
        r1 = r1.append(r2);
        r2 = " already has a ";
        r1 = r1.append(r2);
        r2 = "drawer view along that edge";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00eb:
        r9 = r13.f557e;
        r10 = r0.leftMargin;
        r9 = r9 + r10;
        r10 = r0.rightMargin;
        r9 = r9 + r10;
        r10 = r0.width;
        r9 = getChildMeasureSpec(r14, r9, r10);
        r10 = r0.topMargin;
        r11 = r0.bottomMargin;
        r10 = r10 + r11;
        r0 = r0.height;
        r0 = getChildMeasureSpec(r15, r10, r0);
        r8.measure(r9, r0);
        goto L_0x004c;
    L_0x0109:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Child ";
        r1 = r1.append(r2);
        r1 = r1.append(r8);
        r2 = " at index ";
        r1 = r1.append(r2);
        r1 = r1.append(r5);
        r2 = " does not have a valid layout_gravity - must be Gravity.LEFT, ";
        r1 = r1.append(r2);
        r2 = "Gravity.RIGHT or Gravity.NO_GRAVITY";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0138:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f566n = true;
        int i5 = i3 - i;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
                if (m1443f(childAt)) {
                    childAt.layout(proGuard.leftMargin, proGuard.topMargin, proGuard.leftMargin + childAt.getMeasuredWidth(), proGuard.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i7;
                    float f;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m1436a(childAt, 3)) {
                        i7 = ((int) (((float) measuredWidth) * proGuard.f545b)) + (-measuredWidth);
                        f = ((float) (measuredWidth + i7)) / ((float) measuredWidth);
                    } else {
                        i7 = i5 - ((int) (((float) measuredWidth) * proGuard.f545b));
                        f = ((float) (i5 - i7)) / ((float) measuredWidth);
                    }
                    Object obj = f != proGuard.f545b ? 1 : null;
                    int i8;
                    switch (proGuard.f544a & 112) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                            int i9 = i4 - i2;
                            i8 = (i9 - measuredHeight) / 2;
                            if (i8 < proGuard.topMargin) {
                                i8 = proGuard.topMargin;
                            } else if (i8 + measuredHeight > i9 - proGuard.bottomMargin) {
                                i8 = (i9 - proGuard.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                            i8 = i4 - i2;
                            childAt.layout(i7, (i8 - proGuard.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i7, i8 - proGuard.bottomMargin);
                            break;
                        default:
                            childAt.layout(i7, proGuard.topMargin, measuredWidth + i7, measuredHeight + proGuard.topMargin);
                            break;
                    }
                    if (obj != null) {
                        m1439b(childAt, f);
                    }
                    int i10 = proGuard.f545b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i10) {
                        childAt.setVisibility(i10);
                    }
                }
            }
        }
        this.f566n = false;
        this.f567o = false;
    }

    public void requestLayout() {
        if (!this.f566n) {
            super.requestLayout();
        }
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((ProGuard) getChildAt(i).getLayoutParams()).f545b);
        }
        this.f559g = f;
        if ((this.f561i.m1717a(true) | this.f562j.m1717a(true)) != 0) {
            ak.m1024b(this);
        }
    }

    private static boolean m1427l(View view) {
        Drawable background = view.getBackground();
        if (background == null || background.getOpacity() != -1) {
            return false;
        }
        return true;
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f577y = drawable;
        invalidate();
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f577y;
    }

    public void setStatusBarBackground(int i) {
        this.f577y = i != 0 ? android.support.v4.p008a.ProGuard.m87a(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f577y = new ColorDrawable(i);
        invalidate();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f555A && this.f577y != null) {
            int a = f552a.m1381a(this.f578z);
            if (a > 0) {
                this.f577y.setBounds(0, 0, getWidth(), a);
                this.f577y.draw(canvas);
            }
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int height = getHeight();
        boolean f = m1443f(view);
        int i2 = 0;
        int width = getWidth();
        int save = canvas.save();
        if (f) {
            int childCount = getChildCount();
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && m1427l(childAt) && m1444g(childAt)) {
                    if (childAt.getHeight() < height) {
                        i = width;
                    } else if (m1436a(childAt, 3)) {
                        i = childAt.getRight();
                        if (i <= i2) {
                            i = i2;
                        }
                        i2 = i;
                        i = width;
                    } else {
                        i = childAt.getLeft();
                        if (i < width) {
                        }
                    }
                    i3++;
                    width = i;
                }
                i = width;
                i3++;
                width = i;
            }
            canvas.clipRect(i2, 0, width, getHeight());
        }
        i = width;
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (this.f559g > 0.0f && f) {
            this.f560h.setColor((((int) (((float) ((this.f558f & -16777216) >>> 24)) * this.f559g)) << 24) | (this.f558f & 16777215));
            canvas.drawRect((float) i2, 0.0f, (float) i, (float) getHeight(), this.f560h);
        } else if (this.f575w != null && m1436a(view, 3)) {
            i = this.f575w.getIntrinsicWidth();
            i2 = view.getRight();
            r2 = Math.max(0.0f, Math.min(((float) i2) / ((float) this.f561i.m1718b()), 1.0f));
            this.f575w.setBounds(i2, view.getTop(), i + i2, view.getBottom());
            this.f575w.setAlpha((int) (255.0f * r2));
            this.f575w.draw(canvas);
        } else if (this.f576x != null && m1436a(view, 5)) {
            i = this.f576x.getIntrinsicWidth();
            i2 = view.getLeft();
            r2 = Math.max(0.0f, Math.min(((float) (getWidth() - i2)) / ((float) this.f562j.m1718b()), 1.0f));
            this.f576x.setBounds(i2 - i, view.getTop(), i2, view.getBottom());
            this.f576x.setAlpha((int) (255.0f * r2));
            this.f576x.draw(canvas);
        }
        return drawChild;
    }

    boolean m1443f(View view) {
        return ((ProGuard) view.getLayoutParams()).f544a == 0;
    }

    boolean m1444g(View view) {
        return (android.support.v4.view.ProGuard.m1269a(((ProGuard) view.getLayoutParams()).f544a, ak.m1033e(view)) & 7) != 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
        r7 = this;
        r1 = 1;
        r2 = 0;
        r0 = android.support.v4.view.ProGuard.m1365a(r8);
        r3 = r7.f561i;
        r3 = r3.m1715a(r8);
        r4 = r7.f562j;
        r4 = r4.m1715a(r8);
        r3 = r3 | r4;
        switch(r0) {
            case 0: goto L_0x0027;
            case 1: goto L_0x0065;
            case 2: goto L_0x0050;
            case 3: goto L_0x0065;
            default: goto L_0x0016;
        };
    L_0x0016:
        r0 = r2;
    L_0x0017:
        if (r3 != 0) goto L_0x0025;
    L_0x0019:
        if (r0 != 0) goto L_0x0025;
    L_0x001b:
        r0 = r7.m1423d();
        if (r0 != 0) goto L_0x0025;
    L_0x0021:
        r0 = r7.f571s;
        if (r0 == 0) goto L_0x0026;
    L_0x0025:
        r2 = r1;
    L_0x0026:
        return r2;
    L_0x0027:
        r0 = r8.getX();
        r4 = r8.getY();
        r7.f573u = r0;
        r7.f574v = r4;
        r5 = r7.f559g;
        r6 = 0;
        r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1));
        if (r5 <= 0) goto L_0x006d;
    L_0x003a:
        r5 = r7.f561i;
        r0 = (int) r0;
        r4 = (int) r4;
        r0 = r5.m1728d(r0, r4);
        if (r0 == 0) goto L_0x006d;
    L_0x0044:
        r0 = r7.m1443f(r0);
        if (r0 == 0) goto L_0x006d;
    L_0x004a:
        r0 = r1;
    L_0x004b:
        r7.f570r = r2;
        r7.f571s = r2;
        goto L_0x0017;
    L_0x0050:
        r0 = r7.f561i;
        r4 = 3;
        r0 = r0.m1729d(r4);
        if (r0 == 0) goto L_0x0016;
    L_0x0059:
        r0 = r7.f563k;
        r0.m1410a();
        r0 = r7.f564l;
        r0.m1410a();
        r0 = r2;
        goto L_0x0017;
    L_0x0065:
        r7.m1435a(r1);
        r7.f570r = r2;
        r7.f571s = r2;
        goto L_0x0016;
    L_0x006d:
        r0 = r2;
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f561i.m1719b(motionEvent);
        this.f562j.m1719b(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.f573u = x;
                this.f574v = y;
                this.f570r = false;
                this.f571s = false;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                boolean z;
                x = motionEvent.getX();
                y = motionEvent.getY();
                View d = this.f561i.m1728d((int) x, (int) y);
                if (d != null && m1443f(d)) {
                    x -= this.f573u;
                    y -= this.f574v;
                    int d2 = this.f561i.m1727d();
                    if ((x * x) + (y * y) < ((float) (d2 * d2))) {
                        View a = m1430a();
                        if (a != null) {
                            z = m1429a(a) == 2;
                            m1435a(z);
                            this.f570r = false;
                            break;
                        }
                    }
                }
                z = true;
                m1435a(z);
                this.f570r = false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                m1435a(true);
                this.f570r = false;
                this.f571s = false;
                break;
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f570r = z;
        if (z) {
            m1435a(true);
        }
    }

    public void m1437b() {
        m1435a(false);
    }

    void m1435a(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
            if (m1444g(childAt) && (!z || proGuard.f546c)) {
                int width = childAt.getWidth();
                if (m1436a(childAt, 3)) {
                    i |= this.f561i.m1716a(childAt, -width, childAt.getTop());
                } else {
                    i |= this.f562j.m1716a(childAt, getWidth(), childAt.getTop());
                }
                proGuard.f546c = false;
            }
        }
        this.f563k.m1410a();
        this.f564l.m1410a();
        if (i != 0) {
            invalidate();
        }
    }

    public void m1445h(View view) {
        if (m1444g(view)) {
            if (this.f567o) {
                ProGuard proGuard = (ProGuard) view.getLayoutParams();
                proGuard.f545b = 1.0f;
                proGuard.f547d = true;
                m1420a(view, true);
            } else if (m1436a(view, 3)) {
                this.f561i.m1716a(view, 0, view.getTop());
            } else {
                this.f562j.m1716a(view, getWidth() - view.getWidth(), view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void m1446i(View view) {
        if (m1444g(view)) {
            if (this.f567o) {
                ProGuard proGuard = (ProGuard) view.getLayoutParams();
                proGuard.f545b = 0.0f;
                proGuard.f547d = false;
            } else if (m1436a(view, 3)) {
                this.f561i.m1716a(view, -view.getWidth(), view.getTop());
            } else {
                this.f562j.m1716a(view, getWidth(), view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public boolean m1447j(View view) {
        if (m1444g(view)) {
            return ((ProGuard) view.getLayoutParams()).f545b > 0.0f;
        } else {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
    }

    private boolean m1423d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((ProGuard) getChildAt(i).getLayoutParams()).f546c) {
                return true;
            }
        }
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new ProGuard(-1, -1);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        if (layoutParams instanceof ProGuard) {
            return new ProGuard((ProGuard) layoutParams);
        }
        return layoutParams instanceof MarginLayoutParams ? new ProGuard((MarginLayoutParams) layoutParams) : new ProGuard(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof ProGuard) && super.checkLayoutParams(layoutParams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    private boolean m1424e() {
        return m1425f() != null;
    }

    private View m1425f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m1444g(childAt) && m1447j(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m1424e()) {
            return super.onKeyDown(i, keyEvent);
        }
        android.support.v4.view.ProGuard.m1285b(keyEvent);
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View f = m1425f();
        if (f != null && m1429a(f) == 0) {
            m1437b();
        }
        return f != null;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f541a != 0) {
            View a = m1431a(savedState.f541a);
            if (a != null) {
                m1445h(a);
            }
        }
        m1432a(savedState.f542b, 3);
        m1432a(savedState.f543c, 5);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        View a = m1430a();
        if (a != null) {
            savedState.f541a = ((ProGuard) a.getLayoutParams()).f544a;
        }
        savedState.f542b = this.f568p;
        savedState.f543c = this.f569q;
        return savedState;
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m1430a() != null || m1444g(view)) {
            ak.m1030c(view, 4);
        } else {
            ak.m1030c(view, 1);
        }
        if (!f554c) {
            ak.m1018a(view, this.f556d);
        }
    }

    private static boolean m1428m(View view) {
        return (ak.m1028c(view) == 4 || ak.m1028c(view) == 2) ? false : true;
    }
}
