package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ad;
import android.support.v4.view.ae;
import android.support.v4.view.ak;
import android.support.v4.view.be;
import android.support.v4.view.bl;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window.Callback;

/* compiled from: ProGuard */
public class ActionBarOverlayLayout extends ViewGroup implements ad, ProGuard {
    static final int[] f1103a;
    private final bl f1104A;
    private final bl f1105B;
    private final Runnable f1106C;
    private final Runnable f1107D;
    private final ae f1108E;
    private int f1109b;
    private int f1110c;
    private ContentFrameLayout f1111d;
    private ActionBarContainer f1112e;
    private ActionBarContainer f1113f;
    private ProGuard f1114g;
    private Drawable f1115h;
    private boolean f1116i;
    private boolean f1117j;
    private boolean f1118k;
    private boolean f1119l;
    private boolean f1120m;
    private int f1121n;
    private int f1122o;
    private final Rect f1123p;
    private final Rect f1124q;
    private final Rect f1125r;
    private final Rect f1126s;
    private final Rect f1127t;
    private final Rect f1128u;
    private ProGuard f1129v;
    private final int f1130w;
    private android.support.v4.widget.ProGuard f1131x;
    private be f1132y;
    private be f1133z;

    /* renamed from: android.support.v7.internal.widget.ActionBarOverlayLayout.a */
    public interface ProGuard {
        void m1825a(int i);

        void m1826e();

        void m1827e(boolean z);

        void m1828f();

        void m1829g();

        void m1830h();
    }

    /* renamed from: android.support.v7.internal.widget.ActionBarOverlayLayout.b */
    public static class ProGuard extends MarginLayoutParams {
        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public ProGuard(int i, int i2) {
            super(i, i2);
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    protected /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return m2201b();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return m2197a(attributeSet);
    }

    static {
        f1103a = new int[]{android.support.v7.appcompat.ProGuard.attr.actionBarSize, 16842841};
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1110c = 0;
        this.f1123p = new Rect();
        this.f1124q = new Rect();
        this.f1125r = new Rect();
        this.f1126s = new Rect();
        this.f1127t = new Rect();
        this.f1128u = new Rect();
        this.f1130w = 600;
        this.f1104A = new ProGuard(this);
        this.f1105B = new ProGuard(this);
        this.f1106C = new ProGuard(this);
        this.f1107D = new ProGuard(this);
        m2182a(context);
        this.f1108E = new ae(this);
    }

