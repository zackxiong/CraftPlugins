package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;

public final class GroundOverlayOptions extends OverlayOptions {
    int f4305a;
    boolean f4306b;
    Bundle f4307c;
    private BitmapDescriptor f4308d;
    private LatLng f4309e;
    private int f4310f;
    private int f4311g;
    private float f4312h;
    private float f4313i;
    private LatLngBounds f4314j;
    private float f4315k;

    public GroundOverlayOptions() {
        this.f4312h = 0.5f;
        this.f4313i = 0.5f;
        this.f4315k = 1.0f;
        this.f4306b = true;
    }

    Overlay m6216a() {
        Overlay groundOverlay = new GroundOverlay();
        groundOverlay.q = this.f4306b;
        groundOverlay.p = this.f4305a;
        groundOverlay.r = this.f4307c;
        if (this.f4308d == null) {
            throw new IllegalStateException("when you add ground overlay, you must set the image");
        }
        groundOverlay.f4297b = this.f4308d;
        if (this.f4314j != null || this.f4309e == null) {
            if (this.f4309e != null || this.f4314j == null) {
                throw new IllegalStateException("when you add ground overlay, you must set one of position or bounds");
            }
            groundOverlay.f4303h = this.f4314j;
            groundOverlay.f4296a = 1;
        } else if (this.f4310f <= 0 || this.f4311g <= 0) {
            throw new IllegalArgumentException("when you add ground overlay, the width and height must greater than 0");
        } else {
            groundOverlay.f4298c = this.f4309e;
            groundOverlay.f4301f = this.f4312h;
            groundOverlay.f4302g = this.f4313i;
            groundOverlay.f4299d = this.f4310f;
            groundOverlay.f4300e = this.f4311g;
            groundOverlay.f4296a = 2;
        }
        groundOverlay.f4304i = this.f4315k;
        return groundOverlay;
    }

    public GroundOverlayOptions anchor(float f, float f2) {
        if (f >= 0.0f && f <= 1.0f && f2 >= 0.0f && f2 <= 1.0f) {
            this.f4312h = f;
            this.f4313i = f2;
        }
        return this;
    }

    public GroundOverlayOptions dimensions(int i) {
        this.f4310f = i;
        this.f4311g = Integer.MAX_VALUE;
        return this;
    }

    public GroundOverlayOptions dimensions(int i, int i2) {
        this.f4310f = i;
        this.f4311g = i2;
        return this;
    }

    public GroundOverlayOptions extraInfo(Bundle bundle) {
        this.f4307c = bundle;
        return this;
    }

    public float getAnchorX() {
        return this.f4312h;
    }

    public float getAnchorY() {
        return this.f4313i;
    }

    public LatLngBounds getBounds() {
        return this.f4314j;
    }

    public Bundle getExtraInfo() {
        return this.f4307c;
    }

    public int getHeight() {
        return this.f4311g == Integer.MAX_VALUE ? (int) (((float) (this.f4310f * this.f4308d.f4265a.getHeight())) / ((float) this.f4308d.f4265a.getWidth())) : this.f4311g;
    }

    public BitmapDescriptor getImage() {
        return this.f4308d;
    }

    public LatLng getPosition() {
        return this.f4309e;
    }

    public float getTransparency() {
        return this.f4315k;
    }

    public int getWidth() {
        return this.f4310f;
    }

    public int getZIndex() {
        return this.f4305a;
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null) {
            throw new IllegalArgumentException("image can not be null");
        }
        this.f4308d = bitmapDescriptor;
        return this;
    }

    public boolean isVisible() {
        return this.f4306b;
    }

    public GroundOverlayOptions position(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("position can not be null");
        }
        this.f4309e = latLng;
        return this;
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        if (latLngBounds == null) {
            throw new IllegalArgumentException("bounds can not be null");
        }
        this.f4314j = latLngBounds;
        return this;
    }

    public GroundOverlayOptions transparency(float f) {
        if (f <= 1.0f && f >= 0.0f) {
            this.f4315k = f;
        }
        return this;
    }

    public GroundOverlayOptions visible(boolean z) {
        this.f4306b = z;
        return this;
    }

    public GroundOverlayOptions zIndex(int i) {
        this.f4305a = i;
        return this;
    }
}
