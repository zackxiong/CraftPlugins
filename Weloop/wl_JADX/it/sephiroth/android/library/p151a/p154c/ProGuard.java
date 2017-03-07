package it.sephiroth.android.library.p151a.p154c;

import android.annotation.TargetApi;
import android.view.View;

/* renamed from: it.sephiroth.android.library.a.c.a */
public class ProGuard extends it.sephiroth.android.library.p151a.p153b.ProGuard {
    public ProGuard(View view) {
        super(view);
    }

    @TargetApi(16)
    public void m11475a(Runnable runnable) {
        this.a.postOnAnimation(runnable);
    }
}
