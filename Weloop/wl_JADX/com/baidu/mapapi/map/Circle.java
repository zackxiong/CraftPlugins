package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;

public final class Circle extends Overlay {
    LatLng f4267a;
    int f4268b;
    int f4269c;
    Stroke f4270d;

    Circle() {
        this.o = C0617e.circle;
    }

    Bundle m6205a(Bundle bundle) {
        super.m6169a(bundle);
        C0596b a = C0579a.m6359a(this.f4267a);
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putInt("radius", C0579a.m6355a(this.f4267a, this.f4269c));
        Overlay.m6166a(this.f4268b, bundle);
        if (this.f4270d == null) {
            bundle.putInt("has_stroke", 0);
        } else {
            bundle.putInt("has_stroke", 1);
            bundle.putBundle("stroke", this.f4270d.m6276a(new Bundle()));
        }
        return bundle;
    }

    public LatLng getCenter() {
        return this.f4267a;
    }

    public int getFillColor() {
        return this.f4268b;
    }

    public int getRadius() {
        return this.f4269c;
    }

    public Stroke getStroke() {
        return this.f4270d;
    }

    public void setCenter(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("circle center can not be null");
        }
        this.f4267a = latLng;
        this.listener.m6270b(this);
    }

    public void setFillColor(int i) {
        this.f4268b = i;
        this.listener.m6270b(this);
    }

    public void setRadius(int i) {
        this.f4269c = i;
        this.listener.m6270b(this);
    }

    public void setStroke(Stroke stroke) {
        this.f4270d = stroke;
        this.listener.m6270b(this);
    }
}
