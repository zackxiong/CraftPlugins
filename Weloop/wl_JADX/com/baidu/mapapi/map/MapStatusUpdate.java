package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.platform.comapi.map.C0620f;
import com.baidu.platform.comapi.p086a.C0596b;
import uk.co.chrisjenx.calligraphy.ProGuard;

public final class MapStatusUpdate {
    private static final String f4359l;
    int f4360a;
    MapStatus f4361b;
    LatLng f4362c;
    LatLngBounds f4363d;
    int f4364e;
    int f4365f;
    float f4366g;
    int f4367h;
    int f4368i;
    float f4369j;
    Point f4370k;

    static {
        f4359l = MapStatusUpdate.class.getSimpleName();
    }

    MapStatusUpdate() {
    }

    MapStatusUpdate(int i) {
        this.f4360a = i;
    }

    MapStatus m6249a(C0620f c0620f, MapStatus mapStatus) {
        C0596b a;
        float a2;
        switch (this.f4360a) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return this.f4361b;
            case ProGuard.styleable.View_paddingStart /*2*/:
                return new MapStatus(mapStatus.rotate, this.f4362c, mapStatus.overlook, mapStatus.zoom, mapStatus.targetScreen, null);
            case ProGuard.styleable.View_paddingEnd /*3*/:
                a = C0579a.m6359a(this.f4363d.southwest);
                C0596b a3 = C0579a.m6359a(this.f4363d.northeast);
                a2 = c0620f.m6532a(a.m6426b(), a3.m6424a(), a3.m6426b(), a.m6424a());
                return new MapStatus(mapStatus.rotate, this.f4363d.getCenter(), mapStatus.overlook, a2, mapStatus.targetScreen, null);
            case ProGuard.styleable.View_theme /*4*/:
                return new MapStatus(mapStatus.rotate, this.f4362c, mapStatus.overlook, this.f4366g, mapStatus.targetScreen, null);
            case ProGuard.styleable.View_backgroundTint /*5*/:
                c0620f.getWidth();
                C0596b a4 = c0620f.m6536a((c0620f.getWidth() / 2) + this.f4367h, (c0620f.getHeight() / 2) + this.f4368i);
                return new MapStatus(mapStatus.rotate, C0579a.m6356a(a4), mapStatus.overlook, mapStatus.zoom, mapStatus.targetScreen, (double) a4.m6426b(), (double) a4.m6424a(), null);
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return new MapStatus(mapStatus.rotate, mapStatus.target, mapStatus.overlook, mapStatus.zoom + this.f4369j, mapStatus.targetScreen, mapStatus.m6245a(), mapStatus.m6246b(), null);
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return new MapStatus(mapStatus.rotate, C0579a.m6356a(c0620f.m6536a(this.f4370k.x, this.f4370k.y)), mapStatus.overlook, mapStatus.zoom + this.f4369j, this.f4370k, null);
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                return new MapStatus(mapStatus.rotate, mapStatus.target, mapStatus.overlook, this.f4366g, mapStatus.targetScreen, mapStatus.m6245a(), mapStatus.m6246b(), null);
            case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                a = C0579a.m6359a(this.f4363d.southwest);
                C0596b a5 = C0579a.m6359a(this.f4363d.northeast);
                a2 = c0620f.m6533a(a.m6426b(), a5.m6424a(), a5.m6426b(), a.m6424a(), this.f4364e, this.f4365f);
                return new MapStatus(mapStatus.rotate, this.f4363d.getCenter(), mapStatus.overlook, a2, mapStatus.targetScreen, null);
            default:
                return null;
        }
    }
}
