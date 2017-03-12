package com.baidu.mapapi.model;

public final class LatLng {
    private static final String f4514a;
    public final double latitude;
    public final double longitude;

    static {
        f4514a = LatLng.class.getSimpleName();
    }

    public LatLng(double d, double d2) {
        int i = (int) (d2 * 1000000.0d);
        this.latitude = ((double) ((int) (d * 1000000.0d))) / 1000000.0d;
        this.longitude = ((double) i) / 1000000.0d;
    }

    public String toString() {
        return ((new String("latitude: ") + this.latitude) + ", longitude: ") + this.longitude;
    }
}
