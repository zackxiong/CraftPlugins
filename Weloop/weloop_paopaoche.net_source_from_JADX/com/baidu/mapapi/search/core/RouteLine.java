package com.baidu.mapapi.search.core;

import java.util.List;

public class RouteLine<T extends RouteStep> {
    private RouteNode f4554a;
    private RouteNode f4555b;
    private String f4556c;
    private List<T> f4557d;
    private int f4558e;
    private int f4559f;

    public List<T> getAllStep() {
        return this.f4557d;
    }

    public int getDistance() {
        return this.f4558e;
    }

    public int getDuration() {
        return this.f4559f;
    }

    public RouteNode getStarting() {
        return this.f4554a;
    }

    public RouteNode getTerminal() {
        return this.f4555b;
    }

    public String getTitle() {
        return this.f4556c;
    }

    public void setDistance(int i) {
        this.f4558e = i;
    }

    public void setDuration(int i) {
        this.f4559f = i;
    }

    public void setStarting(RouteNode routeNode) {
        this.f4554a = routeNode;
    }

    public void setSteps(List<T> list) {
        this.f4557d = list;
    }

    public void setTerminal(RouteNode routeNode) {
        this.f4555b = routeNode;
    }

    public void setTitle(String str) {
        this.f4556c = str;
    }
}
