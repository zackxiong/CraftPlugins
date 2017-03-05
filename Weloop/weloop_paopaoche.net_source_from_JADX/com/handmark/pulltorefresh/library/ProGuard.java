package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListAdapter;

/* renamed from: com.handmark.pulltorefresh.library.d */
public abstract class ProGuard<T extends AbsListView> extends ProGuard<T> implements OnScrollListener {
    private boolean f4966b;
    private OnScrollListener f4967c;
    private ProGuard f4968d;
    private View f4969e;
    private com.handmark.pulltorefresh.library.p094a.ProGuard f4970f;
    private com.handmark.pulltorefresh.library.p094a.ProGuard f4971g;
    private boolean f4972h;
    private boolean f4973i;

    /* renamed from: com.handmark.pulltorefresh.library.d.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f5013a;

        static {
            f5013a = new int[ProGuard.values().length];
            try {
                f5013a[ProGuard.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5013a[ProGuard.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private static LayoutParams m6742a(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams2 = new LayoutParams(layoutParams);
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                layoutParams2.gravity = ((LinearLayout.LayoutParams) layoutParams).gravity;
            } else {
                layoutParams2.gravity = 17;
            }
        }
        return layoutParams2;
    }

    public ProGuard(Context context) {
        super(context);
        this.f4973i = true;
        ((AbsListView) this.a).setOnScrollListener(this);
    }

    public ProGuard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4973i = true;
        ((AbsListView) this.a).setOnScrollListener(this);
    }

    public ProGuard(Context context, ProGuard proGuard) {
        super(context, proGuard);
        this.f4973i = true;
        ((AbsListView) this.a).setOnScrollListener(this);
    }

    public ProGuard(Context context, ProGuard proGuard, ProGuard proGuard2) {
        super(context, proGuard, proGuard2);
        this.f4973i = true;
        ((AbsListView) this.a).setOnScrollListener(this);
    }

    public boolean getShowIndicator() {
        return this.f4972h;
    }

    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        Log.d("PullToRefresh", "First Visible: " + i + ". Visible Count: " + i2 + ". Total Items:" + i3);
        if (this.f4968d != null) {
            boolean z = i3 > 0 && i + i2 >= i3 - 1;
            this.f4966b = z;
        }
        if (getShowIndicatorInternal()) {
            m6747r();
        }
        if (this.f4967c != null) {
            this.f4967c.onScroll(absListView, i, i2, i3);
        }
    }

    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0 && this.f4968d != null && this.f4966b) {
            this.f4968d.m6821a();
        }
        if (this.f4967c != null) {
            this.f4967c.onScrollStateChanged(absListView, i);
        }
    }

    public void setAdapter(ListAdapter listAdapter) {
        ((AdapterView) this.a).setAdapter(listAdapter);
    }

    public final void setEmptyView(View view) {
        FrameLayout refreshableViewWrapper = getRefreshableViewWrapper();
        if (view != null) {
            view.setClickable(true);
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(view);
            }
            ViewGroup.LayoutParams a = ProGuard.m6742a(view.getLayoutParams());
            if (a != null) {
                refreshableViewWrapper.addView(view, a);
            } else {
                refreshableViewWrapper.addView(view);
            }
        }
        if (this.a instanceof com.handmark.pulltorefresh.library.p094a.ProGuard) {
            ((com.handmark.pulltorefresh.library.p094a.ProGuard) this.a).setEmptyViewInternal(view);
        } else {
            ((AbsListView) this.a).setEmptyView(view);
        }
        this.f4969e = view;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        ((AbsListView) this.a).setOnItemClickListener(onItemClickListener);
    }

    public final void setOnLastItemVisibleListener(ProGuard proGuard) {
        this.f4968d = proGuard;
    }

    public final void setOnScrollListener(OnScrollListener onScrollListener) {
        this.f4967c = onScrollListener;
    }

    public final void setScrollEmptyView(boolean z) {
        this.f4973i = z;
    }

    public void setShowIndicator(boolean z) {
        this.f4972h = z;
        if (getShowIndicatorInternal()) {
            m6743n();
        } else {
            m6746q();
        }
    }

    protected void m6748a() {
        super.m6717a();
        if (getShowIndicatorInternal()) {
            switch (ProGuard.f5013a[getCurrentMode().ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f4971g.m6794e();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f4970f.m6794e();
                default:
            }
        }
    }

    protected void m6750a(boolean z) {
        super.m6727a(z);
        if (getShowIndicatorInternal()) {
            m6747r();
        }
    }

    protected void m6751b() {
        super.m6729b();
        if (getShowIndicatorInternal()) {
            switch (ProGuard.f5013a[getCurrentMode().ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f4971g.m6793d();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f4970f.m6793d();
                default:
            }
        }
    }

    protected void m6752c() {
        super.m6731c();
        if (getShowIndicatorInternal()) {
            m6747r();
        }
    }

    protected void m6749a(TypedArray typedArray) {
        this.f4972h = typedArray.getBoolean(com.yf.ui.ProGuard.styleable.PullToRefresh_ptrShowIndicator, !m6736h());
    }

    protected boolean m6753d() {
        return m6744o();
    }

    protected boolean m6754e() {
        return m6745p();
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f4969e != null && !this.f4973i) {
            this.f4969e.scrollTo(-i, -i2);
        }
    }

    protected void m6755f() {
        super.m6734f();
        if (getShowIndicatorInternal()) {
            m6743n();
        } else {
            m6746q();
        }
    }

    private void m6743n() {
        ProGuard mode = getMode();
        FrameLayout refreshableViewWrapper = getRefreshableViewWrapper();
        if (mode.m6818c() && this.f4970f == null) {
            this.f4970f = new com.handmark.pulltorefresh.library.p094a.ProGuard(getContext(), ProGuard.PULL_FROM_START);
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
            layoutParams.rightMargin = getResources().getDimensionPixelSize(com.yf.ui.ProGuard.dimen.indicator_right_padding);
            layoutParams.gravity = 53;
            refreshableViewWrapper.addView(this.f4970f, layoutParams);
        } else if (!(mode.m6818c() || this.f4970f == null)) {
            refreshableViewWrapper.removeView(this.f4970f);
            this.f4970f = null;
        }
        if (mode.m6819d() && this.f4971g == null) {
            this.f4971g = new com.handmark.pulltorefresh.library.p094a.ProGuard(getContext(), ProGuard.PULL_FROM_END);
            ViewGroup.LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            layoutParams2.rightMargin = getResources().getDimensionPixelSize(com.yf.ui.ProGuard.dimen.indicator_right_padding);
            layoutParams2.gravity = 85;
            refreshableViewWrapper.addView(this.f4971g, layoutParams2);
        } else if (!mode.m6819d() && this.f4971g != null) {
            refreshableViewWrapper.removeView(this.f4971g);
            this.f4971g = null;
        }
    }

    private boolean getShowIndicatorInternal() {
        return this.f4972h && m6735g();
    }

    private boolean m6744o() {
        Adapter adapter = ((AbsListView) this.a).getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            Log.d("PullToRefresh", "isFirstItemVisible. Empty View.");
            return true;
        }
        if (((AbsListView) this.a).getFirstVisiblePosition() <= 1) {
            View childAt = ((AbsListView) this.a).getChildAt(0);
            if (childAt != null) {
                return childAt.getTop() >= ((AbsListView) this.a).getTop();
            }
        }
        return false;
    }

    private boolean m6745p() {
        Adapter adapter = ((AbsListView) this.a).getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            Log.d("PullToRefresh", "isLastItemVisible. Empty View.");
            return true;
        }
        int count = ((AbsListView) this.a).getCount() - 1;
        int lastVisiblePosition = ((AbsListView) this.a).getLastVisiblePosition();
        Log.d("PullToRefresh", "isLastItemVisible. Last Item Position: " + count + " Last Visible Pos: " + lastVisiblePosition);
        if (lastVisiblePosition >= count - 1) {
            View childAt = ((AbsListView) this.a).getChildAt(lastVisiblePosition - ((AbsListView) this.a).getFirstVisiblePosition());
            if (childAt != null) {
                return childAt.getBottom() <= ((AbsListView) this.a).getBottom();
            }
        }
        return false;
    }

    private void m6746q() {
        if (this.f4970f != null) {
            getRefreshableViewWrapper().removeView(this.f4970f);
            this.f4970f = null;
        }
        if (this.f4971g != null) {
            getRefreshableViewWrapper().removeView(this.f4971g);
            this.f4971g = null;
        }
    }

    private void m6747r() {
        if (this.f4970f != null) {
            if (m6737i() || !m6753d()) {
                if (this.f4970f.m6790a()) {
                    this.f4970f.m6791b();
                }
            } else if (!this.f4970f.m6790a()) {
                this.f4970f.m6792c();
            }
        }
        if (this.f4971g == null) {
            return;
        }
        if (m6737i() || !m6754e()) {
            if (this.f4971g.m6790a()) {
                this.f4971g.m6791b();
            }
        } else if (!this.f4971g.m6790a()) {
            this.f4971g.m6792c();
        }
    }
}
