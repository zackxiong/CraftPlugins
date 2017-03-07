package it.sephiroth.android.library.p151a.p153b;

import android.annotation.TargetApi;
import android.view.View;

/* renamed from: it.sephiroth.android.library.a.b.a */
public class ProGuard extends it.sephiroth.android.library.p151a.ProGuard.ProGuard {
    public ProGuard(View view) {
        super(view);
    }

    @TargetApi(14)
    public void m11473a(int i) {
        this.a.setScrollX(i);
    }

    @TargetApi(11)
    public boolean m11474a() {
        return this.a.isHardwareAccelerated();
    }
}
