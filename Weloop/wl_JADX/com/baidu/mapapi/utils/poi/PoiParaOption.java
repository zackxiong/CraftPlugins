package com.baidu.mapapi.utils.poi;

import com.baidu.mapapi.model.LatLng;

public class PoiParaOption {
    String f4656a;
    String f4657b;
    LatLng f4658c;
    int f4659d;

    public PoiParaOption center(LatLng latLng) {
        this.f4658c = latLng;
        return this;
    }

    public LatLng getCenter() {
        return this.f4658c;
    }

    public String getKey() {
        return this.f4657b;
    }

    public int getRadius() {
        return this.f4659d;
    }

    public String getUid() {
        return this.f4656a;
    }

    public PoiParaOption key(String str) {
        this.f4657b = str;
        return this;
    }

    public PoiParaOption radius(int i) {
        this.f4659d = i;
        return this;
    }

    public PoiParaOption uid(String str) {
        this.f4656a = str;
        return this;
    }
}
