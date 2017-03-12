package com.yf.gattlib.http.afinal.bitmap.core;

import android.graphics.Bitmap;
import android.view.animation.Animation;

/* compiled from: ProGuard */
public class BitmapDisplayConfig {
    private Animation animation;
    private int animationType;
    private int bitmapHeight;
    private int bitmapWidth;
    private Bitmap loadfailBitmap;
    private Bitmap loadingBitmap;

    /* compiled from: ProGuard */
    public class AnimationType {
        public static final int fadeIn = 1;
        public static final int userDefined = 0;
    }

    public int getBitmapWidth() {
        return this.bitmapWidth;
    }

    public void setBitmapWidth(int i) {
        this.bitmapWidth = i;
    }

    public int getBitmapHeight() {
        return this.bitmapHeight;
    }

    public void setBitmapHeight(int i) {
        this.bitmapHeight = i;
    }

    public Animation getAnimation() {
        return this.animation;
    }

    public void setAnimation(Animation animation) {
        this.animation = animation;
    }

    public int getAnimationType() {
        return this.animationType;
    }

    public void setAnimationType(int i) {
        this.animationType = i;
    }

    public Bitmap getLoadingBitmap() {
        return this.loadingBitmap;
    }

    public void setLoadingBitmap(Bitmap bitmap) {
        this.loadingBitmap = bitmap;
    }

    public Bitmap getLoadfailBitmap() {
        return this.loadfailBitmap;
    }

    public void setLoadfailBitmap(Bitmap bitmap) {
        this.loadfailBitmap = bitmap;
    }
}
