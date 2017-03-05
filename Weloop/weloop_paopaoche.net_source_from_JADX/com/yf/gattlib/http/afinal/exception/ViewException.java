package com.yf.gattlib.http.afinal.exception;

/* compiled from: ProGuard */
public class ViewException extends AfinalException {
    private static final long serialVersionUID = 1;
    private String strMsg;

    public ViewException(String str) {
        this.strMsg = null;
        this.strMsg = str;
    }

    public void printStackTrace() {
        if (this.strMsg != null) {
            System.err.println(this.strMsg);
        }
        super.printStackTrace();
    }
}
