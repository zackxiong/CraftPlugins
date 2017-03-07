package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class WatchfaceResult extends ServerResult {
    private String author;
    private int downloadCount;
    private int id;
    private String watchClass;
    private String watchName;
    private String watchNo;
    private String watchfaceBinURL;
    private String watchfaceImageURL;
    private String watchfaceUploadFileURL;

    public Watchface getWatchface() {
        Watchface watchface = new Watchface();
        watchface.setId(this.id);
        watchface.setDownloadCount(this.downloadCount);
        watchface.setWatchfaceUploadFileURL(this.watchfaceUploadFileURL);
        watchface.setWatchClass(this.watchClass);
        watchface.setAuthor(this.author);
        watchface.setWatchfaceBinURL(this.watchfaceBinURL);
        watchface.setWatchfaceImageURL(this.watchfaceImageURL);
        watchface.setWatchNo(this.watchNo);
        watchface.setWatchName(this.watchName);
        return watchface;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public void setDownloadCount(int i) {
        this.downloadCount = i;
    }

    public String getWatchName() {
        return this.watchName;
    }

    public void setWatchName(String str) {
        this.watchName = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getWatchNo() {
        return this.watchNo;
    }

    public void setWatchNo(String str) {
        this.watchNo = str;
    }

    public String getWatchClass() {
        return this.watchClass;
    }

    public void setWatchClass(String str) {
        this.watchClass = str;
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
}
