package it.sephiroth.android.library.p151a;

import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;

/* renamed from: it.sephiroth.android.library.a.a */
public class ProGuard {

    /* renamed from: it.sephiroth.android.library.a.a.a */
    public static abstract class ProGuard {
        protected View f9167a;

        public abstract void m11462a(int i);

        public abstract void m11463a(Runnable runnable);

        public abstract boolean m11464a();

        protected ProGuard(View view) {
            this.f9167a = view;
        }
    }

    /* renamed from: it.sephiroth.android.library.a.a.b */
    public static class ProGuard extends ProGuard {
        public ProGuard(View view) {
            super(view);
        }

        public void m11466a(Runnable runnable) {
            this.a.post(runnable);
        }

        public void m11465a(int i) {
            Log.d("ViewHelper", "setScrollX: " + i);
            this.a.scrollTo(i, this.a.getScrollY());
        }

        public boolean m11467a() {
            return false;
        }
    }

    public static final ProGuard m11472a(View view) {
        int i = VERSION.SDK_INT;
        if (i >= 16) {
            return new it.sephiroth.android.library.p151a.p154c.ProGuard(view);
        }
        if (i >= 14) {
            return new it.sephiroth.android.library.p151a.p153b.ProGuard(view);
        }
        return new ProGuard(view);
    }
}
