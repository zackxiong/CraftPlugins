package com.baidu.mapapi.search.core;

import com.baidu.mapapi.model.LatLng;
import java.util.List;

public class RouteStep {
    int f4543a;
    int f4544b;
    protected List<LatLng> mWayPoints;

    public int getDistance() {
        return this.f4543a;
    }

    public int getDuration() {
        return this.f4544b;
    }

    public List<LatLng> getWayPoints() {
        return this.mWayPoints;
    }

    public void setDistance(int i) {
        this.f4543a = i;
    }

    public void setDuration(int i) {
        this.f4544b = i;
    }

    public void setWayPoints(List<LatLng> list) {
        this.mWayPoints = list;
    }
}
