package android.support.v4.view;

import android.view.WindowInsets;

/* compiled from: ProGuard */
class bp extends bo {
    private final WindowInsets f524a;

    bp(WindowInsets windowInsets) {
        this.f524a = windowInsets;
    }

    public int m1218a() {
        return this.f524a.getSystemWindowInsetLeft();
    }

    public int m1220b() {
        return this.f524a.getSystemWindowInsetTop();
    }

    public int m1221c() {
        return this.f524a.getSystemWindowInsetRight();
    }

    public int m1222d() {
        return this.f524a.getSystemWindowInsetBottom();
    }

    public bo m1219a(int i, int i2, int i3, int i4) {
        return new bp(this.f524a.replaceSystemWindowInsets(i, i2, i3, i4));
    }

    WindowInsets m1223e() {
        return this.f524a;
    }
}
