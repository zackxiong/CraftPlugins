package com.yf.smart.weloopx.data.models;

/* compiled from: ProGuard */
public class WechatUserInfoModel extends ServerResult {
    private String accessToken;
    private String bindBong;
    private String bindMAC;
    private String birthday;
    private String city;
    private String country;
    private String headPicUrl;
    private String headimgurl;
    private String isSetTarget;
    private String language;
    private String nickname;
    private String openid;
    private String province;
    private String regDate;
    private String setTargetValue;
    private String sex;
    private String stature;
    private String unionid;
    private String userId;
    private String weight;

    public WechatUserInfoModel() {
        this.userId = "";
        this.accessToken = "";
        this.bindBong = "";
        this.regDate = "";
        this.isSetTarget = "";
        this.setTargetValue = "";
        this.headPicUrl = "";
        this.nickname = "";
        this.sex = "";
        this.stature = "";
        this.weight = "";
        this.birthday = "";
        this.bindMAC = "";
    }

    public String getOpenid() {
        return this.openid;
    }

    public void setOpenid(String str) {
        this.openid = str;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getProvince() {
        return this.province;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getHeadimgurl() {
        return this.headimgurl;
    }

    public void setHeadimgurl(String str) {
        this.headimgurl = str;
    }

    public String getUnionid() {
        return this.unionid;
    }

    public void setUnionid(String str) {
        this.unionid = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public String getBindBong() {
        return this.bindBong;
    }

    public void setBindBong(String str) {
        this.bindBong = str;
    }

    public String getRegDate() {
        return this.regDate;
    }

    public void setRegDate(String str) {
        this.regDate = str;
    }

    public String getIsSetTarget() {
        return this.isSetTarget;
    }

    public void setIsSetTarget(String str) {
        this.isSetTarget = str;
    }

    public String getSetTargetValue() {
        return this.setTargetValue;
    }

    public void setSetTargetValue(String str) {
        this.setTargetValue = str;
    }

    public String getHeadPicUrl() {
        return this.headPicUrl;
    }

    public void setHeadPicUrl(String str) {
        this.headPicUrl = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public String getSex() {
        return this.sex;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public String getStature() {
        return this.stature;
    }

    public void setStature(String str) {
        this.stature = str;
    }

    public String getWeight() {
        return this.weight;
    }

    public void setWeight(String str) {
        this.weight = str;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public String getBindMAC() {
        return this.bindMAC;
    }

    public void setBindMAC(String str) {
        this.bindMAC = str;
    }
}
