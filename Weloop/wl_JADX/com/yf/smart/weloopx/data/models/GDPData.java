package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class GDPData {
    private double hdop;
    private double lat;
    private double lon;
    private double vel;

    public GDPData() {
        this.lon = 0.0d;
        this.lat = 0.0d;
        this.vel = 0.0d;
        this.hdop = 0.0d;
    }

    public double getLon() {
        return this.lon;
    }

    public void setLon(double d) {
        this.lon = d;
    }

    public double getLat() {
        return this.lat;
    }

    public void setLat(double d) {
        this.lat = d;
    }

    public double getVel() {
        return this.vel;
    }

    public void setVel(double d) {
        this.vel = d;
    }

    public double getHdop() {
        return this.hdop;
    }

    public void setHdop(double d) {
        this.hdop = d;
    }
}
