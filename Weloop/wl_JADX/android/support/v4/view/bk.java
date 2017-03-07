package android.support.v4.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

/* compiled from: ProGuard */
final class bk implements AnimatorUpdateListener {
    final /* synthetic */ bn f522a;
    final /* synthetic */ View f523b;

    bk(bn bnVar, View view) {
        this.f522a = bnVar;
        this.f523b = view;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f522a.m1212a(this.f523b);
    }
}
