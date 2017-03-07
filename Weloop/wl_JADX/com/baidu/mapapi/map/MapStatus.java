package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.platform.comapi.map.C0639z;
import com.baidu.platform.comapi.p086a.C0596b;

public final class MapStatus {
    C0639z f4356a;
    private double f4357b;
    public final LatLngBounds bound;
    private double f4358c;
    public final float overlook;
    public final float rotate;
    public final LatLng target;
    public final Point targetScreen;
    public final float zoom;

    public static final class Builder {
        private float f4348a;
        private LatLng f4349b;
        private float f4350c;
        private float f4351d;
        private Point f4352e;
        private LatLngBounds f4353f;
        private double f4354g;
        private double f4355h;

        public Builder() {
            this.f4348a = -2.14748365E9f;
            this.f4349b = null;
            this.f4350c = -2.14748365E9f;
            this.f4351d = -2.14748365E9f;
            this.f4352e = null;
            this.f4353f = null;
            this.f4354g = 0.0d;
            this.f4355h = 0.0d;
        }

        public Builder(MapStatus mapStatus) {
            this.f4348a = -2.14748365E9f;
            this.f4349b = null;
            this.f4350c = -2.14748365E9f;
            this.f4351d = -2.14748365E9f;
            this.f4352e = null;
            this.f4353f = null;
            this.f4354g = 0.0d;
            this.f4355h = 0.0d;
            this.f4348a = mapStatus.rotate;
            this.f4349b = mapStatus.target;
            this.f4350c = mapStatus.overlook;
            this.f4351d = mapStatus.zoom;
            this.f4352e = mapStatus.targetScreen;
            this.f4354g = mapStatus.m6245a();
            this.f4355h = mapStatus.m6246b();
        }

        public MapStatus build() {
            return new MapStatus(this.f4348a, this.f4349b, this.f4350c, this.f4351d, this.f4352e, this.f4353f);
        }

        public Builder overlook(float f) {
            this.f4350c = f;
            return this;
        }

        public Builder rotate(float f) {
            this.f4348a = f;
            return this;
        }

        public Builder target(LatLng latLng) {
            this.f4349b = latLng;
            return this;
        }

        public Builder targetScreen(Point point) {
            this.f4352e = point;
            return this;
        }

        public Builder zoom(float f) {
            this.f4351d = f;
            return this;
        }
    }

    MapStatus(float f, LatLng latLng, float f2, float f3, Point point, double d, double d2, LatLngBounds latLngBounds) {
        this.rotate = f;
        this.target = latLng;
        this.overlook = f2;
        this.zoom = f3;
        this.targetScreen = point;
        this.f4357b = d;
        this.f4358c = d2;
        this.bound = latLngBounds;
    }

    MapStatus(float f, LatLng latLng, float f2, float f3, Point point, LatLngBounds latLngBounds) {
        this.rotate = f;
        this.target = latLng;
        this.overlook = f2;
        this.zoom = f3;
        this.targetScreen = point;
        if (this.target != null) {
            this.f4357b = (double) C0579a.m6359a(this.target).m6426b();
            this.f4358c = (double) C0579a.m6359a(this.target).m6424a();
        }
        this.bound = latLngBounds;
    }

    MapStatus(float f, LatLng latLng, float f2, float f3, Point point, C0639z c0639z, double d, double d2, LatLngBounds latLngBounds) {
        this.rotate = f;
        this.target = latLng;
        this.overlook = f2;
        this.zoom = f3;
        this.targetScreen = point;
        this.f4356a = c0639z;
        this.f4357b = d;
        this.f4358c = d2;
        this.bound = latLngBounds;
    }

    static MapStatus m6244a(C0639z c0639z) {
        float f = (float) c0639z.f4883b;
        double d = c0639z.f4886e;
        double d2 = c0639z.f4885d;
        LatLng a = C0579a.m6356a(new C0596b((int) d, (int) d2));
        float f2 = (float) c0639z.f4884c;
        float f3 = c0639z.f4882a;
        Point point = new Point(c0639z.f4887f, c0639z.f4888g);
        LatLng a2 = C0579a.m6356a(new C0596b(c0639z.f4892k.f4871e.f4675b, c0639z.f4892k.f4871e.f4674a));
        LatLng a3 = C0579a.m6356a(new C0596b(c0639z.f4892k.f4872f.f4675b, c0639z.f4892k.f4872f.f4674a));
        LatLng a4 = C0579a.m6356a(new C0596b(c0639z.f4892k.f4874h.f4675b, c0639z.f4892k.f4874h.f4674a));
        LatLng a5 = C0579a.m6356a(new C0596b(c0639z.f4892k.f4873g.f4675b, c0639z.f4892k.f4873g.f4674a));
        com.baidu.mapapi.model.LatLngBounds.Builder builder = new com.baidu.mapapi.model.LatLngBounds.Builder();
        builder.include(a2);
        builder.include(a3);
        builder.include(a4);
        builder.include(a5);
        return new MapStatus(f, a, f2, f3, point, c0639z, d2, d, builder.build());
    }

    double m6245a() {
        return this.f4357b;
    }

    double m6246b() {
        return this.f4358c;
    }

    C0639z m6247b(C0639z c0639z) {
        if (this.rotate != -2.14748365E9f) {
            c0639z.f4883b = (int) this.rotate;
        }
        if (this.zoom != -2.14748365E9f) {
            c0639z.f4882a = this.zoom;
        }
        if (this.overlook != -2.14748365E9f) {
            c0639z.f4884c = (int) this.overlook;
        }
        if (this.target != null) {
            C0579a.m6359a(this.target);
            c0639z.f4885d = this.f4357b;
            c0639z.f4886e = this.f4358c;
        }
        if (this.targetScreen != null) {
            c0639z.f4887f = this.targetScreen.x;
            c0639z.f4888g = this.targetScreen.y;
        }
        return c0639z;
    }

    C0639z m6248c() {
        return m6247b(new C0639z());
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.target != null) {
            stringBuilder.append("target lat: " + this.target.latitude + "\n");
            stringBuilder.append("target lng: " + this.target.longitude + "\n");
        }
        if (this.targetScreen != null) {
            stringBuilder.append("target screen x: " + this.targetScreen.x + "\n");
            stringBuilder.append("target screen y: " + this.targetScreen.y + "\n");
        }
        stringBuilder.append("zoom: " + this.zoom + "\n");
        stringBuilder.append("rotate: " + this.rotate + "\n");
        stringBuilder.append("overlook: " + this.overlook + "\n");
        return stringBuilder.toString();
    }
}
