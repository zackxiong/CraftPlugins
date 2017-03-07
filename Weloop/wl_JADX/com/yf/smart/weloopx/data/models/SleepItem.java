package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class SleepItem extends ProGuard implements Cloneable {
    private int dsNum;
    private String happenDate;
    private int lsNum;
    private double score;
    private int sleepValue;
    private int wakeNum;

    public Object clone() {
        return super.clone();
    }

    public int getDeepSleepMinutes() {
        return this.dsNum;
    }

    public int getShallowSleepMinutes() {
        return this.lsNum;
    }

    public int getWakeMinutes() {
        return this.wakeNum;
    }

    public double getScore() {
        return this.score;
    }

    public String getHappenDate() {
        return this.happenDate;
    }

    public int getSleepGoalMinutes() {
        return this.sleepValue;
    }

    public void setHappenDate(String str) {
        this.happenDate = str;
    }

    public void setDeepSleepMinutes(int i) {
        this.dsNum = i;
    }

    public void setShallowSleepMinutes(int i) {
        this.lsNum = i;
    }

    public void setWakeMinutes(int i) {
        this.wakeNum = i;
    }

    public void setSleepGoalMinutes(int i) {
        this.sleepValue = i;
    }

    public void setScore(double d) {
        this.score = d;
    }

    public String toString() {
        return this.happenDate + ": dsNum=" + this.dsNum + ", lsNum=" + this.lsNum + ", wakeNum=" + this.wakeNum + ", sleepValue=" + this.sleepValue + ", score=" + this.score;
    }
}
