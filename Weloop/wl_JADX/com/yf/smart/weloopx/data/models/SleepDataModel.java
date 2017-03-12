package com.yf.smart.weloopx.data.models;

import android.content.Context;
import com.yf.gattlib.db.daliy.modes.IdModel;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p145g.ProGuard;

/* compiled from: ProGuard */
public class SleepDataModel extends IdModel {
    private static final long serialVersionUID = 5985956390383515715L;
    public String beginTime;
    public int clearTime;
    public int deepSleepTime;
    public String endTime;
    public String happenDate;
    public int id;
    public int isSubmit;
    public String mid;
    public int shallowSleepTime;
    public int totalTime;

    public SleepDataModel(int i, int i2, int i3, int i4, String str) {
        this.deepSleepTime = i;
        this.shallowSleepTime = i2;
        this.clearTime = i3;
        this.totalTime = i4;
        this.happenDate = str;
    }

    public String getTime(Context context) {
        return String.format(context.getResources().getString(R.string.sleep_time_str), new Object[]{getShortTime(this.beginTime), getShortTime(this.endTime)});
    }

    public String getAwakeTime(Context context) {
        return ProGuard.m11368b(this.clearTime);
    }

    public String getLightSleepTime(Context context) {
        return ProGuard.m11368b(this.shallowSleepTime);
    }

    public String getDeepSleepTime(Context context) {
        return ProGuard.m11368b(this.deepSleepTime);
    }

    public String getDuration(Context context) {
        return "(" + ProGuard.m11368b(this.totalTime) + ")";
    }

    public int[] getProgressValues() {
        return new int[]{this.clearTime, this.clearTime + this.shallowSleepTime, this.totalTime};
    }

    private String getShortTime(String str) {
        return ProGuard.m11372c(str);
    }
}
