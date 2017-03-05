package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;

/* compiled from: ProGuard */
public class MsgNotiNumServerResult extends ProGuard {
    private String count;
    private String message;
    private String result;

    public MsgNotiNumServerResult() {
        this.result = "";
        this.message = "";
        this.count = "";
    }

    public String getCount() {
        return this.count;
    }

    public void setCount(String str) {
        this.count = str;
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
}
