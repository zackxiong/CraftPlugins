package com.yf.smart.weloopx.data.models;

import java.util.List;

/* compiled from: ProGuard */
public class CalorieStatisticsResult extends ServerResult {
    private List<CalorieItem> days;
    private double maxcalorie;

    public double getMaxCalorie() {
        return this.maxcalorie;
    }

    public List<CalorieItem> getDays() {
        return this.days;
    }
}
