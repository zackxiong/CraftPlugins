package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: ProGuard */
final class bi extends AnimatorListenerAdapter {
    final /* synthetic */ bl f520a;
    final /* synthetic */ View f521b;

    bi(bl blVar, View view) {
        this.f520a = blVar;
        this.f521b = view;
    }

    public void onAnimationCancel(Animator animator) {
        this.f520a.m1172c(this.f521b);
    }

    public void onAnimationEnd(Animator animator) {
        this.f520a.m1171b(this.f521b);
    }

    public void onAnimationStart(Animator animator) {
        this.f520a.m1170a(this.f521b);
    }
}
