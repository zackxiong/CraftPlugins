package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class ApplyFriendModel {
    private String account;
    private String beApplyUserId;
    private String myUserId;

    public ApplyFriendModel() {
        this.beApplyUserId = "";
        this.account = "";
        this.myUserId = "";
    }

    public String getMyUserId() {
        return this.myUserId;
    }

    public void setMyUserId(String str) {
        this.myUserId = str;
    }

    public String getBeApplyUserId() {
        return this.beApplyUserId;
    }

    public void setBeApplyUserId(String str) {
        this.beApplyUserId = str;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String str) {
        this.account = str;
    }
}
