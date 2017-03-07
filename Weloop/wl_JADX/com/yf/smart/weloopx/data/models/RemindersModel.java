package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class RemindersModel {
    private String dateAndTime;
    private String day;
    private String hour;
    private int id;
    private String min;
    private String month;
    private String msg;
    private String time;
    private String year;

    public RemindersModel() {
        this.id = 0;
        this.time = "";
        this.msg = "";
        this.min = "";
        this.hour = "";
        this.year = "";
        this.month = "";
        this.day = "";
        this.dateAndTime = "";
    }

    public String getDateAndTime() {
        return this.dateAndTime;
    }

    public void setDateAndTime(String str) {
        this.dateAndTime = str;
    }

    public String getYear() {
        return this.year;
    }

    public void setYear(String str) {
        this.year = str;
    }

    public String getMonth() {
        return this.month;
    }

    public void setMonth(String str) {
        this.month = str;
    }

    public String getDay() {
        return this.day;
    }

    public void setDay(String str) {
        this.day = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String getMin() {
        return this.min;
    }

    public void setMin(String str) {
        this.min = str;
    }

    public String getHour() {
        return this.hour;
    }

    public void setHour(String str) {
        this.hour = str;
    }
}
