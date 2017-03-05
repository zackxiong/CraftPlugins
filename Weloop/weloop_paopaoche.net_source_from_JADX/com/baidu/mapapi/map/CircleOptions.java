package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

public final class CircleOptions extends OverlayOptions {
    private static final String f4271d;
    int f4272a;
    boolean f4273b;
    Bundle f4274c;
    private LatLng f4275e;
    private int f4276f;
    private int f4277g;
    private Stroke f4278h;

    static {
        f4271d = CircleOptions.class.getSimpleName();
    }

    public CircleOptions() {
        this.f4276f = -16777216;
        this.f4273b = true;
    }

    Overlay m6206a() {
        Overlay circle = new Circle();
        circle.q = this.f4273b;
        circle.p = this.f4272a;
        circle.r = this.f4274c;
        circle.f4268b = this.f4276f;
        circle.f4267a = this.f4275e;
        circle.f4269c = this.f4277g;
        circle.f4270d = this.f4278h;
        return circle;
    }

    public CircleOptions center(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("circle center can not be null");
        }
        this.f4275e = latLng;
        return this;
    }

    public CircleOptions extraInfo(Bundle bundle) {
        this.f4274c = bundle;
        return this;
    }

    public CircleOptions fillColor(int i) {
        this.f4276f = i;
        return this;
    }

    public LatLng getCenter() {
        return this.f4275e;
    }

    public Bundle getExtraInfo() {
        return this.f4274c;
    }

    public int getFillColor() {
        return this.f4276f;
    }

    public int getRadius() {
        return this.f4277g;
    }

    public Stroke getStroke() {
        return this.f4278h;
    }

    public int getZIndex() {
        return this.f4272a;
    }

    public boolean isVisible() {
        return this.f4273b;
    }

    public CircleOptions radius(int i) {
        this.f4277g = i;
        return this;
    }

    public CircleOptions stroke(Stroke stroke) {
        this.f4278h = stroke;
        return this;
    }

    public CircleOptions visible(boolean z) {
        this.f4273b = z;
        return this;
    }

    public CircleOptions zIndex(int i) {
        this.f4272a = i;
        return this;
    }
}
