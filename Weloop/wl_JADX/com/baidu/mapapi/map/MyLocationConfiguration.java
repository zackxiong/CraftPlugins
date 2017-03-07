package com.baidu.mapapi.map;

public class MyLocationConfiguration {
    public final BitmapDescriptor customMarker;
    public final boolean enableDirection;
    public final LocationMode locationMode;

    public enum LocationMode {
        NORMAL,
        FOLLOWING,
        COMPASS
    }

    public MyLocationConfiguration(LocationMode locationMode, boolean z, BitmapDescriptor bitmapDescriptor) {
        if (locationMode == null) {
            locationMode = LocationMode.NORMAL;
        }
        this.locationMode = locationMode;
        this.enableDirection = z;
        this.customMarker = bitmapDescriptor;
    }
}
