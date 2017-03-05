package com.yf.smart.weloopx.data.models;

import com.google.gson.Gson;
import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class ServerResult extends ProGuard {
    private String message;
    private String result;

    public ServerResult() {
        this.result = "";
        this.message = "";
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

    public static String getMessage(String str) {
        return ((ServerResult) new Gson().fromJson(str, ServerResult.class)).getMessage();
    }
}
