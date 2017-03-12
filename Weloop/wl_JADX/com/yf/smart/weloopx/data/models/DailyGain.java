package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class DailyGain extends ProGuard {
    private int activePoint;
    private double calorie;
    private double calorieValue;
    private double distance;
    private int dsNum;
    private String happenDate;
    private int sleepNum;
    private int sleepTimes;
    private int stepCount;
    private int stillTime;

    public int getStepCount() {
        return this.stepCount;
    }

    public void setStepCount(int i) {
        this.stepCount = i;
    }

    public double getDistance() {
        return this.distance;
    }

    public void setDistance(double d) {
        this.distance = d;
    }

    public double getCalorie() {
        return this.calorie;
    }

    public void setCalorie(double d) {
        this.calorie = d;
    }

    public int getDeepSleepMinutes() {
        return this.dsNum;
    }

    public void setDeepSleepMinutes(int i) {
        this.dsNum = i;
    }

    public int getSleepCount() {
        return this.sleepTimes;
    }

    public void setSleepCount(int i) {
        this.sleepTimes = i;
    }

    public int getSleepMinutes() {
        return this.sleepNum;
    }

    public void setSleepMinutes(int i) {
        this.sleepNum = i;
    }

    public int getStillSeconds() {
        return this.stillTime;
    }

    public void setStillSeconds(int i) {
        this.stillTime = i;
    }

    public String getHappenDate() {
        return this.happenDate;
    }

    public void setHappenDate(String str) {
        this.happenDate = str;
    }

    public int getActivePoint() {
        return this.activePoint;
    }

    public void setActivePoint(int i) {
        this.activePoint = i;
    }

    public double getCalorieGoal() {
        return this.calorieValue;
    }

    public void setCalorieGoal(double d) {
        this.calorieValue = d;
    }
}
