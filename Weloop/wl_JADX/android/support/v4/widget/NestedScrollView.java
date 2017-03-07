package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ab;
import android.support.v4.view.ac;
import android.support.v4.view.ad;
import android.support.v4.view.ae;
import android.support.v4.view.ai;
import android.support.v4.view.ak;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.baidu.location.LocationClientOption;
import java.util.List;

/* compiled from: ProGuard */
public class NestedScrollView extends FrameLayout implements ab, ad {
    private static final ProGuard f580v;
    private static final int[] f581w;
    private long f582a;
    private final Rect f583b;
    private ProGuard f584c;
    private ProGuard f585d;
    private ProGuard f586e;
    private int f587f;
    private boolean f588g;
    private boolean f589h;
    private View f590i;
    private boolean f591j;
    private VelocityTracker f592k;
    private boolean f593l;
    private boolean f594m;
    private int f595n;
    private int f596o;
    private int f597p;
    private int f598q;
    private final int[] f599r;
    private final int[] f600s;
    private int f601t;
    private SavedState f602u;
    private final ae f603x;
    private final ac f604y;
    private float f605z;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public int f579a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f579a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f579a);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f579a + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v4.widget.NestedScrollView.a */
    static class ProGuard extends android.support.v4.view.ProGuard {
        ProGuard() {
        }

        public boolean m1449a(View view, int i, Bundle bundle) {
            if (super.m584a(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int min;
            switch (i) {
                case 4096:
                    min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                    if (min == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m1475b(0, min);
                    return true;
                case 8192:
                    min = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (min == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m1475b(0, min);
                    return true;
                default:
                    return false;
            }
        }

        public void m1448a(View view, android.support.v4.view.p016a.ProGuard proGuard) {
            super.m582a(view, proGuard);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            proGuard.m753a(ScrollView.class.getName());
            if (nestedScrollView.isEnabled()) {
                int a = nestedScrollView.getScrollRange();
                if (a > 0) {
                    proGuard.m760d(true);
                    if (nestedScrollView.getScrollY() > 0) {
                        proGuard.m750a(8192);
                    }
                    if (nestedScrollView.getScrollY() < a) {
                        proGuard.m750a(4096);
                    }
                }
            }
        }

        public void m1450d(View view, AccessibilityEvent accessibilityEvent) {
            super.m588d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            android.support.v4.view.p016a.ProGuard a = android.support.v4.view.p016a.ProGuard.m672a(accessibilityEvent);
            a.m854a(nestedScrollView.getScrollRange() > 0);
            a.m857d(nestedScrollView.getScrollX());
            a.m858e(nestedScrollView.getScrollY());
            a.m859f(nestedScrollView.getScrollX());
            a.m860g(nestedScrollView.getScrollRange());
        }
    }

    static {
        f580v = new ProGuard();
        f581w = new int[]{16843130};
    }

    public void setNestedScrollingEnabled(boolean z) {
        this.f604y.m871a(z);
    }

    public boolean isNestedScrollingEnabled() {
        return this.f604y.m872a();
    }

    public boolean startNestedScroll(int i) {
        return this.f604y.m875a(i);
    }

    public void stopNestedScroll() {
        this.f604y.m879c();
    }

    public boolean hasNestedScrollingParent() {
        return this.f604y.m878b();
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f604y.m876a(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f604y.m877a(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f604y.m874a(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f604y.m873a(f, f2);
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f603x.m881a(view, view2, i);
        startNestedScroll(2);
    }

    public void onStopNestedScroll(View view) {
        stopNestedScroll();
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i4 - scrollY2, null);
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        m1469f((int) f2);
        return true;
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    public int getNestedScrollAxes() {
        return this.f603x.m880a();
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return ((float) scrollY) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return ((float) bottom) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (0.5f * ((float) getHeight()));
    }

    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    private boolean m1454a() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return false;
        }
        if (getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom()) {
            return true;
        }
        return false;
    }

    public void setFillViewport(boolean z) {
        if (z != this.f593l) {
            this.f593l = z;
            requestLayout();
        }
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f594m = z;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f593l && MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m1474a(keyEvent);
    }

    public boolean m1474a(KeyEvent keyEvent) {
        int i = 33;
        this.f583b.setEmpty();
        if (m1454a()) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            switch (keyEvent.getKeyCode()) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_navigationIcon /*19*/:
                    if (keyEvent.isAltPressed()) {
                        return m1476b(33);
                    }
                    return m1477c(33);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_navigationContentDescription /*20*/:
                    if (keyEvent.isAltPressed()) {
                        return m1476b(130);
                    }
                    return m1477c(130);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_editTextBackground /*62*/:
                    if (!keyEvent.isShiftPressed()) {
                        i = 130;
                    }
                    m1472a(i);
                    return false;
                default:
                    return false;
            }
        } else if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        } else {
            boolean z;
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            findFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findFocus == null || findFocus == this || !findFocus.requestFocus(130)) {
                z = false;
            } else {
                z = true;
            }
            return z;
        }
    }

    private boolean m1464c(int i, int i2) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        if (i2 < childAt.getTop() - scrollY || i2 >= childAt.getBottom() - scrollY || i < childAt.getLeft() || i >= childAt.getRight()) {
            return false;
        }
        return true;
    }

    private void m1461b() {
        if (this.f592k == null) {
            this.f592k = VelocityTracker.obtain();
        } else {
            this.f592k.clear();
        }
    }

    private void m1463c() {
        if (this.f592k == null) {
            this.f592k = VelocityTracker.obtain();
        }
    }

    private void m1465d() {
        if (this.f592k != null) {
            this.f592k.recycle();
            this.f592k = null;
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m1465d();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        int action = motionEvent.getAction();
        if (action == 2 && this.f591j) {
            return true;
        }
        if (getScrollY() == 0 && !ak.m1027b((View) this, 1)) {
            return false;
        }
        switch (action & 255) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                action = (int) motionEvent.getY();
                if (!m1464c((int) motionEvent.getX(), action)) {
                    this.f591j = false;
                    m1465d();
                    break;
                }
                this.f587f = action;
                this.f598q = android.support.v4.view.ProGuard.m1368b(motionEvent, 0);
                m1461b();
                this.f592k.addMovement(motionEvent);
                if (this.f584c.m1670a()) {
                    z = false;
                }
                this.f591j = z;
                startNestedScroll(2);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                this.f591j = false;
                this.f598q = -1;
                m1465d();
                stopNestedScroll();
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                action = this.f598q;
                if (action != -1) {
                    int a = android.support.v4.view.ProGuard.m1366a(motionEvent, action);
                    if (a != -1) {
                        action = (int) android.support.v4.view.ProGuard.m1371d(motionEvent, a);
                        if (Math.abs(action - this.f587f) > this.f595n && (getNestedScrollAxes() & 2) == 0) {
                            this.f591j = true;
                            this.f587f = action;
                            m1463c();
                            this.f592k.addMovement(motionEvent);
                            this.f601t = 0;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                                break;
                            }
                        }
                    }
                    Log.e("NestedScrollView", "Invalid pointerId=" + action + " in onInterceptTouchEvent");
                    break;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                m1453a(motionEvent);
                break;
        }
        return this.f591j;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        m1463c();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int a = android.support.v4.view.ProGuard.m1365a(motionEvent);
        if (a == 0) {
            this.f601t = 0;
        }
        obtain.offsetLocation(0.0f, (float) this.f601t);
        switch (a) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                if (getChildCount() != 0) {
                    boolean z = !this.f584c.m1670a();
                    this.f591j = z;
                    if (z) {
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (!this.f584c.m1670a()) {
                        this.f584c.m1677h();
                    }
                    this.f587f = (int) motionEvent.getY();
                    this.f598q = android.support.v4.view.ProGuard.m1368b(motionEvent, 0);
                    startNestedScroll(2);
                    break;
                }
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                if (this.f591j) {
                    VelocityTracker velocityTracker = this.f592k;
                    velocityTracker.computeCurrentVelocity(LocationClientOption.MIN_SCAN_SPAN, (float) this.f597p);
                    a = (int) ai.m896b(velocityTracker, this.f598q);
                    if (Math.abs(a) > this.f596o) {
                        m1469f(-a);
                    }
                    this.f598q = -1;
                    m1466e();
                    break;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                int a2 = android.support.v4.view.ProGuard.m1366a(motionEvent, this.f598q);
                if (a2 != -1) {
                    int i;
                    int d = (int) android.support.v4.view.ProGuard.m1371d(motionEvent, a2);
                    a = this.f587f - d;
                    if (dispatchNestedPreScroll(0, a, this.f600s, this.f599r)) {
                        a -= this.f600s[1];
                        obtain.offsetLocation(0.0f, (float) this.f599r[1]);
                        this.f601t += this.f599r[1];
                    }
                    if (this.f591j || Math.abs(a) <= this.f595n) {
                        i = a;
                    } else {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f591j = true;
                        if (a > 0) {
                            i = a - this.f595n;
                        } else {
                            i = a + this.f595n;
                        }
                    }
                    if (this.f591j) {
                        Object obj;
                        this.f587f = d - this.f599r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        a = ak.m1012a(this);
                        if (a == 0 || (a == 1 && scrollRange > 0)) {
                            obj = 1;
                        } else {
                            obj = null;
                        }
                        if (m1473a(0, i, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !hasNestedScrollingParent()) {
                            this.f592k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (!dispatchNestedScroll(0, scrollY2, 0, i - scrollY2, this.f599r)) {
                            if (obj != null) {
                                m1468f();
                                a = scrollY + i;
                                if (a < 0) {
                                    this.f585d.m1598a(((float) i) / ((float) getHeight()), android.support.v4.view.ProGuard.m1369c(motionEvent, a2) / ((float) getWidth()));
                                    if (!this.f586e.m1596a()) {
                                        this.f586e.m1602c();
                                    }
                                } else if (a > scrollRange) {
                                    this.f586e.m1598a(((float) i) / ((float) getHeight()), 1.0f - (android.support.v4.view.ProGuard.m1369c(motionEvent, a2) / ((float) getWidth())));
                                    if (!this.f585d.m1596a()) {
                                        this.f585d.m1602c();
                                    }
                                }
                                if (!(this.f585d == null || (this.f585d.m1596a() && this.f586e.m1596a()))) {
                                    ak.m1024b(this);
                                    break;
                                }
                            }
                        }
                        this.f587f -= this.f599r[1];
                        obtain.offsetLocation(0.0f, (float) this.f599r[1]);
                        this.f601t += this.f599r[1];
                        break;
                    }
                }
                Log.e("NestedScrollView", "Invalid pointerId=" + this.f598q + " in onTouchEvent");
                break;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                if (this.f591j && getChildCount() > 0) {
                    this.f598q = -1;
                    m1466e();
                    break;
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                a = android.support.v4.view.ProGuard.m1367b(motionEvent);
                this.f587f = (int) android.support.v4.view.ProGuard.m1371d(motionEvent, a);
                this.f598q = android.support.v4.view.ProGuard.m1368b(motionEvent, a);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                m1453a(motionEvent);
                this.f587f = (int) android.support.v4.view.ProGuard.m1371d(motionEvent, android.support.v4.view.ProGuard.m1366a(motionEvent, this.f598q));
                break;
        }
        if (this.f592k != null) {
            this.f592k.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    private void m1453a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (android.support.v4.view.ProGuard.m1368b(motionEvent, action) == this.f598q) {
            action = action == 0 ? 1 : 0;
            this.f587f = (int) android.support.v4.view.ProGuard.m1371d(motionEvent, action);
            this.f598q = android.support.v4.view.ProGuard.m1368b(motionEvent, action);
            if (this.f592k != null) {
                this.f592k.clear();
            }
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((android.support.v4.view.ProGuard.m1372d(motionEvent) & 2) == 0) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                if (this.f591j) {
                    return false;
                }
                float e = android.support.v4.view.ProGuard.m1373e(motionEvent, 9);
                if (e == 0.0f) {
                    return false;
                }
                int verticalScrollFactorCompat = (int) (e * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                verticalScrollFactorCompat = scrollY - verticalScrollFactorCompat;
                if (verticalScrollFactorCompat < 0) {
                    scrollRange = 0;
                } else if (verticalScrollFactorCompat <= scrollRange) {
                    scrollRange = verticalScrollFactorCompat;
                }
                if (scrollRange == scrollY) {
                    return false;
                }
                super.scrollTo(getScrollX(), scrollRange);
                return true;
            default:
                return false;
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f605z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f605z = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f605z;
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    boolean m1473a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        boolean z2;
        int a = ak.m1012a(this);
        Object obj = computeHorizontalScrollRange() > computeHorizontalScrollExtent() ? 1 : null;
        Object obj2 = computeVerticalScrollRange() > computeVerticalScrollExtent() ? 1 : null;
        Object obj3 = (a == 0 || (a == 1 && obj != null)) ? 1 : null;
        obj = (a == 0 || (a == 1 && obj2 != null)) ? 1 : null;
        int i9 = i3 + i;
        if (obj3 == null) {
            i7 = 0;
        }
        a = i4 + i2;
        if (obj == null) {
            i8 = 0;
        }
        int i10 = -i7;
        int i11 = i7 + i5;
        int i12 = -i8;
        int i13 = i8 + i6;
        if (i9 > i11) {
            i10 = i11;
            z2 = true;
        } else if (i9 < i10) {
            z2 = true;
        } else {
            z2 = false;
            i10 = i9;
        }
        boolean z3 = false;
        if (a > i13) {
            z3 = true;
        } else if (a < i12) {
            z3 = true;
            i13 = i12;
        } else {
            i13 = a;
        }
        onOverScrolled(i10, i13, z2, z3);
        if (z2 || z3) {
            return true;
        }
        return false;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private View m1452a(boolean z, int i, int i2) {
        List focusables = getFocusables(2);
        View view = null;
        Object obj = null;
        int size = focusables.size();
        int i3 = 0;
        while (i3 < size) {
            View view2;
            Object obj2;
            View view3 = (View) focusables.get(i3);
            int top = view3.getTop();
            int bottom = view3.getBottom();
            if (i < bottom && top < i2) {
                Object obj3 = (i >= top || bottom >= i2) ? null : 1;
                if (view == null) {
                    Object obj4 = obj3;
                    view2 = view3;
                    obj2 = obj4;
                } else {
                    Object obj5 = ((!z || top >= view.getTop()) && (z || bottom <= view.getBottom())) ? null : 1;
                    if (obj != null) {
                        if (!(obj3 == null || obj5 == null)) {
                            view2 = view3;
                            obj2 = obj;
                        }
                    } else if (obj3 != null) {
                        view2 = view3;
                        int i4 = 1;
                    } else if (obj5 != null) {
                        view2 = view3;
                        obj2 = obj;
                    }
                }
                i3++;
                view = view2;
                obj = obj2;
            }
            obj2 = obj;
            view2 = view;
            i3++;
            view = view2;
            obj = obj2;
        }
        return view;
    }

    public boolean m1472a(int i) {
        int i2 = i == 130 ? 1 : 0;
        int height = getHeight();
        if (i2 != 0) {
            this.f583b.top = getScrollY() + height;
            i2 = getChildCount();
            if (i2 > 0) {
                View childAt = getChildAt(i2 - 1);
                if (this.f583b.top + height > childAt.getBottom()) {
                    this.f583b.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.f583b.top = getScrollY() - height;
            if (this.f583b.top < 0) {
                this.f583b.top = 0;
            }
        }
        this.f583b.bottom = this.f583b.top + height;
        return m1455a(i, this.f583b.top, this.f583b.bottom);
    }

    public boolean m1476b(int i) {
        int i2 = i == 130 ? 1 : 0;
        int height = getHeight();
        this.f583b.top = 0;
        this.f583b.bottom = height;
        if (i2 != 0) {
            i2 = getChildCount();
            if (i2 > 0) {
                this.f583b.bottom = getChildAt(i2 - 1).getBottom() + getPaddingBottom();
                this.f583b.top = this.f583b.bottom - height;
            }
        }
        return m1455a(i, this.f583b.top, this.f583b.bottom);
    }

    private boolean m1455a(int i, int i2, int i3) {
        boolean z = false;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        boolean z2 = i == 33;
        View a = m1452a(z2, i2, i3);
        if (a == null) {
            a = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m1467e(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (a != findFocus()) {
            a.requestFocus(i);
        }
        return z;
    }

    public boolean m1477c(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m1458a(findNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom();
                int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                if (bottom - scrollY < maxScrollAmount) {
                    maxScrollAmount = bottom - scrollY;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m1467e(maxScrollAmount);
        } else {
            findNextFocus.getDrawingRect(this.f583b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f583b);
            m1467e(m1470a(this.f583b));
            findNextFocus.requestFocus(i);
        }
        if (findFocus != null && findFocus.isFocused() && m1457a(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private boolean m1457a(View view) {
        return !m1458a(view, 0, getHeight());
    }

    private boolean m1458a(View view, int i, int i2) {
        view.getDrawingRect(this.f583b);
        offsetDescendantRectToMyCoords(view, this.f583b);
        return this.f583b.bottom + i >= getScrollY() && this.f583b.top - i <= getScrollY() + i2;
    }

    private void m1467e(int i) {
        if (i == 0) {
            return;
        }
        if (this.f594m) {
            m1471a(0, i);
        } else {
            scrollBy(0, i);
        }
    }

    public final void m1471a(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f582a > 250) {
                int max = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                this.f584c.m1666a(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + i2, max)) - scrollY);
                ak.m1024b(this);
            } else {
                if (!this.f584c.m1670a()) {
                    this.f584c.m1677h();
                }
                scrollBy(i, i2);
            }
            this.f582a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    public final void m1475b(int i, int i2) {
        m1471a(i - getScrollX(), i2 - getScrollY());
    }

    protected int computeVerticalScrollRange() {
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (getChildCount() == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        height = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > height) {
            return bottom + (scrollY - height);
        }
        return bottom;
    }

    protected int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), MeasureSpec.makeMeasureSpec(0, 0));
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width), MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    public void computeScroll() {
        if (this.f584c.m1676g()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int b = this.f584c.m1671b();
            int c = this.f584c.m1672c();
            if (scrollX != b || scrollY != c) {
                int scrollRange = getScrollRange();
                int a = ak.m1012a(this);
                int i = (a == 0 || (a == 1 && scrollRange > 0)) ? 1 : 0;
                m1473a(b - scrollX, c - scrollY, scrollX, scrollY, 0, scrollRange, 0, 0, false);
                if (i != 0) {
                    m1468f();
                    if (c <= 0 && scrollY > 0) {
                        this.f585d.m1599a((int) this.f584c.m1675f());
                    } else if (c >= scrollRange && scrollY < scrollRange) {
                        this.f586e.m1599a((int) this.f584c.m1675f());
                    }
                }
            }
        }
    }

    private void m1462b(View view) {
        view.getDrawingRect(this.f583b);
        offsetDescendantRectToMyCoords(view, this.f583b);
        int a = m1470a(this.f583b);
        if (a != 0) {
            scrollBy(0, a);
        }
    }

    private boolean m1456a(Rect rect, boolean z) {
        int a = m1470a(rect);
        boolean z2 = a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a);
            } else {
                m1471a(0, a);
            }
        }
        return z2;
    }

    protected int m1470a(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i && rect.top > scrollY) {
            if (rect.height() > height) {
                scrollY = (rect.top - scrollY) + 0;
            } else {
                scrollY = (rect.bottom - i) + 0;
            }
            scrollY = Math.min(scrollY, getChildAt(0).getBottom() - i);
        } else if (rect.top >= scrollY || rect.bottom >= i) {
            scrollY = 0;
        } else {
            if (rect.height() > height) {
                scrollY = 0 - (i - rect.bottom);
            } else {
                scrollY = 0 - (scrollY - rect.top);
            }
            scrollY = Math.max(scrollY, -getScrollY());
        }
        return scrollY;
    }

    public void requestChildFocus(View view, View view2) {
        if (this.f588g) {
            this.f590i = view2;
        } else {
            m1462b(view2);
        }
        super.requestChildFocus(view, view2);
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus == null || m1457a(findNextFocus)) {
            return false;
        }
        return findNextFocus.requestFocus(i, rect);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m1456a(rect, z);
    }

    public void requestLayout() {
        this.f588g = true;
        super.requestLayout();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f588g = false;
        if (this.f590i != null && m1459a(this.f590i, (View) this)) {
            m1462b(this.f590i);
        }
        this.f590i = null;
        if (!this.f589h) {
            if (this.f602u != null) {
                scrollTo(getScrollX(), this.f602u.f579a);
                this.f602u = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f589h = true;
    }

    public void onAttachedToWindow() {
        this.f589h = false;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && m1458a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f583b);
            offsetDescendantRectToMyCoords(findFocus, this.f583b);
            m1467e(m1470a(this.f583b));
        }
    }

    private static boolean m1459a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        boolean z = (parent instanceof ViewGroup) && m1459a((View) parent, view2);
        return z;
    }

    public void m1478d(int i) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = getChildAt(0).getHeight();
            this.f584c.m1669a(getScrollX(), getScrollY(), 0, i, 0, 0, 0, Math.max(0, height2 - height), 0, height / 2);
            ak.m1024b(this);
        }
    }

    private void m1469f(int i) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || i > 0) && (scrollY < getScrollRange() || i < 0);
        if (!dispatchNestedPreFling(0.0f, (float) i)) {
            dispatchNestedFling(0.0f, (float) i, z);
            if (z) {
                m1478d(i);
            }
        }
    }

    private void m1466e() {
        this.f591j = false;
        m1465d();
        if (this.f585d != null) {
            this.f585d.m1602c();
            this.f586e.m1602c();
        }
    }

    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int b = m1460b(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int b2 = m1460b(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (b != getScrollX() || b2 != getScrollY()) {
                super.scrollTo(b, b2);
            }
        }
    }

    private void m1468f() {
        if (ak.m1012a(this) == 2) {
            this.f585d = null;
            this.f586e = null;
        } else if (this.f585d == null) {
            Context context = getContext();
            this.f585d = new ProGuard(context);
            this.f586e = new ProGuard(context);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f585d != null) {
            int save;
            int width;
            int scrollY = getScrollY();
            if (!this.f585d.m1596a()) {
                save = canvas.save();
                width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate((float) getPaddingLeft(), (float) Math.min(0, scrollY));
                this.f585d.m1595a(width, getHeight());
                if (this.f585d.m1600a(canvas)) {
                    ak.m1024b(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.f586e.m1596a()) {
                save = canvas.save();
                width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((float) ((-width) + getPaddingLeft()), (float) (Math.max(getScrollRange(), scrollY) + height));
                canvas.rotate(180.0f, (float) width, 0.0f);
                this.f586e.m1595a(width, height);
                if (this.f586e.m1600a(canvas)) {
                    ak.m1024b(this);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    private static int m1460b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        if (i2 + i > i3) {
            return i3 - i2;
        }
        return i;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f602u = savedState;
        requestLayout();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f579a = getScrollY();
        return savedState;
    }
}
