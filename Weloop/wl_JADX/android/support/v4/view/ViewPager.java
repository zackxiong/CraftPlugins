package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.baidu.location.LocationClientOption;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: ProGuard */
public class ViewPager extends ViewGroup {
    private static final int[] f429a;
    private static final ProGuard ag;
    private static final Comparator<ProGuard> f430c;
    private static final Interpolator f431d;
    private boolean f432A;
    private boolean f433B;
    private int f434C;
    private int f435D;
    private int f436E;
    private float f437F;
    private float f438G;
    private float f439H;
    private float f440I;
    private int f441J;
    private VelocityTracker f442K;
    private int f443L;
    private int f444M;
    private int f445N;
    private int f446O;
    private boolean f447P;
    private android.support.v4.widget.ProGuard f448Q;
    private android.support.v4.widget.ProGuard f449R;
    private boolean f450S;
    private boolean f451T;
    private boolean f452U;
    private int f453V;
    private ProGuard f454W;
    private ProGuard aa;
    private ProGuard ab;
    private ProGuard ac;
    private Method ad;
    private int ae;
    private ArrayList<View> af;
    private final Runnable ah;
    private int ai;
    private int f455b;
    private final ArrayList<ProGuard> f456e;
    private final ProGuard f457f;
    private final Rect f458g;
    private ag f459h;
    private int f460i;
    private int f461j;
    private Parcelable f462k;
    private ClassLoader f463l;
    private Scroller f464m;
    private ProGuard f465n;
    private int f466o;
    private Drawable f467p;
    private int f468q;
    private int f469r;
    private float f470s;
    private float f471t;
    private int f472u;
    private int f473v;
    private boolean f474w;
    private boolean f475x;
    private boolean f476y;
    private int f477z;

