package com.yf.gattlib.http.afinal.bitmap.display;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapDisplayConfig;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
public class SimpleDisplayer implements Displayer {
    public void loadCompletedisplay(View view, Bitmap bitmap, BitmapDisplayConfig bitmapDisplayConfig) {
        switch (bitmapDisplayConfig.getAnimationType()) {
            case ProGuard.styleable.View_android_theme /*0*/:
                animationDisplay(view, bitmap, bitmapDisplayConfig.getAnimation());
            case ProGuard.styleable.View_android_focusable /*1*/:
                fadeInDisplay(view, bitmap);
            default:
        }
    }

    public void loadFailDisplay(View view, Bitmap bitmap) {
        if (view instanceof ImageView) {
            ((ImageView) view).setImageBitmap(bitmap);
        } else {
            view.setBackgroundDrawable(new BitmapDrawable(bitmap));
        }
    }

    private void fadeInDisplay(View view, Bitmap bitmap) {
        Drawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(17170445), new BitmapDrawable(view.getResources(), bitmap)});
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(transitionDrawable);
        } else {
            view.setBackgroundDrawable(transitionDrawable);
        }
        transitionDrawable.startTransition(300);
    }

    private void animationDisplay(View view, Bitmap bitmap, Animation animation) {
        animation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
        if (view instanceof ImageView) {
            ((ImageView) view).setImageBitmap(bitmap);
        } else {
            view.setBackgroundDrawable(new BitmapDrawable(bitmap));
        }
        view.startAnimation(animation);
    }
}
