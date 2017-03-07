package com.yf.smart.weloopx.activitys;

import android.support.v4.view.ViewPager.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ai implements ProGuard {
    final /* synthetic */ WelcomeActivity.ProGuard f7088a;
    final /* synthetic */ WelcomeActivity f7089b;

    ai(WelcomeActivity welcomeActivity, WelcomeActivity.ProGuard proGuard) {
        this.f7089b = welcomeActivity;
        this.f7088a = proGuard;
    }

    public void m8976a(int i) {
        int childCount = this.f7089b.f7074a.getChildCount() - 1;
        while (childCount >= 0) {
            this.f7089b.f7074a.getChildAt(childCount).setBackgroundResource(childCount == i ? R.drawable.page_indicator_focused : R.drawable.page_indicator_unfocused);
            childCount--;
        }
        ((WelcomeActivity.ProGuard) this.f7088a.m8950d(i)).m8952a();
    }

    public void m8977a(int i, float f, int i2) {
    }

    public void m8978b(int i) {
    }
}
