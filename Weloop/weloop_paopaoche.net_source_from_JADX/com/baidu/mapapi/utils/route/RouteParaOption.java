package com.baidu.mapapi.utils.route;

import com.baidu.mapapi.model.LatLng;

public class RouteParaOption {
    LatLng f4662a;
    LatLng f4663b;
    String f4664c;
    String f4665d;
    String f4666e;
    EBusStrategyType f4667f;

    public enum EBusStrategyType {
        bus_time_first,
        bus_transfer_little,
        bus_walk_little,
        bus_no_subway,
        bus_recommend_way
    }

    public RouteParaOption() {
        this.f4667f = EBusStrategyType.bus_recommend_way;
    }

    public RouteParaOption busStrategyType(EBusStrategyType eBusStrategyType) {
        this.f4667f = eBusStrategyType;
        return this;
    }

    public RouteParaOption cityName(String str) {
        this.f4666e = str;
        return this;
    }

    public RouteParaOption endName(String str) {
        this.f4665d = str;
        return this;
    }

    public RouteParaOption endPoint(LatLng latLng) {
        this.f4663b = latLng;
        return this;
    }

    public EBusStrategyType getBusStrategyType() {
        return this.f4667f;
    }

    public String getCityName() {
        return this.f4666e;
    }

    public String getEndName() {
        return this.f4665d;
    }

    public LatLng getEndPoint() {
        return this.f4663b;
    }

    public String getStartName() {
        return this.f4664c;
    }

    public LatLng getStartPoint() {
        return this.f4662a;
    }

    public RouteParaOption startName(String str) {
        this.f4664c = str;
        return this;
    }

    public RouteParaOption startPoint(LatLng latLng) {
        this.f4662a = latLng;
        return this;
    }
}
