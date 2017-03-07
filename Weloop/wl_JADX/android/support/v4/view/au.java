package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

/* compiled from: ProGuard */
final class au implements OnApplyWindowInsetsListener {
    final /* synthetic */ af f501a;

    au(af afVar) {
        this.f501a = afVar;
    }

    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return ((bp) this.f501a.m882a(view, new bp(windowInsets))).m1223e();
    }
}
