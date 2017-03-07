package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;
import java.util.List;

/* compiled from: ProGuard */
public class OneDayBong extends ProGuard {
    private List<Activity> activity;
    private List<DailyGain> dailyGain;

    public List<Activity> getActivity() {
        return this.activity;
    }

    public void setActivity(List<Activity> list) {
        this.activity = list;
    }

    public List<DailyGain> getDailyGain() {
        return this.dailyGain;
    }

    public void setDailyGain(List<DailyGain> list) {
        this.dailyGain = list;
    }
}
