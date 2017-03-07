package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.core.SearchResult;
import java.util.List;

public class PoiResult extends SearchResult {
    private int f4571a;
    private int f4572b;
    private int f4573c;
    private int f4574d;
    private List<PoiInfo> f4575e;
    private List<CityInfo> f4576f;

    PoiResult() {
        this.f4571a = 0;
        this.f4572b = 0;
        this.f4573c = 0;
        this.f4574d = 0;
    }

    public List<PoiInfo> getAllPoi() {
        return this.f4575e;
    }

    public int getCurrentPageCapacity() {
        return this.f4573c;
    }

    public int getCurrentPageNum() {
        return this.f4571a;
    }

    public List<CityInfo> getSuggestCityList() {
        return this.f4576f;
    }

    public int getTotalPageNum() {
        return this.f4572b;
    }

    public int getTotalPoiNum() {
        return this.f4574d;
    }
}
