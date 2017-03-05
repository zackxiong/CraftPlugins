package com.yf.smart.weloopx.data.models;

import java.util.List;

/* compiled from: ProGuard */
public class SleepStatisticsResult extends ServerResult {
    private List<SleepItem> days;
    private int maxsleep;

    public int getMaxSleepMinutes() {
        return this.maxsleep;
    }

    public List<SleepItem> getDays() {
        return this.days;
    }
}
