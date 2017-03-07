package com.baidu.mapapi.favorite;

import com.baidu.mapapi.model.LatLng;

public class FavoritePoiInfo {
    String f4200a;
    String f4201b;
    LatLng f4202c;
    String f4203d;
    String f4204e;
    String f4205f;
    long f4206g;

    public FavoritePoiInfo addr(String str) {
        this.f4203d = str;
        return this;
    }

    public FavoritePoiInfo cityName(String str) {
        this.f4204e = str;
        return this;
    }

    public String getAddr() {
        return this.f4203d;
    }

    public String getCityName() {
        return this.f4204e;
    }

    public String getID() {
        return this.f4200a;
    }

    public String getPoiName() {
        return this.f4201b;
    }

    public LatLng getPt() {
        return this.f4202c;
    }

    public long getTimeStamp() {
        return this.f4206g;
    }

    public String getUid() {
        return this.f4205f;
    }

    public FavoritePoiInfo poiName(String str) {
        this.f4201b = str;
        return this;
    }

    public FavoritePoiInfo pt(LatLng latLng) {
        this.f4202c = latLng;
        return this;
    }

    public FavoritePoiInfo uid(String str) {
        this.f4205f = str;
        return this;
    }
}
