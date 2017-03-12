package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import java.util.List;

public final class Polygon extends Overlay {
    Stroke f4435a;
    int f4436b;
    List<LatLng> f4437c;

    Polygon() {
        this.o = C0617e.polygon;
    }

    Bundle m6271a(Bundle bundle) {
        super.m6169a(bundle);
        C0596b a = C0579a.m6359a((LatLng) this.f4437c.get(0));
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        Overlay.m6167a(this.f4437c, bundle);
        Overlay.m6166a(this.f4436b, bundle);
        if (this.f4435a == null) {
            bundle.putInt("has_stroke", 0);
        } else {
            bundle.putInt("has_stroke", 1);
            bundle.putBundle("stroke", this.f4435a.m6276a(new Bundle()));
        }
        return bundle;
    }

    public int getFillColor() {
        return this.f4436b;
    }

    public List<LatLng> getPoints() {
        return this.f4437c;
    }

    public Stroke getStroke() {
        return this.f4435a;
    }

    public void setFillColor(int i) {
        this.f4436b = i;
        this.listener.m6270b(this);
    }

    public void setPoints(List<LatLng> list) {
        if (list == null) {
            throw new IllegalArgumentException("points list can not be null");
        } else if (list.size() <= 2) {
            throw new IllegalArgumentException("points count can not less than three");
        } else if (list.contains(null)) {
            throw new IllegalArgumentException("points list can not contains null");
        } else {
            for (int i = 0; i < list.size(); i++) {
                for (int i2 = i + 1; i2 < list.size(); i2++) {
                    if (((LatLng) list.get(i)) == ((LatLng) list.get(i2))) {
                        throw new IllegalArgumentException("points list can not has same points");
                    }
                }
            }
            this.f4437c = list;
            this.listener.m6270b(this);
        }
    }

    public void setStroke(Stroke stroke) {
        this.f4435a = stroke;
        this.listener.m6270b(this);
    }
}
