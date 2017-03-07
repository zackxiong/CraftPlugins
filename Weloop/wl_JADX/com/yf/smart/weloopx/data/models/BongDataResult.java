package com.yf.smart.weloopx.data.models;

import java.util.List;

/* compiled from: ProGuard */
public class BongDataResult extends ServerResult {
    private List<Activity> activity;
    private List<DailyGain> dailyGain;

    public List<DailyGain> getDailyGain() {
        return this.dailyGain;
    }

    public void setDailyGain(List<DailyGain> list) {
        this.dailyGain = list;
    }

    public List<Activity> getActivities() {
        return this.activity;
    }

    public void setActivities(List<Activity> list) {
        this.activity = list;
    }
}
