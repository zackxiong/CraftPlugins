package com.yf.gattlib.db.daliy.modes;

import java.util.List;

/* compiled from: ProGuard */
public class DialListModel {
    public List<DialModel> dataList;
    public String message;
    public String recordCount;
    public String result;

    public DialListModel() {
        this.result = "";
        this.message = "";
        this.recordCount = "";
    }

    public String getResult() {
        return this.result;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getRecordCount() {
        return this.recordCount;
    }

    public void setRecordCount(String str) {
        this.recordCount = str;
    }

    public List<DialModel> getDataList() {
        return this.dataList;
    }

    public void setDataList(List<DialModel> list) {
        this.dataList = list;
    }
}
