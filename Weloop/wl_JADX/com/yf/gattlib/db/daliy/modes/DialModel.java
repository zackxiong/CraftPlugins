package com.yf.gattlib.db.daliy.modes;

import com.yf.gattlib.p117p.ProGuard;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.Serializable;

/* compiled from: ProGuard */
public class DialModel implements Serializable {
    public String localPath;
    public String watchClass;
    public String watchNo;
    public String watchfaceBinURL;
    public String watchfaceImageURL;
    public String watchfaceUploadFileURL;

    public DialModel() {
        this.watchNo = "";
        this.watchClass = "";
        this.watchfaceImageURL = "";
        this.watchfaceBinURL = "";
        this.watchfaceUploadFileURL = "";
        this.localPath = "";
    }

    public InputStream getDialStream(String str) {
        File file = new File(str);
        if (file.exists()) {
            return new FileInputStream(file);
        }
        ProGuard.m8297b("The bin file not exists");
        return null;
    }

    public String getWatchNo() {
        return this.watchNo;
    }

    public void setWatchNo(String str) {
        this.watchNo = str;
    }

    public String getWatchfaceImageURL() {
        return this.watchfaceImageURL;
    }

    public void setWatchfaceImageURL(String str) {
        this.watchfaceImageURL = str;
    }

    public String getWatchfaceBinURL() {
        return this.watchfaceBinURL;
    }

    public void setWatchfaceBinURL(String str) {
        this.watchfaceBinURL = str;
    }

    public String getWatchfaceUploadFileURL() {
        return this.watchfaceUploadFileURL;
    }

    public void setWatchfaceUploadFileURL(String str) {
        this.watchfaceUploadFileURL = str;
    }

    public String getWatchClass() {
        return this.watchClass;
    }

    public void setWatchClass(String str) {
        this.watchClass = str;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }
}
