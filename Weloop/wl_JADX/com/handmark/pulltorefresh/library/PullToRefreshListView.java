package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;

/* compiled from: ProGuard */
public class PullToRefreshListView extends ProGuard<ListView> {
    private com.handmark.pulltorefresh.library.p094a.ProGuard f4978b;
    private com.handmark.pulltorefresh.library.p094a.ProGuard f4979c;
    private FrameLayout f4980d;
    private boolean f4981e;

    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshListView.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f4974a;

        static {
            f4974a = new int[com.handmark.pulltorefresh.library.ProGuard.ProGuard.values().length];
            try {
                f4974a[com.handmark.pulltorefresh.library.ProGuard.ProGuard.MANUAL_REFRESH_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4974a[com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4974a[com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshListView.a */
    protected class ProGuard extends ListView implements com.handmark.pulltorefresh.library.p094a.ProGuard {
        final /* synthetic */ PullToRefreshListView f4975a;
        private boolean f4976b;

        public ProGuard(PullToRefreshListView pullToRefreshListView, Context context, AttributeSet attributeSet) {
            this.f4975a = pullToRefreshListView;
            super(context, attributeSet);
            this.f4976b = false;
        }

        protected void dispatchDraw(Canvas canvas) {
            try {
                super.dispatchDraw(canvas);
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }

        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            try {
                return super.dispatchTouchEvent(motionEvent);
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
                return false;
            }
        }

        public void setAdapter(ListAdapter listAdapter) {
            if (!(this.f4975a.f4980d == null || this.f4976b)) {
                addFooterView(this.f4975a.f4980d, null, false);
                this.f4976b = true;
            }
            super.setAdapter(listAdapter);
        }

        public void setEmptyView(View view) {
            this.f4975a.setEmptyView(view);
        }

        public void setEmptyViewInternal(View view) {
            super.setEmptyView(view);
        }
    }

    @TargetApi(9)
    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshListView.b */
    final class ProGuard extends ProGuard {
        final /* synthetic */ PullToRefreshListView f4977b;

        public ProGuard(PullToRefreshListView pullToRefreshListView, Context context, AttributeSet attributeSet) {
            this.f4977b = pullToRefreshListView;
            super(pullToRefreshListView, context, attributeSet);
        }

        protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            boolean overScrollBy = super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
            ProGuard.m6810a(this.f4977b, i, i3, i2, i4, z);
            return overScrollBy;
        }
    }

    protected /* synthetic */ View m6759a(Context context, AttributeSet attributeSet) {
        return m6764c(context, attributeSet);
    }

    public PullToRefreshListView(Context context) {
        super(context);
    }

    public PullToRefreshListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PullToRefreshListView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard) {
        super(context, proGuard);
    }

    public PullToRefreshListView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard2) {
        super(context, proGuard, proGuard2);
    }

    public final com.handmark.pulltorefresh.library.ProGuard.ProGuard getPullToRefreshScrollDirection() {
        return com.handmark.pulltorefresh.library.ProGuard.ProGuard.VERTICAL;
    }

    protected void m6761a(boolean z) {
        ListAdapter adapter = ((ListView) this.a).getAdapter();
        if (!this.f4981e || !getShowViewWhileRefreshing() || adapter == null || adapter.isEmpty()) {
            super.m6750a(z);
            return;
        }
        com.handmark.pulltorefresh.library.p094a.ProGuard footerLayout;
        com.handmark.pulltorefresh.library.p094a.ProGuard proGuard;
        com.handmark.pulltorefresh.library.p094a.ProGuard proGuard2;
        int count;
        int scrollY;
        super.m6750a(false);
        switch (ProGuard.f4974a[getCurrentMode().ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                footerLayout = getFooterLayout();
                proGuard = this.f4979c;
                proGuard2 = this.f4978b;
                count = ((ListView) this.a).getCount() - 1;
                scrollY = getScrollY() - getFooterSize();
                break;
            default:
                proGuard = getHeaderLayout();
                proGuard2 = this.f4978b;
                scrollY = getScrollY() + getHeaderSize();
                footerLayout = proGuard;
                proGuard = proGuard2;
                proGuard2 = this.f4979c;
                count = 0;
                break;
        }
        footerLayout.m6782i();
        footerLayout.m6778e();
        proGuard2.setVisibility(8);
        proGuard.setVisibility(0);
        proGuard.m6780g();
        if (z) {
            m6739k();
            setHeaderScroll(scrollY);
            ((ListView) this.a).setSelection(count);
            m6718a(0);
        }
    }

    protected void m6765c() {
        int i = 0;
        int i2 = 1;
        if (this.f4981e) {
            int i3;
            com.handmark.pulltorefresh.library.p094a.ProGuard proGuard;
            com.handmark.pulltorefresh.library.p094a.ProGuard proGuard2;
            com.handmark.pulltorefresh.library.p094a.ProGuard proGuard3;
            int count;
            switch (ProGuard.f4974a[getCurrentMode().ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    com.handmark.pulltorefresh.library.p094a.ProGuard footerLayout = getFooterLayout();
                    proGuard3 = this.f4979c;
                    count = ((ListView) this.a).getCount() - 1;
                    int footerSize = getFooterSize();
                    if (Math.abs(((ListView) this.a).getLastVisiblePosition() - count) <= 1) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    i = count;
                    i2 = footerSize;
                    proGuard = proGuard3;
                    proGuard2 = footerLayout;
                    break;
                default:
                    proGuard3 = getHeaderLayout();
                    proGuard2 = this.f4978b;
                    count = -getHeaderSize();
                    if (Math.abs(((ListView) this.a).getFirstVisiblePosition() - 0) > 1) {
                        i2 = 0;
                    }
                    i3 = i2;
                    i2 = count;
                    proGuard = proGuard2;
                    proGuard2 = proGuard3;
                    break;
            }
            if (proGuard.getVisibility() == 0) {
                proGuard2.m6783j();
                proGuard.setVisibility(8);
                if (!(i3 == 0 || getState() == com.handmark.pulltorefresh.library.ProGuard.ProGuard.MANUAL_REFRESHING)) {
                    ((ListView) this.a).setSelection(i);
                    setHeaderScroll(i2);
                }
            }
            super.m6752c();
            return;
        }
        super.m6752c();
    }

    protected ProGuard m6763b(boolean z, boolean z2) {
        ProGuard b = super.m6728b(z, z2);
        if (this.f4981e) {
            com.handmark.pulltorefresh.library.ProGuard.ProGuard mode = getMode();
            if (z && mode.m6818c()) {
                b.m6807a(this.f4978b);
            }
            if (z2 && mode.m6819d()) {
                b.m6807a(this.f4979c);
            }
        }
        return b;
    }

    protected ListView m6762b(Context context, AttributeSet attributeSet) {
        if (VERSION.SDK_INT >= 9) {
            return new ProGuard(this, context, attributeSet);
        }
        return new ProGuard(this, context, attributeSet);
    }

    protected ListView m6764c(Context context, AttributeSet attributeSet) {
        ListView b = m6762b(context, attributeSet);
        b.setId(16908298);
        return b;
    }

    protected void m6760a(TypedArray typedArray) {
        super.m6749a(typedArray);
        this.f4981e = typedArray.getBoolean(com.yf.ui.ProGuard.styleable.PullToRefresh_ptrListViewExtrasEnabled, true);
        if (this.f4981e) {
            LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 1);
            View frameLayout = new FrameLayout(getContext());
            this.f4978b = m6715a(getContext(), com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_START, typedArray);
            this.f4978b.setVisibility(8);
            frameLayout.addView(this.f4978b, layoutParams);
            ((ListView) this.a).addHeaderView(frameLayout, null, false);
            this.f4980d = new FrameLayout(getContext());
            this.f4979c = m6715a(getContext(), com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END, typedArray);
            this.f4979c.setVisibility(8);
            this.f4980d.addView(this.f4979c, layoutParams);
            if (!typedArray.hasValue(com.yf.ui.ProGuard.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled)) {
                setScrollingWhileRefreshingEnabled(true);
            }
        }
    }
}
