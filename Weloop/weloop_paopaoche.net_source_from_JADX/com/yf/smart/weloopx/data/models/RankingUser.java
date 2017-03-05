package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class RankingUser extends ProGuard {
    private int activePoint;
    private double calorieValue;
    private String headPicUrl;
    private String nickname;
    private int userId;

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int i) {
        this.userId = i;
    }

    public int getActivePoint() {
        return this.activePoint;
    }

    public void setActivePoint(int i) {
        this.activePoint = i;
    }

    public String getHeadPicUrl() {
        return this.headPicUrl;
    }

    public void setHeadPicUrl(String str) {
        this.headPicUrl = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public double getCalorie() {
        return this.calorieValue;
    }

    public void setCalorie(double d) {
        this.calorieValue = d;
    }
}
