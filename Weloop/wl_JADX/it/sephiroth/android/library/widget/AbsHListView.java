package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewConfiguration;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnTouchModeChangeListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Checkable;
import android.widget.ListAdapter;
import com.baidu.location.LocationClientOption;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;

@TargetApi(11)
/* compiled from: ProGuard */
public abstract class AbsHListView extends ProGuard<ListAdapter> implements OnGlobalLayoutListener, OnTouchModeChangeListener {
    static final Interpolator f9224T;
    public static final int[] f9225U;
    protected int f9226A;
    int f9227B;
    int f9228C;
    int f9229D;
    int f9230E;
    protected int f9231F;
    int f9232G;
    int f9233H;
    protected ProGuard f9234I;
    protected int f9235J;
    protected boolean f9236K;
    boolean f9237L;
    protected int f9238M;
    protected int f9239N;
    protected Runnable f9240O;
    protected final boolean[] f9241P;
    int f9242Q;
    int f9243R;
    protected boolean f9244S;
    it.sephiroth.android.library.p151a.ProGuard.ProGuard f9245a;
    private int aA;
    private ProGuard aB;
    private Runnable aC;
    private ProGuard aD;
    private ProGuard aE;
    private Runnable aF;
    private int aG;
    private int aH;
    private boolean aI;
    private int aJ;
    private int aK;
    private Runnable aL;
    private int aM;
    private int aN;
    private float aO;
    private int aP;
    private android.support.v4.widget.ProGuard aQ;
    private android.support.v4.widget.ProGuard aR;
    private int aS;
    private int aT;
    private int aU;
    private boolean aV;
    private int aW;
    private int aX;
    private ProGuard aY;
    private int aZ;
    private VelocityTracker au;
    private ProGuard av;
    private ProGuard aw;
    private boolean ax;
    private Rect ay;
    private ContextMenuInfo az;
    protected int f9246b;
    private int ba;
    private int bb;
    private SavedState bc;
    private float bd;
    public Object f9247c;
    Object f9248d;
    int f9249e;
    protected android.support.v4.p015f.ProGuard<Boolean> f9250f;
    android.support.v4.p015f.ProGuard<Integer> f9251g;
    protected int f9252h;
    protected ProGuard f9253i;
    protected ListAdapter f9254j;
    boolean f9255k;
    boolean f9256l;
    Drawable f9257m;
    int f9258n;
    protected Rect f9259o;
    protected final ProGuard f9260p;
    int f9261q;
    int f9262r;
    int f9263s;
    int f9264t;
    protected Rect f9265u;
    protected int f9266v;
    View f9267w;
    View f9268x;
    protected boolean f9269y;
    protected boolean f9270z;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        long f9170a;
        long f9171b;
        int f9172c;
        int f9173d;
        int f9174e;
        String f9175f;
        boolean f9176g;
        int f9177h;
        android.support.v4.p015f.ProGuard<Boolean> f9178i;
        android.support.v4.p015f.ProGuard<Integer> f9179j;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f9170a = parcel.readLong();
            this.f9171b = parcel.readLong();
            this.f9172c = parcel.readInt();
            this.f9173d = parcel.readInt();
            this.f9174e = parcel.readInt();
            this.f9175f = parcel.readString();
            this.f9176g = parcel.readByte() != null;
            this.f9177h = parcel.readInt();
            this.f9178i = m11481b(parcel);
            this.f9179j = m11476a(parcel);
        }

        private android.support.v4.p015f.ProGuard<Integer> m11476a(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt <= 0) {
                return null;
            }
            android.support.v4.p015f.ProGuard proGuard = new android.support.v4.p015f.ProGuard(readInt);
            m11478a(proGuard, parcel, readInt);
            return proGuard;
        }

        private android.support.v4.p015f.ProGuard<Boolean> m11481b(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0) {
                return null;
            }
            android.support.v4.p015f.ProGuard proGuard = new android.support.v4.p015f.ProGuard(readInt);
            m11480a(proGuard, parcel, readInt);
            return proGuard;
        }

        private void m11478a(android.support.v4.p015f.ProGuard<Integer> proGuard, Parcel parcel, int i) {
            while (i > 0) {
                proGuard.m512b(parcel.readLong(), Integer.valueOf(parcel.readInt()));
                i--;
            }
        }

        private void m11480a(android.support.v4.p015f.ProGuard<Boolean> proGuard, Parcel parcel, int i) {
            while (i > 0) {
                proGuard.m531c(parcel.readInt(), Boolean.valueOf(parcel.readByte() == (byte) 1));
                i--;
            }
        }

        private void m11477a(android.support.v4.p015f.ProGuard<Integer> proGuard, Parcel parcel) {
            int b;
            int i = 0;
            if (proGuard != null) {
                b = proGuard.m509b();
            } else {
                b = 0;
            }
            parcel.writeInt(b);
            while (i < b) {
                parcel.writeLong(proGuard.m504a(i));
                parcel.writeInt(((Integer) proGuard.m510b(i)).intValue());
                i++;
            }
        }

        private void m11479a(android.support.v4.p015f.ProGuard<Boolean> proGuard, Parcel parcel) {
            if (proGuard == null) {
                parcel.writeInt(-1);
                return;
            }
            int b = proGuard.m526b();
            parcel.writeInt(b);
            for (int i = 0; i < b; i++) {
                int i2;
                parcel.writeInt(proGuard.m527b(i));
                if (((Boolean) proGuard.m529c(i)).booleanValue()) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                parcel.writeByte((byte) i2);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f9170a);
            parcel.writeLong(this.f9171b);
            parcel.writeInt(this.f9172c);
            parcel.writeInt(this.f9173d);
            parcel.writeInt(this.f9174e);
            parcel.writeString(this.f9175f);
            parcel.writeByte((byte) (this.f9176g ? 1 : 0));
            parcel.writeInt(this.f9177h);
            m11479a(this.f9178i, parcel);
            m11477a(this.f9179j, parcel);
        }

        public String toString() {
            return "AbsListView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f9170a + " firstId=" + this.f9171b + " viewLeft=" + this.f9172c + " position=" + this.f9173d + " width=" + this.f9174e + " filter=" + this.f9175f + " checkState=" + this.f9178i + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.a */
    public class ProGuard extends it.sephiroth.android.library.widget.ProGuard.ProGuard {
        final /* synthetic */ AbsHListView f9182a;

        public ProGuard(AbsHListView absHListView) {
            this.f9182a = absHListView;
            super(absHListView);
        }

        public void onChanged() {
            super.onChanged();
        }

        public void onInvalidated() {
            super.onInvalidated();
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.n */
    private class ProGuard {
        private int f9183a;
        final /* synthetic */ AbsHListView f9184c;

        private ProGuard(AbsHListView absHListView) {
            this.f9184c = absHListView;
        }

        public void m11482a() {
            this.f9183a = this.f9184c.getWindowAttachCount();
        }

        public boolean m11483b() {
            return this.f9184c.hasWindowFocus() && this.f9184c.getWindowAttachCount() == this.f9183a;
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.b */
    private class ProGuard extends ProGuard implements Runnable {
        final /* synthetic */ AbsHListView f9185a;

        private ProGuard(AbsHListView absHListView) {
            this.f9185a = absHListView;
            super(null);
        }

        public void run() {
            if (this.f9185a.isPressed() && this.f9185a.am >= 0) {
                View childAt = this.f9185a.getChildAt(this.f9185a.am - this.f9185a.V);
                if (this.f9185a.aj) {
                    this.f9185a.setPressed(false);
                    if (childAt != null) {
                        childAt.setPressed(false);
                        return;
                    }
                    return;
                }
                boolean c;
                if (m11483b()) {
                    c = this.f9185a.m11596c(childAt, this.f9185a.am, this.f9185a.an);
                } else {
                    c = false;
                }
                if (c) {
                    this.f9185a.setPressed(false);
                    childAt.setPressed(false);
                }
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.c */
    private class ProGuard extends ProGuard implements Runnable {
        final /* synthetic */ AbsHListView f9186a;

        private ProGuard(AbsHListView absHListView) {
            this.f9186a = absHListView;
            super(null);
        }

        public void run() {
            View childAt = this.f9186a.getChildAt(this.f9186a.f9226A - this.f9186a.V);
            if (childAt != null) {
                boolean z;
                int i = this.f9186a.f9226A;
                long itemId = this.f9186a.f9254j.getItemId(this.f9186a.f9226A);
                if (!m11483b() || this.f9186a.aj) {
                    z = false;
                } else {
                    z = this.f9186a.m11596c(childAt, i, itemId);
                }
                if (z) {
                    this.f9186a.f9231F = -1;
                    this.f9186a.setPressed(false);
                    childAt.setPressed(false);
                    return;
                }
                this.f9186a.f9231F = 2;
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.d */
    final class ProGuard implements Runnable {
        final /* synthetic */ AbsHListView f9187a;

        ProGuard(AbsHListView absHListView) {
            this.f9187a = absHListView;
        }

        public void run() {
            if (this.f9187a.f9231F == 0) {
                this.f9187a.f9231F = 1;
                View childAt = this.f9187a.getChildAt(this.f9187a.f9226A - this.f9187a.V);
                if (childAt != null && !childAt.hasFocusable()) {
                    this.f9187a.f9252h = 0;
                    if (this.f9187a.aj) {
                        this.f9187a.f9231F = 2;
                        return;
                    }
                    childAt.setPressed(true);
                    this.f9187a.setPressed(true);
                    this.f9187a.m11601e();
                    this.f9187a.m11582a(this.f9187a.f9226A, childAt);
                    this.f9187a.refreshDrawableState();
                    int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    boolean isLongClickable = this.f9187a.isLongClickable();
                    if (this.f9187a.f9257m != null) {
                        Drawable current = this.f9187a.f9257m.getCurrent();
                        if (current != null && (current instanceof TransitionDrawable)) {
                            if (isLongClickable) {
                                ((TransitionDrawable) current).startTransition(longPressTimeout);
                            } else {
                                ((TransitionDrawable) current).resetTransition();
                            }
                        }
                    }
                    if (isLongClickable) {
                        if (this.f9187a.aB == null) {
                            this.f9187a.aB = new ProGuard(null);
                        }
                        this.f9187a.aB.m11482a();
                        this.f9187a.postDelayed(this.f9187a.aB, (long) longPressTimeout);
                        return;
                    }
                    this.f9187a.f9231F = 2;
                }
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.e */
    private class ProGuard implements Runnable {
        final /* synthetic */ AbsHListView f9188a;
        private final ProGuard f9189b;
        private int f9190c;
        private final Runnable f9191d;

        ProGuard(AbsHListView absHListView) {
            this.f9188a = absHListView;
            this.f9191d = new ProGuard(this);
            this.f9189b = new ProGuard(absHListView.getContext());
        }

        void m11486a(int i) {
            int i2 = i < 0 ? Integer.MAX_VALUE : 0;
            this.f9190c = i2;
            this.f9189b.m11765a(null);
            this.f9189b.m11763a(i2, 0, i, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            this.f9188a.f9231F = 4;
            this.f9188a.f9245a.m11463a((Runnable) this);
        }

        void m11485a() {
            if (this.f9189b.m11768a(this.f9188a.getScrollX(), 0, 0, 0, 0, 0)) {
                this.f9188a.f9231F = 6;
                this.f9188a.invalidate();
                this.f9188a.f9245a.m11463a((Runnable) this);
                return;
            }
            this.f9188a.f9231F = -1;
            this.f9188a.m11591b(0);
        }

        void m11489b(int i) {
            this.f9189b.m11765a(null);
            this.f9189b.m11764a(this.f9188a.getScrollX(), 0, i, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0, this.f9188a.getWidth(), 0);
            this.f9188a.f9231F = 6;
            this.f9188a.invalidate();
            this.f9188a.f9245a.m11463a((Runnable) this);
        }

        void m11491c(int i) {
            this.f9189b.m11761a(this.f9188a.getScrollX(), 0, this.f9188a.f9243R);
            int overScrollMode = this.f9188a.getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && !this.f9188a.m11537A())) {
                this.f9188a.f9231F = 6;
                overScrollMode = (int) this.f9189b.m11771c();
                if (i > 0) {
                    this.f9188a.aQ.m1599a(overScrollMode);
                } else {
                    this.f9188a.aR.m1599a(overScrollMode);
                }
            } else {
                this.f9188a.f9231F = -1;
                if (this.f9188a.f9234I != null) {
                    this.f9188a.f9234I.m11496a();
                }
            }
            this.f9188a.invalidate();
            this.f9188a.f9245a.m11463a((Runnable) this);
        }

        void m11487a(int i, int i2, boolean z) {
            int i3 = i < 0 ? Integer.MAX_VALUE : 0;
            this.f9190c = i3;
            this.f9189b.m11765a(z ? AbsHListView.f9224T : null);
            this.f9189b.m11762a(i3, 0, i, 0, i2);
            this.f9188a.f9231F = 4;
            this.f9188a.f9245a.m11463a((Runnable) this);
        }

        void m11488b() {
            this.f9188a.f9231F = -1;
            this.f9188a.removeCallbacks(this);
            this.f9188a.removeCallbacks(this.f9191d);
            this.f9188a.m11591b(0);
            this.f9188a.m11543G();
            this.f9189b.m11773e();
            this.f9188a.overScrollBy(0, 0, 0, 0, 0, 0, 0, 0, false);
        }

        void m11490c() {
            this.f9188a.postDelayed(this.f9191d, 40);
        }

        public void run() {
            int scrollX;
            int i;
            int i2 = 1;
            int i3 = 0;
            switch (this.f9188a.f9231F) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    if (this.f9189b.m11766a()) {
                        return;
                    }
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    ProGuard proGuard = this.f9189b;
                    if (proGuard.m11772d()) {
                        scrollX = this.f9188a.getScrollX();
                        int b = proGuard.m11769b();
                        if (this.f9188a.overScrollBy(b - scrollX, 0, scrollX, 0, 0, 0, this.f9188a.f9243R, 0, false)) {
                            i = (scrollX > 0 || b <= 0) ? 0 : 1;
                            if (scrollX >= 0 && b < 0) {
                                i3 = 1;
                            }
                            if (i == 0 && i3 == 0) {
                                m11485a();
                                return;
                            }
                            i = (int) proGuard.m11771c();
                            if (i3 != 0) {
                                i = -i;
                            }
                            proGuard.m11773e();
                            m11486a(i);
                            return;
                        }
                        this.f9188a.invalidate();
                        this.f9188a.f9245a.m11463a((Runnable) this);
                        return;
                    }
                    m11488b();
                    return;
                default:
                    m11488b();
                    return;
            }
            if (this.f9188a.aj) {
                this.f9188a.m11601e();
            }
            if (this.f9188a.ao == 0 || this.f9188a.getChildCount() == 0) {
                m11488b();
                return;
            }
            int min;
            ProGuard proGuard2 = this.f9189b;
            boolean d = proGuard2.m11772d();
            int b2 = proGuard2.m11769b();
            i = this.f9190c - b2;
            if (i > 0) {
                this.f9188a.f9226A = this.f9188a.V;
                this.f9188a.f9227B = this.f9188a.getChildAt(0).getLeft();
                min = Math.min(((this.f9188a.getWidth() - this.f9188a.getPaddingRight()) - this.f9188a.getPaddingLeft()) - 1, i);
            } else {
                scrollX = this.f9188a.getChildCount() - 1;
                this.f9188a.f9226A = this.f9188a.V + scrollX;
                this.f9188a.f9227B = this.f9188a.getChildAt(scrollX).getLeft();
                min = Math.max(-(((this.f9188a.getWidth() - this.f9188a.getPaddingRight()) - this.f9188a.getPaddingLeft()) - 1), i);
            }
            View childAt = this.f9188a.getChildAt(this.f9188a.f9226A - this.f9188a.V);
            if (childAt != null) {
                i = childAt.getLeft();
            } else {
                i = 0;
            }
            boolean d2 = this.f9188a.m11599d(min, min);
            if (!d2 || min == 0) {
                i2 = 0;
            }
            if (i2 != 0) {
                if (childAt != null) {
                    this.f9188a.overScrollBy(-(min - (childAt.getLeft() - i)), 0, this.f9188a.getScrollX(), 0, 0, 0, this.f9188a.f9243R, 0, false);
                }
                if (d) {
                    m11491c(min);
                }
            } else if (d && i2 == 0) {
                if (d2) {
                    this.f9188a.invalidate();
                }
                this.f9190c = b2;
                this.f9188a.f9245a.m11463a((Runnable) this);
            } else {
                m11488b();
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.f */
    public static class ProGuard extends LayoutParams {
        public int f9192a;
        public boolean f9193b;
        public boolean f9194c;
        public int f9195d;
        public long f9196e;

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9196e = -1;
        }

        public ProGuard(int i, int i2, int i3) {
            super(i, i2);
            this.f9196e = -1;
            this.f9192a = i3;
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
            this.f9196e = -1;
        }
    }

    @TargetApi(14)
    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.g */
    class ProGuard extends android.support.v4.view.ProGuard {
        final /* synthetic */ AbsHListView f9197b;

        ProGuard(AbsHListView absHListView) {
            this.f9197b = absHListView;
        }

        public void m11492a(View view, android.support.v4.view.p016a.ProGuard proGuard) {
            super.m582a(view, proGuard);
            int a = this.f9197b.m11526a(view);
            ListAdapter listAdapter = (ListAdapter) this.f9197b.getAdapter();
            if (a != -1 && listAdapter != null && this.f9197b.isEnabled() && listAdapter.isEnabled(a)) {
                if (a == this.f9197b.getSelectedItemPosition()) {
                    proGuard.m754a(true);
                    proGuard.m750a(8);
                } else {
                    proGuard.m750a(4);
                }
                if (this.f9197b.isClickable()) {
                    proGuard.m750a(16);
                    proGuard.m757b(true);
                }
                if (this.f9197b.isLongClickable()) {
                    proGuard.m750a(32);
                    proGuard.m758c(true);
                }
            }
        }

        public boolean m11493a(View view, int i, Bundle bundle) {
            if (super.m584a(view, i, bundle)) {
                return true;
            }
            int a = this.f9197b.m11526a(view);
            ListAdapter listAdapter = (ListAdapter) this.f9197b.getAdapter();
            if (a == -1 || listAdapter == null) {
                return false;
            }
            if (!this.f9197b.isEnabled() || !listAdapter.isEnabled(a)) {
                return false;
            }
            long f = this.f9197b.m11529f(a);
            switch (i) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    if (this.f9197b.getSelectedItemPosition() == a) {
                        return false;
                    }
                    this.f9197b.setSelection(a);
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    if (this.f9197b.getSelectedItemPosition() != a) {
                        return false;
                    }
                    this.f9197b.setSelection(-1);
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                    return this.f9197b.isClickable() ? this.f9197b.m11588a(view, a, f) : false;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModeCutDrawable /*32*/:
                    return this.f9197b.isLongClickable() ? this.f9197b.m11596c(view, a, f) : false;
                default:
                    return false;
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.h */
    public interface ProGuard {
        void m11494a(AbsHListView absHListView, int i);

        void m11495a(AbsHListView absHListView, int i, int i2, int i3);
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.i */
    private class ProGuard extends ProGuard implements Runnable {
        int f9198a;
        final /* synthetic */ AbsHListView f9199b;

        private ProGuard(AbsHListView absHListView) {
            this.f9199b = absHListView;
            super(null);
        }

        public void run() {
            if (!this.f9199b.aj) {
                ListAdapter listAdapter = this.f9199b.f9254j;
                int i = this.f9198a;
                if (listAdapter != null && this.f9199b.ao > 0 && i != -1 && i < listAdapter.getCount() && m11483b()) {
                    View childAt = this.f9199b.getChildAt(i - this.f9199b.V);
                    if (childAt != null) {
                        this.f9199b.m11588a(childAt, i, listAdapter.getItemId(i));
                    }
                }
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.j */
    public class ProGuard implements Runnable {
        final /* synthetic */ AbsHListView f9200a;
        private int f9201b;
        private int f9202c;
        private int f9203d;
        private int f9204e;
        private int f9205f;
        private final int f9206g;
        private int f9207h;

        ProGuard(AbsHListView absHListView) {
            this.f9200a = absHListView;
            this.f9206g = ViewConfiguration.get(absHListView.getContext()).getScaledFadingEdgeLength();
        }

        void m11497a(int i) {
            m11496a();
            if (this.f9200a.aj) {
                this.f9200a.f9240O = new ProGuard(this, i);
                return;
            }
            int childCount = this.f9200a.getChildCount();
            if (childCount != 0) {
                int i2 = this.f9200a.V;
                childCount = (childCount + i2) - 1;
                int max = Math.max(0, Math.min(this.f9200a.getCount() - 1, i));
                if (max < i2) {
                    childCount = (i2 - max) + 1;
                    this.f9201b = 2;
                } else if (max > childCount) {
                    childCount = (max - childCount) + 1;
                    this.f9201b = 1;
                } else {
                    m11500b(max, -1, 200);
                    return;
                }
                if (childCount > 0) {
                    this.f9205f = 200 / childCount;
                } else {
                    this.f9205f = 200;
                }
                this.f9202c = max;
                this.f9203d = -1;
                this.f9204e = -1;
                this.f9200a.f9245a.m11463a((Runnable) this);
            }
        }

        void m11498a(int i, int i2) {
            m11496a();
            if (i2 == -1) {
                m11497a(i);
            } else if (this.f9200a.aj) {
                this.f9200a.f9240O = new ProGuard(this, i, i2);
            } else {
                int childCount = this.f9200a.getChildCount();
                if (childCount != 0) {
                    int i3 = this.f9200a.V;
                    childCount = (childCount + i3) - 1;
                    int max = Math.max(0, Math.min(this.f9200a.getCount() - 1, i));
                    if (max < i3) {
                        childCount -= i2;
                        if (childCount >= 1) {
                            i3 = (i3 - max) + 1;
                            childCount--;
                            if (childCount < i3) {
                                this.f9201b = 4;
                            } else {
                                this.f9201b = 2;
                                childCount = i3;
                            }
                        } else {
                            return;
                        }
                    } else if (max > childCount) {
                        int i4 = i2 - i3;
                        if (i4 >= 1) {
                            i3 = (max - childCount) + 1;
                            childCount = i4 - 1;
                            if (childCount < i3) {
                                this.f9201b = 3;
                            } else {
                                this.f9201b = 1;
                                childCount = i3;
                            }
                        } else {
                            return;
                        }
                    } else {
                        m11500b(max, i2, 200);
                        return;
                    }
                    if (childCount > 0) {
                        this.f9205f = 200 / childCount;
                    } else {
                        this.f9205f = 200;
                    }
                    this.f9202c = max;
                    this.f9203d = i2;
                    this.f9204e = -1;
                    this.f9200a.f9245a.m11463a((Runnable) this);
                }
            }
        }

        void m11499a(int i, int i2, int i3) {
            m11496a();
            if (this.f9200a.aj) {
                this.f9200a.f9240O = new ProGuard(this, i, i2, i3);
                return;
            }
            int childCount = this.f9200a.getChildCount();
            if (childCount != 0) {
                int paddingLeft = this.f9200a.getPaddingLeft() + i2;
                this.f9202c = Math.max(0, Math.min(this.f9200a.getCount() - 1, i));
                this.f9207h = paddingLeft;
                this.f9203d = -1;
                this.f9204e = -1;
                this.f9201b = 5;
                int i4 = this.f9200a.V;
                int i5 = (i4 + childCount) - 1;
                if (this.f9202c < i4) {
                    paddingLeft = i4 - this.f9202c;
                } else if (this.f9202c > i5) {
                    paddingLeft = this.f9202c - i5;
                } else {
                    this.f9200a.m11581a(this.f9200a.getChildAt(this.f9202c - i4).getLeft() - paddingLeft, i3, false);
                    return;
                }
                float f = ((float) paddingLeft) / ((float) childCount);
                if (f >= 1.0f) {
                    i3 = (int) (((float) i3) / f);
                }
                this.f9205f = i3;
                this.f9204e = -1;
                this.f9200a.f9245a.m11463a((Runnable) this);
            }
        }

        void m11500b(int i, int i2, int i3) {
            int i4 = this.f9200a.V;
            int childCount = (this.f9200a.getChildCount() + i4) - 1;
            int i5 = this.f9200a.f9265u.left;
            int width = this.f9200a.getWidth() - this.f9200a.f9265u.right;
            if (i < i4 || i > childCount) {
                Log.w("AbsListView", "scrollToVisible called with targetPos " + i + " not visible [" + i4 + ", " + childCount + "]");
            }
            if (i2 < i4 || i2 > childCount) {
                i2 = -1;
            }
            View childAt = this.f9200a.getChildAt(i - i4);
            int left = childAt.getLeft();
            childCount = childAt.getRight();
            if (childCount > width) {
                childCount -= width;
            } else {
                childCount = 0;
            }
            if (left < i5) {
                childCount = left - i5;
            }
            if (childCount != 0) {
                if (i2 >= 0) {
                    View childAt2 = this.f9200a.getChildAt(i2 - i4);
                    left = childAt2.getLeft();
                    i4 = childAt2.getRight();
                    int abs = Math.abs(childCount);
                    if (childCount < 0 && i4 + abs > width) {
                        childCount = Math.max(0, i4 - width);
                    } else if (childCount > 0 && left - abs < i5) {
                        childCount = Math.min(0, left - i5);
                    }
                }
                this.f9200a.m11595c(childCount, i3);
            }
        }

        public void m11496a() {
            this.f9200a.removeCallbacks(this);
        }

        public void run() {
            int i = 0;
            int width = this.f9200a.getWidth();
            int i2 = this.f9200a.V;
            View childAt;
            int width2;
            int max;
            switch (this.f9201b) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    i = this.f9200a.getChildCount() - 1;
                    i2 += i;
                    if (i < 0) {
                        return;
                    }
                    if (i2 == this.f9204e) {
                        this.f9200a.f9245a.m11463a((Runnable) this);
                        return;
                    }
                    childAt = this.f9200a.getChildAt(i);
                    width2 = childAt.getWidth();
                    width -= childAt.getLeft();
                    if (i2 < this.f9200a.ao - 1) {
                        i = Math.max(this.f9200a.f9265u.right, this.f9206g);
                    } else {
                        i = this.f9200a.f9265u.right;
                    }
                    this.f9200a.m11581a(i + (width2 - width), this.f9205f, true);
                    this.f9204e = i2;
                    if (i2 < this.f9202c) {
                        this.f9200a.f9245a.m11463a((Runnable) this);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    if (i2 == this.f9204e) {
                        this.f9200a.f9245a.m11463a((Runnable) this);
                        return;
                    }
                    childAt = this.f9200a.getChildAt(0);
                    if (childAt != null) {
                        width = childAt.getLeft();
                        if (i2 > 0) {
                            i = Math.max(this.f9206g, this.f9200a.f9265u.left);
                        } else {
                            i = this.f9200a.f9265u.left;
                        }
                        this.f9200a.m11581a(width - i, this.f9205f, true);
                        this.f9204e = i2;
                        if (i2 > this.f9202c) {
                            this.f9200a.f9245a.m11463a((Runnable) this);
                        }
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    width = this.f9200a.getChildCount();
                    if (i2 != this.f9203d && width > 1 && width + i2 < this.f9200a.ao) {
                        width = i2 + 1;
                        if (width == this.f9204e) {
                            this.f9200a.f9245a.m11463a((Runnable) this);
                            return;
                        }
                        View childAt2 = this.f9200a.getChildAt(1);
                        width2 = childAt2.getWidth();
                        i2 = childAt2.getLeft();
                        max = Math.max(this.f9200a.f9265u.right, this.f9206g);
                        if (width < this.f9203d) {
                            this.f9200a.m11581a(Math.max(0, (i2 + width2) - max), this.f9205f, true);
                            this.f9204e = width;
                            this.f9200a.f9245a.m11463a((Runnable) this);
                        } else if (i2 > max) {
                            this.f9200a.m11581a(i2 - max, this.f9205f, true);
                        }
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    i = this.f9200a.getChildCount() - 2;
                    if (i >= 0) {
                        i2 += i;
                        if (i2 == this.f9204e) {
                            this.f9200a.f9245a.m11463a((Runnable) this);
                            return;
                        }
                        childAt = this.f9200a.getChildAt(i);
                        width2 = childAt.getWidth();
                        i = childAt.getLeft();
                        max = width - i;
                        int max2 = Math.max(this.f9200a.f9265u.left, this.f9206g);
                        this.f9204e = i2;
                        if (i2 > this.f9203d) {
                            this.f9200a.m11581a(-(max - max2), this.f9205f, true);
                            this.f9200a.f9245a.m11463a((Runnable) this);
                            return;
                        }
                        width -= max2;
                        i += width2;
                        if (width > i) {
                            this.f9200a.m11581a(-(width - i), this.f9205f, true);
                        }
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    if (this.f9204e == i2) {
                        this.f9200a.f9245a.m11463a((Runnable) this);
                        return;
                    }
                    this.f9204e = i2;
                    width = this.f9200a.getChildCount();
                    width2 = this.f9202c;
                    max = (i2 + width) - 1;
                    if (width2 < i2) {
                        i = (i2 - width2) + 1;
                    } else if (width2 > max) {
                        i = width2 - max;
                    }
                    float min = Math.min(Math.abs(((float) i) / ((float) width)), 1.0f);
                    if (width2 < i2) {
                        this.f9200a.m11581a((int) (((float) (-this.f9200a.getWidth())) * min), (int) (min * ((float) this.f9205f)), true);
                        this.f9200a.f9245a.m11463a((Runnable) this);
                    } else if (width2 > max) {
                        this.f9200a.m11581a((int) (((float) this.f9200a.getWidth()) * min), (int) (min * ((float) this.f9205f)), true);
                        this.f9200a.f9245a.m11463a((Runnable) this);
                    } else {
                        i = this.f9200a.getChildAt(width2 - i2).getLeft() - this.f9207h;
                        this.f9200a.m11581a(i, (int) (((float) this.f9205f) * (((float) Math.abs(i)) / ((float) this.f9200a.getWidth()))), true);
                    }
                default:
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.k */
    public class ProGuard {
        final /* synthetic */ AbsHListView f9208a;
        private ProGuard f9209b;
        private int f9210c;
        private View[] f9211d;
        private ArrayList<View>[] f9212e;
        private int f9213f;
        private ArrayList<View> f9214g;
        private ArrayList<View> f9215h;
        private android.support.v4.p015f.ProGuard<View> f9216i;

        public ProGuard(AbsHListView absHListView) {
            this.f9208a = absHListView;
            this.f9211d = new View[0];
        }

        public void m11504a(int i) {
            if (i < 1) {
                throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
            }
            ArrayList[] arrayListArr = new ArrayList[i];
            for (int i2 = 0; i2 < i; i2++) {
                arrayListArr[i2] = new ArrayList();
            }
            this.f9213f = i;
            this.f9214g = arrayListArr[0];
            this.f9212e = arrayListArr;
        }

        public void m11503a() {
            int i;
            int i2 = 0;
            int size;
            if (this.f9213f == 1) {
                ArrayList arrayList = this.f9214g;
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).forceLayout();
                }
            } else {
                size = this.f9213f;
                for (int i3 = 0; i3 < size; i3++) {
                    ArrayList arrayList2 = this.f9212e[i3];
                    int size2 = arrayList2.size();
                    for (i = 0; i < size2; i++) {
                        ((View) arrayList2.get(i)).forceLayout();
                    }
                }
            }
            if (this.f9216i != null) {
                i = this.f9216i.m526b();
                while (i2 < i) {
                    ((View) this.f9216i.m529c(i2)).forceLayout();
                    i2++;
                }
            }
        }

        public boolean m11508b(int i) {
            return i >= 0;
        }

        public void m11507b() {
            int size;
            int i;
            if (this.f9213f == 1) {
                ArrayList arrayList = this.f9214g;
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    this.f9208a.removeDetachedView((View) arrayList.remove((size - 1) - i), false);
                }
            } else {
                size = this.f9213f;
                for (int i2 = 0; i2 < size; i2++) {
                    ArrayList arrayList2 = this.f9212e[i2];
                    int size2 = arrayList2.size();
                    for (i = 0; i < size2; i++) {
                        this.f9208a.removeDetachedView((View) arrayList2.remove((size2 - 1) - i), false);
                    }
                }
            }
            if (this.f9216i != null) {
                this.f9216i.m530c();
            }
        }

        public void m11505a(int i, int i2) {
            if (this.f9211d.length < i) {
                this.f9211d = new View[i];
            }
            this.f9210c = i2;
            View[] viewArr = this.f9211d;
            for (int i3 = 0; i3 < i; i3++) {
                View childAt = this.f9208a.getChildAt(i3);
                ProGuard proGuard = (ProGuard) childAt.getLayoutParams();
                if (!(proGuard == null || proGuard.f9192a == -2)) {
                    viewArr[i3] = childAt;
                }
            }
        }

        public View m11509c(int i) {
            int i2 = i - this.f9210c;
            View[] viewArr = this.f9211d;
            if (i2 < 0 || i2 >= viewArr.length) {
                return null;
            }
            View view = viewArr[i2];
            viewArr[i2] = null;
            return view;
        }

        View m11511d(int i) {
            if (this.f9216i == null) {
                return null;
            }
            int d = this.f9216i.m532d(i);
            if (d < 0) {
                return null;
            }
            View view = (View) this.f9216i.m529c(d);
            this.f9216i.m525a(d);
            return view;
        }

        void m11510c() {
            if (this.f9216i != null) {
                this.f9216i.m530c();
            }
        }

        View m11513e(int i) {
            if (this.f9213f == 1) {
                return AbsHListView.m11547a(this.f9214g, i);
            }
            int itemViewType = this.f9208a.f9254j.getItemViewType(i);
            if (itemViewType < 0 || itemViewType >= this.f9212e.length) {
                return null;
            }
            return AbsHListView.m11547a(this.f9212e[itemViewType], i);
        }

        @SuppressLint({"NewApi"})
        public void m11506a(View view, int i) {
            ProGuard proGuard = (ProGuard) view.getLayoutParams();
            if (proGuard != null) {
                proGuard.f9195d = i;
                int i2 = proGuard.f9192a;
                boolean hasTransientState = VERSION.SDK_INT >= 16 ? view.hasTransientState() : false;
                if (!m11508b(i2) || hasTransientState) {
                    if (i2 != -2 || hasTransientState) {
                        if (this.f9215h == null) {
                            this.f9215h = new ArrayList();
                        }
                        this.f9215h.add(view);
                    }
                    if (hasTransientState) {
                        if (this.f9216i == null) {
                            this.f9216i = new android.support.v4.p015f.ProGuard();
                        }
                        view.onStartTemporaryDetach();
                        this.f9216i.m528b(i, view);
                        return;
                    }
                    return;
                }
                view.onStartTemporaryDetach();
                if (this.f9213f == 1) {
                    this.f9214g.add(view);
                } else {
                    this.f9212e[i2].add(view);
                }
                if (VERSION.SDK_INT >= 14) {
                    view.setAccessibilityDelegate(null);
                }
                if (this.f9209b != null) {
                    this.f9209b.m11516a(view);
                }
            }
        }

        public void m11512d() {
            if (this.f9215h != null) {
                int size = this.f9215h.size();
                for (int i = 0; i < size; i++) {
                    this.f9208a.removeDetachedView((View) this.f9215h.get(i), false);
                }
                this.f9215h.clear();
            }
        }

        @SuppressLint({"NewApi"})
        public void m11514e() {
            boolean z;
            View[] viewArr = this.f9211d;
            boolean z2 = this.f9209b != null;
            if (this.f9213f > 1) {
                z = true;
            } else {
                z = false;
            }
            ArrayList arrayList = this.f9214g;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    ProGuard proGuard = (ProGuard) view.getLayoutParams();
                    int i = proGuard.f9192a;
                    viewArr[length] = null;
                    boolean hasTransientState = VERSION.SDK_INT >= 16 ? view.hasTransientState() : false;
                    if (!m11508b(i) || hasTransientState) {
                        if (i != -2 || hasTransientState) {
                            this.f9208a.removeDetachedView(view, false);
                        }
                        if (hasTransientState) {
                            if (this.f9216i == null) {
                                this.f9216i = new android.support.v4.p015f.ProGuard();
                            }
                            this.f9216i.m528b(this.f9210c + length, view);
                        }
                    } else {
                        ArrayList arrayList2;
                        if (z) {
                            arrayList2 = this.f9212e[i];
                        } else {
                            arrayList2 = arrayList;
                        }
                        view.onStartTemporaryDetach();
                        proGuard.f9195d = this.f9210c + length;
                        arrayList2.add(view);
                        if (VERSION.SDK_INT >= 14) {
                            view.setAccessibilityDelegate(null);
                        }
                        if (z2) {
                            this.f9209b.m11516a(view);
                        }
                        arrayList = arrayList2;
                    }
                }
            }
            m11502f();
        }

        @SuppressLint({"NewApi"})
        private void m11502f() {
            int i = 0;
            int length = this.f9211d.length;
            int i2 = this.f9213f;
            ArrayList[] arrayListArr = this.f9212e;
            for (int i3 = 0; i3 < i2; i3++) {
                ArrayList arrayList = arrayListArr[i3];
                int size = arrayList.size();
                int i4 = size - length;
                size--;
                int i5 = 0;
                while (i5 < i4) {
                    int i6 = size - 1;
                    this.f9208a.removeDetachedView((View) arrayList.remove(size), false);
                    i5++;
                    size = i6;
                }
            }
            if (this.f9216i != null) {
                while (i < this.f9216i.m526b()) {
                    if (!((View) this.f9216i.m529c(i)).hasTransientState()) {
                        this.f9216i.m525a(i);
                        i--;
                    }
                    i++;
                }
            }
        }

        void m11515f(int i) {
            int size;
            int i2;
            if (this.f9213f == 1) {
                ArrayList arrayList = this.f9214g;
                size = arrayList.size();
                for (i2 = 0; i2 < size; i2++) {
                    ((View) arrayList.get(i2)).setDrawingCacheBackgroundColor(i);
                }
            } else {
                size = this.f9213f;
                int i3;
                for (i3 = 0; i3 < size; i3++) {
                    ArrayList arrayList2 = this.f9212e[i3];
                    int size2 = arrayList2.size();
                    for (i2 = 0; i2 < size2; i2++) {
                        ((View) arrayList2.get(i2)).setDrawingCacheBackgroundColor(i);
                    }
                }
            }
            for (View view : this.f9211d) {
                if (view != null) {
                    view.setDrawingCacheBackgroundColor(i);
                }
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.l */
    public interface ProGuard {
        void m11516a(View view);
    }

    /* renamed from: it.sephiroth.android.library.widget.AbsHListView.m */
    public interface ProGuard {
        void m11517a(Rect rect);
    }

    protected abstract void m11584a(boolean z);

    protected abstract int m11597d(int i);

    public abstract void setSelectionInt(int i);

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return m11578a(attributeSet);
    }

    static {
        f9224T = new LinearInterpolator();
        f9225U = new int[]{0};
    }

    public AbsHListView(Context context) {
        super(context);
        this.f9246b = 0;
        this.f9252h = 0;
        this.f9256l = false;
        this.f9258n = -1;
        this.f9259o = new Rect();
        this.f9260p = new ProGuard(this);
        this.f9261q = 0;
        this.f9262r = 0;
        this.f9263s = 0;
        this.f9264t = 0;
        this.f9265u = new Rect();
        this.f9266v = 0;
        this.f9231F = -1;
        this.f9235J = 0;
        this.ax = true;
        this.f9238M = -1;
        this.az = null;
        this.aA = -1;
        this.aJ = 0;
        this.aO = 1.0f;
        this.f9241P = new boolean[1];
        this.aP = -1;
        this.aU = 0;
        m11574y();
    }

    public AbsHListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hlv_absHListViewStyle);
    }

    public AbsHListView(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        int color;
        boolean z4 = true;
        int i3 = 0;
        super(context, attributeSet, i);
        this.f9246b = 0;
        this.f9252h = 0;
        this.f9256l = false;
        this.f9258n = -1;
        this.f9259o = new Rect();
        this.f9260p = new ProGuard(this);
        this.f9261q = 0;
        this.f9262r = 0;
        this.f9263s = 0;
        this.f9264t = 0;
        this.f9265u = new Rect();
        this.f9266v = 0;
        this.f9231F = -1;
        this.f9235J = 0;
        this.ax = true;
        this.f9238M = -1;
        this.az = null;
        this.aA = -1;
        this.aJ = 0;
        this.aO = 1.0f;
        this.f9241P = new boolean[1];
        this.aP = -1;
        this.aU = 0;
        m11574y();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, com.yf.smart.weloopx.ProGuard.styleable.AbsHListView, i, 0);
        if (obtainStyledAttributes != null) {
            drawable = obtainStyledAttributes.getDrawable(0);
            z = obtainStyledAttributes.getBoolean(1, false);
            z2 = obtainStyledAttributes.getBoolean(6, false);
            z3 = obtainStyledAttributes.getBoolean(2, true);
            i2 = obtainStyledAttributes.getInt(7, 0);
            color = obtainStyledAttributes.getColor(3, 0);
            z4 = obtainStyledAttributes.getBoolean(5, true);
            i3 = obtainStyledAttributes.getInt(4, 0);
            obtainStyledAttributes.recycle();
        } else {
            i2 = 0;
            z3 = true;
            z2 = false;
            z = false;
            drawable = null;
            color = 0;
        }
        if (drawable != null) {
            setSelector(drawable);
        }
        this.f9256l = z;
        setStackFromRight(z2);
        setScrollingCacheEnabled(z3);
        setTranscriptMode(i2);
        setCacheColorHint(color);
        setSmoothScrollbarEnabled(z4);
        setChoiceMode(i3);
    }

    private void m11574y() {
        setClickable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setAlwaysDrawnWithCacheEnabled(false);
        setScrollingCacheEnabled(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.aK = viewConfiguration.getScaledTouchSlop();
        this.aM = viewConfiguration.getScaledMinimumFlingVelocity();
        this.aN = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f9242Q = viewConfiguration.getScaledOverscrollDistance();
        this.f9243R = viewConfiguration.getScaledOverflingDistance();
        this.f9245a = it.sephiroth.android.library.p151a.ProGuard.m11472a(this);
    }

    public void setOverScrollMode(int i) {
        if (i == 2) {
            this.aQ = null;
            this.aR = null;
        } else if (this.aQ == null) {
            Context context = getContext();
            this.aQ = new android.support.v4.widget.ProGuard(context);
            this.aR = new android.support.v4.widget.ProGuard(context);
        }
        super.setOverScrollMode(i);
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.f9255k = this.f9254j.hasStableIds();
            if (this.f9246b != 0 && this.f9255k && this.f9251g == null) {
                this.f9251g = new android.support.v4.p015f.ProGuard();
            }
        }
        if (this.f9250f != null) {
            this.f9250f.m530c();
        }
        if (this.f9251g != null) {
            this.f9251g.m513c();
        }
    }

    public int getCheckedItemCount() {
        return this.f9249e;
    }

    public boolean m11586a(int i) {
        if (this.f9246b == 0 || this.f9250f == null) {
            return false;
        }
        return ((Boolean) this.f9250f.m524a(i, Boolean.valueOf(false))).booleanValue();
    }

    public int getCheckedItemPosition() {
        if (this.f9246b == 1 && this.f9250f != null && this.f9250f.m526b() == 1) {
            return this.f9250f.m527b(0);
        }
        return -1;
    }

    public android.support.v4.p015f.ProGuard<Boolean> getCheckedItemPositions() {
        if (this.f9246b != 0) {
            return this.f9250f;
        }
        return null;
    }

    public long[] getCheckedItemIds() {
        int i = 0;
        if (this.f9246b == 0 || this.f9251g == null || this.f9254j == null) {
            return new long[0];
        }
        android.support.v4.p015f.ProGuard proGuard = this.f9251g;
        int b = proGuard.m509b();
        long[] jArr = new long[b];
        while (i < b) {
            jArr[i] = proGuard.m504a(i);
            i++;
        }
        return jArr;
    }

    public void m11579a() {
        if (this.f9250f != null) {
            this.f9250f.m530c();
        }
        if (this.f9251g != null) {
            this.f9251g.m513c();
        }
        this.f9249e = 0;
    }

    public void m11583a(int i, boolean z) {
        if (this.f9246b != 0) {
            if (VERSION.SDK_INT >= 11 && z && this.f9246b == 3 && this.f9247c == null) {
                if (this.f9248d == null || !((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d).m11471a()) {
                    throw new IllegalStateException("AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback.");
                }
                this.f9247c = startActionMode((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d);
            }
            boolean booleanValue;
            if (this.f9246b == 2 || (VERSION.SDK_INT >= 11 && this.f9246b == 3)) {
                booleanValue = ((Boolean) this.f9250f.m524a(i, Boolean.valueOf(false))).booleanValue();
                this.f9250f.m528b(i, Boolean.valueOf(z));
                if (this.f9251g != null && this.f9254j.hasStableIds()) {
                    if (z) {
                        this.f9251g.m512b(this.f9254j.getItemId(i), Integer.valueOf(i));
                    } else {
                        this.f9251g.m511b(this.f9254j.getItemId(i));
                    }
                }
                if (booleanValue != z) {
                    if (z) {
                        this.f9249e++;
                    } else {
                        this.f9249e--;
                    }
                }
                if (this.f9247c != null) {
                    ((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d).m11469a((ActionMode) this.f9247c, i, this.f9254j.getItemId(i), z);
                }
            } else {
                booleanValue = this.f9251g != null && this.f9254j.hasStableIds();
                if (z || m11586a(i)) {
                    this.f9250f.m530c();
                    if (booleanValue) {
                        this.f9251g.m513c();
                    }
                }
                if (z) {
                    this.f9250f.m528b(i, Boolean.valueOf(true));
                    if (booleanValue) {
                        this.f9251g.m512b(this.f9254j.getItemId(i), Integer.valueOf(i));
                    }
                    this.f9249e = 1;
                } else if (this.f9250f.m526b() == 0 || !((Boolean) this.f9250f.m529c(0)).booleanValue()) {
                    this.f9249e = 0;
                }
            }
            if (!this.af && !this.at) {
                this.aj = true;
                m11536x();
                requestLayout();
            }
        }
    }

    public boolean m11588a(View view, int i, long j) {
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        if (this.f9246b != 0) {
            if (this.f9246b == 2 || (VERSION.SDK_INT >= 11 && this.f9246b == 3 && this.f9247c != null)) {
                boolean z4 = !((Boolean) this.f9250f.m524a(i, Boolean.valueOf(false))).booleanValue();
                this.f9250f.m528b(i, Boolean.valueOf(z4));
                if (this.f9251g != null && this.f9254j.hasStableIds()) {
                    if (z4) {
                        this.f9251g.m512b(this.f9254j.getItemId(i), Integer.valueOf(i));
                    } else {
                        this.f9251g.m511b(this.f9254j.getItemId(i));
                    }
                }
                if (z4) {
                    this.f9249e++;
                } else {
                    this.f9249e--;
                }
                if (this.f9247c != null) {
                    ((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d).m11469a((ActionMode) this.f9247c, i, j, z4);
                } else {
                    z3 = true;
                }
                z = z3;
                z3 = true;
            } else if (this.f9246b == 1) {
                if (!((Boolean) this.f9250f.m524a(i, Boolean.valueOf(false))).booleanValue()) {
                    this.f9250f.m530c();
                    this.f9250f.m528b(i, Boolean.valueOf(true));
                    if (this.f9251g != null && this.f9254j.hasStableIds()) {
                        this.f9251g.m513c();
                        this.f9251g.m512b(this.f9254j.getItemId(i), Integer.valueOf(i));
                    }
                    this.f9249e = 1;
                } else if (this.f9250f.m526b() == 0 || !((Boolean) this.f9250f.m529c(0)).booleanValue()) {
                    this.f9249e = 0;
                }
                z3 = true;
                z = true;
            } else {
                z = true;
            }
            if (z3) {
                m11575z();
            }
            boolean z5 = z;
            z = true;
            z2 = z5;
        } else {
            z = false;
        }
        if (z2) {
            return z | super.m11527a(view, i, j);
        }
        return z;
    }

    private void m11575z() {
        boolean z;
        int i = this.V;
        int childCount = getChildCount();
        if (VERSION.SDK_INT >= 11) {
            z = true;
        } else {
            z = false;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int i3 = i + i2;
            if (childAt instanceof Checkable) {
                ((Checkable) childAt).setChecked(((Boolean) this.f9250f.m524a(i3, Boolean.valueOf(false))).booleanValue());
            } else if (z) {
                childAt.setActivated(((Boolean) this.f9250f.m524a(i3, Boolean.valueOf(false))).booleanValue());
            }
        }
    }

    public int getChoiceMode() {
        return this.f9246b;
    }

    @TargetApi(11)
    public void setChoiceMode(int i) {
        this.f9246b = i;
        if (VERSION.SDK_INT >= 11 && this.f9247c != null) {
            if (VERSION.SDK_INT >= 11) {
                ((ActionMode) this.f9247c).finish();
            }
            this.f9247c = null;
        }
        if (this.f9246b != 0) {
            if (this.f9250f == null) {
                this.f9250f = new android.support.v4.p015f.ProGuard();
            }
            if (this.f9251g == null && this.f9254j != null && this.f9254j.hasStableIds()) {
                this.f9251g = new android.support.v4.p015f.ProGuard();
            }
            if (VERSION.SDK_INT >= 11 && this.f9246b == 3) {
                m11579a();
                setLongClickable(true);
            }
        }
    }

    @TargetApi(11)
    public void setMultiChoiceModeListener(it.sephiroth.android.library.p151a.p152a.ProGuard proGuard) {
        if (VERSION.SDK_INT >= 11) {
            if (this.f9248d == null) {
                this.f9248d = new it.sephiroth.android.library.p151a.p152a.ProGuard(this);
            }
            ((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d).m11470a(proGuard);
            return;
        }
        Log.e("AbsListView", "setMultiChoiceModeListener not supported for this version of Android");
    }

    private boolean m11537A() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        if (childCount != this.ao) {
            return false;
        }
        if (getChildAt(0).getLeft() < this.f9265u.left || getChildAt(childCount - 1).getRight() > getWidth() - this.f9265u.right) {
            return false;
        }
        return true;
    }

    protected int getHorizontalScrollbarHeight() {
        return super.getHorizontalScrollbarHeight();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.ax = z;
    }

    public void setOnScrollListener(ProGuard proGuard) {
        this.aw = proGuard;
        m11590b();
    }

    protected void m11590b() {
        if (this.aw != null) {
            this.aw.m11495a(this, this.V, getChildCount(), this.ao);
        }
        onScrollChanged(0, 0, 0, 0);
    }

    public void sendAccessibilityEvent(int i) {
        if (i == 4096) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (this.aZ != firstVisiblePosition || this.ba != lastVisiblePosition) {
                this.aZ = firstVisiblePosition;
                this.ba = lastVisiblePosition;
            } else {
                return;
            }
        }
        super.sendAccessibilityEvent(i);
    }

    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AbsHListView.class.getName());
    }

    @SuppressLint({"Override"})
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AbsHListView.class.getName());
        if (isEnabled()) {
            if (getFirstVisiblePosition() > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (getLastVisiblePosition() < getCount() - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
        }
    }

    @TargetApi(16)
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        switch (i) {
            case 4096:
                if (!isEnabled() || getLastVisiblePosition() >= getCount() - 1) {
                    return false;
                }
                m11595c((getWidth() - this.f9265u.left) - this.f9265u.right, 200);
                return true;
            case 8192:
                if (!isEnabled() || this.V <= 0) {
                    return false;
                }
                m11595c(-((getWidth() - this.f9265u.left) - this.f9265u.right), 200);
                return true;
            default:
                return false;
        }
    }

    public void setScrollingCacheEnabled(boolean z) {
        if (this.f9237L && !z) {
            m11543G();
        }
        this.f9237L = z;
    }

    public void getFocusedRect(Rect rect) {
        View selectedView = getSelectedView();
        if (selectedView == null || selectedView.getParent() != this) {
            super.getFocusedRect(rect);
            return;
        }
        selectedView.getFocusedRect(rect);
        offsetDescendantRectToMyCoords(selectedView, rect);
    }

    private void m11538B() {
        setSelector(getResources().getDrawable(17301602));
    }

    public void setStackFromRight(boolean z) {
        if (this.f9236K != z) {
            this.f9236K = z;
            m11593c();
        }
    }

    void m11593c() {
        if (getChildCount() > 0) {
            m11598d();
            requestLayout();
            invalidate();
        }
    }

    public Parcelable onSaveInstanceState() {
        boolean z = true;
        int i = 0;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.bc != null) {
            savedState.f9170a = this.bc.f9170a;
            savedState.f9171b = this.bc.f9171b;
            savedState.f9172c = this.bc.f9172c;
            savedState.f9173d = this.bc.f9173d;
            savedState.f9174e = this.bc.f9174e;
            savedState.f9175f = this.bc.f9175f;
            savedState.f9176g = this.bc.f9176g;
            savedState.f9177h = this.bc.f9177h;
            savedState.f9178i = this.bc.f9178i;
            savedState.f9179j = this.bc.f9179j;
            return savedState;
        }
        boolean z2 = getChildCount() > 0 && this.ao > 0;
        long selectedItemId = getSelectedItemId();
        savedState.f9170a = selectedItemId;
        savedState.f9174e = getWidth();
        if (selectedItemId >= 0) {
            savedState.f9172c = this.f9235J;
            savedState.f9173d = getSelectedItemPosition();
            savedState.f9171b = -1;
        } else if (!z2 || this.V <= 0) {
            savedState.f9172c = 0;
            savedState.f9171b = -1;
            savedState.f9173d = 0;
        } else {
            savedState.f9172c = getChildAt(0).getLeft();
            int i2 = this.V;
            if (i2 >= this.ao) {
                i2 = this.ao - 1;
            }
            savedState.f9173d = i2;
            savedState.f9171b = this.f9254j.getItemId(i2);
        }
        savedState.f9175f = null;
        if (VERSION.SDK_INT < 11 || this.f9246b != 3 || this.f9247c == null) {
            z = false;
        }
        savedState.f9176g = z;
        if (this.f9250f != null) {
            try {
                savedState.f9178i = this.f9250f.m523a();
            } catch (NoSuchMethodError e) {
                e.printStackTrace();
                savedState.f9178i = new android.support.v4.p015f.ProGuard();
            }
        }
        if (this.f9251g != null) {
            android.support.v4.p015f.ProGuard proGuard = new android.support.v4.p015f.ProGuard();
            int b = this.f9251g.m509b();
            while (i < b) {
                proGuard.m512b(this.f9251g.m504a(i), this.f9251g.m510b(i));
                i++;
            }
            savedState.f9179j = proGuard;
        }
        savedState.f9177h = this.f9249e;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.aj = true;
        this.ac = (long) savedState.f9174e;
        if (savedState.f9170a >= 0) {
            this.ad = true;
            this.bc = savedState;
            this.ab = savedState.f9170a;
            this.aa = savedState.f9173d;
            this.W = savedState.f9172c;
            this.ae = 0;
        } else if (savedState.f9171b >= 0) {
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.f9258n = -1;
            this.ad = true;
            this.bc = savedState;
            this.ab = savedState.f9171b;
            this.aa = savedState.f9173d;
            this.W = savedState.f9172c;
            this.ae = 1;
        }
        if (savedState.f9178i != null) {
            this.f9250f = savedState.f9178i;
        }
        if (savedState.f9179j != null) {
            this.f9251g = savedState.f9179j;
        }
        this.f9249e = savedState.f9177h;
        if (VERSION.SDK_INT >= 11 && savedState.f9176g && this.f9246b == 3 && this.f9248d != null) {
            this.f9247c = startActionMode((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d);
        }
        requestLayout();
    }

    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z && this.am < 0 && !isInTouchMode()) {
            if (!(this.f9244S || this.f9254j == null)) {
                this.aj = true;
                this.ap = this.ao;
                this.ao = this.f9254j.getCount();
            }
            m11613p();
        }
    }

    public void requestLayout() {
        if (!this.at && !this.af) {
            super.requestLayout();
        }
    }

    protected void m11598d() {
        removeAllViewsInLayout();
        this.V = 0;
        this.aj = false;
        this.f9240O = null;
        this.ad = false;
        this.bc = null;
        this.ar = -1;
        this.as = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        this.f9235J = 0;
        this.f9258n = -1;
        this.f9259o.setEmpty();
        invalidate();
    }

    protected int computeHorizontalScrollExtent() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return 0;
        }
        if (!this.ax) {
            return 1;
        }
        int i = childCount * 100;
        View childAt = getChildAt(0);
        int left = childAt.getLeft();
        int width = childAt.getWidth();
        if (width > 0) {
            i += (left * 100) / width;
        }
        childAt = getChildAt(childCount - 1);
        childCount = childAt.getRight();
        width = childAt.getWidth();
        if (width > 0) {
            return i - (((childCount - getWidth()) * 100) / width);
        }
        return i;
    }

    protected int computeHorizontalScrollOffset() {
        int i = 0;
        int i2 = this.V;
        int childCount = getChildCount();
        if (i2 < 0 || childCount <= 0) {
            return 0;
        }
        int width;
        if (this.ax) {
            View childAt = getChildAt(0);
            childCount = childAt.getLeft();
            width = childAt.getWidth();
            if (width > 0) {
                return Math.max(((i2 * 100) - ((childCount * 100) / width)) + ((int) (((((float) getScrollX()) / ((float) getWidth())) * ((float) this.ao)) * 100.0f)), 0);
            }
            return 0;
        }
        width = this.ao;
        if (i2 != 0) {
            if (i2 + childCount == width) {
                i = width;
            } else {
                i = (childCount / 2) + i2;
            }
        }
        return (int) (((((float) i) / ((float) width)) * ((float) childCount)) + ((float) i2));
    }

    protected int computeHorizontalScrollRange() {
        if (!this.ax) {
            return this.ao;
        }
        int max = Math.max(this.ao * 100, 0);
        if (getScrollX() != 0) {
            return max + Math.abs((int) (((((float) getScrollX()) / ((float) getWidth())) * ((float) this.ao)) * 100.0f));
        }
        return max;
    }

    protected float getLeftFadingEdgeStrength() {
        int childCount = getChildCount();
        float leftFadingEdgeStrength = super.getLeftFadingEdgeStrength();
        if (childCount == 0) {
            return leftFadingEdgeStrength;
        }
        if (this.V > 0) {
            return 1.0f;
        }
        childCount = getChildAt(0).getLeft();
        return childCount < getPaddingLeft() ? ((float) (-(childCount - getPaddingLeft()))) / ((float) getHorizontalFadingEdgeLength()) : leftFadingEdgeStrength;
    }

    protected float getRightFadingEdgeStrength() {
        int childCount = getChildCount();
        float rightFadingEdgeStrength = super.getRightFadingEdgeStrength();
        if (childCount == 0) {
            return rightFadingEdgeStrength;
        }
        if ((this.V + childCount) - 1 < this.ao - 1) {
            return 1.0f;
        }
        childCount = getChildAt(childCount - 1).getRight();
        int width = getWidth();
        return childCount > width - getPaddingRight() ? ((float) ((childCount - width) + getPaddingRight())) / ((float) getHorizontalFadingEdgeLength()) : rightFadingEdgeStrength;
    }

    protected void onMeasure(int i, int i2) {
        if (this.f9257m == null) {
            m11538B();
        }
        Rect rect = this.f9265u;
        rect.left = this.f9261q + getPaddingLeft();
        rect.top = this.f9262r + getPaddingTop();
        rect.right = this.f9263s + getPaddingRight();
        rect.bottom = this.f9264t + getPaddingBottom();
        if (this.aG == 1) {
            int right;
            int childCount = getChildCount();
            int width = getWidth() - getPaddingRight();
            View childAt = getChildAt(childCount - 1);
            if (childAt != null) {
                right = childAt.getRight();
            } else {
                right = width;
            }
            boolean z = childCount + this.V >= this.bb && right <= width;
            this.aV = z;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.af = true;
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                getChildAt(i5).forceLayout();
            }
            this.f9260p.m11503a();
        }
        m11601e();
        this.af = false;
        this.f9239N = (i3 - i) / 3;
    }

    protected void m11601e() {
    }

    protected void m11603f() {
        int i;
        int i2 = 1;
        int i3 = 0;
        if (this.f9267w != null) {
            i = this.V > 0 ? 1 : 0;
            if (i == 0 && getChildCount() > 0) {
                i = getChildAt(0).getLeft() < this.f9265u.left ? 1 : 0;
            }
            View view = this.f9267w;
            if (i != 0) {
                i = 0;
            } else {
                i = 4;
            }
            view.setVisibility(i);
        }
        if (this.f9268x != null) {
            int childCount = getChildCount();
            if (this.V + childCount < this.ao) {
                i = 1;
            } else {
                i = 0;
            }
            if (i != 0 || childCount <= 0) {
                i2 = i;
            } else if (getChildAt(childCount - 1).getRight() <= getRight() - this.f9265u.right) {
                i2 = 0;
            }
            View view2 = this.f9268x;
            if (i2 == 0) {
                i3 = 4;
            }
            view2.setVisibility(i3);
        }
    }

    @ExportedProperty
    public View getSelectedView() {
        if (this.ao <= 0 || this.am < 0) {
            return null;
        }
        return getChildAt(this.am - this.V);
    }

    public int getListPaddingTop() {
        return this.f9265u.top;
    }

    public int getListPaddingBottom() {
        return this.f9265u.bottom;
    }

    public int getListPaddingLeft() {
        return this.f9265u.left;
    }

    public int getListPaddingRight() {
        return this.f9265u.right;
    }

    @SuppressLint({"NewApi"})
    protected View m11577a(int i, boolean[] zArr) {
        zArr[0] = false;
        View d = this.f9260p.m11511d(i);
        if (d == null) {
            d = this.f9260p.m11513e(i);
            View view;
            if (d != null) {
                view = this.f9254j.getView(i, d, this);
                if (VERSION.SDK_INT >= 16 && view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
                if (view != d) {
                    this.f9260p.m11506a(d, i);
                    if (this.aH != 0) {
                        view.setDrawingCacheBackgroundColor(this.aH);
                        d = view;
                    }
                    d = view;
                } else {
                    zArr[0] = true;
                    view.onFinishTemporaryDetach();
                    d = view;
                }
            } else {
                view = this.f9254j.getView(i, null, this);
                if (VERSION.SDK_INT >= 16 && view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
                if (this.aH != 0) {
                    view.setDrawingCacheBackgroundColor(this.aH);
                }
                d = view;
            }
            if (this.f9255k) {
                LayoutParams layoutParams = d.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = (ProGuard) generateDefaultLayoutParams();
                } else if (checkLayoutParams(layoutParams)) {
                    r0 = (ProGuard) layoutParams;
                } else {
                    r0 = (ProGuard) generateLayoutParams(layoutParams);
                }
                layoutParams.f9196e = this.f9254j.getItemId(i);
                d.setLayoutParams(layoutParams);
            }
            if (this.aq.isEnabled() && this.aY == null) {
                this.aY = new ProGuard(this);
            }
        }
        return d;
    }

    protected void m11582a(int i, View view) {
        if (i != -1) {
            this.f9258n = i;
        }
        Rect rect = this.f9259o;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (view instanceof ProGuard) {
            ((ProGuard) view).m11517a(rect);
        }
        m11549a(rect.left, rect.top, rect.right, rect.bottom);
        boolean z = this.aI;
        if (view.isEnabled() != z) {
            this.aI = !z;
            if (getSelectedItemPosition() != -1) {
                refreshDrawableState();
            }
        }
    }

    private void m11549a(int i, int i2, int i3, int i4) {
        this.f9259o.set(i - this.f9261q, i2 - this.f9262r, this.f9263s + i3, this.f9264t + i4);
    }

    protected void dispatchDraw(Canvas canvas) {
        boolean z = this.f9256l;
        if (!z) {
            m11550a(canvas);
        }
        super.dispatchDraw(canvas);
        if (z) {
            m11550a(canvas);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (getChildCount() > 0) {
            this.aj = true;
            m11536x();
        }
    }

    boolean m11604g() {
        switch (this.f9231F) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                return true;
            default:
                return false;
        }
    }

    protected boolean m11605h() {
        return (hasFocus() && !isInTouchMode()) || m11604g();
    }

    private void m11550a(Canvas canvas) {
        if (!this.f9259o.isEmpty()) {
            Drawable drawable = this.f9257m;
            drawable.setBounds(this.f9259o);
            drawable.draw(canvas);
        }
    }

    public void setDrawSelectorOnTop(boolean z) {
        this.f9256l = z;
    }

    public void setSelector(int i) {
        setSelector(getResources().getDrawable(i));
    }

    public void setSelector(Drawable drawable) {
        if (this.f9257m != null) {
            this.f9257m.setCallback(null);
            unscheduleDrawable(this.f9257m);
        }
        this.f9257m = drawable;
        Rect rect = new Rect();
        drawable.getPadding(rect);
        this.f9261q = rect.left;
        this.f9262r = rect.top;
        this.f9263s = rect.right;
        this.f9264t = rect.bottom;
        drawable.setCallback(this);
        m11607j();
    }

    public Drawable getSelector() {
        return this.f9257m;
    }

    protected void m11606i() {
        if (isEnabled() && isClickable()) {
            Drawable drawable = this.f9257m;
            Rect rect = this.f9259o;
            if (drawable == null) {
                return;
            }
            if ((isFocused() || m11604g()) && !rect.isEmpty()) {
                View childAt = getChildAt(this.am - this.V);
                if (childAt != null) {
                    if (!childAt.hasFocusable()) {
                        childAt.setPressed(true);
                    } else {
                        return;
                    }
                }
                setPressed(true);
                boolean isLongClickable = isLongClickable();
                drawable = drawable.getCurrent();
                if (drawable != null && (drawable instanceof TransitionDrawable)) {
                    if (isLongClickable) {
                        ((TransitionDrawable) drawable).startTransition(ViewConfiguration.getLongPressTimeout());
                    } else {
                        ((TransitionDrawable) drawable).resetTransition();
                    }
                }
                if (isLongClickable && !this.aj) {
                    if (this.aD == null) {
                        this.aD = new ProGuard();
                    }
                    this.aD.m11482a();
                    postDelayed(this.aD, (long) ViewConfiguration.getLongPressTimeout());
                }
            }
        }
    }

    void m11607j() {
        if (this.f9257m == null) {
            return;
        }
        if (m11605h()) {
            this.f9257m.setState(getDrawableState());
        } else {
            this.f9257m.setState(f9225U);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m11607j();
    }

    @SuppressLint({"Override"})
    protected int[] onCreateDrawableState(int i) {
        if (this.aI) {
            return super.onCreateDrawableState(i);
        }
        int i2 = ENABLED_STATE_SET[0];
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        int length = onCreateDrawableState.length - 1;
        while (length >= 0) {
            if (onCreateDrawableState[length] == i2) {
                break;
            }
            length--;
        }
        length = -1;
        if (length < 0) {
            return onCreateDrawableState;
        }
        System.arraycopy(onCreateDrawableState, length + 1, onCreateDrawableState, length, (onCreateDrawableState.length - length) - 1);
        return onCreateDrawableState;
    }

    public boolean verifyDrawable(Drawable drawable) {
        return this.f9257m == drawable || super.verifyDrawable(drawable);
    }

    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f9257m != null) {
            this.f9257m.jumpToCurrentState();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (this.f9254j != null && this.f9253i == null) {
            this.f9253i = new ProGuard(this);
            this.f9254j.registerDataSetObserver(this.f9253i);
            this.aj = true;
            this.ap = this.ao;
            this.ao = this.f9254j.getCount();
        }
        this.f9244S = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9260p.m11507b();
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        if (!(this.f9254j == null || this.f9253i == null)) {
            this.f9254j.unregisterDataSetObserver(this.f9253i);
            this.f9253i = null;
        }
        if (this.av != null) {
            removeCallbacks(this.av);
        }
        if (this.f9234I != null) {
            this.f9234I.m11496a();
        }
        if (this.aL != null) {
            removeCallbacks(this.aL);
        }
        if (this.aE != null) {
            removeCallbacks(this.aE);
        }
        if (this.aF != null) {
            removeCallbacks(this.aF);
            this.aF = null;
        }
        this.f9244S = false;
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        int i = isInTouchMode() ? 0 : 1;
        if (!z) {
            setChildrenDrawingCacheEnabled(false);
            if (this.av != null) {
                removeCallbacks(this.av);
                this.av.m11488b();
                if (this.f9234I != null) {
                    this.f9234I.m11496a();
                }
                if (getScrollX() != 0) {
                    this.f9245a.m11462a(0);
                    m11544H();
                    invalidate();
                }
            }
            if (i == 1) {
                this.f9238M = this.am;
            }
        } else if (!(i == this.aA || this.aA == -1)) {
            if (i == 1) {
                m11613p();
            } else {
                m11610m();
                this.f9252h = 0;
                m11601e();
            }
        }
        this.aA = i;
    }

    ContextMenuInfo m11589b(View view, int i, long j) {
        return new it.sephiroth.android.library.widget.ProGuard.ProGuard(view, i, j);
    }

    boolean m11596c(View view, int i, long j) {
        if (VERSION.SDK_INT < 11 || this.f9246b != 3) {
            boolean a;
            if (this.ai != null) {
                a = this.ai.m11714a(this, view, i, j);
            } else {
                a = false;
            }
            if (!a) {
                this.az = m11589b(view, i, j);
                a = super.showContextMenuForChild(this);
            }
            if (!a) {
                return a;
            }
            performHapticFeedback(0);
            return a;
        }
        if (this.f9247c == null) {
            ActionMode startActionMode = startActionMode((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d);
            this.f9247c = startActionMode;
            if (startActionMode != null) {
                m11583a(i, true);
                performHapticFeedback(0);
            }
        }
        return true;
    }

    protected ContextMenuInfo getContextMenuInfo() {
        return this.az;
    }

    public boolean m11585a(float f, float f2, int i) {
        int a = m11576a((int) f, (int) f2);
        if (a != -1) {
            long itemId = this.f9254j.getItemId(a);
            View childAt = getChildAt(a - this.V);
            if (childAt != null) {
                this.az = m11589b(childAt, a, itemId);
                return super.showContextMenuForChild(this);
            }
        }
        return m11585a(f, f2, i);
    }

    public boolean showContextMenuForChild(View view) {
        boolean z = false;
        int a = m11526a(view);
        if (a < 0) {
            return false;
        }
        long itemId = this.f9254j.getItemId(a);
        if (this.ai != null) {
            z = this.ai.m11714a(this, view, a, itemId);
        }
        if (z) {
            return z;
        }
        this.az = m11589b(getChildAt(a - this.V), a, itemId);
        return super.showContextMenuForChild(view);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionBarDivider /*23*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_searchViewStyle /*66*/:
                if (!isEnabled()) {
                    return true;
                }
                if (isClickable() && isPressed() && this.am >= 0 && this.f9254j != null && this.am < this.f9254j.getCount()) {
                    View childAt = getChildAt(this.am - this.V);
                    if (childAt != null) {
                        m11588a(childAt, this.am, this.an);
                        childAt.setPressed(false);
                    }
                    setPressed(false);
                    return true;
                }
        }
        return super.onKeyUp(i, keyEvent);
    }

    protected void dispatchSetPressed(boolean z) {
    }

    public int m11576a(int i, int i2) {
        Rect rect = this.ay;
        if (rect == null) {
            this.ay = new Rect();
            rect = this.ay;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i, i2)) {
                    return this.V + childCount;
                }
            }
        }
        return -1;
    }

    private boolean m11568g(int i) {
        int i2 = i - this.f9229D;
        int abs = Math.abs(i2);
        boolean z = getScrollX() != 0;
        if (!z && abs <= this.aK) {
            return false;
        }
        m11542F();
        if (z) {
            this.f9231F = 5;
            this.f9233H = 0;
        } else {
            this.f9231F = 3;
            this.f9233H = i2 > 0 ? this.aK : -this.aK;
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.aB);
        }
        setPressed(false);
        View childAt = getChildAt(this.f9226A - this.V);
        if (childAt != null) {
            childAt.setPressed(false);
        }
        m11591b(1);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        m11569h(i);
        return true;
    }

    private void m11569h(int i) {
        int i2 = 0;
        int i3 = i - this.f9229D;
        int i4 = i3 - this.f9233H;
        int i5 = this.f9232G != Integer.MIN_VALUE ? i - this.f9232G : i4;
        int i6;
        int left;
        if (this.f9231F == 3) {
            if (i != this.f9232G) {
                boolean d;
                if (Math.abs(i3) > this.aK) {
                    ViewParent parent = getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
                if (this.f9226A >= 0) {
                    i6 = this.f9226A - this.V;
                } else {
                    i6 = getChildCount() / 2;
                }
                View childAt = getChildAt(i6);
                if (childAt != null) {
                    left = childAt.getLeft();
                } else {
                    left = 0;
                }
                if (i5 != 0) {
                    d = m11599d(i4, i5);
                } else {
                    d = false;
                }
                View childAt2 = getChildAt(i6);
                if (childAt2 != null) {
                    i6 = childAt2.getLeft();
                    if (d) {
                        i4 = (-i5) - (i6 - left);
                        overScrollBy(i4, 0, getScrollX(), 0, 0, 0, this.f9242Q, 0, true);
                        if (Math.abs(this.f9242Q) == Math.abs(getScrollX()) && this.au != null) {
                            this.au.clear();
                        }
                        i5 = getOverScrollMode();
                        if (i5 == 0 || (i5 == 1 && !m11537A())) {
                            this.aU = 0;
                            this.f9231F = 5;
                            if (i3 > 0) {
                                this.aQ.m1597a(((float) i4) / ((float) getWidth()));
                                if (!this.aR.m1596a()) {
                                    this.aR.m1602c();
                                }
                                invalidate();
                            } else if (i3 < 0) {
                                this.aR.m1597a(((float) i4) / ((float) getWidth()));
                                if (!this.aQ.m1596a()) {
                                    this.aQ.m1602c();
                                }
                                invalidate();
                            }
                        }
                    }
                    this.f9229D = i;
                }
                this.f9232G = i;
            }
        } else if (this.f9231F == 5 && i != this.f9232G) {
            int i7;
            int i8;
            i6 = getScrollX();
            left = i6 - i5;
            if (i > this.f9232G) {
                i7 = 1;
            } else {
                i7 = -1;
            }
            if (this.aU == 0) {
                this.aU = i7;
            }
            i4 = -i5;
            if ((left >= 0 || i6 < 0) && (left <= 0 || i6 > 0)) {
                i8 = 0;
            } else {
                i4 = -i6;
                i8 = i5 + i4;
            }
            if (i4 != 0) {
                overScrollBy(i4, 0, getScrollX(), 0, 0, 0, this.f9242Q, 0, true);
                i5 = getOverScrollMode();
                if (i5 == 0 || (i5 == 1 && !m11537A())) {
                    if (i3 > 0) {
                        this.aQ.m1597a(((float) i4) / ((float) getWidth()));
                        if (!this.aR.m1596a()) {
                            this.aR.m1602c();
                        }
                        invalidate();
                    } else if (i3 < 0) {
                        this.aR.m1597a(((float) i4) / ((float) getWidth()));
                        if (!this.aQ.m1596a()) {
                            this.aQ.m1602c();
                        }
                        invalidate();
                    }
                }
            }
            if (i8 != 0) {
                if (getScrollX() != 0) {
                    this.f9245a.m11462a(0);
                    m11608k();
                }
                m11599d(i8, i8);
                this.f9231F = 3;
                i5 = m11600e(i);
                this.f9233H = 0;
                View childAt3 = getChildAt(i5 - this.V);
                if (childAt3 != null) {
                    i2 = childAt3.getLeft();
                }
                this.f9227B = i2;
                this.f9229D = i;
                this.f9226A = i5;
            }
            this.f9232G = i;
            this.aU = i7;
        }
    }

    @TargetApi(11)
    protected void m11608k() {
        if (this.f9245a.m11464a() && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
        }
    }

    public void onTouchModeChanged(boolean z) {
        if (z) {
            m11610m();
            if (getWidth() > 0 && getChildCount() > 0) {
                m11601e();
            }
            m11607j();
            return;
        }
        int i = this.f9231F;
        if (i == 5 || i == 6) {
            if (this.av != null) {
                this.av.m11488b();
            }
            if (this.f9234I != null) {
                this.f9234I.m11496a();
            }
            if (getScrollX() != 0) {
                this.f9245a.m11462a(0);
                m11544H();
                invalidate();
            }
        }
    }

    @TargetApi(14)
    protected boolean m11587a(MotionEvent motionEvent) {
        if (VERSION.SDK_INT < 14 || (motionEvent.getButtonState() & 2) == 0 || !m11585a(motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState())) {
            return false;
        }
        return true;
    }

    protected boolean m11609l() {
        if (this.av == null || this.av.f9189b.m11766a()) {
            return false;
        }
        return true;
    }

    @SuppressLint({"Override"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (isEnabled()) {
            if (this.f9234I != null) {
                this.f9234I.m11496a();
            }
            if (!this.f9244S) {
                return false;
            }
            int action = motionEvent.getAction();
            m11540D();
            this.au.addMovement(motionEvent);
            int x;
            int y;
            int a;
            Handler handler;
            switch (action & 255) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    switch (this.f9231F) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.av.m11488b();
                            if (this.f9234I != null) {
                                this.f9234I.m11496a();
                            }
                            this.f9231F = 5;
                            this.f9230E = (int) motionEvent.getY();
                            action = (int) motionEvent.getX();
                            this.f9232G = action;
                            this.f9229D = action;
                            this.f9233H = 0;
                            this.aP = motionEvent.getPointerId(0);
                            this.aU = 0;
                            break;
                        default:
                            this.aP = motionEvent.getPointerId(0);
                            x = (int) motionEvent.getX();
                            y = (int) motionEvent.getY();
                            a = m11576a(x, y);
                            if (!this.aj) {
                                if (this.f9231F == 4 || a < 0 || !((ListAdapter) getAdapter()).isEnabled(a)) {
                                    if (this.f9231F == 4) {
                                        m11542F();
                                        this.f9231F = 3;
                                        this.f9233H = 0;
                                        action = m11597d(x);
                                        this.av.m11490c();
                                        if (action >= 0) {
                                            this.f9227B = getChildAt(action - this.V).getLeft();
                                        }
                                        this.f9229D = x;
                                        this.f9230E = y;
                                        this.f9226A = action;
                                        this.f9232G = Integer.MIN_VALUE;
                                        break;
                                    }
                                }
                                this.f9231F = 0;
                                if (this.aC == null) {
                                    this.aC = new ProGuard(this);
                                }
                                postDelayed(this.aC, (long) ViewConfiguration.getTapTimeout());
                                action = a;
                                if (action >= 0) {
                                    this.f9227B = getChildAt(action - this.V).getLeft();
                                }
                                this.f9229D = x;
                                this.f9230E = y;
                                this.f9226A = action;
                                this.f9232G = Integer.MIN_VALUE;
                            }
                            action = a;
                            if (action >= 0) {
                                this.f9227B = getChildAt(action - this.V).getLeft();
                            }
                            this.f9229D = x;
                            this.f9230E = y;
                            this.f9226A = action;
                            this.f9232G = Integer.MIN_VALUE;
                            break;
                    }
                    if (!m11587a(motionEvent) || this.f9231F != 0) {
                        return true;
                    }
                    removeCallbacks(this.aC);
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    switch (this.f9231F) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            a = this.f9226A;
                            View childAt = getChildAt(a - this.V);
                            float x2 = motionEvent.getX();
                            boolean z = x2 > ((float) this.f9265u.left) && x2 < ((float) (getWidth() - this.f9265u.right));
                            if (!(childAt == null || childAt.hasFocusable() || !z)) {
                                if (this.f9231F != 0) {
                                    childAt.setPressed(false);
                                }
                                if (this.aE == null) {
                                    this.aE = new ProGuard();
                                }
                                ProGuard proGuard = this.aE;
                                proGuard.f9198a = a;
                                proGuard.m11482a();
                                this.f9238M = a;
                                if (this.f9231F == 0 || this.f9231F == 1) {
                                    Handler handler2 = getHandler();
                                    if (handler2 != null) {
                                        handler2.removeCallbacks(this.f9231F == 0 ? this.aC : this.aB);
                                    }
                                    this.f9252h = 0;
                                    if (this.aj || !this.f9254j.isEnabled(a)) {
                                        this.f9231F = -1;
                                        m11607j();
                                        return true;
                                    }
                                    this.f9231F = 1;
                                    setSelectedPositionInt(this.f9226A);
                                    m11601e();
                                    childAt.setPressed(true);
                                    m11582a(this.f9226A, childAt);
                                    setPressed(true);
                                    if (this.f9257m != null) {
                                        Drawable current = this.f9257m.getCurrent();
                                        if (current != null && (current instanceof TransitionDrawable)) {
                                            ((TransitionDrawable) current).resetTransition();
                                        }
                                    }
                                    if (this.aF != null) {
                                        removeCallbacks(this.aF);
                                    }
                                    this.aF = new ProGuard(this, childAt, proGuard);
                                    postDelayed(this.aF, (long) ViewConfiguration.getPressedStateDuration());
                                    return true;
                                } else if (!this.aj && this.f9254j.isEnabled(a)) {
                                    proGuard.run();
                                }
                            }
                            this.f9231F = -1;
                            m11607j();
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            action = getChildCount();
                            if (action <= 0) {
                                this.f9231F = -1;
                                m11591b(0);
                                break;
                            }
                            a = getChildAt(0).getLeft();
                            x = getChildAt(action - 1).getRight();
                            y = this.f9265u.left;
                            int width = getWidth() - this.f9265u.right;
                            if (this.V == 0 && a >= y && this.V + action < this.ao && x <= getWidth() - width) {
                                this.f9231F = -1;
                                m11591b(0);
                                break;
                            }
                            VelocityTracker velocityTracker = this.au;
                            velocityTracker.computeCurrentVelocity(LocationClientOption.MIN_SCAN_SPAN, (float) this.aN);
                            int xVelocity = (int) (velocityTracker.getXVelocity(this.aP) * this.aO);
                            if (Math.abs(xVelocity) > this.aM && ((this.V != 0 || a != y - this.f9242Q) && (action + this.V != this.ao || x != this.f9242Q + width))) {
                                if (this.av == null) {
                                    this.av = new ProGuard(this);
                                }
                                m11591b(2);
                                this.av.m11486a(-xVelocity);
                                break;
                            }
                            this.f9231F = -1;
                            m11591b(0);
                            if (this.av != null) {
                                this.av.m11488b();
                            }
                            if (this.f9234I != null) {
                                this.f9234I.m11496a();
                                break;
                            }
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            if (this.av == null) {
                                this.av = new ProGuard(this);
                            }
                            VelocityTracker velocityTracker2 = this.au;
                            velocityTracker2.computeCurrentVelocity(LocationClientOption.MIN_SCAN_SPAN, (float) this.aN);
                            action = (int) velocityTracker2.getXVelocity(this.aP);
                            m11591b(2);
                            if (Math.abs(action) <= this.aM) {
                                this.av.m11485a();
                                break;
                            }
                            this.av.m11489b(-action);
                            break;
                    }
                    setPressed(false);
                    if (this.aQ != null) {
                        this.aQ.m1602c();
                        this.aR.m1602c();
                    }
                    invalidate();
                    handler = getHandler();
                    if (handler != null) {
                        handler.removeCallbacks(this.aB);
                    }
                    m11541E();
                    this.aP = -1;
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    action = motionEvent.findPointerIndex(this.aP);
                    if (action == -1) {
                        this.aP = motionEvent.getPointerId(0);
                    } else {
                        i = action;
                    }
                    action = (int) motionEvent.getX(i);
                    if (this.aj) {
                        m11601e();
                    }
                    switch (this.f9231F) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            m11568g(action);
                            return true;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            m11569h(action);
                            return true;
                        default:
                            return true;
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    switch (this.f9231F) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            if (this.av == null) {
                                this.av = new ProGuard(this);
                            }
                            this.av.m11485a();
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            break;
                        default:
                            this.f9231F = -1;
                            setPressed(false);
                            View childAt2 = getChildAt(this.f9226A - this.V);
                            if (childAt2 != null) {
                                childAt2.setPressed(false);
                            }
                            m11543G();
                            handler = getHandler();
                            if (handler != null) {
                                handler.removeCallbacks(this.aB);
                            }
                            m11541E();
                            break;
                    }
                    if (this.aQ != null) {
                        this.aQ.m1602c();
                        this.aR.m1602c();
                    }
                    this.aP = -1;
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    action = motionEvent.getActionIndex();
                    a = motionEvent.getPointerId(action);
                    x = (int) motionEvent.getX(action);
                    action = (int) motionEvent.getY(action);
                    this.f9233H = 0;
                    this.aP = a;
                    this.f9229D = x;
                    this.f9230E = action;
                    action = m11576a(x, action);
                    if (action >= 0) {
                        this.f9227B = getChildAt(action - this.V).getLeft();
                        this.f9226A = action;
                    }
                    this.f9232G = x;
                    return true;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    m11555b(motionEvent);
                    action = this.f9229D;
                    i = m11576a(action, this.f9230E);
                    if (i >= 0) {
                        this.f9227B = getChildAt(i - this.V).getLeft();
                        this.f9226A = i;
                    }
                    this.f9232G = action;
                    return true;
                default:
                    return true;
            }
        }
        if (isClickable() || isLongClickable()) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        if (getScrollX() != i) {
            onScrollChanged(i, getScrollY(), getScrollX(), getScrollY());
            this.f9245a.m11462a(i);
            m11608k();
            awakenScrollBars();
        }
    }

    @TargetApi(12)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    if (this.f9231F == -1) {
                        float axisValue = motionEvent.getAxisValue(10);
                        if (axisValue != 0.0f) {
                            int horizontalScrollFactor = (int) (axisValue * getHorizontalScrollFactor());
                            if (!m11599d(horizontalScrollFactor, horizontalScrollFactor)) {
                                return true;
                            }
                        }
                    }
                    break;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    protected float getHorizontalScrollFactor() {
        if (this.bd == 0.0f) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.hlv_listPreferredItemWidth, typedValue, true)) {
                this.bd = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define hlv_listPreferredItemWidth.");
            }
        }
        return this.bd;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.aQ != null) {
            int save;
            int i;
            int height;
            int scrollX = getScrollX();
            if (!this.aQ.m1596a()) {
                save = canvas.save();
                i = this.f9265u.top + this.aW;
                height = (getHeight() - i) - (this.f9265u.bottom + this.aX);
                int min = Math.min(0, this.aS + scrollX);
                canvas.rotate(-90.0f);
                canvas.translate((float) (i + (-getHeight())), (float) min);
                this.aQ.m1595a(height, height);
                if (this.aQ.m1600a(canvas)) {
                    invalidate();
                }
                canvas.restoreToCount(save);
            }
            if (!this.aR.m1596a()) {
                save = canvas.save();
                i = this.f9265u.left + this.aW;
                height = (getHeight() - i) - (this.f9265u.right + this.aX);
                scrollX = Math.max(getWidth(), scrollX + this.aT);
                canvas.rotate(90.0f);
                canvas.translate((float) (-i), (float) (-scrollX));
                this.aR.m1595a(height, height);
                if (this.aR.m1600a(canvas)) {
                    invalidate();
                }
                canvas.restoreToCount(save);
            }
        }
    }

    private void m11539C() {
        if (this.au == null) {
            this.au = VelocityTracker.obtain();
        } else {
            this.au.clear();
        }
    }

    private void m11540D() {
        if (this.au == null) {
            this.au = VelocityTracker.obtain();
        }
    }

    private void m11541E() {
        if (this.au != null) {
            this.au.recycle();
            this.au = null;
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m11541E();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f9234I != null) {
            this.f9234I.m11496a();
        }
        if (!this.f9244S) {
            return false;
        }
        switch (action & 255) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                action = this.f9231F;
                if (action == 6 || action == 5) {
                    this.f9233H = 0;
                    return true;
                }
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                this.aP = motionEvent.getPointerId(0);
                int d = m11597d(x);
                if (action != 4 && d >= 0) {
                    this.f9227B = getChildAt(d - this.V).getLeft();
                    this.f9229D = x;
                    this.f9230E = y;
                    this.f9226A = d;
                    this.f9231F = 0;
                    m11543G();
                }
                this.f9232G = Integer.MIN_VALUE;
                m11539C();
                this.au.addMovement(motionEvent);
                if (action == 4) {
                    return true;
                }
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                this.f9231F = -1;
                this.aP = -1;
                m11541E();
                m11591b(0);
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                switch (this.f9231F) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                        action = motionEvent.findPointerIndex(this.aP);
                        if (action == -1) {
                            this.aP = motionEvent.getPointerId(0);
                            action = 0;
                        }
                        action = (int) motionEvent.getX(action);
                        m11540D();
                        this.au.addMovement(motionEvent);
                        if (m11568g(action)) {
                            return true;
                        }
                        return false;
                    default:
                        return false;
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                m11555b(motionEvent);
                return false;
            default:
                return false;
        }
    }

    private void m11555b(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.aP) {
            action = action == 0 ? 1 : 0;
            this.f9229D = (int) motionEvent.getX(action);
            this.f9230E = (int) motionEvent.getY(action);
            this.f9233H = 0;
            this.aP = motionEvent.getPointerId(action);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        int childCount = getChildCount();
        int i = this.V;
        ListAdapter listAdapter = this.f9254j;
        if (listAdapter != null) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (listAdapter.isEnabled(i + i2)) {
                    arrayList.add(childAt);
                }
                childAt.addTouchables(arrayList);
            }
        }
    }

    void m11591b(int i) {
        if (i != this.aJ && this.aw != null) {
            this.aJ = i;
            this.aw.m11494a(this, i);
        }
    }

    public void setFriction(float f) {
        if (this.av == null) {
            this.av = new ProGuard(this);
        }
        this.av.f9189b.m11770b(f);
    }

    public void setVelocityScale(float f) {
        this.aO = f;
    }

    public void m11580a(int i, int i2, int i3) {
        if (this.f9234I == null) {
            this.f9234I = new ProGuard(this);
        }
        this.f9234I.m11499a(i, i2, i3);
    }

    public void m11592b(int i, int i2) {
        if (this.f9234I == null) {
            this.f9234I = new ProGuard(this);
        }
        this.f9234I.m11498a(i, i2);
    }

    public void m11595c(int i, int i2) {
        m11581a(i, i2, false);
    }

    public void m11581a(int i, int i2, boolean z) {
        if (this.av == null) {
            this.av = new ProGuard(this);
        }
        int i3 = this.V;
        int childCount = getChildCount();
        int i4 = i3 + childCount;
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        if (i == 0 || this.ao == 0 || childCount == 0 || ((i3 == 0 && getChildAt(0).getLeft() == paddingLeft && i < 0) || (i4 == this.ao && getChildAt(childCount - 1).getRight() == width && i > 0))) {
            this.av.m11488b();
            if (this.f9234I != null) {
                this.f9234I.m11496a();
                return;
            }
            return;
        }
        m11591b(2);
        this.av.m11487a(i, i2, z);
    }

    private void m11542F() {
        if (this.f9237L && !this.f9269y && !this.f9245a.m11464a()) {
            setChildrenDrawnWithCacheEnabled(true);
            setChildrenDrawingCacheEnabled(true);
            this.f9270z = true;
            this.f9269y = true;
        }
    }

    private void m11543G() {
        if (!this.f9245a.m11464a()) {
            if (this.aL == null) {
                this.aL = new ProGuard(this);
            }
            post(this.aL);
        }
    }

    boolean m11599d(int i, int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        int max;
        int max2;
        int left = getChildAt(0).getLeft();
        int right = getChildAt(childCount - 1).getRight();
        Rect rect = this.f9265u;
        int i3 = 0 - left;
        int width = right - (getWidth() - 0);
        int width2 = (getWidth() - getPaddingRight()) - getPaddingLeft();
        if (i < 0) {
            max = Math.max(-(width2 - 1), i);
        } else {
            max = Math.min(width2 - 1, i);
        }
        if (i2 < 0) {
            max2 = Math.max(-(width2 - 1), i2);
        } else {
            max2 = Math.min(width2 - 1, i2);
        }
        int i4 = this.V;
        if (i4 == 0) {
            this.aS = left - rect.left;
        } else {
            this.aS += max2;
        }
        if (i4 + childCount == this.ao) {
            this.aT = rect.right + right;
        } else {
            this.aT += max2;
        }
        Object obj = (i4 != 0 || left < rect.left || max2 < 0) ? null : 1;
        Object obj2 = (i4 + childCount != this.ao || right > getWidth() - rect.right || max2 > 0) ? null : 1;
        if (obj == null && obj2 == null) {
            boolean z = max2 < 0;
            boolean isInTouchMode = isInTouchMode();
            if (isInTouchMode) {
                m11610m();
            }
            int headerViewsCount = getHeaderViewsCount();
            int footerViewsCount = this.ao - getFooterViewsCount();
            int i5 = 0;
            int width3;
            if (!z) {
                width3 = getWidth() - max2;
                right = 0;
                for (width2 = childCount - 1; width2 >= 0; width2--) {
                    View childAt = getChildAt(width2);
                    if (childAt.getLeft() <= width3) {
                        break;
                    }
                    i5 = right + 1;
                    right = i4 + width2;
                    if (right >= headerViewsCount && right < footerViewsCount) {
                        this.f9260p.m11506a(childAt, right);
                    }
                    right = i5;
                    i5 = width2;
                }
            } else {
                int i6 = -max2;
                right = 0;
                width2 = 0;
                while (width2 < childCount) {
                    View childAt2 = getChildAt(width2);
                    if (childAt2.getRight() >= i6) {
                        break;
                    }
                    width3 = right + 1;
                    right = i4 + width2;
                    if (right >= headerViewsCount && right < footerViewsCount) {
                        this.f9260p.m11506a(childAt2, right);
                    }
                    width2++;
                    right = width3;
                }
            }
            this.f9228C = this.f9227B + max;
            this.at = true;
            if (right > 0) {
                detachViewsFromParent(i5, right);
                this.f9260p.m11512d();
            }
            if (!awakenScrollBars()) {
                invalidate();
            }
            m11594c(max2);
            if (z) {
                this.V = right + this.V;
            }
            max2 = Math.abs(max2);
            if (i3 < max2 || width < max2) {
                m11584a(z);
            }
            if (!isInTouchMode && this.am != -1) {
                max2 = this.am - this.V;
                if (max2 >= 0 && max2 < getChildCount()) {
                    m11582a(this.am, getChildAt(max2));
                }
            } else if (this.f9258n != -1) {
                max2 = this.f9258n - this.V;
                if (max2 >= 0 && max2 < getChildCount()) {
                    m11582a(-1, getChildAt(max2));
                }
            } else {
                this.f9259o.setEmpty();
            }
            this.at = false;
            m11590b();
            return false;
        } else if (max2 != 0) {
            return true;
        } else {
            return false;
        }
    }

    public void m11594c(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).offsetLeftAndRight(i);
        }
    }

    protected int getHeaderViewsCount() {
        return 0;
    }

    protected int getFooterViewsCount() {
        return 0;
    }

    protected void m11610m() {
        if (this.am != -1) {
            if (this.f9252h != 4) {
                this.f9238M = this.am;
            }
            if (this.ak >= 0 && this.ak != this.am) {
                this.f9238M = this.ak;
            }
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.f9235J = 0;
        }
    }

    protected int m11611n() {
        int i = this.am;
        if (i < 0) {
            i = this.f9238M;
        }
        return Math.min(Math.max(0, i), this.ao - 1);
    }

    protected int m11600e(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return -1;
        }
        int d = m11597d(i);
        return d == -1 ? (this.V + childCount) - 1 : d;
    }

    protected boolean m11612o() {
        if (this.am >= 0 || !m11613p()) {
            return false;
        }
        m11607j();
        return true;
    }

    boolean m11613p() {
        boolean z = true;
        int childCount = getChildCount();
        if (childCount <= 0) {
            return false;
        }
        int left;
        int i;
        boolean z2;
        boolean z3 = this.f9265u.left;
        int right = (getRight() - getLeft()) - this.f9265u.right;
        int i2 = this.V;
        int i3 = this.f9238M;
        if (i3 >= i2 && i3 < i2 + childCount) {
            View childAt = getChildAt(i3 - this.V);
            left = childAt.getLeft();
            childCount = childAt.getRight();
            if (left < z3) {
                left = getHorizontalFadingEdgeLength() + z3;
            } else if (childCount > right) {
                left = (right - childAt.getMeasuredWidth()) - getHorizontalFadingEdgeLength();
            }
            i = left;
            z2 = true;
        } else if (i3 < i2) {
            boolean left2;
            right = 0;
            z2 = false;
            while (right < childCount) {
                boolean z4;
                left2 = getChildAt(right).getLeft();
                if (right != 0) {
                    z4 = z3;
                    z3 = z2;
                    z2 = z4;
                } else if (i2 > 0 || left2 < z3) {
                    z2 = getHorizontalFadingEdgeLength() + z3;
                    z3 = left2;
                } else {
                    z2 = z3;
                    z3 = left2;
                }
                if (left2 >= z2) {
                    left = i2 + right;
                    break;
                }
                right++;
                z4 = z2;
                z2 = z3;
                z3 = z4;
            }
            left2 = z2;
            left = i2;
            i = i3;
            i3 = left;
            z2 = true;
        } else {
            int i4 = this.ao;
            left = (i2 + childCount) - 1;
            int i5 = childCount - 1;
            i = 0;
            while (i5 >= 0) {
                int i6;
                View childAt2 = getChildAt(i5);
                i3 = childAt2.getLeft();
                int right2 = childAt2.getRight();
                if (i5 != childCount - 1) {
                    i6 = right;
                    right = i;
                    i = i6;
                } else if (i2 + childCount < i4 || right2 > right) {
                    i = right - getHorizontalFadingEdgeLength();
                    right = i3;
                } else {
                    i = right;
                    right = i3;
                }
                if (right2 <= i) {
                    i = i3;
                    i3 = i2 + i5;
                    z2 = false;
                    break;
                }
                i5--;
                i6 = i;
                i = right;
                right = i6;
            }
            i3 = left;
            z2 = false;
        }
        this.f9238M = -1;
        removeCallbacks(this.av);
        if (this.f9234I != null) {
            this.f9234I.m11496a();
        }
        this.f9231F = -1;
        m11543G();
        this.W = i;
        left = m11528b(i3, z2);
        if (left < i2 || left > getLastVisiblePosition()) {
            left = -1;
        } else {
            this.f9252h = 4;
            m11607j();
            setSelectionInt(left);
            m11590b();
        }
        m11591b(0);
        if (left < 0) {
            z = false;
        }
        return z;
    }

    void m11614q() {
        this.f9250f.m530c();
        int i = 0;
        boolean z = false;
        while (i < this.f9251g.m509b()) {
            int max;
            boolean z2;
            long a = this.f9251g.m504a(i);
            int intValue = ((Integer) this.f9251g.m510b(i)).intValue();
            if (a != this.f9254j.getItemId(intValue)) {
                boolean z3;
                int min = Math.min(intValue + 20, this.ao);
                for (max = Math.max(0, intValue - 20); max < min; max++) {
                    if (a == this.f9254j.getItemId(max)) {
                        this.f9250f.m528b(max, Boolean.valueOf(true));
                        this.f9251g.m508a(i, Integer.valueOf(max));
                        z3 = true;
                        break;
                    }
                }
                z3 = false;
                if (!z3) {
                    this.f9251g.m511b(a);
                    max = i - 1;
                    this.f9249e--;
                    if (!(VERSION.SDK_INT <= 11 || this.f9247c == null || this.f9248d == null)) {
                        ((it.sephiroth.android.library.p151a.p152a.ProGuard) this.f9248d).m11469a((ActionMode) this.f9247c, intValue, a, false);
                    }
                    i = max;
                    z = true;
                }
                max = i;
                z2 = z;
            } else {
                this.f9250f.m528b(intValue, Boolean.valueOf(true));
                max = i;
                z2 = z;
            }
            z = z2;
            i = max + 1;
        }
        if (z && this.f9247c != null && VERSION.SDK_INT > 11) {
            ((ActionMode) this.f9247c).invalidate();
        }
    }

    protected void m11615r() {
        int i = this.ao;
        int i2 = this.bb;
        this.bb = this.ao;
        if (!(this.f9246b == 0 || this.f9254j == null || !this.f9254j.hasStableIds())) {
            m11614q();
        }
        this.f9260p.m11510c();
        if (i > 0) {
            int width;
            int bottom;
            if (this.ad) {
                this.ad = false;
                this.bc = null;
                if (this.aG == 2) {
                    this.f9252h = 3;
                    return;
                }
                if (this.aG == 1) {
                    if (this.aV) {
                        this.aV = false;
                        this.f9252h = 3;
                        return;
                    }
                    int childCount = getChildCount();
                    width = getWidth() - getPaddingRight();
                    View childAt = getChildAt(childCount - 1);
                    if (childAt != null) {
                        bottom = childAt.getBottom();
                    } else {
                        bottom = width;
                    }
                    if (childCount + this.V < i2 || r0 > width) {
                        awakenScrollBars();
                    } else {
                        this.f9252h = 3;
                        return;
                    }
                }
                switch (this.ae) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                        if (isInTouchMode()) {
                            this.f9252h = 5;
                            this.aa = Math.min(Math.max(0, this.aa), i - 1);
                            return;
                        }
                        bottom = m11535w();
                        if (bottom >= 0 && m11528b(bottom, true) == bottom) {
                            this.aa = bottom;
                            if (this.ac == ((long) getWidth())) {
                                this.f9252h = 5;
                            } else {
                                this.f9252h = 2;
                            }
                            setNextSelectedPositionInt(bottom);
                            return;
                        }
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        this.f9252h = 5;
                        this.aa = Math.min(Math.max(0, this.aa), i - 1);
                        return;
                }
            }
            if (!isInTouchMode()) {
                bottom = getSelectedItemPosition();
                if (bottom >= i) {
                    bottom = i - 1;
                }
                if (bottom < 0) {
                    bottom = 0;
                }
                width = m11528b(bottom, true);
                if (width >= 0) {
                    setNextSelectedPositionInt(width);
                    return;
                }
                bottom = m11528b(bottom, false);
                if (bottom >= 0) {
                    setNextSelectedPositionInt(bottom);
                    return;
                }
            } else if (this.f9238M >= 0) {
                return;
            }
        }
        this.f9252h = this.f9236K ? 3 : 1;
        this.am = -1;
        this.an = Long.MIN_VALUE;
        this.ak = -1;
        this.al = Long.MIN_VALUE;
        this.ad = false;
        this.bc = null;
        this.f9258n = -1;
        m11534v();
    }

    public static int m11545a(Rect rect, Rect rect2, int i) {
        int width;
        int height;
        int width2;
        int height2;
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                width = rect.right + (rect.width() / 2);
                height = rect.top + (rect.height() / 2);
                width2 = (rect2.width() / 2) + rect2.left;
                height2 = rect2.top + (rect2.height() / 2);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                width = rect.left;
                height = rect.top + (rect.height() / 2);
                width2 = rect2.right;
                height2 = rect2.top + (rect2.height() / 2);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModeCopyDrawable /*33*/:
                width = rect.left + (rect.width() / 2);
                height = rect.top;
                width2 = (rect2.width() / 2) + rect2.left;
                height2 = rect2.bottom;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_searchViewStyle /*66*/:
                width = rect.right;
                height = rect.top + (rect.height() / 2);
                width2 = rect2.left;
                height2 = rect2.top + (rect2.height() / 2);
                break;
            case 130:
                width = rect.left + (rect.width() / 2);
                height = rect.bottom;
                width2 = (rect2.width() / 2) + rect2.left;
                height2 = rect2.top;
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        width2 -= width;
        height2 -= height;
        return (height2 * height2) + (width2 * width2);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return null;
    }

    public boolean checkInputConnectionProxy(View view) {
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new ProGuard(-2, -1, 0);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new ProGuard(layoutParams);
    }

    public ProGuard m11578a(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof ProGuard;
    }

    public void setTranscriptMode(int i) {
        this.aG = i;
    }

    public int getTranscriptMode() {
        return this.aG;
    }

    public int getSolidColor() {
        return this.aH;
    }

    public void setCacheColorHint(int i) {
        if (i != this.aH) {
            this.aH = i;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setDrawingCacheBackgroundColor(i);
            }
            this.f9260p.m11515f(i);
        }
    }

    @ExportedProperty(category = "drawing")
    public int getCacheColorHint() {
        return this.aH;
    }

    private void m11544H() {
        if (this.aQ != null) {
            this.aQ.m1601b();
            this.aR.m1601b();
        }
    }

    protected void m11602e(int i, int i2) {
    }

    public void setRecyclerListener(ProGuard proGuard) {
        this.f9260p.f9209b = proGuard;
    }

    static View m11547a(ArrayList<View> arrayList, int i) {
        int size = arrayList.size();
        if (size <= 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) arrayList.get(i2);
            if (((ProGuard) view.getLayoutParams()).f9195d == i) {
                arrayList.remove(i2);
                return view;
            }
        }
        return (View) arrayList.remove(size - 1);
    }
}
