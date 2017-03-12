package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class MessageNotificationModel extends Friendmodel {
    String content;
    String headPicUrl;
    String msgTime;
    String msgType;
    String pageUrl;
    String picUrl;
    String type;

    public MessageNotificationModel() {
        this.msgType = "";
        this.content = "";
        this.msgTime = "";
        this.headPicUrl = "";
        this.type = "";
        this.picUrl = "";
        this.pageUrl = "";
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getMsgType() {
        return this.msgType;
    }

    public void setMsgType(String str) {
        this.msgType = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public String getMsgTime() {
        return this.msgTime;
    }

    public void setMsgTime(String str) {
        this.msgTime = str;
    }

    public String getHeadPicUrl() {
        return this.headPicUrl;
    }

    public void setHeadPicUrl(String str) {
        this.headPicUrl = str;
    }

    public String getPicUrl() {
        return this.picUrl;
    }

    public void setPicUrl(String str) {
        this.picUrl = str;
    }

    public String getPageUrl() {
        return this.pageUrl;
    }

    public void setPageUrl(String str) {
        this.pageUrl = str;
    }
}
