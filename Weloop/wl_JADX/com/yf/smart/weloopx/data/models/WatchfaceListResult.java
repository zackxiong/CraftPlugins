package com.yf.smart.weloopx.data.models;

import java.util.List;

/* compiled from: ProGuard */
public class WatchfaceListResult extends ServerResult {
    private List<Watchface> dataList;
    private int recordCount;

    public int getRecordCount() {
        return this.recordCount;
    }

    public void setRecordCount(int i) {
        this.recordCount = i;
    }

    public List<Watchface> getDataList() {
        return this.dataList;
    }

    public void setDataList(List<Watchface> list) {
        this.dataList = list;
    }
}
