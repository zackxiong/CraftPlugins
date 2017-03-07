package com.yf.smart.weloopx.p140b.p148a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.PushConstants;
import com.yf.smart.weloopx.data.models.DownloadWatchfaceListParams;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.data.models.Watchface;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* renamed from: com.yf.smart.weloopx.b.a.f */
public class ProGuard extends com.yf.smart.weloopx.p140b.ProGuard {
    private final Uri f8685a;
    private ContentResolver f8686b;
    private String f8687c;
    private String f8688d;
    private String f8689e;
    private int f8690f;
    private Date f8691g;
    private String f8692h;
    private String f8693i;
    private String f8694j;

    public void m10803a(String str) {
        this.f8687c = str;
    }

    public void m10809b(String str) {
        this.f8688d = str;
        ContentResolver contentResolver = this.f8686b;
        ContentValues contentValues = new ContentValues();
        contentValues.put(PushConstants.EXTRA_ACCESS_TOKEN, str);
        contentResolver.update(this.f8685a, contentValues, "account=?", new String[]{m10808b()});
    }

    public ProGuard(Context context) {
        this.f8685a = Uri.parse("content://com.yf.smart.weloopx.data.WeLoopProvider/user");
        this.f8693i = "";
        this.f8694j = "";
        this.f8686b = context.getContentResolver();
        m10789h();
    }

