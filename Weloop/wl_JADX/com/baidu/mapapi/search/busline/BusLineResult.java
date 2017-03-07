package com.baidu.mapapi.search.busline;

import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import com.baidu.mapapi.search.core.SearchResult;
import java.util.Date;
import java.util.List;

public class BusLineResult extends SearchResult {
    private String f4545a;
    private String f4546b;
    private boolean f4547c;
    private Date f4548d;
    private Date f4549e;
    private String f4550f;
    private List<BusStation> f4551g;
    private List<BusStep> f4552h;

    public static class BusStation extends RouteNode {
    }

    public static class BusStep extends RouteStep {
    }

    BusLineResult() {
        this.f4545a = null;
        this.f4546b = null;
        this.f4551g = null;
        this.f4552h = null;
    }

    public String getBusCompany() {
        return this.f4545a;
    }

    public String getBusLineName() {
        return this.f4546b;
    }

    public Date getEndTime() {
        return this.f4549e;
    }

    public Date getStartTime() {
        return this.f4548d;
    }

    public List<BusStation> getStations() {
        return this.f4551g;
    }

    public List<BusStep> getSteps() {
        return this.f4552h;
    }

    public String getUid() {
        return this.f4550f;
    }

    public boolean isMonthTicket() {
        return this.f4547c;
    }
}
