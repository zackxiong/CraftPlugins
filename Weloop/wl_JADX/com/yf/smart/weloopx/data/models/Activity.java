package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class Activity extends ProGuard {
    public static final int SUB_NO_BONG_SIT_DOWN = 1;
    public static final int SUB_NO_BONG_TYPE_ACTIVITY = 4;
    public static final int SUB_NO_BONG_TYPE_DRIVING = 10;
    public static final int SUB_NO_BONG_TYPE_RUNNING = 11;
    public static final int SUB_NO_BONG_TYPE_STATIC = 0;
    public static final int SUB_NO_BONG_VEHICLE = 3;
    public static final int SUB_NO_BONG_WALK = 2;
    public static final int SUB_TYPE_BIKE = 6;
    public static final int SUB_TYPE_RUNNING = 4;
    public static final int SUB_TYPE_SPORT = 3;
    public static final int SUB_TYPE_SPORT_WALKING = 2;
    public static final int SUB_TYPE_SWIMMING = 5;
    public static final int SUB_TYPE_WARM_UP = 1;
    public static final int TYPE_BONG = 2;
    public static final int TYPE_CHARGING = 5;
    public static final int TYPE_NON_BONG = 3;
    public static final int TYPE_SLEEP = 1;
    public static final int TYPE_TAKE_OFF = 4;
    private String actTime;
    private String allmileage;
    private String bongValue;
    private String calorie;
    private String distance;
    private int dsNum;
    private String endTime;
    private String happenDate;
    private String hdRatio;
    private String jzRatio;
    private int lsNum;
    private String nonActTime;
    private String score;
    private String speed;
    private String startTime;
    private String stepCount;
    private int subType;
    private int type;
    private int wakeNum;
    private int wakeTimes;

    public Activity() {
        this.bongValue = "";
    }

    public void composeActivity(Activity activity) {
        this.actTime += activity.actTime;
        this.nonActTime += activity.nonActTime;
        this.dsNum += activity.dsNum;
        this.lsNum += activity.lsNum;
        this.wakeNum += activity.wakeNum;
        this.wakeTimes += activity.wakeTimes;
        this.stepCount += "" + (toInt(this.stepCount) + toInt(activity.stepCount));
        this.speed = "" + ((toDouble(this.speed) + toDouble(activity.speed)) / 2.0d);
        this.calorie = "" + (toDouble(this.calorie) + toDouble(activity.calorie));
        this.distance = "" + (toDouble(this.distance) + toDouble(activity.distance));
        this.score = "" + ((toDouble(this.score) + toDouble(activity.score)) / 2.0d);
        this.allmileage = "" + (toDouble(this.allmileage) + toDouble(activity.allmileage));
        if (this.startTime.compareTo(activity.startTime) > 0) {
            this.startTime = activity.startTime;
        }
        if (this.endTime.compareTo(activity.endTime) < 0) {
            this.endTime = activity.endTime;
        }
    }

    public int getType() {
        return this.type;
    }

    public int getSubType() {
        return this.subType;
    }

    public int getStepCount() {
        return toInt(this.stepCount);
    }

    public double getCalorie() {
        return toDouble(this.calorie);
    }

    public double getDistance() {
        return toDouble(this.distance);
    }

    public int getActiveSeconds() {
        return toInt(this.actTime);
    }

    public int getNonActiveSeconds() {
        return toInt(this.nonActTime);
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

    public int getWakeCount() {
        return this.wakeTimes;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public String getHappenDate() {
        return this.happenDate;
    }

    public double getSpeedKph() {
        return toDouble(this.speed);
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setSubType(int i) {
        this.subType = i;
    }

    public void setStepCount(int i) {
        this.stepCount = "" + i;
    }

    public void setCalorie(double d) {
        this.calorie = "" + d;
    }

    public void setDistance(double d) {
        this.distance = "" + d;
    }

    public void setActiveSeconds(int i) {
        this.actTime = "" + i;
    }

    public void setNonActiveSeconds(int i) {
        this.nonActTime = "" + i;
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

    public void setWakeCount(int i) {
        this.wakeTimes = i;
    }

    public void setStartTime(String str) {
        this.startTime = str;
    }

    public void setEndTime(String str) {
        this.endTime = str;
    }

    public void setHappenDate(String str) {
        this.happenDate = str;
    }

    public void setSpeed(double d) {
        this.speed = "" + d;
    }

    public double getSleepScore() {
        return toDouble(this.score);
    }

    public void setSleepScore(double d) {
        this.score = "" + d;
    }

    public String getHdRatio() {
        return this.hdRatio;
    }

    public void setHdRatio(String str) {
        this.hdRatio = str;
    }

    public String getJzRatio() {
        return this.jzRatio;
    }

    public void setJzRatio(String str) {
        this.jzRatio = str;
    }

    public String getBongValue() {
        return this.bongValue;
    }

    public void setBongValue(String str) {
        this.bongValue = str;
    }

    public String getAllmileage() {
        return this.allmileage;
    }

    public void setAllmileage(String str) {
        this.allmileage = str;
    }
}