    public void m10806a(String str, String str2, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard, boolean z) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("mobile", str);
        proGuard2.m4068a("actionType", str2);
        String str3 = com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + (z ? "/loginAction!getVerifyCode1.do" : "/loginAction!getVerifyCode2.do");
        com.yf.gattlib.p117p.ProGuard.m8292a("UserAccount \u6ce8\u518c\u7684\u83b7\u5f97\u9a8c\u8bc1\u7801\u7684\u63a5\u53e3\u5730\u5740 = " + str3);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, str3, proGuard2, proGuard);
    }

    public String m10812d() {
        Throwable th;
        Cursor cursor = null;
        if (TextUtils.isEmpty(this.f8689e)) {
            ContentResolver contentResolver = this.f8686b;
            Cursor query;
            try {
                query = contentResolver.query(this.f8685a, new String[]{"register_date"}, "account=?", new String[]{m10808b()}, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            this.f8689e = query.getString(0);
                        }
                    } catch (Throwable th2) {
                        cursor = query;
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return this.f8689e;
    }

    public int m10814e() {
        if (this.f8691g == null) {
            m10788g();
        } else if (this.f8691g.getTime() / 86400000 != new Date().getTime() / 86400000) {
            m10788g();
        }
        return this.f8690f;
    }

    private void m10788g() {
        String d = m10812d();
        if (TextUtils.isEmpty(d)) {
            this.f8690f = 7;
            return;
        }
        d.trim();
        if (TextUtils.isEmpty(d)) {
            this.f8690f = 7;
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8298b("UserAccount", "registerDate=" + d);
        d = d.split(" ")[0];
        if (TextUtils.isEmpty(d)) {
            this.f8690f = 7;
            return;
        }
        try {
            Date parse = new SimpleDateFormat("yyyy-MM-dd").parse(d);
            Date date = new Date();
            this.f8691g = date;
            this.f8690f = ((int) ((date.getTime() - parse.getTime()) / 86400000)) + 1;
        } catch (ParseException e) {
            com.yf.gattlib.p117p.ProGuard.m8298b("UserAccount", "decode register date error" + d);
            this.f8690f = 7;
        }
    }

    public void m10813d(String str) {
        this.f8689e = str;
        m10788g();
        if (!TextUtils.isEmpty(m10808b())) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("register_date", str);
            this.f8686b.update(this.f8685a, contentValues, "account=?", new String[]{m10808b()});
        }
    }

    public void m10800a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("account", "" + userData.getAccount());
        proGuard2.m4068a("pwd", "" + userData.getPwd());
        proGuard2.m4068a("checkCode", "" + userData.getCheckCode());
        proGuard2.m4068a("userType", "" + userData.getUserType());
        proGuard2.m4068a("clientType", "" + userData.getClientType());
        proGuard2.m4068a("channelId", "" + userData.getChannelId());
        proGuard2.m4068a("deviceToken", "" + userData.getDeviceToken());
        Log.e("yonghong", "" + userData.getCheckCode());
        Log.e("yonghong", "" + proGuard2.toString());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/loginAction!userRegister.do", proGuard2, proGuard);
    }

    public void m10797a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("account", "" + userData.getEncryptedAccount());
        proGuard2.m4068a("pwd", "" + userData.getPwd());
        proGuard2.m4068a("clientType", "" + userData.getClientType());
        proGuard2.m4068a("channelId", "" + userData.getClientType());
        proGuard2.m4068a("deviceToken", "" + userData.getDeviceToken());
        proGuard2.m4068a("longitude", "" + userData.getLongitude());
        proGuard2.m4068a("latitude", "" + userData.getLatitude());
        proGuard2.m4068a("appKey", "" + userData.getAppKey());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/loginAction!userLogin.do", proGuard2, proGuard);
    }

    public void m10795a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", "" + userData.getAccessToken());
        File headPic = userData.getHeadPic();
        if (headPic != null) {
            proGuard2.m4067a("headPic", headPic);
        }
        proGuard2.m4068a("nickname", "" + userData.getNickname());
        proGuard2.m4068a("sex", "" + userData.getSex());
        proGuard2.m4068a("longitude", "" + userData.getLongitude());
        proGuard2.m4068a("latitude", "" + userData.getLatitude());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/userAction!accountInfo.do", proGuard2, proGuard);
    }

    public void m10799a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", "" + userData.getAccessToken());
        proGuard2.m4068a("stature", "" + userData.getStature());
        proGuard2.m4068a("weight", "" + userData.getWeight());
        proGuard2.m4068a("birthday", "" + userData.getBirthday());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/userAction!regUserInfo.do", proGuard2, proGuard);
    }

    public void m10798a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", "" + userData.getAccessToken());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/loginAction!logout.do", proGuard2, proGuard);
    }

    public void m10796a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("mobile", "" + userData.getAccount());
        proGuard2.m4068a("checkCode", "" + userData.getCheckCode());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/loginAction!checkVerifyCode.do", proGuard2, proGuard);
    }

    public void m10802a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", "" + userData.getAccessToken());
        proGuard2.m4068a("calorieValue", "" + userData.getCalorieValue());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/userAction!sportsTarget.do", proGuard2, proGuard);
    }

    public void m10801a(UserData userData, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("account", "" + userData.getAccount());
        proGuard2.m4068a("checkCode", "" + userData.getCheckCode());
        proGuard2.m4068a("pwd", "" + userData.getPwd());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11242b() + "/loginAction!resetPwd.do", proGuard2, proGuard);
    }

    public void m10791a(com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", m10810c());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11248h(), proGuard2, proGuard);
    }

    public void m10790a(int i, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", m10810c());
        if (i != -1) {
            proGuard2.m4068a("userId", "" + i);
        }
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11230A(), proGuard2, proGuard);
    }

    public String m10817f() {
        Throwable th;
        Cursor cursor = null;
        if (this.f8692h == null) {
            Cursor query;
            try {
                query = this.f8686b.query(this.f8685a, new String[]{"bind_device"}, "account=?", new String[]{m10808b()}, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            this.f8692h = query.getString(0);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            com.yf.gattlib.p117p.ProGuard.m8295a(th);
                            if (query != null) {
                                query.close();
                            }
                            return this.f8692h;
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th4) {
                th = th4;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return this.f8692h;
    }

    public String m10808b() {
        return this.f8687c;
    }

    public String m10810c() {
        Cursor query;
        Throwable th;
        Cursor cursor = null;
        if (!TextUtils.isEmpty(this.f8688d)) {
            return this.f8688d;
        }
        if (TextUtils.isEmpty(m10808b())) {
            return this.f8688d;
        }
        ContentResolver contentResolver = this.f8686b;
        try {
            query = contentResolver.query(this.f8685a, new String[]{PushConstants.EXTRA_ACCESS_TOKEN}, "account=?", new String[]{m10808b()}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        this.f8688d = query.getString(0);
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return this.f8688d;
    }

    public String m10811c(String str) {
        Throwable th;
        Cursor cursor = null;
        ContentResolver contentResolver = this.f8686b;
        Cursor query;
        try {
            query = contentResolver.query(this.f8685a, new String[]{"userId"}, "access_token = ? ", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        this.f8694j = query.getString(0);
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return this.f8694j;
    }

    public void m10794a(UserData userData) {
        int i;
        Throwable th;
        Cursor cursor = null;
        com.yf.gattlib.p117p.ProGuard.m8292a("UserAccount \u4fdd\u5b58\u7528\u6237\u4fe1\u606f1 userId = " + userData.getUserId() + "\n" + "\u6635\u79f0 = " + userData.getNickname() + "\n" + "accessToken = " + userData.getAccessToken() + "\n" + "\u751f\u65e5 = " + userData.getBirthday() + "\n" + "\u5934\u50cf = " + userData.getHeadPicAddress() + "\n" + "height = " + userData.getStature() + "\n" + "sex = " + userData.getSex() + "\n" + "weight = " + userData.getWeight() + "\n" + "target = " + userData.getCalorieValue() + "\n" + "sex = " + userData.getSex() + "\n" + "bingDevice = " + userData.getBindDevice() + "\n" + "bingToBang = " + userData.getBindToBong() + "\n");
        ContentResolver contentResolver = this.f8686b;
        ContentValues contentValues = new ContentValues();
        if (!TextUtils.isEmpty(userData.getUserId())) {
            contentValues.put("account", userData.getUserId());
        }
        if (!TextUtils.isEmpty(userData.getNickname())) {
            contentValues.put("nickname", userData.getNickname());
        }
        if (userData.getAccessToken() != null) {
            contentValues.put(PushConstants.EXTRA_ACCESS_TOKEN, userData.getAccessToken());
        }
        if (userData.getBirthday() != null) {
            contentValues.put("birthday", userData.getBirthday());
        }
        if (userData.getHeadPicAddress() != null) {
            contentValues.put("head_pic", userData.getHeadPicAddress());
        }
        if (userData.getStature() > 0) {
            contentValues.put("height", Integer.valueOf(userData.getStature()));
        }
        if (userData.getSex() >= 0) {
            contentValues.put("sex", Integer.valueOf(userData.getSex()));
        }
        if (userData.getWeight() > 0) {
            contentValues.put("weight", Integer.valueOf(userData.getWeight()));
        }
        if (userData.getCalorieValue() > 0) {
            contentValues.put("target", Integer.valueOf(userData.getCalorieValue()));
        }
        if (userData.getBindDevice() != null) {
            contentValues.put("bind_device", userData.getBindDevice());
        }
        if (userData.getBindToBong() >= 0) {
            contentValues.put("bind_to_bong", Integer.valueOf(userData.getBindToBong()));
        }
        Cursor query;
        try {
            int i2;
            query = contentResolver.query(this.f8685a, new String[]{PushConstants.EXTRA_ACCESS_TOKEN}, "access_token=?", new String[]{userData.getAccessToken()}, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        i2 = 1;
                        if (query == null) {
                            query.close();
                            i = i2;
                        } else {
                            i = i2;
                        }
                        if (i == 0) {
                            contentResolver.update(this.f8685a, contentValues, "access_token=?", new String[]{userData.getAccessToken()});
                        }
                        contentResolver.delete(this.f8685a, null, null);
                        contentResolver.insert(this.f8685a, contentValues);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            i2 = 0;
            if (query == null) {
                i = i2;
            } else {
                query.close();
                i = i2;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (i == 0) {
            contentResolver.delete(this.f8685a, null, null);
            contentResolver.insert(this.f8685a, contentValues);
            return;
        }
        contentResolver.update(this.f8685a, contentValues, "access_token=?", new String[]{userData.getAccessToken()});
    }

    public void m10793a(UserData2 userData2) {
        int i;
        Throwable th;
        Cursor cursor = null;
        com.yf.gattlib.p117p.ProGuard.m8297b("UserAccount \u4fdd\u5b58\u6b27\u8bfa\u4e2a\u6237\u4fe1\u606f2 userId = " + userData2.getUserId() + "\n" + "\u6635\u79f0 = " + userData2.getNickname() + "\n" + "accessToken = " + userData2.getAccessToken() + "\n" + "\u751f\u65e5 = " + userData2.getBirthday() + "\n" + "\u5934\u50cf = " + userData2.getHeadPicUrl() + "\n" + "height = " + userData2.getStature() + "\n" + "sex = " + userData2.getSex() + "\n" + "weight = " + userData2.getWeight() + "\n" + "target = " + userData2.getSetTargetValue() + "\n" + "sex = " + userData2.getSex() + "\n" + "bingDevice = " + userData2.getBindMAC() + "\n" + "bingToBang = " + userData2.getBindBong() + "\n" + "openId = " + userData2.getOpenId() + "\n");
        ContentResolver contentResolver = this.f8686b;
        ContentValues contentValues = new ContentValues();
        if (!TextUtils.isEmpty(userData2.getUserId())) {
            contentValues.put("account", userData2.getUserId());
        }
        if (!TextUtils.isEmpty(userData2.getNickname())) {
            contentValues.put("nickname", userData2.getNickname());
        }
        if (userData2.getAccessToken() != null) {
            contentValues.put(PushConstants.EXTRA_ACCESS_TOKEN, userData2.getAccessToken());
        }
        if (userData2.getBirthday() != null) {
            contentValues.put("birthday", userData2.getBirthday());
        }
        if (userData2.getHeadPicUrl() != null) {
            contentValues.put("head_pic", userData2.getHeadPicUrl());
        }
        if (userData2.getStature() > 0) {
            contentValues.put("height", Integer.valueOf(userData2.getStature()));
        }
        if (userData2.getSex() >= 0) {
            contentValues.put("sex", Integer.valueOf(userData2.getSex()));
        }
        if (userData2.getWeight() > 0) {
            contentValues.put("weight", Integer.valueOf(userData2.getWeight()));
        }
        if (userData2.getSetTargetValue() > 0) {
            contentValues.put("target", Integer.valueOf(userData2.getSetTargetValue()));
        }
        if (userData2.getBindMAC() != null) {
            contentValues.put("bind_device", userData2.getBindMAC());
        }
        if (userData2.getBindBong() >= 0) {
            contentValues.put("bind_to_bong", Integer.valueOf(userData2.getBindBong()));
        }
        if (!TextUtils.isEmpty(userData2.getOpenId())) {
            contentValues.put("OPEN_ID", userData2.getOpenId());
        }
        if (!TextUtils.isEmpty(userData2.getUserId())) {
            contentValues.put("userId", userData2.getUserId());
        }
        Cursor query;
        try {
            int i2;
            query = contentResolver.query(this.f8685a, new String[]{PushConstants.EXTRA_ACCESS_TOKEN}, "access_token=?", new String[]{userData2.getAccessToken()}, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        i2 = 1;
                        if (query == null) {
                            query.close();
                            i = i2;
                        } else {
                            i = i2;
                        }
                        if (i == 0) {
                            contentResolver.update(this.f8685a, contentValues, "access_token=?", new String[]{userData2.getAccessToken()});
                        }
                        contentResolver.delete(this.f8685a, null, null);
                        contentResolver.insert(this.f8685a, contentValues);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            i2 = 0;
            if (query == null) {
                i = i2;
            } else {
                query.close();
                i = i2;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (i == 0) {
            contentResolver.delete(this.f8685a, null, null);
            contentResolver.insert(this.f8685a, contentValues);
            return;
        }
        contentResolver.update(this.f8685a, contentValues, "access_token=?", new String[]{userData2.getAccessToken()});
    }

    private void m10789h() {
        Cursor query;
        Throwable th;
        ContentResolver contentResolver = this.f8686b;
        try {
            query = contentResolver.query(this.f8685a, new String[]{"account"}, null, null, "id  desc");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        com.yf.gattlib.p117p.ProGuard.m8298b("UserAccount", "account 1=" + this.f8687c);
                        this.f8687c = query.getString(0);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        com.yf.gattlib.p117p.ProGuard.m8295a(th);
                        if (query != null) {
                            query.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
            }
            com.yf.gattlib.p117p.ProGuard.m8298b("UserAccount", "account 2=" + this.f8687c);
            if (query != null) {
                query.close();
            }
        } catch (Throwable th4) {
            th = th4;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public UserData m10815e(String str) {
        Cursor query;
        Throwable e;
        ContentResolver contentResolver = this.f8686b;
        Uri parse = Uri.parse("content://com.yf.smart.weloopx.data.WeLoopProvider/user");
        UserData userData = new UserData();
        try {
            query = contentResolver.query(parse, null, "access_token =? ", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        userData.setAccount(query.getString(query.getColumnIndex("account")));
                        userData.setNickname(query.getString(query.getColumnIndex("nickname")));
                        userData.setAccessToken(query.getString(query.getColumnIndex(PushConstants.EXTRA_ACCESS_TOKEN)));
                        String string = query.getString(query.getColumnIndex("birthday"));
                        if ("null".equals(string)) {
                            string = "1980";
                        }
                        userData.setBirthday(string);
                        userData.setStature(query.getInt(query.getColumnIndex("height")));
                        userData.setSex(query.getInt(query.getColumnIndex("sex")));
                        userData.setAccessToken(query.getString(query.getColumnIndex(PushConstants.EXTRA_ACCESS_TOKEN)));
                        userData.setHeadPicAddress(query.getString(query.getColumnIndex("head_pic")));
                        userData.setWeight(query.getInt(query.getColumnIndex("weight")));
                        userData.setCalorieValue(query.getInt(query.getColumnIndex("target")));
                        userData.setBindDevice(query.getString(query.getColumnIndex("bind_device")));
                        userData.setBindToBong(query.getInt(query.getColumnIndex("bind_to_bong")));
                        userData.setUserId(query.getString(query.getColumnIndex("userId")));
                        if (query != null) {
                            query.close();
                        }
                        return userData;
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        com.yf.gattlib.p117p.ProGuard.m8295a(e);
                        if (query != null) {
                            query.close();
                        }
                        return userData;
                    } catch (Throwable th) {
                        e = th;
                        if (query != null) {
                            query.close();
                        }
                        throw e;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            return userData;
        } catch (Exception e3) {
            e = e3;
            query = null;
            com.yf.gattlib.p117p.ProGuard.m8295a(e);
            if (query != null) {
                query.close();
            }
            return userData;
        } catch (Throwable th2) {
            e = th2;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
    }

    public void m10792a(DownloadWatchfaceListParams downloadWatchfaceListParams, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        if (!TextUtils.isEmpty(downloadWatchfaceListParams.watchClass)) {
            proGuard2.m4068a("watchClass", downloadWatchfaceListParams.watchClass);
        }
        proGuard2.m4068a("releaseType", "" + downloadWatchfaceListParams.releaseType);
        proGuard2.m4068a("orderFlag", "" + downloadWatchfaceListParams.orderFlag);
        proGuard2.m4068a("pageNum", "" + downloadWatchfaceListParams.pageNum);
        proGuard2.m4068a("pageSize", "" + downloadWatchfaceListParams.pageSize);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11255o(), proGuard2, proGuard);
    }

    public void m10807a(List<Watchface> list) {
        if (list != null) {
            ContentResolver contentResolver = this.f8686b;
            Uri parse = Uri.parse("content://com.yf.smart.weloopx.data.WeLoopProvider/watchface");
            for (Watchface watchface : list) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("no", watchface.getWatchNo());
                contentValues.put("name", watchface.getWatchName());
                contentValues.put("authors", watchface.getAuthor());
                contentValues.put("download_count", Integer.valueOf(watchface.getDownloadCount()));
                contentValues.put("bin_url", watchface.getWatchfaceBinURL());
                contentValues.put("img_url", watchface.getWatchfaceImageURL());
                contentValues.put("server_id", Integer.valueOf(watchface.getId()));
                contentValues.put(com.umeng.update.ProGuard.f5475c, watchface.getWatchClass());
                contentValues.put("upload_url", watchface.getWatchfaceUploadFileURL());
                Cursor query = contentResolver.query(parse, new String[]{"no"}, "no=?", new String[]{watchface.getWatchNo()}, null, null);
                int i = (query == null || query.getCount() <= 0) ? 0 : 1;
                if (query != null) {
                    query.close();
                }
                if (i != 0) {
                    contentResolver.update(parse, contentValues, "no=?", new String[]{watchface.getWatchNo()});
                } else {
                    contentResolver.insert(parse, contentValues);
                }
            }
        }
    }

    public Watchface m10816f(String str) {
        Cursor query = this.f8686b.query(Uri.parse("content://com.yf.smart.weloopx.data.WeLoopProvider/watchface"), new String[]{"no", "name", "authors", "download_count", "bin_url", "img_url", "server_id", com.umeng.update.ProGuard.f5475c, "upload_url"}, "no=?", new String[]{str}, null, null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        Watchface watchface = new Watchface();
        watchface.setWatchNo(query.getString(query.getColumnIndex("no")));
        watchface.setWatchName(query.getString(query.getColumnIndex("name")));
        watchface.setAuthor(query.getString(query.getColumnIndex("authors")));
        watchface.setDownloadCount(query.getInt(query.getColumnIndex("download_count")));
        watchface.setWatchfaceBinURL(query.getString(query.getColumnIndex("bin_url")));
        watchface.setId(query.getInt(query.getColumnIndex("server_id")));
        watchface.setWatchClass(query.getString(query.getColumnIndex(com.umeng.update.ProGuard.f5475c)));
        watchface.setWatchfaceUploadFileURL(query.getString(query.getColumnIndex("upload_url")));
        watchface.setWatchfaceImageURL(query.getString(query.getColumnIndex("img_url")));
        query.close();
        return watchface;
    }

    public void m10804a(String str, int i, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("releaseType", "" + i);
        proGuard2.m4068a("watchNo", str);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11256p(), proGuard2, proGuard);
    }

    public void m10805a(String str, com.yf.smart.weloopx.p140b.p141b.ProGuard proGuard) {
        com.p038b.p039a.p048d.ProGuard proGuard2 = new com.p038b.p039a.p048d.ProGuard();
        proGuard2.m4068a("accessToken", str);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11251k(), proGuard2, proGuard);
    }
}
