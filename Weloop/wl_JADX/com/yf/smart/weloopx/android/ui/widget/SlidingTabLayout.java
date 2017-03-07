package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ag;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.HorizontalScrollView;

/* compiled from: ProGuard */
public class SlidingTabLayout extends HorizontalScrollView {
    private int f8553a;
    private ViewPager f8554b;
    private android.support.v4.view.ViewPager.ProGuard f8555c;
    private final ProGuard f8556d;
    private ProGuard f8557e;
    private int f8558f;

    /* renamed from: com.yf.smart.weloopx.android.ui.widget.SlidingTabLayout.a */
    private class ProGuard implements android.support.v4.view.ViewPager.ProGuard {
        final /* synthetic */ SlidingTabLayout f8550a;
        private int f8551b;

        private ProGuard(SlidingTabLayout slidingTabLayout) {
            this.f8550a = slidingTabLayout;
        }

        public void m10568a(int i, float f, int i2) {
            int childCount = this.f8550a.f8556d.getChildCount();
            if (childCount != 0 && i >= 0 && i < childCount) {
                this.f8550a.f8556d.m10647a(i, f);
                View childAt = this.f8550a.f8556d.getChildAt(i);
                this.f8550a.m10573a(i, childAt != null ? (int) (((float) childAt.getWidth()) * f) : 0);
                if (this.f8550a.f8555c != null) {
                    this.f8550a.f8555c.m595a(i, f, i2);
                }
            }
        }

        public void m10569b(int i) {
            this.f8551b = i;
            if (this.f8550a.f8555c != null) {
                this.f8550a.f8555c.m596b(i);
            }
        }

        public void m10567a(int i) {
            if (this.f8551b == 0) {
                this.f8550a.f8556d.m10647a(i, 0.0f);
                this.f8550a.m10573a(i, 0);
            }
            if (this.f8550a.f8555c != null) {
                this.f8550a.f8555c.m594a(i);
            }
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.widget.SlidingTabLayout.b */
    private class ProGuard implements OnClickListener {
        final /* synthetic */ SlidingTabLayout f8552a;

        private ProGuard(SlidingTabLayout slidingTabLayout) {
            this.f8552a = slidingTabLayout;
        }

        public void onClick(View view) {
            for (int i = 0; i < this.f8552a.f8556d.getChildCount(); i++) {
                if (view == this.f8552a.f8556d.getChildAt(i)) {
                    this.f8552a.f8554b.setCurrentItem(i);
                    return;
                }
            }
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f8553a = (int) (24.0f * getResources().getDisplayMetrics().density);
        this.f8558f = -1;
        this.f8556d = new ProGuard(context);
        addView(this.f8556d, -1, -2);
    }

    public void setOnPageChangeListener(android.support.v4.view.ViewPager.ProGuard proGuard) {
        this.f8555c = proGuard;
    }

    public void m10577a(ViewPager viewPager, ProGuard proGuard) {
        this.f8556d.removeAllViews();
        this.f8557e = proGuard;
        this.f8556d.m10648a(proGuard);
        this.f8554b = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new ProGuard());
            m10571a();
        }
    }

    private void m10571a() {
        ag adapter = this.f8554b.getAdapter();
        OnClickListener proGuard = new ProGuard();
        for (int i = 0; i < adapter.m66b(); i++) {
            View view = this.f8557e.getView(i, null, this.f8556d);
            if (view.getParent() == null) {
                this.f8556d.addView(view);
            } else if (view == this.f8556d) {
                view = this.f8556d.getChildAt(i);
            }
            view.setOnClickListener(proGuard);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f8554b != null) {
            m10573a(this.f8554b.getCurrentItem(), 0);
        }
    }

    private void m10572a(int i) {
        if (i != this.f8558f) {
            View childAt = this.f8556d.getChildAt(i);
            if (childAt != null) {
                this.f8557e.m9769a(i, childAt, true);
            }
            childAt = this.f8556d.getChildAt(this.f8558f);
            if (childAt != null) {
                this.f8557e.m9769a(this.f8558f, childAt, false);
            }
            this.f8558f = i;
        }
    }

    private void m10573a(int i, int i2) {
        int childCount = this.f8556d.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount) {
            View childAt = this.f8556d.getChildAt(i);
            if (childAt != null) {
                childCount = childAt.getLeft() + i2;
                if (i > 0 || i2 > 0) {
                    childCount -= this.f8553a;
                }
                scrollTo(childCount, 0);
                m10572a(i);
            }
        }
    }
}
