package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import java.util.List;

public final class PolygonOptions extends OverlayOptions {
    int f4438a;
    boolean f4439b;
    Bundle f4440c;
    private Stroke f4441d;
    private int f4442e;
    private List<LatLng> f4443f;

    public PolygonOptions() {
        this.f4442e = -16777216;
        this.f4439b = true;
    }

    Overlay m6272a() {
        Overlay polygon = new Polygon();
        polygon.q = this.f4439b;
        polygon.p = this.f4438a;
        polygon.r = this.f4440c;
        if (this.f4443f == null || this.f4443f.size() < 2) {
            throw new IllegalStateException("when you add polyline, you must at least supply 2 points");
        }
        polygon.f4437c = this.f4443f;
        polygon.f4436b = this.f4442e;
        polygon.f4435a = this.f4441d;
        return polygon;
    }

    public PolygonOptions extraInfo(Bundle bundle) {
        this.f4440c = bundle;
        return this;
    }

    public PolygonOptions fillColor(int i) {
        this.f4442e = i;
        return this;
    }

    public Bundle getExtraInfo() {
        return this.f4440c;
    }

    public int getFillColor() {
        return this.f4442e;
    }

    public List<LatLng> getPoints() {
        return this.f4443f;
    }

    public Stroke getStroke() {
        return this.f4441d;
    }

    public int getZIndex() {
        return this.f4438a;
    }

    public boolean isVisible() {
        return this.f4439b;
    }

    public PolygonOptions points(List<LatLng> list) {
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
            this.f4443f = list;
            return this;
        }
    }

    public PolygonOptions stroke(Stroke stroke) {
        this.f4441d = stroke;
        return this;
    }

    public PolygonOptions visible(boolean z) {
        this.f4439b = z;
        return this;
    }

    public PolygonOptions zIndex(int i) {
        this.f4438a = i;
        return this;
    }
}