    private void m2182a(Context context) {
        boolean z = true;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f1103a);
        this.f1109b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f1115h = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f1115h == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion >= 19) {
            z = false;
        }
        this.f1116i = z;
        this.f1131x = android.support.v4.widget.ProGuard.m1664a(context);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m2192k();
    }

    public void setActionBarVisibilityCallback(ProGuard proGuard) {
        this.f1129v = proGuard;
        if (getWindowToken() != null) {
            this.f1129v.m1825a(this.f1110c);
            if (this.f1122o != 0) {
                onWindowSystemUiVisibilityChanged(this.f1122o);
                ak.m1041l(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.f1117j = z;
        boolean z2 = z && getContext().getApplicationInfo().targetSdkVersion < 19;
        this.f1116i = z2;
    }

    public boolean m2200a() {
        return this.f1117j;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f1118k = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    protected void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        m2182a(getContext());
        ak.m1041l(this);
    }

    public void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        boolean z2 = true;
        if (VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m2202c();
        int i2 = this.f1122o ^ i;
        this.f1122o = i;
        boolean z3 = (i & 4) == 0;
        if ((i & com.umeng.update.util.ProGuard.f5669b) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.f1129v != null) {
            ProGuard proGuard = this.f1129v;
            if (z) {
                z2 = false;
            }
            proGuard.m1827e(z2);
            if (z3 || !z) {
                this.f1129v.m1826e();
            } else {
                this.f1129v.m1828f();
            }
        }
        if ((i2 & com.umeng.update.util.ProGuard.f5669b) != 0 && this.f1129v != null) {
            ak.m1041l(this);
        }
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f1110c = i;
        if (this.f1129v != null) {
            this.f1129v.m1825a(i);
        }
    }

    private boolean m2186a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        if (z && proGuard.leftMargin != rect.left) {
            proGuard.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && proGuard.topMargin != rect.top) {
            proGuard.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && proGuard.rightMargin != rect.right) {
            proGuard.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || proGuard.bottomMargin == rect.bottom) {
            return z5;
        }
        proGuard.bottomMargin = rect.bottom;
        return true;
    }

    protected boolean fitSystemWindows(Rect rect) {
        m2202c();
        boolean a = (ak.m1040k(this) & com.umeng.update.util.ProGuard.f5669b) != 0 ? m2186a(this.f1113f, rect, true, true, false, true) : m2186a(this.f1113f, rect, true, true, false, true);
        if (this.f1112e != null) {
            a |= m2186a(this.f1112e, rect, true, false, true, true);
        }
        this.f1126s.set(rect);
        af.m2417a(this, this.f1126s, this.f1123p);
        if (!this.f1124q.equals(this.f1123p)) {
            this.f1124q.set(this.f1123p);
            a = true;
        }
        if (a) {
            requestLayout();
        }
        return true;
    }

    protected ProGuard m2201b() {
        return new ProGuard(-1, -1);
    }

    public ProGuard m2197a(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new ProGuard(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof ProGuard;
    }

    protected void onMeasure(int i, int i2) {
        int max;
        int max2;
        int i3;
        Object obj;
        int i4;
        m2202c();
        measureChildWithMargins(this.f1113f, i, 0, i2, 0);
        ProGuard proGuard = (ProGuard) this.f1113f.getLayoutParams();
        int max3 = Math.max(0, (this.f1113f.getMeasuredWidth() + proGuard.leftMargin) + proGuard.rightMargin);
        int max4 = Math.max(0, proGuard.bottomMargin + (this.f1113f.getMeasuredHeight() + proGuard.topMargin));
        int a = af.m2415a(0, ak.m1036g(this.f1113f));
        if (this.f1112e != null) {
            measureChildWithMargins(this.f1112e, i, 0, i2, 0);
            proGuard = (ProGuard) this.f1112e.getLayoutParams();
            max = Math.max(max3, (this.f1112e.getMeasuredWidth() + proGuard.leftMargin) + proGuard.rightMargin);
            max2 = Math.max(max4, proGuard.bottomMargin + (this.f1112e.getMeasuredHeight() + proGuard.topMargin));
            max3 = af.m2415a(a, ak.m1036g(this.f1112e));
            max4 = max;
            i3 = max2;
        } else {
            i3 = max4;
            max4 = max3;
            max3 = a;
        }
        if ((ak.m1040k(this) & com.umeng.update.util.ProGuard.f5669b) != 0) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            i4 = this.f1109b;
            if (this.f1118k && this.f1113f.getTabContainer() != null) {
                i4 += this.f1109b;
            }
        } else {
            i4 = this.f1113f.getVisibility() != 8 ? this.f1113f.getMeasuredHeight() : 0;
        }
        if (!this.f1114g.m2355b() || this.f1112e == null) {
            max = 0;
        } else if (obj != null) {
            max = this.f1109b;
        } else {
            max = this.f1112e.getMeasuredHeight();
        }
        this.f1125r.set(this.f1123p);
        this.f1127t.set(this.f1126s);
        Rect rect;
        Rect rect2;
        if (this.f1117j || obj != null) {
            rect = this.f1127t;
            rect.top = i4 + rect.top;
            rect2 = this.f1127t;
            rect2.bottom = max + rect2.bottom;
        } else {
            rect = this.f1125r;
            rect.top = i4 + rect.top;
            rect2 = this.f1125r;
            rect2.bottom = max + rect2.bottom;
        }
        m2186a(this.f1111d, this.f1125r, true, true, true, true);
        if (!this.f1128u.equals(this.f1127t)) {
            this.f1128u.set(this.f1127t);
            this.f1111d.m2255a(this.f1127t);
        }
        measureChildWithMargins(this.f1111d, i, 0, i2, 0);
        proGuard = (ProGuard) this.f1111d.getLayoutParams();
        max = Math.max(max4, (this.f1111d.getMeasuredWidth() + proGuard.leftMargin) + proGuard.rightMargin);
        i4 = Math.max(i3, proGuard.bottomMargin + (this.f1111d.getMeasuredHeight() + proGuard.topMargin));
        max2 = af.m2415a(max3, ak.m1036g(this.f1111d));
        setMeasuredDimension(ak.m1011a(Math.max(max + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), i, max2), ak.m1011a(Math.max(i4 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i2, max2 << 16));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = proGuard.leftMargin + paddingLeft;
                if (childAt == this.f1112e) {
                    paddingRight = (paddingBottom - measuredHeight) - proGuard.bottomMargin;
                } else {
                    paddingRight = proGuard.topMargin + paddingTop;
                }
                childAt.layout(i6, paddingRight, measuredWidth + i6, measuredHeight + paddingRight);
            }
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1115h != null && !this.f1116i) {
            int bottom = this.f1113f.getVisibility() == 0 ? (int) ((((float) this.f1113f.getBottom()) + ak.m1037h(this.f1113f)) + 0.5f) : 0;
            this.f1115h.setBounds(0, bottom, getWidth(), this.f1115h.getIntrinsicHeight() + bottom);
            this.f1115h.draw(canvas);
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f1113f.getVisibility() != 0) {
            return false;
        }
        return this.f1119l;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f1108E.m881a(view, view2, i);
        this.f1121n = getActionBarHideOffset();
        m2192k();
        if (this.f1129v != null) {
            this.f1129v.m1829g();
        }
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f1121n += i2;
        setActionBarHideOffset(this.f1121n);
    }

    public void onStopNestedScroll(View view) {
        if (this.f1119l && !this.f1120m) {
            if (this.f1121n <= this.f1113f.getHeight()) {
                m2193l();
            } else {
                m2194m();
            }
        }
        if (this.f1129v != null) {
            this.f1129v.m1830h();
        }
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f1119l || !z) {
            return false;
        }
        if (m2184a(f, f2)) {
            m2196o();
        } else {
            m2195n();
        }
        this.f1120m = true;
        return true;
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    public int getNestedScrollAxes() {
        return this.f1108E.m880a();
    }

    void m2202c() {
        if (this.f1111d == null) {
            this.f1111d = (ContentFrameLayout) findViewById(android.support.v7.appcompat.ProGuard.id.action_bar_activity_content);
            this.f1113f = (ActionBarContainer) findViewById(android.support.v7.appcompat.ProGuard.id.action_bar_container);
            this.f1114g = m2181a(findViewById(android.support.v7.appcompat.ProGuard.id.action_bar));
            this.f1112e = (ActionBarContainer) findViewById(android.support.v7.appcompat.ProGuard.id.split_action_bar);
        }
    }

    private ProGuard m2181a(View view) {
        if (view instanceof ProGuard) {
            return (ProGuard) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f1119l) {
            this.f1119l = z;
            if (!z) {
                m2192k();
                setActionBarHideOffset(0);
            }
        }
    }

    public int getActionBarHideOffset() {
        return this.f1113f != null ? -((int) ak.m1037h(this.f1113f)) : 0;
    }

    public void setActionBarHideOffset(int i) {
        m2192k();
        int height = this.f1113f.getHeight();
        int max = Math.max(0, Math.min(i, height));
        ak.m1025b(this.f1113f, (float) (-max));
        if (this.f1112e != null && this.f1112e.getVisibility() != 8) {
            ak.m1025b(this.f1112e, (float) ((int) ((((float) max) / ((float) height)) * ((float) this.f1112e.getHeight()))));
        }
    }

    private void m2192k() {
        removeCallbacks(this.f1106C);
        removeCallbacks(this.f1107D);
        if (this.f1132y != null) {
            this.f1132y.m1195a();
        }
        if (this.f1133z != null) {
            this.f1133z.m1195a();
        }
    }

    private void m2193l() {
        m2192k();
        postDelayed(this.f1106C, 600);
    }

    private void m2194m() {
        m2192k();
        postDelayed(this.f1107D, 600);
    }

    private void m2195n() {
        m2192k();
        this.f1106C.run();
    }

    private void m2196o() {
        m2192k();
        this.f1107D.run();
    }

    private boolean m2184a(float f, float f2) {
        this.f1131x.m1668a(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f1131x.m1674e() > this.f1113f.getHeight()) {
            return true;
        }
        return false;
    }

    public void setWindowCallback(Callback callback) {
        m2202c();
        this.f1114g.m2350a(callback);
    }

    public void setWindowTitle(CharSequence charSequence) {
        m2202c();
        this.f1114g.m2351a(charSequence);
    }

    public CharSequence getTitle() {
        m2202c();
        return this.f1114g.m2359e();
    }

    public void m2198a(int i) {
        m2202c();
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                this.f1114g.m2360f();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                this.f1114g.m2361g();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                setOverlayMode(true);
            default:
        }
    }

    public void setUiOptions(int i) {
    }

    public void setIcon(int i) {
        m2202c();
        this.f1114g.m2346a(i);
    }

    public void setIcon(Drawable drawable) {
        m2202c();
        this.f1114g.m2347a(drawable);
    }

    public void setLogo(int i) {
        m2202c();
        this.f1114g.m2353b(i);
    }

    public boolean m2203d() {
        m2202c();
        return this.f1114g.m2362h();
    }

    public boolean m2204e() {
        m2202c();
        return this.f1114g.m2363i();
    }

    public boolean m2205f() {
        m2202c();
        return this.f1114g.m2364j();
    }

    public boolean m2206g() {
        m2202c();
        return this.f1114g.m2365k();
    }

    public boolean m2207h() {
        m2202c();
        return this.f1114g.m2366l();
    }

    public void m2208i() {
        m2202c();
        this.f1114g.m2367m();
    }

    public void m2199a(Menu menu, android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard) {
        m2202c();
        this.f1114g.m2349a(menu, proGuard);
    }

    public void m2209j() {
        m2202c();
        this.f1114g.m2368n();
    }
}
