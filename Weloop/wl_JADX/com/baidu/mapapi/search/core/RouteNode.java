package com.baidu.mapapi.search.core;

import com.baidu.mapapi.model.LatLng;

public class RouteNode {
    private String f4540a;
    private LatLng f4541b;
    private String f4542c;

    public static RouteNode location(LatLng latLng) {
        RouteNode routeNode = new RouteNode();
        routeNode.setLocation(latLng);
        return routeNode;
    }

    public static RouteNode titleAndLocation(String str, LatLng latLng) {
        RouteNode routeNode = new RouteNode();
        routeNode.setTitle(str);
        routeNode.setLocation(latLng);
        return routeNode;
    }

    public LatLng getLocation() {
        return this.f4541b;
    }

    public String getTitle() {
        return this.f4540a;
    }

    public String getUid() {
        return this.f4542c;
    }

    public void setLocation(LatLng latLng) {
        this.f4541b = latLng;
    }

    public void setTitle(String str) {
        this.f4540a = str;
    }

    public void setUid(String str) {
        this.f4542c = str;
    }
}
