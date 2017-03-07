package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class SleepStatistics extends ProGuard {
    private int deepSleepAvg;
    private int deepSleepSum;
    private int shallowSleepAvg;
    private int shallowSleepSum;
    private int sleepGoalSum;
    private double sleepScoreAvg;
    private int wakeAvg;
    private int wakeSum;

    public int getWakeSum() {
        return this.wakeSum;
    }

    public void setWakeSum(int i) {
        this.wakeSum = i;
    }

    public int getShallowSleepSum() {
        return this.shallowSleepSum;
    }

    public void setShallowSleepSum(int i) {
        this.shallowSleepSum = i;
    }

    public int getDeepSleepSum() {
        return this.deepSleepSum;
    }

    public void setDeepSleepSum(int i) {
        this.deepSleepSum = i;
    }

    public int getShallowSleepAvg() {
        return this.shallowSleepAvg;
    }

    public void setShallowSleepAvg(int i) {
        this.shallowSleepAvg = i;
    }

    public int getDeepSleepAvg() {
        return this.deepSleepAvg;
    }

    public void setDeepSleepAvg(int i) {
        this.deepSleepAvg = i;
    }

    public double getSleepScoreAvg() {
        return this.sleepScoreAvg;
    }

    public void setSleepScoreAvg(double d) {
        this.sleepScoreAvg = d;
    }

    public int getSleepGoalSum() {
        return this.sleepGoalSum;
    }

    public void setSleepGoalSum(int i) {
        this.sleepGoalSum = i;
    }

    public int getWakeAvg() {
        return this.wakeAvg;
    }

    public void setWakeAvg(int i) {
        this.wakeAvg = i;
    }
}
