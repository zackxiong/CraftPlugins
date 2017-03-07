package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class BongDownloadParams {
    private String accessToken;
    private int additionalDays;
    private String deviceId;
    private String happenDate;
    private String mac;
    private float timeZone;
    private String version;

    public BongDownloadParams() {
        this.version = "1";
    }

    public float getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(float f) {
        this.timeZone = f;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public int getAdditionalDays() {
        return this.additionalDays;
    }

    public void setAdditionalDays(int i) {
        this.additionalDays = i;
    }

    public String getHappenDate() {
        return this.happenDate;
    }

    public void setHappenDate(String str) {
        this.happenDate = str;
    }

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
