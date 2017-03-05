package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.map.C0574i.C0563a;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.p086a.C0596b;

public class WeightedLatLng extends C0563a {
    public static final double DEFAULT_INTENSITY = 1.0d;
    private Point f4486a;
    public final double intensity;
    public final LatLng latLng;

    public WeightedLatLng(LatLng latLng) {
        this(latLng, DEFAULT_INTENSITY);
    }

    public WeightedLatLng(LatLng latLng, double d) {
        if (latLng == null) {
            throw new IllegalArgumentException("latLng can not be null");
        }
        this.latLng = latLng;
        C0596b a = C0579a.m6359a(latLng);
        this.f4486a = new Point(a.m6426b(), a.m6424a());
        if (d > 0.0d) {
            this.intensity = d;
        } else {
            this.intensity = DEFAULT_INTENSITY;
        }
    }

    Point m6281a() {
        return this.f4486a;
    }
}
