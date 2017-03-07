package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class BongUploadParams {
    private String accessToken;
    private String deviceId;
    private byte[] devicedata;
    private String mac;
    public String runinfo;
    private float timeZone;
    private String version;

    public BongUploadParams() {
        this.version = "1";
        this.runinfo = "";
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

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public byte[] getDeviceData() {
        return this.devicedata;
    }

    public void setDeviceData(byte[] bArr) {
        this.devicedata = bArr;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