    /* compiled from: ProGuard */
    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        int f410a;
        Parcelable f411b;
        ClassLoader f412c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f410a);
            parcel.writeParcelable(this.f411b, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f410a + "}";
        }

        static {
            CREATOR = android.support.v4.p013d.ProGuard.m439a(new bb());
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = getClass().getClassLoader();
            }
            this.f410a = parcel.readInt();
            this.f411b = parcel.readParcelable(classLoader);
            this.f412c = classLoader;
        }
    }

    /* renamed from: android.support.v4.view.ViewPager.a */
    interface ProGuard {
    }

    /* renamed from: android.support.v4.view.ViewPager.b */
    static class ProGuard {
        Object f413a;
        int f414b;
        boolean f415c;
        float f416d;
        float f417e;

        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.view.ViewPager.c */
    public static class ProGuard extends LayoutParams {
        public boolean f418a;
        public int f419b;
        float f420c;
        boolean f421d;
        int f422e;
        int f423f;

        public ProGuard() {
            super(-1, -1);
            this.f420c = 0.0f;
        }

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f420c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f429a);
            this.f419b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: android.support.v4.view.ViewPager.d */
    class ProGuard extends ProGuard {
        final /* synthetic */ ViewPager f427b;

        ProGuard(ViewPager viewPager) {
            this.f427b = viewPager;
        }

        public void m592d(View view, AccessibilityEvent accessibilityEvent) {
            super.m588d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            android.support.v4.view.p016a.ProGuard a = android.support.v4.view.p016a.ProGuard.m852a();
            a.m854a(m589b());
            if (accessibilityEvent.getEventType() == 4096 && this.f427b.f459h != null) {
                a.m853a(this.f427b.f459h.m66b());
                a.m855b(this.f427b.f460i);
                a.m856c(this.f427b.f460i);
            }
        }

        public void m590a(View view, android.support.v4.view.p016a.ProGuard proGuard) {
            super.m582a(view, proGuard);
            proGuard.m753a(ViewPager.class.getName());
            proGuard.m760d(m589b());
            if (this.f427b.canScrollHorizontally(1)) {
                proGuard.m750a(4096);
            }
            if (this.f427b.canScrollHorizontally(-1)) {
                proGuard.m750a(8192);
            }
        }

        public boolean m591a(View view, int i, Bundle bundle) {
            if (super.m584a(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case 4096:
                    if (!this.f427b.canScrollHorizontally(1)) {
                        return false;
                    }
                    this.f427b.setCurrentItem(this.f427b.f460i + 1);
                    return true;
                case 8192:
                    if (!this.f427b.canScrollHorizontally(-1)) {
                        return false;
                    }
                    this.f427b.setCurrentItem(this.f427b.f460i - 1);
                    return true;
                default:
                    return false;
            }
        }

        private boolean m589b() {
            return this.f427b.f459h != null && this.f427b.f459h.m66b() > 1;
        }
    }

    /* renamed from: android.support.v4.view.ViewPager.e */
    interface ProGuard {
        void m593a(ag agVar, ag agVar2);
    }

    /* renamed from: android.support.v4.view.ViewPager.f */
    public interface ProGuard {
        void m594a(int i);

        void m595a(int i, float f, int i2);

        void m596b(int i);
    }

    /* renamed from: android.support.v4.view.ViewPager.g */
    public interface ProGuard {
        void m597a(View view, float f);
    }

    /* renamed from: android.support.v4.view.ViewPager.h */
    private class ProGuard extends DataSetObserver {
        final /* synthetic */ ViewPager f428a;

        private ProGuard(ViewPager viewPager) {
            this.f428a = viewPager;
        }

        public void onChanged() {
            this.f428a.m633b();
        }

        public void onInvalidated() {
            this.f428a.m633b();
        }
    }

    /* renamed from: android.support.v4.view.ViewPager.i */
    static class ProGuard implements Comparator<View> {
        ProGuard() {
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return m598a((View) obj, (View) obj2);
        }

        public int m598a(View view, View view2) {
            ProGuard proGuard = (ProGuard) view.getLayoutParams();
            ProGuard proGuard2 = (ProGuard) view2.getLayoutParams();
            if (proGuard.f418a != proGuard2.f418a) {
                return proGuard.f418a ? 1 : -1;
            } else {
                return proGuard.f422e - proGuard2.f422e;
            }
        }
    }

    static {
        f429a = new int[]{16842931};
        f430c = new ay();
        f431d = new az();
        ag = new ProGuard();
    }

    public ViewPager(Context context) {
        super(context);
        this.f456e = new ArrayList();
        this.f457f = new ProGuard();
        this.f458g = new Rect();
        this.f461j = -1;
        this.f462k = null;
        this.f463l = null;
        this.f470s = -3.4028235E38f;
        this.f471t = Float.MAX_VALUE;
        this.f477z = 1;
        this.f441J = -1;
        this.f450S = true;
        this.f451T = false;
        this.ah = new ba(this);
        this.ai = 0;
        m622a();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f456e = new ArrayList();
        this.f457f = new ProGuard();
        this.f458g = new Rect();
        this.f461j = -1;
        this.f462k = null;
        this.f463l = null;
        this.f470s = -3.4028235E38f;
        this.f471t = Float.MAX_VALUE;
        this.f477z = 1;
        this.f441J = -1;
        this.f450S = true;
        this.f451T = false;
        this.ah = new ba(this);
        this.ai = 0;
        m622a();
    }

    void m622a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f464m = new Scroller(context, f431d);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f436E = av.m1090a(viewConfiguration);
        this.f443L = (int) (400.0f * f);
        this.f444M = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f448Q = new android.support.v4.widget.ProGuard(context);
        this.f449R = new android.support.v4.widget.ProGuard(context);
        this.f445N = (int) (25.0f * f);
        this.f446O = (int) (2.0f * f);
        this.f434C = (int) (16.0f * f);
        ak.m1018a((View) this, new ProGuard(this));
        if (ak.m1028c(this) == 0) {
            ak.m1030c((View) this, 1);
        }
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.ah);
        super.onDetachedFromWindow();
    }

    private void setScrollState(int i) {
        if (this.ai != i) {
            this.ai = i;
            if (this.ac != null) {
                m610b(i != 0);
            }
            if (this.f454W != null) {
                this.f454W.m596b(i);
            }
        }
    }

    public void setAdapter(ag agVar) {
        if (this.f459h != null) {
            this.f459h.m67b(this.f465n);
            this.f459h.m63a((ViewGroup) this);
            for (int i = 0; i < this.f456e.size(); i++) {
                ProGuard proGuard = (ProGuard) this.f456e.get(i);
                this.f459h.m64a((ViewGroup) this, proGuard.f414b, proGuard.f413a);
            }
            this.f459h.m70b((ViewGroup) this);
            this.f456e.clear();
            m615g();
            this.f460i = 0;
            scrollTo(0, 0);
        }
        ag agVar2 = this.f459h;
        this.f459h = agVar;
        this.f455b = 0;
        if (this.f459h != null) {
            if (this.f465n == null) {
                this.f465n = new ProGuard();
            }
            this.f459h.m59a(this.f465n);
            this.f476y = false;
            boolean z = this.f450S;
            this.f450S = true;
            this.f455b = this.f459h.m66b();
            if (this.f461j >= 0) {
                this.f459h.m60a(this.f462k, this.f463l);
                m627a(this.f461j, false, true);
                this.f461j = -1;
                this.f462k = null;
                this.f463l = null;
            } else if (z) {
                requestLayout();
            } else {
                m634c();
            }
        }
        if (this.ab != null && agVar2 != agVar) {
            this.ab.m593a(agVar2, agVar);
        }
    }

    private void m615g() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((ProGuard) getChildAt(i).getLayoutParams()).f418a) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public ag getAdapter() {
        return this.f459h;
    }

    void setOnAdapterChangeListener(ProGuard proGuard) {
        this.ab = proGuard;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) {
        boolean z;
        this.f476y = false;
        if (this.f450S) {
            z = false;
        } else {
            z = true;
        }
        m627a(i, z, false);
    }

    public void m626a(int i, boolean z) {
        this.f476y = false;
        m627a(i, z, false);
    }

    public int getCurrentItem() {
        return this.f460i;
    }

    void m627a(int i, boolean z, boolean z2) {
        m628a(i, z, z2, 0);
    }

    void m628a(int i, boolean z, boolean z2, int i2) {
        boolean z3 = false;
        if (this.f459h == null || this.f459h.m66b() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f460i != i || this.f456e.size() == 0) {
            if (i < 0) {
                i = 0;
            } else if (i >= this.f459h.m66b()) {
                i = this.f459h.m66b() - 1;
            }
            int i3 = this.f477z;
            if (i > this.f460i + i3 || i < this.f460i - i3) {
                for (int i4 = 0; i4 < this.f456e.size(); i4++) {
                    ((ProGuard) this.f456e.get(i4)).f415c = true;
                }
            }
            if (this.f460i != i) {
                z3 = true;
            }
            if (this.f450S) {
                this.f460i = i;
                if (z3 && this.f454W != null) {
                    this.f454W.m594a(i);
                }
                if (z3 && this.aa != null) {
                    this.aa.m594a(i);
                }
                requestLayout();
                return;
            }
            m623a(i);
            m603a(i, z, i2, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    private void m603a(int i, boolean z, int i2, boolean z2) {
        int max;
        ProGuard b = m631b(i);
        if (b != null) {
            max = (int) (Math.max(this.f470s, Math.min(b.f417e, this.f471t)) * ((float) getClientWidth()));
        } else {
            max = 0;
        }
        if (z) {
            m625a(max, 0, i2);
            if (z2 && this.f454W != null) {
                this.f454W.m594a(i);
            }
            if (z2 && this.aa != null) {
                this.aa.m594a(i);
                return;
            }
            return;
        }
        if (z2 && this.f454W != null) {
            this.f454W.m594a(i);
        }
        if (z2 && this.aa != null) {
            this.aa.m594a(i);
        }
        m607a(false);
        scrollTo(max, 0);
        m613d(max);
    }

    public void setOnPageChangeListener(ProGuard proGuard) {
        this.f454W = proGuard;
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (VERSION.SDK_INT >= 7) {
            if (this.ad == null) {
                try {
                    this.ad = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (Throwable e) {
                    Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                this.ad.invoke(this, new Object[]{Boolean.valueOf(z)});
            } catch (Throwable e2) {
                Log.e("ViewPager", "Error changing children drawing order", e2);
            }
        }
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.ae == 2) {
            i2 = (i - 1) - i2;
        }
        return ((ProGuard) ((View) this.af.get(i2)).getLayoutParams()).f423f;
    }

    public int getOffscreenPageLimit() {
        return this.f477z;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to " + 1);
            i = 1;
        }
        if (i != this.f477z) {
            this.f477z = i;
            m634c();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.f466o;
        this.f466o = i;
        int width = getWidth();
        m602a(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.f466o;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f467p = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f467p;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f467p;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float m619a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    void m625a(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            m607a(false);
            m634c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float a = (((float) i6) * m619a(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / ((float) clientWidth)))) + ((float) i6);
        int abs = Math.abs(i3);
        if (abs > 0) {
            clientWidth = Math.round(1000.0f * Math.abs(a / ((float) abs))) * 4;
        } else {
            clientWidth = (int) (((((float) Math.abs(i4)) / ((((float) clientWidth) * this.f459h.m72c(this.f460i)) + ((float) this.f466o))) + 1.0f) * 100.0f);
        }
        this.f464m.startScroll(scrollX, scrollY, i4, i5, Math.min(clientWidth, 600));
        ak.m1024b(this);
    }

    ProGuard m620a(int i, int i2) {
        ProGuard proGuard = new ProGuard();
        proGuard.f414b = i;
        proGuard.f413a = this.f459h.m58a((ViewGroup) this, i);
        proGuard.f416d = this.f459h.m72c(i);
        if (i2 < 0 || i2 >= this.f456e.size()) {
            this.f456e.add(proGuard);
        } else {
            this.f456e.add(i2, proGuard);
        }
        return proGuard;
    }

    void m633b() {
        int b = this.f459h.m66b();
        this.f455b = b;
        boolean z = this.f456e.size() < (this.f477z * 2) + 1 && this.f456e.size() < b;
        boolean z2 = false;
        int i = this.f460i;
        boolean z3 = z;
        int i2 = 0;
        while (i2 < this.f456e.size()) {
            int i3;
            boolean z4;
            int i4;
            boolean z5;
            ProGuard proGuard = (ProGuard) this.f456e.get(i2);
            int a = this.f459h.m55a(proGuard.f413a);
            if (a == -1) {
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = z3;
            } else if (a == -2) {
                this.f456e.remove(i2);
                i2--;
                if (!z2) {
                    this.f459h.m63a((ViewGroup) this);
                    z2 = true;
                }
                this.f459h.m64a((ViewGroup) this, proGuard.f414b, proGuard.f413a);
                if (this.f460i == proGuard.f414b) {
                    i3 = i2;
                    z4 = z2;
                    i4 = Math.max(0, Math.min(this.f460i, b - 1));
                    z5 = true;
                } else {
                    i3 = i2;
                    z4 = z2;
                    i4 = i;
                    z5 = true;
                }
            } else if (proGuard.f414b != a) {
                if (proGuard.f414b == this.f460i) {
                    i = a;
                }
                proGuard.f414b = a;
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = true;
            } else {
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = z3;
            }
            z3 = z5;
            i = i4;
            z2 = z4;
            i2 = i3 + 1;
        }
        if (z2) {
            this.f459h.m70b((ViewGroup) this);
        }
        Collections.sort(this.f456e, f430c);
        if (z3) {
            i4 = getChildCount();
            for (i2 = 0; i2 < i4; i2++) {
                ProGuard proGuard2 = (ProGuard) getChildAt(i2).getLayoutParams();
                if (!proGuard2.f418a) {
                    proGuard2.f420c = 0.0f;
                }
            }
            m627a(i, false, true);
            requestLayout();
        }
    }

    void m634c() {
        m623a(this.f460i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void m623a(int r19) {
        /*
        r18 = this;
        r3 = 0;
        r2 = 2;
        r0 = r18;
        r4 = r0.f460i;
        r0 = r19;
        if (r4 == r0) goto L_0x033f;
    L_0x000a:
        r0 = r18;
        r2 = r0.f460i;
        r0 = r19;
        if (r2 >= r0) goto L_0x0030;
    L_0x0012:
        r2 = 66;
    L_0x0014:
        r0 = r18;
        r3 = r0.f460i;
        r0 = r18;
        r3 = r0.m631b(r3);
        r0 = r19;
        r1 = r18;
        r1.f460i = r0;
        r4 = r3;
        r3 = r2;
    L_0x0026:
        r0 = r18;
        r2 = r0.f459h;
        if (r2 != 0) goto L_0x0033;
    L_0x002c:
        r18.m616h();
    L_0x002f:
        return;
    L_0x0030:
        r2 = 17;
        goto L_0x0014;
    L_0x0033:
        r0 = r18;
        r2 = r0.f476y;
        if (r2 == 0) goto L_0x003d;
    L_0x0039:
        r18.m616h();
        goto L_0x002f;
    L_0x003d:
        r2 = r18.getWindowToken();
        if (r2 == 0) goto L_0x002f;
    L_0x0043:
        r0 = r18;
        r2 = r0.f459h;
        r0 = r18;
        r2.m63a(r0);
        r0 = r18;
        r2 = r0.f477z;
        r5 = 0;
        r0 = r18;
        r6 = r0.f460i;
        r6 = r6 - r2;
        r11 = java.lang.Math.max(r5, r6);
        r0 = r18;
        r5 = r0.f459h;
        r12 = r5.m66b();
        r5 = r12 + -1;
        r0 = r18;
        r6 = r0.f460i;
        r2 = r2 + r6;
        r13 = java.lang.Math.min(r5, r2);
        r0 = r18;
        r2 = r0.f455b;
        if (r12 == r2) goto L_0x00da;
    L_0x0073:
        r2 = r18.getResources();	 Catch:{ NotFoundException -> 0x00d0 }
        r3 = r18.getId();	 Catch:{ NotFoundException -> 0x00d0 }
        r2 = r2.getResourceName(r3);	 Catch:{ NotFoundException -> 0x00d0 }
    L_0x007f:
        r3 = new java.lang.IllegalStateException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ";
        r4 = r4.append(r5);
        r0 = r18;
        r5 = r0.f455b;
        r4 = r4.append(r5);
        r5 = ", found: ";
        r4 = r4.append(r5);
        r4 = r4.append(r12);
        r5 = " Pager id: ";
        r4 = r4.append(r5);
        r2 = r4.append(r2);
        r4 = " Pager class: ";
        r2 = r2.append(r4);
        r4 = r18.getClass();
        r2 = r2.append(r4);
        r4 = " Problematic adapter: ";
        r2 = r2.append(r4);
        r0 = r18;
        r4 = r0.f459h;
        r4 = r4.getClass();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r3.<init>(r2);
        throw r3;
    L_0x00d0:
        r2 = move-exception;
        r2 = r18.getId();
        r2 = java.lang.Integer.toHexString(r2);
        goto L_0x007f;
    L_0x00da:
        r6 = 0;
        r2 = 0;
        r5 = r2;
    L_0x00dd:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.size();
        if (r5 >= r2) goto L_0x033c;
    L_0x00e7:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r5);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
        r7 = r2.f414b;
        r0 = r18;
        r8 = r0.f460i;
        if (r7 < r8) goto L_0x01cf;
    L_0x00f9:
        r7 = r2.f414b;
        r0 = r18;
        r8 = r0.f460i;
        if (r7 != r8) goto L_0x033c;
    L_0x0101:
        if (r2 != 0) goto L_0x0339;
    L_0x0103:
        if (r12 <= 0) goto L_0x0339;
    L_0x0105:
        r0 = r18;
        r2 = r0.f460i;
        r0 = r18;
        r2 = r0.m620a(r2, r5);
        r10 = r2;
    L_0x0110:
        if (r10 == 0) goto L_0x0180;
    L_0x0112:
        r9 = 0;
        r8 = r5 + -1;
        if (r8 < 0) goto L_0x01d4;
    L_0x0117:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r8);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
    L_0x0121:
        r14 = r18.getClientWidth();
        if (r14 > 0) goto L_0x01d7;
    L_0x0127:
        r6 = 0;
    L_0x0128:
        r0 = r18;
        r7 = r0.f460i;
        r7 = r7 + -1;
        r16 = r7;
        r7 = r9;
        r9 = r16;
        r17 = r8;
        r8 = r5;
        r5 = r17;
    L_0x0138:
        if (r9 < 0) goto L_0x0142;
    L_0x013a:
        r15 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1));
        if (r15 < 0) goto L_0x0216;
    L_0x013e:
        if (r9 >= r11) goto L_0x0216;
    L_0x0140:
        if (r2 != 0) goto L_0x01e6;
    L_0x0142:
        r6 = r10.f416d;
        r9 = r8 + 1;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x017b;
    L_0x014c:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.size();
        if (r9 >= r2) goto L_0x024c;
    L_0x0156:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r9);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
        r7 = r2;
    L_0x0161:
        if (r14 > 0) goto L_0x024f;
    L_0x0163:
        r2 = 0;
        r5 = r2;
    L_0x0165:
        r0 = r18;
        r2 = r0.f460i;
        r2 = r2 + 1;
        r16 = r2;
        r2 = r7;
        r7 = r9;
        r9 = r16;
    L_0x0171:
        if (r9 >= r12) goto L_0x017b;
    L_0x0173:
        r11 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1));
        if (r11 < 0) goto L_0x029a;
    L_0x0177:
        if (r9 <= r13) goto L_0x029a;
    L_0x0179:
        if (r2 != 0) goto L_0x025c;
    L_0x017b:
        r0 = r18;
        r0.m604a(r10, r8, r4);
    L_0x0180:
        r0 = r18;
        r4 = r0.f459h;
        r0 = r18;
        r5 = r0.f460i;
        if (r10 == 0) goto L_0x02e8;
    L_0x018a:
        r2 = r10.f413a;
    L_0x018c:
        r0 = r18;
        r4.m71b(r0, r5, r2);
        r0 = r18;
        r2 = r0.f459h;
        r0 = r18;
        r2.m70b(r0);
        r5 = r18.getChildCount();
        r2 = 0;
        r4 = r2;
    L_0x01a0:
        if (r4 >= r5) goto L_0x02eb;
    L_0x01a2:
        r0 = r18;
        r6 = r0.getChildAt(r4);
        r2 = r6.getLayoutParams();
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
        r2.f423f = r4;
        r7 = r2.f418a;
        if (r7 != 0) goto L_0x01cb;
    L_0x01b4:
        r7 = r2.f420c;
        r8 = 0;
        r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1));
        if (r7 != 0) goto L_0x01cb;
    L_0x01bb:
        r0 = r18;
        r6 = r0.m621a(r6);
        if (r6 == 0) goto L_0x01cb;
    L_0x01c3:
        r7 = r6.f416d;
        r2.f420c = r7;
        r6 = r6.f414b;
        r2.f422e = r6;
    L_0x01cb:
        r2 = r4 + 1;
        r4 = r2;
        goto L_0x01a0;
    L_0x01cf:
        r2 = r5 + 1;
        r5 = r2;
        goto L_0x00dd;
    L_0x01d4:
        r2 = 0;
        goto L_0x0121;
    L_0x01d7:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = r10.f416d;
        r6 = r6 - r7;
        r7 = r18.getPaddingLeft();
        r7 = (float) r7;
        r15 = (float) r14;
        r7 = r7 / r15;
        r6 = r6 + r7;
        goto L_0x0128;
    L_0x01e6:
        r15 = r2.f414b;
        if (r9 != r15) goto L_0x0210;
    L_0x01ea:
        r15 = r2.f415c;
        if (r15 != 0) goto L_0x0210;
    L_0x01ee:
        r0 = r18;
        r15 = r0.f456e;
        r15.remove(r5);
        r0 = r18;
        r15 = r0.f459h;
        r2 = r2.f413a;
        r0 = r18;
        r15.m64a(r0, r9, r2);
        r5 = r5 + -1;
        r8 = r8 + -1;
        if (r5 < 0) goto L_0x0214;
    L_0x0206:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r5);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
    L_0x0210:
        r9 = r9 + -1;
        goto L_0x0138;
    L_0x0214:
        r2 = 0;
        goto L_0x0210;
    L_0x0216:
        if (r2 == 0) goto L_0x0230;
    L_0x0218:
        r15 = r2.f414b;
        if (r9 != r15) goto L_0x0230;
    L_0x021c:
        r2 = r2.f416d;
        r7 = r7 + r2;
        r5 = r5 + -1;
        if (r5 < 0) goto L_0x022e;
    L_0x0223:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r5);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
        goto L_0x0210;
    L_0x022e:
        r2 = 0;
        goto L_0x0210;
    L_0x0230:
        r2 = r5 + 1;
        r0 = r18;
        r2 = r0.m620a(r9, r2);
        r2 = r2.f416d;
        r7 = r7 + r2;
        r8 = r8 + 1;
        if (r5 < 0) goto L_0x024a;
    L_0x023f:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r5);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
        goto L_0x0210;
    L_0x024a:
        r2 = 0;
        goto L_0x0210;
    L_0x024c:
        r7 = 0;
        goto L_0x0161;
    L_0x024f:
        r2 = r18.getPaddingRight();
        r2 = (float) r2;
        r5 = (float) r14;
        r2 = r2 / r5;
        r5 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = r2 + r5;
        r5 = r2;
        goto L_0x0165;
    L_0x025c:
        r11 = r2.f414b;
        if (r9 != r11) goto L_0x0332;
    L_0x0260:
        r11 = r2.f415c;
        if (r11 != 0) goto L_0x0332;
    L_0x0264:
        r0 = r18;
        r11 = r0.f456e;
        r11.remove(r7);
        r0 = r18;
        r11 = r0.f459h;
        r2 = r2.f413a;
        r0 = r18;
        r11.m64a(r0, r9, r2);
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x0298;
    L_0x0280:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r7);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
    L_0x028a:
        r16 = r6;
        r6 = r2;
        r2 = r16;
    L_0x028f:
        r9 = r9 + 1;
        r16 = r2;
        r2 = r6;
        r6 = r16;
        goto L_0x0171;
    L_0x0298:
        r2 = 0;
        goto L_0x028a;
    L_0x029a:
        if (r2 == 0) goto L_0x02c1;
    L_0x029c:
        r11 = r2.f414b;
        if (r9 != r11) goto L_0x02c1;
    L_0x02a0:
        r2 = r2.f416d;
        r6 = r6 + r2;
        r7 = r7 + 1;
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x02bf;
    L_0x02af:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r7);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
    L_0x02b9:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x028f;
    L_0x02bf:
        r2 = 0;
        goto L_0x02b9;
    L_0x02c1:
        r0 = r18;
        r2 = r0.m620a(r9, r7);
        r7 = r7 + 1;
        r2 = r2.f416d;
        r6 = r6 + r2;
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x02e6;
    L_0x02d6:
        r0 = r18;
        r2 = r0.f456e;
        r2 = r2.get(r7);
        r2 = (android.support.v4.view.ViewPager.ProGuard) r2;
    L_0x02e0:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x028f;
    L_0x02e6:
        r2 = 0;
        goto L_0x02e0;
    L_0x02e8:
        r2 = 0;
        goto L_0x018c;
    L_0x02eb:
        r18.m616h();
        r2 = r18.hasFocus();
        if (r2 == 0) goto L_0x002f;
    L_0x02f4:
        r2 = r18.findFocus();
        if (r2 == 0) goto L_0x0330;
    L_0x02fa:
        r0 = r18;
        r2 = r0.m632b(r2);
    L_0x0300:
        if (r2 == 0) goto L_0x030a;
    L_0x0302:
        r2 = r2.f414b;
        r0 = r18;
        r4 = r0.f460i;
        if (r2 == r4) goto L_0x002f;
    L_0x030a:
        r2 = 0;
    L_0x030b:
        r4 = r18.getChildCount();
        if (r2 >= r4) goto L_0x002f;
    L_0x0311:
        r0 = r18;
        r4 = r0.getChildAt(r2);
        r0 = r18;
        r5 = r0.m621a(r4);
        if (r5 == 0) goto L_0x032d;
    L_0x031f:
        r5 = r5.f414b;
        r0 = r18;
        r6 = r0.f460i;
        if (r5 != r6) goto L_0x032d;
    L_0x0327:
        r4 = r4.requestFocus(r3);
        if (r4 != 0) goto L_0x002f;
    L_0x032d:
        r2 = r2 + 1;
        goto L_0x030b;
    L_0x0330:
        r2 = 0;
        goto L_0x0300;
    L_0x0332:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x028f;
    L_0x0339:
        r10 = r2;
        goto L_0x0110;
    L_0x033c:
        r2 = r6;
        goto L_0x0101;
    L_0x033f:
        r4 = r3;
        r3 = r2;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.a(int):void");
    }

    private void m616h() {
        if (this.ae != 0) {
            if (this.af == null) {
                this.af = new ArrayList();
            } else {
                this.af.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.af.add(getChildAt(i));
            }
            Collections.sort(this.af, ag);
        }
    }

    private void m604a(ProGuard proGuard, int i, ProGuard proGuard2) {
        float f;
        float f2;
        int i2;
        ProGuard proGuard3;
        int i3;
        int b = this.f459h.m66b();
        int clientWidth = getClientWidth();
        if (clientWidth > 0) {
            f = ((float) this.f466o) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        if (proGuard2 != null) {
            clientWidth = proGuard2.f414b;
            int i4;
            if (clientWidth < proGuard.f414b) {
                f2 = (proGuard2.f417e + proGuard2.f416d) + f;
                i4 = clientWidth + 1;
                i2 = 0;
                while (i4 <= proGuard.f414b && i2 < this.f456e.size()) {
                    proGuard3 = (ProGuard) this.f456e.get(i2);
                    while (i4 > proGuard3.f414b && i2 < this.f456e.size() - 1) {
                        i2++;
                        proGuard3 = (ProGuard) this.f456e.get(i2);
                    }
                    while (i4 < proGuard3.f414b) {
                        f2 += this.f459h.m72c(i4) + f;
                        i4++;
                    }
                    proGuard3.f417e = f2;
                    f2 += proGuard3.f416d + f;
                    i4++;
                }
            } else if (clientWidth > proGuard.f414b) {
                i2 = this.f456e.size() - 1;
                f2 = proGuard2.f417e;
                i4 = clientWidth - 1;
                while (i4 >= proGuard.f414b && i2 >= 0) {
                    proGuard3 = (ProGuard) this.f456e.get(i2);
                    while (i4 < proGuard3.f414b && i2 > 0) {
                        i2--;
                        proGuard3 = (ProGuard) this.f456e.get(i2);
                    }
                    while (i4 > proGuard3.f414b) {
                        f2 -= this.f459h.m72c(i4) + f;
                        i4--;
                    }
                    f2 -= proGuard3.f416d + f;
                    proGuard3.f417e = f2;
                    i4--;
                }
            }
        }
        int size = this.f456e.size();
        float f3 = proGuard.f417e;
        i2 = proGuard.f414b - 1;
        this.f470s = proGuard.f414b == 0 ? proGuard.f417e : -3.4028235E38f;
        this.f471t = proGuard.f414b == b + -1 ? (proGuard.f417e + proGuard.f416d) - 1.0f : Float.MAX_VALUE;
        for (i3 = i - 1; i3 >= 0; i3--) {
            proGuard3 = (ProGuard) this.f456e.get(i3);
            f2 = f3;
            while (i2 > proGuard3.f414b) {
                f2 -= this.f459h.m72c(i2) + f;
                i2--;
            }
            f3 = f2 - (proGuard3.f416d + f);
            proGuard3.f417e = f3;
            if (proGuard3.f414b == 0) {
                this.f470s = f3;
            }
            i2--;
        }
        f3 = (proGuard.f417e + proGuard.f416d) + f;
        i2 = proGuard.f414b + 1;
        for (i3 = i + 1; i3 < size; i3++) {
            proGuard3 = (ProGuard) this.f456e.get(i3);
            f2 = f3;
            while (i2 < proGuard3.f414b) {
                f2 = (this.f459h.m72c(i2) + f) + f2;
                i2++;
            }
            if (proGuard3.f414b == b - 1) {
                this.f471t = (proGuard3.f416d + f2) - 1.0f;
            }
            proGuard3.f417e = f2;
            f3 = f2 + (proGuard3.f416d + f);
            i2++;
        }
        this.f451T = false;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f410a = this.f460i;
        if (this.f459h != null) {
            savedState.f411b = this.f459h.m56a();
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.f459h != null) {
                this.f459h.m60a(savedState.f411b, savedState.f412c);
                m627a(savedState.f410a, false, true);
                return;
            }
            this.f461j = savedState.f410a;
            this.f462k = savedState.f411b;
            this.f463l = savedState.f412c;
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (checkLayoutParams(layoutParams)) {
            layoutParams2 = layoutParams;
        } else {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        ProGuard proGuard = (ProGuard) layoutParams2;
        proGuard.f418a |= view instanceof ProGuard;
        if (!this.f474w) {
            super.addView(view, i, layoutParams2);
        } else if (proGuard == null || !proGuard.f418a) {
            proGuard.f421d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void removeView(View view) {
        if (this.f474w) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    ProGuard m621a(View view) {
        for (int i = 0; i < this.f456e.size(); i++) {
            ProGuard proGuard = (ProGuard) this.f456e.get(i);
            if (this.f459h.m65a(view, proGuard.f413a)) {
                return proGuard;
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    android.support.v4.view.ViewPager.ProGuard m632b(android.view.View r3) {
        /*
        r2 = this;
    L_0x0000:
        r0 = r3.getParent();
        if (r0 == r2) goto L_0x0012;
    L_0x0006:
        if (r0 == 0) goto L_0x000c;
    L_0x0008:
        r1 = r0 instanceof android.view.View;
        if (r1 != 0) goto L_0x000e;
    L_0x000c:
        r0 = 0;
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = (android.view.View) r0;
        r3 = r0;
        goto L_0x0000;
    L_0x0012:
        r0 = r2.m621a(r3);
        goto L_0x000d;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.b(android.view.View):android.support.v4.view.ViewPager$b");
    }

    ProGuard m631b(int i) {
        for (int i2 = 0; i2 < this.f456e.size(); i2++) {
            ProGuard proGuard = (ProGuard) this.f456e.get(i2);
            if (proGuard.f414b == i) {
                return proGuard;
            }
        }
        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f450S = true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f435D = Math.min(measuredWidth / 10, this.f434C);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ProGuard proGuard;
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                proGuard = (ProGuard) childAt.getLayoutParams();
                if (proGuard != null && proGuard.f418a) {
                    int i6 = proGuard.f419b & 7;
                    int i7 = proGuard.f419b & 112;
                    i3 = Integer.MIN_VALUE;
                    i4 = Integer.MIN_VALUE;
                    Object obj = (i7 == 48 || i7 == 80) ? 1 : null;
                    Object obj2 = (i6 == 3 || i6 == 5) ? 1 : null;
                    if (obj != null) {
                        i3 = 1073741824;
                    } else if (obj2 != null) {
                        i4 = 1073741824;
                    }
                    if (proGuard.width != -2) {
                        i7 = 1073741824;
                        i3 = proGuard.width != -1 ? proGuard.width : paddingLeft;
                    } else {
                        i7 = i3;
                        i3 = paddingLeft;
                    }
                    if (proGuard.height != -2) {
                        i4 = 1073741824;
                        if (proGuard.height != -1) {
                            measuredWidth = proGuard.height;
                            childAt.measure(MeasureSpec.makeMeasureSpec(i3, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i4));
                            if (obj != null) {
                                measuredHeight -= childAt.getMeasuredHeight();
                            } else if (obj2 != null) {
                                paddingLeft -= childAt.getMeasuredWidth();
                            }
                        }
                    }
                    measuredWidth = measuredHeight;
                    childAt.measure(MeasureSpec.makeMeasureSpec(i3, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i4));
                    if (obj != null) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (obj2 != null) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
            }
        }
        this.f472u = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f473v = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f474w = true;
        m634c();
        this.f474w = false;
        i3 = getChildCount();
        for (i4 = 0; i4 < i3; i4++) {
            View childAt2 = getChildAt(i4);
            if (childAt2.getVisibility() != 8) {
                proGuard = (ProGuard) childAt2.getLayoutParams();
                if (proGuard == null || !proGuard.f418a) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (proGuard.f420c * ((float) paddingLeft)), 1073741824), this.f473v);
                }
            }
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            m602a(i, i3, this.f466o, this.f466o);
        }
    }

    private void m602a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f456e.isEmpty()) {
            ProGuard b = m631b(this.f460i);
            int min = (int) ((b != null ? Math.min(b.f417e, this.f471t) : 0.0f) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                m607a(false);
                scrollTo(min, getScrollY());
                return;
            }
            return;
        }
        int paddingLeft = (int) (((float) (((i - getPaddingLeft()) - getPaddingRight()) + i3)) * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))));
        scrollTo(paddingLeft, getScrollY());
        if (!this.f464m.isFinished()) {
            this.f464m.startScroll(paddingLeft, 0, (int) (m631b(this.f460i).f417e * ((float) i)), 0, this.f464m.getDuration() - this.f464m.timePassed());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int max;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i7 = 0;
        int i8 = 0;
        while (i8 < childCount) {
            ProGuard proGuard;
            int measuredWidth;
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                proGuard = (ProGuard) childAt.getLayoutParams();
                if (proGuard.f418a) {
                    int i9 = proGuard.f419b & 112;
                    switch (proGuard.f419b & 7) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            max = Math.max((i5 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            max = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            measuredWidth = (i5 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            max = measuredWidth;
                            break;
                        default:
                            max = paddingLeft;
                            break;
                    }
                    int i10;
                    switch (i9) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                            measuredWidth = Math.max((i6 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            i10 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_homeAsUpIndicator /*48*/:
                            measuredWidth = childAt.getMeasuredHeight() + paddingTop;
                            i10 = paddingTop;
                            paddingTop = paddingBottom;
                            paddingBottom = measuredWidth;
                            measuredWidth = i10;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                            measuredWidth = (i6 - paddingBottom) - childAt.getMeasuredHeight();
                            i10 = paddingBottom + childAt.getMeasuredHeight();
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                        default:
                            measuredWidth = paddingTop;
                            i10 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                    }
                    max += scrollX;
                    childAt.layout(max, measuredWidth, childAt.getMeasuredWidth() + max, childAt.getMeasuredHeight() + measuredWidth);
                    measuredWidth = i7 + 1;
                    i7 = paddingBottom;
                    paddingBottom = paddingTop;
                    paddingTop = paddingRight;
                    paddingRight = paddingLeft;
                    i8++;
                    paddingLeft = paddingRight;
                    paddingRight = paddingTop;
                    paddingTop = i7;
                    i7 = measuredWidth;
                }
            }
            measuredWidth = i7;
            i7 = paddingTop;
            paddingTop = paddingRight;
            paddingRight = paddingLeft;
            i8++;
            paddingLeft = paddingRight;
            paddingRight = paddingTop;
            paddingTop = i7;
            i7 = measuredWidth;
        }
        max = (i5 - paddingLeft) - paddingRight;
        for (paddingRight = 0; paddingRight < childCount; paddingRight++) {
            View childAt2 = getChildAt(paddingRight);
            if (childAt2.getVisibility() != 8) {
                proGuard = (ProGuard) childAt2.getLayoutParams();
                if (!proGuard.f418a) {
                    ProGuard a = m621a(childAt2);
                    if (a != null) {
                        i5 = ((int) (a.f417e * ((float) max))) + paddingLeft;
                        if (proGuard.f421d) {
                            proGuard.f421d = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (proGuard.f420c * ((float) max)), 1073741824), MeasureSpec.makeMeasureSpec((i6 - paddingTop) - paddingBottom, 1073741824));
                        }
                        childAt2.layout(i5, paddingTop, childAt2.getMeasuredWidth() + i5, childAt2.getMeasuredHeight() + paddingTop);
                    }
                }
            }
        }
        this.f468q = paddingTop;
        this.f469r = i6 - paddingBottom;
        this.f453V = i7;
        if (this.f450S) {
            m603a(this.f460i, false, 0, false);
        }
        this.f450S = false;
    }

    public void computeScroll() {
        if (this.f464m.isFinished() || !this.f464m.computeScrollOffset()) {
            m607a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f464m.getCurrX();
        int currY = this.f464m.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!m613d(currX)) {
                this.f464m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ak.m1024b(this);
    }

    private boolean m613d(int i) {
        if (this.f456e.size() == 0) {
            this.f452U = false;
            m624a(0, 0.0f, 0);
            if (this.f452U) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ProGuard i2 = m617i();
        int clientWidth = getClientWidth();
        int i3 = this.f466o + clientWidth;
        float f = ((float) this.f466o) / ((float) clientWidth);
        int i4 = i2.f414b;
        float f2 = ((((float) i) / ((float) clientWidth)) - i2.f417e) / (i2.f416d + f);
        clientWidth = (int) (((float) i3) * f2);
        this.f452U = false;
        m624a(i4, f2, clientWidth);
        if (this.f452U) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    protected void m624a(int i, float f, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        if (this.f453V > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            i3 = 0;
            while (i3 < childCount) {
                int i4;
                View childAt = getChildAt(i3);
                ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
                if (proGuard.f418a) {
                    int max;
                    switch (proGuard.f419b & 7) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            max = childAt.getWidth() + paddingLeft;
                            i4 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = max;
                            max = i4;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            max = (width - paddingRight) - childAt.getMeasuredWidth();
                            i4 = paddingRight + childAt.getMeasuredWidth();
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        default:
                            max = paddingLeft;
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                    }
                    max = (max + scrollX) - childAt.getLeft();
                    if (max != 0) {
                        childAt.offsetLeftAndRight(max);
                    }
                } else {
                    i4 = paddingRight;
                    paddingRight = paddingLeft;
                    paddingLeft = i4;
                }
                i3++;
                i4 = paddingLeft;
                paddingLeft = paddingRight;
                paddingRight = i4;
            }
        }
        if (this.f454W != null) {
            this.f454W.m595a(i, f, i2);
        }
        if (this.aa != null) {
            this.aa.m595a(i, f, i2);
        }
        if (this.ac != null) {
            paddingRight = getScrollX();
            i3 = getChildCount();
            for (paddingLeft = 0; paddingLeft < i3; paddingLeft++) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((ProGuard) childAt2.getLayoutParams()).f418a) {
                    this.ac.m597a(childAt2, ((float) (childAt2.getLeft() - paddingRight)) / ((float) getClientWidth()));
                }
            }
        }
        this.f452U = true;
    }

    private void m607a(boolean z) {
        int scrollX;
        boolean z2 = this.ai == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            this.f464m.abortAnimation();
            scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f464m.getCurrX();
            int currY = this.f464m.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
                if (currX != scrollX) {
                    m613d(currX);
                }
            }
        }
        this.f476y = false;
        boolean z3 = z2;
        for (scrollX = 0; scrollX < this.f456e.size(); scrollX++) {
            ProGuard proGuard = (ProGuard) this.f456e.get(scrollX);
            if (proGuard.f415c) {
                proGuard.f415c = false;
                z3 = true;
            }
        }
        if (!z3) {
            return;
        }
        if (z) {
            ak.m1020a((View) this, this.ah);
        } else {
            this.ah.run();
        }
    }

    private boolean m608a(float f, float f2) {
        return (f < ((float) this.f435D) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f435D)) && f2 < 0.0f);
    }

    private void m610b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            int i2;
            if (z) {
                i2 = 2;
            } else {
                i2 = 0;
            }
            ak.m1016a(getChildAt(i), i2, null);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.f432A = false;
            this.f433B = false;
            this.f441J = -1;
            if (this.f442K == null) {
                return false;
            }
            this.f442K.recycle();
            this.f442K = null;
            return false;
        }
        if (action != 0) {
            if (this.f432A) {
                return true;
            }
            if (this.f433B) {
                return false;
            }
        }
        switch (action) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                float x = motionEvent.getX();
                this.f439H = x;
                this.f437F = x;
                x = motionEvent.getY();
                this.f440I = x;
                this.f438G = x;
                this.f441J = ProGuard.m1368b(motionEvent, 0);
                this.f433B = false;
                this.f464m.computeScrollOffset();
                if (this.ai == 2 && Math.abs(this.f464m.getFinalX() - this.f464m.getCurrX()) > this.f446O) {
                    this.f464m.abortAnimation();
                    this.f476y = false;
                    m634c();
                    this.f432A = true;
                    m612c(true);
                    setScrollState(1);
                    break;
                }
                m607a(false);
                this.f432A = false;
                break;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                action = this.f441J;
                if (action != -1) {
                    action = ProGuard.m1366a(motionEvent, action);
                    float c = ProGuard.m1369c(motionEvent, action);
                    float f = c - this.f437F;
                    float abs = Math.abs(f);
                    float d = ProGuard.m1371d(motionEvent, action);
                    float abs2 = Math.abs(d - this.f440I);
                    if (f == 0.0f || m608a(this.f437F, f) || !m630a(this, false, (int) f, (int) c, (int) d)) {
                        if (abs > ((float) this.f436E) && 0.5f * abs > abs2) {
                            this.f432A = true;
                            m612c(true);
                            setScrollState(1);
                            this.f437F = f > 0.0f ? this.f439H + ((float) this.f436E) : this.f439H - ((float) this.f436E);
                            this.f438G = d;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > ((float) this.f436E)) {
                            this.f433B = true;
                        }
                        if (this.f432A && m611b(c)) {
                            ak.m1024b(this);
                            break;
                        }
                    }
                    this.f437F = c;
                    this.f438G = d;
                    this.f433B = true;
                    return false;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                m606a(motionEvent);
                break;
        }
        if (this.f442K == null) {
            this.f442K = VelocityTracker.obtain();
        }
        this.f442K.addMovement(motionEvent);
        return this.f432A;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.f447P) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.f459h == null || this.f459h.m66b() == 0) {
            return false;
        }
        if (this.f442K == null) {
            this.f442K = VelocityTracker.obtain();
        }
        this.f442K.addMovement(motionEvent);
        float x;
        int a;
        switch (motionEvent.getAction() & 255) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                this.f464m.abortAnimation();
                this.f476y = false;
                m634c();
                x = motionEvent.getX();
                this.f439H = x;
                this.f437F = x;
                x = motionEvent.getY();
                this.f440I = x;
                this.f438G = x;
                this.f441J = ProGuard.m1368b(motionEvent, 0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                if (this.f432A) {
                    VelocityTracker velocityTracker = this.f442K;
                    velocityTracker.computeCurrentVelocity(LocationClientOption.MIN_SCAN_SPAN, (float) this.f444M);
                    a = (int) ai.m895a(velocityTracker, this.f441J);
                    this.f476y = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    ProGuard i = m617i();
                    m628a(m599a(i.f414b, ((((float) scrollX) / ((float) clientWidth)) - i.f417e) / i.f416d, a, (int) (ProGuard.m1369c(motionEvent, ProGuard.m1366a(motionEvent, this.f441J)) - this.f439H)), true, true, a);
                    this.f441J = -1;
                    m618j();
                    z = this.f449R.m1602c() | this.f448Q.m1602c();
                    break;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (!this.f432A) {
                    a = ProGuard.m1366a(motionEvent, this.f441J);
                    float c = ProGuard.m1369c(motionEvent, a);
                    float abs = Math.abs(c - this.f437F);
                    float d = ProGuard.m1371d(motionEvent, a);
                    x = Math.abs(d - this.f438G);
                    if (abs > ((float) this.f436E) && abs > x) {
                        this.f432A = true;
                        m612c(true);
                        if (c - this.f439H > 0.0f) {
                            x = this.f439H + ((float) this.f436E);
                        } else {
                            x = this.f439H - ((float) this.f436E);
                        }
                        this.f437F = x;
                        this.f438G = d;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.f432A) {
                    z = false | m611b(ProGuard.m1369c(motionEvent, ProGuard.m1366a(motionEvent, this.f441J)));
                    break;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                if (this.f432A) {
                    m603a(this.f460i, true, 0, false);
                    this.f441J = -1;
                    m618j();
                    z = this.f449R.m1602c() | this.f448Q.m1602c();
                    break;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                a = ProGuard.m1367b(motionEvent);
                this.f437F = ProGuard.m1369c(motionEvent, a);
                this.f441J = ProGuard.m1368b(motionEvent, a);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                m606a(motionEvent);
                this.f437F = ProGuard.m1369c(motionEvent, ProGuard.m1366a(motionEvent, this.f441J));
                break;
        }
        if (z) {
            ak.m1024b(this);
        }
        return true;
    }

    private void m612c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean m611b(float f) {
        boolean z;
        float f2;
        boolean z2 = true;
        boolean z3 = false;
        float f3 = this.f437F - f;
        this.f437F = f;
        float scrollX = ((float) getScrollX()) + f3;
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.f470s;
        float f5 = ((float) clientWidth) * this.f471t;
        ProGuard proGuard = (ProGuard) this.f456e.get(0);
        ProGuard proGuard2 = (ProGuard) this.f456e.get(this.f456e.size() - 1);
        if (proGuard.f414b != 0) {
            f4 = proGuard.f417e * ((float) clientWidth);
            z = false;
        } else {
            z = true;
        }
        if (proGuard2.f414b != this.f459h.m66b() - 1) {
            f2 = proGuard2.f417e * ((float) clientWidth);
            z2 = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                z3 = this.f448Q.m1597a(Math.abs(f4 - scrollX) / ((float) clientWidth));
            }
        } else if (scrollX > f2) {
            if (z2) {
                z3 = this.f449R.m1597a(Math.abs(scrollX - f2) / ((float) clientWidth));
            }
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.f437F += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        m613d((int) f4);
        return z3;
    }

    private ProGuard m617i() {
        float f;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        if (clientWidth > 0) {
            f = ((float) this.f466o) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        Object obj = 1;
        ProGuard proGuard = null;
        while (i2 < this.f456e.size()) {
            int i3;
            ProGuard proGuard2;
            ProGuard proGuard3 = (ProGuard) this.f456e.get(i2);
            ProGuard proGuard4;
            if (obj != null || proGuard3.f414b == i + 1) {
                proGuard4 = proGuard3;
                i3 = i2;
                proGuard2 = proGuard4;
            } else {
                proGuard3 = this.f457f;
                proGuard3.f417e = (f2 + f3) + f;
                proGuard3.f414b = i + 1;
                proGuard3.f416d = this.f459h.m72c(proGuard3.f414b);
                proGuard4 = proGuard3;
                i3 = i2 - 1;
                proGuard2 = proGuard4;
            }
            f2 = proGuard2.f417e;
            f3 = (proGuard2.f416d + f2) + f;
            if (obj == null && scrollX < f2) {
                return proGuard;
            }
            if (scrollX < f3 || i3 == this.f456e.size() - 1) {
                return proGuard2;
            }
            f3 = f2;
            i = proGuard2.f414b;
            obj = null;
            f2 = proGuard2.f416d;
            proGuard = proGuard2;
            i2 = i3 + 1;
        }
        return proGuard;
    }

    private int m599a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f445N || Math.abs(i2) <= this.f443L) {
            i = (int) ((i >= this.f460i ? 0.4f : 0.6f) + (((float) i) + f));
        } else if (i2 <= 0) {
            i++;
        }
        if (this.f456e.size() <= 0) {
            return i;
        }
        return Math.max(((ProGuard) this.f456e.get(0)).f414b, Math.min(i, ((ProGuard) this.f456e.get(this.f456e.size() - 1)).f414b));
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int i = 0;
        int a = ak.m1012a(this);
        if (a == 0 || (a == 1 && this.f459h != null && this.f459h.m66b() > 1)) {
            int height;
            int width;
            if (!this.f448Q.m1596a()) {
                a = canvas.save();
                height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-height) + getPaddingTop()), this.f470s * ((float) width));
                this.f448Q.m1595a(height, width);
                i = 0 | this.f448Q.m1600a(canvas);
                canvas.restoreToCount(a);
            }
            if (!this.f449R.m1596a()) {
                a = canvas.save();
                height = getWidth();
                width = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.f471t + 1.0f)) * ((float) height));
                this.f449R.m1595a(width, height);
                i |= this.f449R.m1600a(canvas);
                canvas.restoreToCount(a);
            }
        } else {
            this.f448Q.m1601b();
            this.f449R.m1601b();
        }
        if (i != 0) {
            ak.m1024b(this);
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f466o > 0 && this.f467p != null && this.f456e.size() > 0 && this.f459h != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.f466o) / ((float) width);
            ProGuard proGuard = (ProGuard) this.f456e.get(0);
            float f2 = proGuard.f417e;
            int size = this.f456e.size();
            int i = proGuard.f414b;
            int i2 = ((ProGuard) this.f456e.get(size - 1)).f414b;
            int i3 = 0;
            int i4 = i;
            while (i4 < i2) {
                float f3;
                while (i4 > proGuard.f414b && i3 < size) {
                    i3++;
                    proGuard = (ProGuard) this.f456e.get(i3);
                }
                if (i4 == proGuard.f414b) {
                    f3 = (proGuard.f417e + proGuard.f416d) * ((float) width);
                    f2 = (proGuard.f417e + proGuard.f416d) + f;
                } else {
                    float c = this.f459h.m72c(i4);
                    f3 = (f2 + c) * ((float) width);
                    f2 += c + f;
                }
                if (((float) this.f466o) + f3 > ((float) scrollX)) {
                    this.f467p.setBounds((int) f3, this.f468q, (int) ((((float) this.f466o) + f3) + 0.5f), this.f469r);
                    this.f467p.draw(canvas);
                }
                if (f3 <= ((float) (scrollX + width))) {
                    i4++;
                } else {
                    return;
                }
            }
        }
    }

    private void m606a(MotionEvent motionEvent) {
        int b = ProGuard.m1367b(motionEvent);
        if (ProGuard.m1368b(motionEvent, b) == this.f441J) {
            b = b == 0 ? 1 : 0;
            this.f437F = ProGuard.m1369c(motionEvent, b);
            this.f441J = ProGuard.m1368b(motionEvent, b);
            if (this.f442K != null) {
                this.f442K.clear();
            }
        }
    }

    private void m618j() {
        this.f432A = false;
        this.f433B = false;
        if (this.f442K != null) {
            this.f442K.recycle();
            this.f442K = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f475x != z) {
            this.f475x = z;
        }
    }

    public boolean canScrollHorizontally(int i) {
        boolean z = true;
        if (this.f459h == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (((float) clientWidth) * this.f470s))) {
                z = false;
            }
            return z;
        } else if (i <= 0) {
            return false;
        } else {
            if (scrollX >= ((int) (((float) clientWidth) * this.f471t))) {
                z = false;
            }
            return z;
        }
    }

    protected boolean m630a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (m630a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        if (z && ak.m1023a(view, -i)) {
            return true;
        }
        return false;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m629a(keyEvent);
    }

    public boolean m629a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionBarWidgetTheme /*21*/:
                return m635c(17);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionBarSize /*22*/:
                return m635c(66);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_editTextColor /*61*/:
                if (VERSION.SDK_INT < 11) {
                    return false;
                }
                if (ProGuard.m1283a(keyEvent)) {
                    return m635c(2);
                }
                if (ProGuard.m1284a(keyEvent, 1)) {
                    return m635c(1);
                }
                return false;
            default:
                return false;
        }
    }

    public boolean m635c(int i) {
        View view;
        boolean d;
        View findFocus = findFocus();
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                Object obj;
                for (ViewPager parent = findFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    if (parent == this) {
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        stringBuilder.append(" => ").append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + stringBuilder.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                d = m636d();
            } else {
                if (i == 66 || i == 2) {
                    d = m637e();
                }
                d = false;
            }
        } else if (i == 17) {
            d = (view == null || m600a(this.f458g, findNextFocus).left < m600a(this.f458g, view).left) ? findNextFocus.requestFocus() : m636d();
        } else {
            if (i == 66) {
                d = (view == null || m600a(this.f458g, findNextFocus).left > m600a(this.f458g, view).left) ? findNextFocus.requestFocus() : m637e();
            }
            d = false;
        }
        if (d) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return d;
    }

    private Rect m600a(Rect rect, View view) {
        Rect rect2;
        if (rect == null) {
            rect2 = new Rect();
        } else {
            rect2 = rect;
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewPager parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    boolean m636d() {
        if (this.f460i <= 0) {
            return false;
        }
        m626a(this.f460i - 1, true);
        return true;
    }

    boolean m637e() {
        if (this.f459h == null || this.f460i >= this.f459h.m66b() - 1) {
            return false;
        }
        m626a(this.f460i + 1, true);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ProGuard a = m621a(childAt);
                    if (a != null && a.f414b == this.f460i) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ProGuard a = m621a(childAt);
                if (a != null && a.f414b == this.f460i) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                ProGuard a = m621a(childAt);
                if (a != null && a.f414b == this.f460i && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            i2 += i3;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ProGuard a = m621a(childAt);
                if (a != null && a.f414b == this.f460i && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new ProGuard();
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof ProGuard) && super.checkLayoutParams(layoutParams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }
}
