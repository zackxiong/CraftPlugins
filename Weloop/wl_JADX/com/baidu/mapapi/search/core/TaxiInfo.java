package com.baidu.mapapi.search.core;

public class TaxiInfo {
    private float f4560a;
    private String f4561b;
    private int f4562c;
    private int f4563d;
    private float f4564e;
    private float f4565f;

    public String getDesc() {
        return this.f4561b;
    }

    public int getDistance() {
        return this.f4562c;
    }

    public int getDuration() {
        return this.f4563d;
    }

    public float getPerKMPrice() {
        return this.f4564e;
    }

    public float getStartPrice() {
        return this.f4565f;
    }

    public float getTotalPrice() {
        return this.f4560a;
    }

    public void setDesc(String str) {
        this.f4561b = str;
    }

    public void setDistance(int i) {
        this.f4562c = i;
    }

    public void setDuration(int i) {
        this.f4563d = i;
    }

    public void setPerKMPrice(float f) {
        this.f4564e = f;
    }

    public void setStartPrice(float f) {
        this.f4565f = f;
    }

    public void setTotalPrice(float f) {
        this.f4560a = f;
    }
}
