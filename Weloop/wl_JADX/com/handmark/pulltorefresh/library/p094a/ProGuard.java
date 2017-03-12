package com.handmark.pulltorefresh.library.p094a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

@SuppressLint({"ViewConstructor"})
/* renamed from: com.handmark.pulltorefresh.library.a.c */
public class ProGuard extends FrameLayout implements AnimationListener {
    private Animation f4999a;
    private Animation f5000b;
    private ImageView f5001c;
    private final Animation f5002d;
    private final Animation f5003e;

    /* renamed from: com.handmark.pulltorefresh.library.a.c.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f4998a;

        static {
            f4998a = new int[com.handmark.pulltorefresh.library.ProGuard.ProGuard.values().length];
            try {
                f4998a[com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4998a[com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ProGuard(Context context, com.handmark.pulltorefresh.library.ProGuard.ProGuard proGuard) {
        int i;
        super(context);
        this.f5001c = new ImageView(context);
        Drawable drawable = getResources().getDrawable(com.yf.ui.ProGuard.drawable.indicator_arrow);
        this.f5001c.setImageDrawable(drawable);
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.yf.ui.ProGuard.dimen.indicator_internal_padding);
        this.f5001c.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addView(this.f5001c);
        switch (ProGuard.f4998a[proGuard.ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                i = com.yf.ui.ProGuard.anim.slide_in_from_bottom;
                dimensionPixelSize = com.yf.ui.ProGuard.anim.slide_out_to_bottom;
                setBackgroundResource(com.yf.ui.ProGuard.drawable.indicator_bg_bottom);
                this.f5001c.setScaleType(ScaleType.MATRIX);
                Matrix matrix = new Matrix();
                matrix.setRotate(180.0f, ((float) drawable.getIntrinsicWidth()) / 2.0f, ((float) drawable.getIntrinsicHeight()) / 2.0f);
                this.f5001c.setImageMatrix(matrix);
                break;
            default:
                i = com.yf.ui.ProGuard.anim.slide_in_from_top;
                dimensionPixelSize = com.yf.ui.ProGuard.anim.slide_out_to_top;
                setBackgroundResource(com.yf.ui.ProGuard.drawable.indicator_bg_top);
                break;
        }
        this.f4999a = AnimationUtils.loadAnimation(context, i);
        this.f4999a.setAnimationListener(this);
        this.f5000b = AnimationUtils.loadAnimation(context, dimensionPixelSize);
        this.f5000b.setAnimationListener(this);
        Interpolator linearInterpolator = new LinearInterpolator();
        this.f5002d = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f5002d.setInterpolator(linearInterpolator);
        this.f5002d.setDuration(150);
        this.f5002d.setFillAfter(true);
        this.f5003e = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f5003e.setInterpolator(linearInterpolator);
        this.f5003e.setDuration(150);
        this.f5003e.setFillAfter(true);
    }

    public final boolean m6790a() {
        Animation animation = getAnimation();
        if (animation != null) {
            if (this.f4999a == animation) {
                return true;
            }
            return false;
        } else if (getVisibility() != 0) {
            return false;
        } else {
            return true;
        }
    }

    public void m6791b() {
        startAnimation(this.f5000b);
    }

    public void m6792c() {
        this.f5001c.clearAnimation();
        startAnimation(this.f4999a);
    }

    public void onAnimationEnd(Animation animation) {
        if (animation == this.f5000b) {
            this.f5001c.clearAnimation();
            setVisibility(8);
        } else if (animation == this.f4999a) {
            setVisibility(0);
        }
        clearAnimation();
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }

    public void m6793d() {
        this.f5001c.startAnimation(this.f5002d);
    }

    public void m6794e() {
        this.f5001c.startAnimation(this.f5003e);
    }
}
