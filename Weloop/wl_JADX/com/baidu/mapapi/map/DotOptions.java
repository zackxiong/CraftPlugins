package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

public final class DotOptions extends OverlayOptions {
    int f4282a;
    boolean f4283b;
    Bundle f4284c;
    private LatLng f4285d;
    private int f4286e;
    private int f4287f;

    public DotOptions() {
        this.f4286e = -16777216;
        this.f4287f = 5;
        this.f4283b = true;
    }

    Overlay m6208a() {
        Overlay dot = new Dot();
        dot.q = this.f4283b;
        dot.p = this.f4282a;
        dot.r = this.f4284c;
        dot.f4280b = this.f4286e;
        dot.f4279a = this.f4285d;
        dot.f4281c = this.f4287f;
        return dot;
    }

    public DotOptions center(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("dot center can not be null");
        }
        this.f4285d = latLng;
        return this;
    }

    public DotOptions color(int i) {
        this.f4286e = i;
        return this;
    }

    public DotOptions extraInfo(Bundle bundle) {
        this.f4284c = bundle;
        return this;
    }

    public LatLng getCenter() {
        return this.f4285d;
    }

    public int getColor() {
        return this.f4286e;
    }

    public Bundle getExtraInfo() {
        return this.f4284c;
    }

    public int getRadius() {
        return this.f4287f;
    }

    public int getZIndex() {
        return this.f4282a;
    }

    public boolean isVisible() {
        return this.f4283b;
    }

    public DotOptions radius(int i) {
        if (i > 0) {
            this.f4287f = i;
        }
        return this;
    }

    public DotOptions visible(boolean z) {
        this.f4283b = z;
        return this;
    }

    public DotOptions zIndex(int i) {
        this.f4282a = i;
        return this;
    }
}
