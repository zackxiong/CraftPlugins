package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;

/* compiled from: ProGuard */
class bf {
    public static void m1201a(View view, long j) {
        view.animate().setDuration(j);
    }

    public static void m1200a(View view, float f) {
        view.animate().translationX(f);
    }

    public static void m1205b(View view, float f) {
        view.animate().translationY(f);
    }

    public static void m1203a(View view, Interpolator interpolator) {
        view.animate().setInterpolator(interpolator);
    }

    public static void m1206c(View view, float f) {
        view.animate().scaleY(f);
    }

    public static void m1199a(View view) {
        view.animate().cancel();
    }

    public static void m1204b(View view) {
        view.animate().start();
    }

    public static void m1202a(View view, bl blVar) {
        if (blVar != null) {
            view.animate().setListener(new bg(blVar, view));
        } else {
            view.animate().setListener(null);
        }
    }
}
