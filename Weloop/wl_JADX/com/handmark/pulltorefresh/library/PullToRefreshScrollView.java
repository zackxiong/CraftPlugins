package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

/* compiled from: ProGuard */
public class PullToRefreshScrollView extends ProGuard<ScrollView> {

    @TargetApi(9)
    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshScrollView.a */
    final class ProGuard extends ScrollView {
        final /* synthetic */ PullToRefreshScrollView f4982a;

        public ProGuard(PullToRefreshScrollView pullToRefreshScrollView, Context context, AttributeSet attributeSet) {
            this.f4982a = pullToRefreshScrollView;
            super(context, attributeSet);
        }

        protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            boolean overScrollBy = super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
            ProGuard.m6809a(this.f4982a, i, i3, i2, i4, m6766a(), z);
            return overScrollBy;
        }

        private int m6766a() {
            if (getChildCount() > 0) {
                return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
            }
            return 0;
        }
    }

    protected /* synthetic */ View m6767a(Context context, AttributeSet attributeSet) {
        return m6768b(context, attributeSet);
    }

    public PullToRefreshScrollView(Context context) {
        super(context);
    }

    public PullToRefreshScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PullToRefreshScrollView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard) {
        super(context, proGuard);
    }

    public PullToRefreshScrollView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard2) {
        super(context, proGuard, proGuard2);
    }

    public final com.handmark.pulltorefresh.library.ProGuard.ProGuard getPullToRefreshScrollDirection() {
        return com.handmark.pulltorefresh.library.ProGuard.ProGuard.VERTICAL;
    }

    protected ScrollView m6768b(Context context, AttributeSet attributeSet) {
        ScrollView proGuard;
        if (VERSION.SDK_INT >= 9) {
            proGuard = new ProGuard(this, context, attributeSet);
        } else {
            proGuard = new ScrollView(context, attributeSet);
        }
        proGuard.setId(com.yf.ui.ProGuard.id.scrollview);
        return proGuard;
    }

    protected boolean m6769d() {
        return ((ScrollView) this.a).getScrollY() == 0;
    }

    protected boolean m6770e() {
        View childAt = ((ScrollView) this.a).getChildAt(0);
        if (childAt == null) {
            return false;
        }
        if (((ScrollView) this.a).getScrollY() >= childAt.getHeight() - getHeight()) {
            return true;
        }
        return false;
    }
}
