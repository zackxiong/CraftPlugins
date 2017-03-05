package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import java.util.List;

public final class PolylineOptions extends OverlayOptions {
    int f4449a;
    boolean f4450b;
    boolean f4451c;
    Bundle f4452d;
    private int f4453e;
    private List<LatLng> f4454f;
    private int f4455g;
    private BitmapDescriptor f4456h;
    private boolean f4457i;

    public PolylineOptions() {
        this.f4453e = -16777216;
        this.f4455g = 5;
        this.f4457i = true;
        this.f4450b = true;
        this.f4451c = false;
    }

    Overlay m6275a() {
        Overlay polyline = new Polyline();
        polyline.q = this.f4450b;
        polyline.f4447d = this.f4451c;
        polyline.p = this.f4449a;
        polyline.r = this.f4452d;
        if (this.f4454f == null || this.f4454f.size() < 2) {
            throw new IllegalStateException("when you add polyline, you must at least supply 2 points");
        }
        polyline.f4445b = this.f4454f;
        polyline.f4444a = this.f4453e;
        polyline.f4446c = this.f4455g;
        polyline.f4448e = this.f4456h;
        return polyline;
    }

    public PolylineOptions color(int i) {
        this.f4453e = i;
        return this;
    }

    public PolylineOptions customTexture(BitmapDescriptor bitmapDescriptor) {
        this.f4456h = bitmapDescriptor;
        this.f4451c = true;
        return this;
    }

    public PolylineOptions dottedLine(boolean z) {
        this.f4451c = z;
        return this;
    }

    public PolylineOptions extraInfo(Bundle bundle) {
        this.f4452d = bundle;
        return this;
    }

    public int getColor() {
        return this.f4453e;
    }

    public BitmapDescriptor getCustomTexture() {
        return this.f4456h;
    }

    public Bundle getExtraInfo() {
        return this.f4452d;
    }

    public List<LatLng> getPoints() {
        return this.f4454f;
    }

    public int getWidth() {
        return this.f4455g;
    }

    public int getZIndex() {
        return this.f4449a;
    }

    public boolean isDottedLine() {
        return this.f4451c;
    }

    public boolean isVisible() {
        return this.f4450b;
    }

    public PolylineOptions points(List<LatLng> list) {
        if (list == null) {
            throw new IllegalArgumentException("points list can not be null");
        } else if (list.size() < 2 || list.size() > 10000) {
            throw new IllegalArgumentException("points count can not less than 2 or more than 10000");
        } else if (list.contains(null)) {
            throw new IllegalArgumentException("points list can not contains null");
        } else {
            this.f4454f = list;
            return this;
        }
    }

    public PolylineOptions visible(boolean z) {
        this.f4450b = z;
        return this;
    }

    public PolylineOptions width(int i) {
        if (i > 0) {
            this.f4455g = i;
        }
        return this;
    }

    public PolylineOptions zIndex(int i) {
        this.f4449a = i;
        return this;
    }
}
