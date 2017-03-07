package com.yf.smart.weloopx.data.models;

import java.util.ArrayList;

/* compiled from: ProGuard */
public class Friendmodels {
    String userId;
    ArrayList<Friendmodel> userList;

    public Friendmodels() {
        this.userId = "";
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public ArrayList<Friendmodel> getUserList() {
        return this.userList;
    }

    public void setUserList(ArrayList<Friendmodel> arrayList) {
        this.userList = arrayList;
    }
}
