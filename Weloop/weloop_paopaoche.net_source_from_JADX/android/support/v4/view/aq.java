package android.support.v4.view;

import android.view.View;

/* compiled from: ProGuard */
class aq {
    public static void m1065a(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void m1067a(View view, int i, int i2, int i3, int i4) {
        view.postInvalidate(i, i2, i3, i4);
    }

    public static void m1068a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void m1069a(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    public static int m1070b(View view) {
        return view.getImportantForAccessibility();
    }

    public static void m1066a(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    public static int m1071c(View view) {
        return view.getMinimumHeight();
    }

    public static void m1072d(View view) {
        view.requestFitSystemWindows();
    }

    public static boolean m1073e(View view) {
        return view.getFitsSystemWindows();
    }
}
