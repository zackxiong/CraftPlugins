package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class AlarmHolder {
    public int mHour;
    public boolean mIsSet;
    public int mMinute;

    public AlarmHolder(int i, int i2, boolean z) {
        this.mHour = i;
        this.mMinute = i2;
        this.mIsSet = z;
    }

    public boolean isValid() {
        return this.mHour >= 0 && this.mHour < 24 && this.mMinute >= 0 && this.mMinute < 60;
    }
}
