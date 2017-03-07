package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

public final class ArcOptions extends OverlayOptions {
    private static final String f4218d;
    int f4219a;
    boolean f4220b;
    Bundle f4221c;
    private int f4222e;
    private int f4223f;
    private LatLng f4224g;
    private LatLng f4225h;
    private LatLng f4226i;

    static {
        f4218d = ArcOptions.class.getSimpleName();
    }

    public ArcOptions() {
        this.f4222e = -16777216;
        this.f4223f = 5;
        this.f4220b = true;
    }

    Overlay m6172a() {
        Overlay arc = new Arc();
        arc.q = this.f4220b;
        arc.p = this.f4219a;
        arc.r = this.f4221c;
        arc.f4213a = this.f4222e;
        arc.f4214b = this.f4223f;
        arc.f4215c = this.f4224g;
        arc.f4216d = this.f4225h;
        arc.f4217e = this.f4226i;
        return arc;
    }

    public ArcOptions color(int i) {
        this.f4222e = i;
        return this;
    }

    public ArcOptions extraInfo(Bundle bundle) {
        this.f4221c = bundle;
        return this;
    }

    public int getColor() {
        return this.f4222e;
    }

    public LatLng getEndPoint() {
        return this.f4226i;
    }

    public Bundle getExtraInfo() {
        return this.f4221c;
    }

    public LatLng getMiddlePoint() {
        return this.f4225h;
    }

    public LatLng getStartPoint() {
        return this.f4224g;
    }

    public int getWidth() {
        return this.f4223f;
    }

    public int getZIndex() {
        return this.f4219a;
    }

    public boolean isVisible() {
        return this.f4220b;
    }

    public ArcOptions points(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        if (latLng == null || latLng2 == null || latLng3 == null) {
            throw new IllegalArgumentException("start and middle and end points can not be null");
        } else if (latLng == latLng2 || latLng == latLng3 || latLng2 == latLng3) {
            throw new IllegalArgumentException("start and middle and end points can not be same");
        } else {
            this.f4224g = latLng;
            this.f4225h = latLng2;
            this.f4226i = latLng3;
            return this;
        }
    }

    public ArcOptions visible(boolean z) {
        this.f4220b = z;
        return this;
    }

    public ArcOptions width(int i) {
        if (i > 0) {
            this.f4223f = i;
        }
        return this;
    }

    public ArcOptions zIndex(int i) {
        this.f4219a = i;
        return this;
    }
}
