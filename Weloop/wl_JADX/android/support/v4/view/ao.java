package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

/* compiled from: ProGuard */
class ao {
    static long m1051a() {
        return ValueAnimator.getFrameDelay();
    }

    public static void m1053a(View view, int i, Paint paint) {
        view.setLayerType(i, paint);
    }

    public static int m1050a(View view) {
        return view.getLayerType();
    }

    public static int m1049a(int i, int i2, int i3) {
        return View.resolveSizeAndState(i, i2, i3);
    }

    public static int m1055b(View view) {
        return view.getMeasuredState();
    }

    public static float m1058c(View view) {
        return view.getTranslationY();
    }

    public static void m1052a(View view, float f) {
        view.setTranslationX(f);
    }

    public static void m1056b(View view, float f) {
        view.setTranslationY(f);
    }

    public static void m1059c(View view, float f) {
        view.setAlpha(f);
    }

    public static void m1061d(View view, float f) {
        view.setScaleY(f);
    }

    public static void m1060d(View view) {
        view.jumpDrawablesToCurrentState();
    }

    public static void m1054a(View view, boolean z) {
        view.setSaveFromParentEnabled(z);
    }

    public static void m1057b(View view, boolean z) {
        view.setActivated(z);
    }
}
