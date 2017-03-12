package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;

public final class Dot extends Overlay {
    LatLng f4279a;
    int f4280b;
    int f4281c;

    Dot() {
        this.o = C0617e.dot;
    }

    Bundle m6207a(Bundle bundle) {
        super.m6169a(bundle);
        C0596b a = C0579a.m6359a(this.f4279a);
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putInt("radius", this.f4281c);
        Overlay.m6166a(this.f4280b, bundle);
        return bundle;
    }

    public LatLng getCenter() {
        return this.f4279a;
    }

    public int getColor() {
        return this.f4280b;
    }

    public int getRadius() {
        return this.f4281c;
    }

    public void setCenter(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("dot center can not be null");
        }
        this.f4279a = latLng;
        this.listener.m6270b(this);
    }

    public void setColor(int i) {
        this.f4280b = i;
        this.listener.m6270b(this);
    }

    public void setRadius(int i) {
        if (i > 0) {
            this.f4281c = i;
            this.listener.m6270b(this);
        }
    }
}
