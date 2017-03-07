package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

/* compiled from: ProGuard */
public class PullToRefreshGridView extends ProGuard<GridView> {

    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshGridView.a */
    class ProGuard extends GridView implements com.handmark.pulltorefresh.library.p094a.ProGuard {
        final /* synthetic */ PullToRefreshGridView f4940a;

        public ProGuard(PullToRefreshGridView pullToRefreshGridView, Context context, AttributeSet attributeSet) {
            this.f4940a = pullToRefreshGridView;
            super(context, attributeSet);
        }

        public void setEmptyView(View view) {
            this.f4940a.setEmptyView(view);
        }

        public void setEmptyViewInternal(View view) {
            super.setEmptyView(view);
        }
    }

    @TargetApi(9)
    /* renamed from: com.handmark.pulltorefresh.library.PullToRefreshGridView.b */
    final class ProGuard extends ProGuard {
        final /* synthetic */ PullToRefreshGridView f4941b;

        public ProGuard(PullToRefreshGridView pullToRefreshGridView, Context context, AttributeSet attributeSet) {
            this.f4941b = pullToRefreshGridView;
            super(pullToRefreshGridView, context, attributeSet);
        }

        protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            boolean overScrollBy = super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
            ProGuard.m6810a(this.f4941b, i, i3, i2, i4, z);
            return overScrollBy;
        }
    }

    protected /* synthetic */ View m6756a(Context context, AttributeSet attributeSet) {
        return m6757b(context, attributeSet);
    }

    public PullToRefreshGridView(Context context) {
        super(context);
    }

    public PullToRefreshGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PullToRefreshGridView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard) {
        super(context, proGuard);
    }

    public PullToRefreshGridView(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard2) {
        super(context, proGuard, proGuard2);
    }

    public final com.handmark.pulltorefresh.library.ProGuard.ProGuard getPullToRefreshScrollDirection() {
        return com.handmark.pulltorefresh.library.ProGuard.ProGuard.VERTICAL;
    }

    protected final GridView m6757b(Context context, AttributeSet attributeSet) {
        GridView proGuard;
        if (VERSION.SDK_INT >= 9) {
            proGuard = new ProGuard(this, context, attributeSet);
        } else {
            proGuard = new ProGuard(this, context, attributeSet);
        }
        proGuard.setId(com.yf.ui.ProGuard.id.gridview);
        return proGuard;
    }
}
