package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class CalorieItem extends ProGuard implements Cloneable {
    private int activePoint;
    private double calorie;
    private double calorieValue;
    private double distance;
    private String happenDate;
    private int stepCount;

    public Object clone() {
        return super.clone();
    }

    public int getStepCount() {
        return this.stepCount;
    }

    public double getDistance() {
        return this.distance;
    }

    public double getCalorie() {
        return this.calorie;
    }

    public String getHappenDate() {
        return this.happenDate;
    }

    public double getCalorieGoal() {
        return this.calorieValue;
    }

    public int getActivePoint() {
        return this.activePoint;
    }

    public void setHappenDate(String str) {
        this.happenDate = str;
    }

    public void setStepCount(int i) {
        this.stepCount = i;
    }

    public void setCalorie(double d) {
        this.calorie = d;
    }

    public void setCalorieGoal(double d) {
        this.calorieValue = d;
    }

    public void setActivePoint(int i) {
        this.activePoint = i;
    }

    public void setDistance(double d) {
        this.distance = d;
    }

    public String toString() {
        return this.happenDate + ": stepCount=" + this.stepCount + ", calorie=" + this.calorie + ", calorieValue=" + this.calorieValue + ", activePoint=" + this.activePoint + ", distance=" + this.distance;
    }
}
