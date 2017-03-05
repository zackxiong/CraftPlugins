package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class CalorieStatistics extends ProGuard {
    private int activePointAvg;
    private int activePointSum;
    private double calorieAvg;
    private double calorieGoalSum;
    private double calorieSum;
    private double distanceAvg;
    private double distanceSum;
    private int stepCountAvg;
    private int stepCountSum;

    public int getStepCountSum() {
        return this.stepCountSum;
    }

    public void setStepCountSum(int i) {
        this.stepCountSum = i;
    }

    public int getActivePointSum() {
        return this.activePointSum;
    }

    public void setActivePointSum(int i) {
        this.activePointSum = i;
    }

    public double getCalorieSum() {
        return this.calorieSum;
    }

    public void setCalorieSum(double d) {
        this.calorieSum = d;
    }

    public double getDistanceSum() {
        return this.distanceSum;
    }

    public void setDistanceSum(double d) {
        this.distanceSum = d;
    }

    public int getStepCountAvg() {
        return this.stepCountAvg;
    }

    public void setStepCountAvg(int i) {
        this.stepCountAvg = i;
    }

    public int getActivePointAvg() {
        return this.activePointAvg;
    }

    public void setActivePointAvg(int i) {
        this.activePointAvg = i;
    }

    public double getCalorieAvg() {
        return this.calorieAvg;
    }

    public void setCalorieAvg(double d) {
        this.calorieAvg = d;
    }

    public double getDistanceAvg() {
        return this.distanceAvg;
    }

    public void setDistanceAvg(double d) {
        this.distanceAvg = d;
    }

    public double getCalorieGoalSum() {
        return this.calorieGoalSum;
    }

    public void setCalorieGoalSum(double d) {
        this.calorieGoalSum = d;
    }
}
