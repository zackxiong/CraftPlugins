package com.baidu.mapapi.map;

import android.os.Bundle;

public final class Stroke {
    public final int color;
    public final int strokeWidth;

    public Stroke(int i, int i2) {
        if (i <= 0) {
            i = 5;
        }
        this.strokeWidth = i;
        this.color = i2;
    }

    Bundle m6276a(Bundle bundle) {
        bundle.putInt("width", this.strokeWidth);
        Overlay.m6166a(this.color, bundle);
        return bundle;
    }
}
