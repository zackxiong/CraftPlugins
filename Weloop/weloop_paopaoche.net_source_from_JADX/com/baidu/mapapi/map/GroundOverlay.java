package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;

public final class GroundOverlay extends Overlay {
    private static final String f4295j;
    int f4296a;
    BitmapDescriptor f4297b;
    LatLng f4298c;
    int f4299d;
    int f4300e;
    float f4301f;
    float f4302g;
    LatLngBounds f4303h;
    float f4304i;

    static {
        f4295j = GroundOverlay.class.getSimpleName();
    }

    GroundOverlay() {
        this.o = C0617e.ground;
    }

    Bundle m6215a(Bundle bundle) {
        super.m6169a(bundle);
        bundle.putBundle("image_info", this.f4297b.m6204b());
        if (this.f4296a == 1) {
            C0596b a = C0579a.m6359a(this.f4303h.southwest);
            int b = a.m6426b();
            int a2 = a.m6424a();
            C0596b a3 = C0579a.m6359a(this.f4303h.northeast);
            int b2 = a3.m6426b();
            int a4 = a3.m6424a();
            this.f4299d = b2 - b;
            this.f4300e = a4 - a2;
            this.f4298c = C0579a.m6356a(new C0596b(a2 + (this.f4300e / 2), b + (this.f4299d / 2)));
            this.f4301f = 0.5f;
            this.f4302g = 0.5f;
        }
        if (this.f4299d <= 0 || this.f4300e <= 0) {
            throw new IllegalStateException("when you add ground overlay, the width and height must greater than 0");
        }
        bundle.putInt("x_distance", this.f4299d);
        if (this.f4300e == Integer.MAX_VALUE) {
            this.f4300e = (int) (((float) (this.f4299d * this.f4297b.f4265a.getHeight())) / ((float) this.f4297b.f4265a.getWidth()));
        }
        bundle.putInt("y_distance", this.f4300e);
        a = C0579a.m6359a(this.f4298c);
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putFloat("anchor_x", this.f4301f);
        bundle.putFloat("anchor_y", this.f4302g);
        bundle.putFloat("transparency", this.f4304i);
        return bundle;
    }

    public float getAnchorX() {
        return this.f4301f;
    }

    public float getAnchorY() {
        return this.f4302g;
    }

    public LatLngBounds getBounds() {
        return this.f4303h;
    }

    public int getHeight() {
        return this.f4300e;
    }

    public BitmapDescriptor getImage() {
        return this.f4297b;
    }

    public LatLng getPosition() {
        return this.f4298c;
    }

    public float getTransparency() {
        return this.f4304i;
    }

    public int getWidth() {
        return this.f4299d;
    }

    public void setAnchor(float f, float f2) {
        if (f >= 0.0f && f <= 1.0f && f2 >= 0.0f && f2 <= 1.0f) {
            this.f4301f = f;
            this.f4302g = f2;
            this.listener.m6270b(this);
        }
    }

    public void setDimensions(int i) {
        this.f4299d = i;
        this.f4300e = Integer.MAX_VALUE;
        this.listener.m6270b(this);
    }

    public void setDimensions(int i, int i2) {
        this.f4299d = i;
        this.f4300e = i2;
        this.listener.m6270b(this);
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null) {
            throw new IllegalArgumentException("image can not be null");
        }
        this.f4297b = bitmapDescriptor;
        this.listener.m6270b(this);
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("position can not be null");
        }
        this.f4296a = 2;
        this.f4298c = latLng;
        this.listener.m6270b(this);
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) {
        if (latLngBounds == null) {
            throw new IllegalArgumentException("bounds can not be null");
        }
        this.f4296a = 1;
        this.f4303h = latLngBounds;
        this.listener.m6270b(this);
    }

    public void setTransparency(float f) {
        if (f <= 1.0f && f >= 0.0f) {
            this.f4304i = f;
            this.listener.m6270b(this);
        }
    }
}
