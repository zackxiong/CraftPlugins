package com.baidu.mapapi.search.core;

public class VehicleInfo {
    private String f4566a;
    private int f4567b;
    private String f4568c;
    private int f4569d;
    private int f4570e;

    public int getPassStationNum() {
        return this.f4567b;
    }

    public String getTitle() {
        return this.f4568c;
    }

    public int getTotalPrice() {
        return this.f4570e;
    }

    public String getUid() {
        return this.f4566a;
    }

    public int getZonePrice() {
        return this.f4569d;
    }

    public void setPassStationNum(int i) {
        this.f4567b = i;
    }

    public void setTitle(String str) {
        this.f4568c = str;
    }

    public void setTotalPrice(int i) {
        this.f4570e = i;
    }

    public void setUid(String str) {
        this.f4566a = str;
    }

    public void setZonePrice(int i) {
        this.f4569d = i;
    }
}
