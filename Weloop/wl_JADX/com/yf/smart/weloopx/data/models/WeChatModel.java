package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class WeChatModel {
    private String access_token;
    private String expires_in;
    private String openid;
    private String refresh_token;
    private String scope;
    private String unionid;

    public WeChatModel() {
        this.access_token = "";
        this.expires_in = "";
        this.refresh_token = "";
        this.openid = "";
        this.scope = "";
        this.unionid = "";
    }

    public String getAccess_token() {
        return this.access_token;
    }

    public void setAccess_token(String str) {
        this.access_token = str;
    }

    public String getExpires_in() {
        return this.expires_in;
    }

    public void setExpires_in(String str) {
        this.expires_in = str;
    }

    public String getRefresh_token() {
        return this.refresh_token;
    }

    public void setRefresh_token(String str) {
        this.refresh_token = str;
    }

    public String getOpenid() {
        return this.openid;
    }

    public void setOpenid(String str) {
        this.openid = str;
    }

    public String getScope() {
        return this.scope;
    }

    public void setScope(String str) {
        this.scope = str;
    }

    public String getUnionid() {
        return this.unionid;
    }

    public void setUnionid(String str) {
        this.unionid = str;
    }
}
