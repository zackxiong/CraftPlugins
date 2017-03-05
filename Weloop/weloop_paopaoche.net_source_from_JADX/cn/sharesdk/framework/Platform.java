package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import java.util.HashMap;

public abstract class Platform {
    public static final int ACTION_AUTHORIZING = 1;
    protected static final int ACTION_CUSTOMER = 655360;
    public static final int ACTION_FOLLOWING_USER = 6;
    public static final int ACTION_GETTING_FRIEND_LIST = 2;
    public static final int ACTION_SENDING_DIRECT_MESSAGE = 5;
    public static final int ACTION_SHARE = 9;
    public static final int ACTION_TIMELINE = 7;
    public static final int ACTION_USER_INFOR = 8;
    public static final int CUSTOMER_ACTION_MASK = 65535;
    public static final int SHARE_APPS = 7;
    public static final int SHARE_EMOJI = 9;
    public static final int SHARE_FILE = 8;
    public static final int SHARE_IMAGE = 2;
    public static final int SHARE_MUSIC = 5;
    public static final int SHARE_TEXT = 1;
    public static final int SHARE_VIDEO = 6;
    public static final int SHARE_WEBPAGE = 4;
    private C0025i f1895a;
    protected final Context context;
    protected final PlatformDb db;
    protected PlatformActionListener listener;

    public static class ShareParams extends C0000g {
        public String imagePath;
        public String text;

        public ShareParams(String str) {
            super(str);
        }

        public ShareParams(HashMap<String, Object> hashMap) {
            super((HashMap) hashMap);
        }
    }

    public Platform(Context context) {
        this.context = context;
        this.f1895a = new C0025i(this, context);
        this.db = this.f1895a.m2966g();
        this.listener = this.f1895a.m2968i();
    }

    public void SSOSetting(boolean z) {
        this.f1895a.m2954a(z);
    }

    void m2857a() {
        this.f1895a.m2951a(getName());
    }

    protected void afterRegister(int i, Object obj) {
        this.f1895a.m2960c(i, obj);
    }

    public void authorize() {
        authorize(null);
    }

    public void authorize(String[] strArr) {
        this.f1895a.m2955a(strArr);
    }

    boolean m2858b() {
        return this.f1895a.m2965f();
    }

    protected abstract boolean checkAuthorize(int i, Object obj);

    protected void copyDevinfo(String str, String str2) {
        ShareSDK.m2903a(str, str2);
    }

    protected void copyNetworkDevinfo(int i, int i2) {
        ShareSDK.m2902a(i, i2);
    }

    public void customerProtocol(String str, String str2, short s, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        this.f1895a.m2953a(str, str2, s, hashMap, hashMap2);
    }

    protected abstract void doAuthorize(String[] strArr);

    protected abstract void doCustomerProtocol(String str, String str2, int i, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2);

    protected abstract void doShare(ShareParams shareParams);

    protected abstract C0060a filterShareContent(ShareParams shareParams, HashMap<String, Object> hashMap);

    protected abstract void follow(String str);

    public void followFriend(String str) {
        this.f1895a.m2958b(str);
    }

    public Context getContext() {
        return this.context;
    }

    public PlatformDb getDb() {
        return this.db;
    }

    public String getDevinfo(String str) {
        return getDevinfo(getName(), str);
    }

    public String getDevinfo(String str, String str2) {
        return ShareSDK.m2906b(str, str2);
    }

    protected abstract void getFriendList(int i, int i2, String str);

    public int getId() {
        return this.f1895a.m2943a();
    }

    public abstract String getName();

    protected String getNetworkDevinfo(int i, String str, String str2) {
        return this.f1895a.m2944a(i, str, str2);
    }

    protected String getNetworkDevinfo(String str, String str2) {
        return getNetworkDevinfo(getPlatformId(), str, str2);
    }

    public PlatformActionListener getPlatformActionListener() {
        return this.f1895a.m2959c();
    }

    protected abstract int getPlatformId();

    public String getShortLintk(String str, boolean z) {
        return this.f1895a.m2946a(str, z);
    }

    public int getSortId() {
        return this.f1895a.m2956b();
    }

    public void getTimeLine(String str, int i, int i2) {
        this.f1895a.m2952a(str, i, i2);
    }

    public abstract int getVersion();

    protected abstract void initDevInfo(String str);

    protected void innerAuthorize(int i, Object obj) {
        this.f1895a.m2948a(i, obj);
    }

    public boolean isSSODisable() {
        return this.f1895a.m2964e();
    }

    public boolean isValid() {
        return this.f1895a.m2963d();
    }

    public void listFriend(int i, int i2, String str) {
        this.f1895a.m2947a(i, i2, str);
    }

    public void removeAccount() {
        this.f1895a.m2967h();
    }

    protected abstract void setNetworkDevinfo();

    public void setPlatformActionListener(PlatformActionListener platformActionListener) {
        this.f1895a.m2950a(platformActionListener);
    }

    public void share(ShareParams shareParams) {
        this.f1895a.m2949a(shareParams);
    }

    public void showUser(String str) {
        this.f1895a.m2961c(str);
    }

    protected abstract void timeline(int i, int i2, String str);

    protected String uploadImageToFileServer(Bitmap bitmap) {
        return this.f1895a.m2945a(bitmap);
    }

    protected String uploadImageToFileServer(String str) {
        return this.f1895a.m2962d(str);
    }

    protected abstract void userInfor(String str);
}
