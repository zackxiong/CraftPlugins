package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class StatisticalInfoModel {
    private String APP_VERSION;
    private String DEVICE_CONNCTED_TIMES;
    private String DEVICE_DISCONNECTED_TIMES;
    private String DEVICE_FIRME_VERSION;
    private String DEVICE_ID;
    private String HAPPEN_DATE;
    private String IS_SUBMIT;
    private String PHONE_MODEL;
    private String PHONE_NUM;
    private String PHONE_SYSTEM_VERSION;
    private String PUSH_MSG_NUM;
    private String SYNC_DATA_NUM;

    public StatisticalInfoModel() {
        this.PHONE_MODEL = "";
        this.PHONE_NUM = "";
        this.PHONE_SYSTEM_VERSION = "";
        this.DEVICE_ID = "";
        this.APP_VERSION = "";
        this.DEVICE_FIRME_VERSION = "";
        this.DEVICE_CONNCTED_TIMES = "";
        this.DEVICE_DISCONNECTED_TIMES = "";
        this.PUSH_MSG_NUM = "";
        this.SYNC_DATA_NUM = "";
        this.HAPPEN_DATE = "";
        this.IS_SUBMIT = "";
    }

    public String getPHONE_MODEL() {
        return this.PHONE_MODEL;
    }

    public void setPHONE_MODEL(String str) {
        this.PHONE_MODEL = str;
    }

    public String getPHONE_NUM() {
        return this.PHONE_NUM;
    }

    public void setPHONE_NUM(String str) {
        this.PHONE_NUM = str;
    }

    public String getPHONE_SYSTEM_VERSION() {
        return this.PHONE_SYSTEM_VERSION;
    }

    public void setPHONE_SYSTEM_VERSION(String str) {
        this.PHONE_SYSTEM_VERSION = str;
    }

    public String getDEVICE_ID() {
        return this.DEVICE_ID;
    }

    public void setDEVICE_ID(String str) {
        this.DEVICE_ID = str;
    }

    public String getAPP_VERSION() {
        return this.APP_VERSION;
    }

    public void setAPP_VERSION(String str) {
        this.APP_VERSION = str;
    }

    public String getDEVICE_FIRME_VERSION() {
        return this.DEVICE_FIRME_VERSION;
    }

    public void setDEVICE_FIRME_VERSION(String str) {
        this.DEVICE_FIRME_VERSION = str;
    }

    public String getDEVICE_CONNCTED_TIMES() {
        return this.DEVICE_CONNCTED_TIMES;
    }

    public void setDEVICE_CONNCTED_TIMES(String str) {
        this.DEVICE_CONNCTED_TIMES = str;
    }

    public String getDEVICE_DISCONNECTED_TIMES() {
        return this.DEVICE_DISCONNECTED_TIMES;
    }

    public void setDEVICE_DISCONNECTED_TIMES(String str) {
        this.DEVICE_DISCONNECTED_TIMES = str;
    }

    public String getPUSH_MSG_NUM() {
        return this.PUSH_MSG_NUM;
    }

    public void setPUSH_MSG_NUM(String str) {
        this.PUSH_MSG_NUM = str;
    }

    public String getSYNC_DATA_NUM() {
        return this.SYNC_DATA_NUM;
    }

    public void setSYNC_DATA_NUM(String str) {
        this.SYNC_DATA_NUM = str;
    }

    public String getHAPPEN_DATE() {
        return this.HAPPEN_DATE;
    }

    public void setHAPPEN_DATE(String str) {
        this.HAPPEN_DATE = str;
    }

    public String getIS_SUBMIT() {
        return this.IS_SUBMIT;
    }

    public void setIS_SUBMIT(String str) {
        this.IS_SUBMIT = str;
    }
}
