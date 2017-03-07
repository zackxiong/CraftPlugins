package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class dj implements Runnable {
    final /* synthetic */ di f7914a;

    dj(di diVar) {
        this.f7914a = diVar;
    }

    public void run() {
        this.f7914a.f7911j.m73c();
        ProGuard.m8292a("GoalFragment viewPager.getCurrentItem = " + this.f7914a.f7907f.getCurrentItem() + " dailyFragmentAdapter.getCount()" + this.f7914a.f7911j.m9169b());
        if (this.f7914a.f7907f.getCurrentItem() >= this.f7914a.f7911j.m9169b()) {
            int b = this.f7914a.f7911j.m9169b() - 1;
            if (b < 0) {
                b = 0;
            }
            this.f7914a.f7907f.setCurrentItem(b);
        }
    }
}
