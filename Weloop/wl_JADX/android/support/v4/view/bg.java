package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: ProGuard */
final class bg extends AnimatorListenerAdapter {
    final /* synthetic */ bl f518a;
    final /* synthetic */ View f519b;

    bg(bl blVar, View view) {
        this.f518a = blVar;
        this.f519b = view;
    }

    public void onAnimationCancel(Animator animator) {
        this.f518a.m1172c(this.f519b);
    }

    public void onAnimationEnd(Animator animator) {
        this.f518a.m1171b(this.f519b);
    }

    public void onAnimationStart(Animator animator) {
        this.f518a.m1170a(this.f519b);
    }
}
