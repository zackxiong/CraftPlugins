package com.baidu.mapapi.navi;

import com.baidu.mapapi.model.LatLng;

public class NaviParaOption {
    LatLng f4527a;
    String f4528b;
    LatLng f4529c;
    String f4530d;

    public NaviParaOption endName(String str) {
        this.f4530d = str;
        return this;
    }

    public NaviParaOption endPoint(LatLng latLng) {
        this.f4529c = latLng;
        return this;
    }

    public NaviParaOption startName(String str) {
        this.f4528b = str;
        return this;
    }

    public NaviParaOption startPoint(LatLng latLng) {
        this.f4527a = latLng;
        return this;
    }
}
