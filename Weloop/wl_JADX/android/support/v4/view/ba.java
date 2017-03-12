package android.support.v4.view;

/* compiled from: ProGuard */
class ba implements Runnable {
    final /* synthetic */ ViewPager f505a;

    ba(ViewPager viewPager) {
        this.f505a = viewPager;
    }

    public void run() {
        this.f505a.setScrollState(0);
        this.f505a.m634c();
    }
}
