package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.data.ProGuard;
import java.io.File;
import java.util.Date;

/* compiled from: ProGuard */
public class UserData extends ProGuard {
    private String accessToken;
    private String account;
    private String appKey;
    private String bindDevice;
    private int bindToBong;
    private String birthday;
    private int calorieValue;
    private String channelId;
    private String checkCode;
    private String checkCodeResult;
    private int clientType;
    private String deviceToken;
    private String encryptedAccount;
    private Date happenDate;
    private File headPic;
    private String headPicAddress;
    private String latitude;
    private String longitude;
    private String newPwd;
    private String nickname;
    private String oldPwd;
    private String openId;
    private String pwd;
    private int sex;
    private int stature;
    private String userId;
    private int userType;
    private int weight;

    public String getEncryptedAccount() {
        return this.encryptedAccount;
    }

    public void setEncryptedAccount(String str) {
        this.encryptedAccount = str;
    }

    public String getAppKey() {
        return this.appKey;
    }

    public void setAppKey(String str) {
        this.appKey = str;
    }

    public String getHeadPicAddress() {
        return this.headPicAddress;
    }

    public void setHeadPicAddress(String str) {
        this.headPicAddress = str;
    }

    public int getCalorieValue() {
        return this.calorieValue;
    }

    public void setCalorieValue(int i) {
        this.calorieValue = i;
    }

    public Date getHappenDate() {
        return this.happenDate;
    }

    public void setHappenDate(Date date) {
        this.happenDate = date;
    }

    public String getOldPwd() {
        return this.oldPwd;
    }

    public void setOldPwd(String str) {
        this.oldPwd = str;
    }

    public String getNewPwd() {
        return this.newPwd;
    }

    public void setNewPwd(String str) {
        this.newPwd = str;
    }

    public int getStature() {
        return this.stature;
    }

    public void setStature(int i) {
        this.stature = i;
    }

    public int getWeight() {
        return this.weight;
    }

    public void setWeight(int i) {
        this.weight = i;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public File getHeadPic() {
        return this.headPic;
    }

    public void setHeadPic(File file) {
        this.headPic = file;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public int getSex() {
        return this.sex;
    }

    public void setSex(int i) {
        this.sex = i;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public UserData(String str, String str2, String str3, int i, int i2, String str4, String str5) {
        this.userType = -1;
        this.clientType = -1;
        this.sex = -1;
        this.userId = "";
        this.stature = -1;
        this.weight = -1;
        this.calorieValue = -1;
        this.bindToBong = -1;
        this.account = str;
        this.pwd = str2;
        this.checkCode = str3;
        this.userType = i;
        this.clientType = i2;
        this.channelId = str4;
        this.deviceToken = str5;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public UserData() {
        this.userType = -1;
        this.clientType = -1;
        this.sex = -1;
        this.userId = "";
        this.stature = -1;
        this.weight = -1;
        this.calorieValue = -1;
        this.bindToBong = -1;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public String getDeviceToken() {
        return this.deviceToken;
    }

    public void setDeviceToken(String str) {
        this.deviceToken = str;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public String getPwd() {
        return this.pwd;
    }

    public void setPwd(String str) {
        this.pwd = str;
    }

    public String getCheckCode() {
        return this.checkCode;
    }

    public void setCheckCode(String str) {
        this.checkCode = str;
    }

    public int getUserType() {
        return this.userType;
    }

    public void setUserType(int i) {
        this.userType = i;
    }

    public int getClientType() {
        return this.clientType;
    }

    public void setClientType(int i) {
        this.clientType = i;
    }

    public String getNotificationChannelId() {
        return this.channelId;
    }

    public void setNotificationChannelId(String str) {
        this.channelId = str;
    }

    public String getNotificationDeviceToken() {
        return this.deviceToken;
    }

    public void setNotificationDeviceToken(String str) {
        this.deviceToken = str;
    }

    public String getBindDevice() {
        return this.bindDevice;
    }

    public void setBindDevice(String str) {
        this.bindDevice = str;
    }

    public int getBindToBong() {
        return this.bindToBong;
    }

    public void setBindToBong(int i) {
        this.bindToBong = i;
    }

    public String getCheckCodeResult() {
        return this.checkCodeResult;
    }

    public void setCheckCodeResult(String str) {
        this.checkCodeResult = str;
    }

    public String getOpenId() {
        return this.openId;
    }

    public void setOpenId(String str) {
        this.openId = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
