package com.yf.smart.weloopx.data.models;

import java.util.ArrayList;

/* compiled from: ProGuard */
public class MessageNotificationModels {
    String message;
    ArrayList<MessageNotificationModel> msgList;
    String result;
    String userId;
    ArrayList<Friendmodel> userList;

    public MessageNotificationModels() {
        this.result = "";
        this.message = "";
        this.userId = "";
    }

    public String getResult() {
        return this.result;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public ArrayList<MessageNotificationModel> getMsgList() {
        return this.msgList;
    }

    public void setMsgList(ArrayList<MessageNotificationModel> arrayList) {
        this.msgList = arrayList;
    }

    public ArrayList<Friendmodel> getUserList() {
        return this.userList;
    }

    public void setUserList(ArrayList<Friendmodel> arrayList) {
        this.userList = arrayList;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
