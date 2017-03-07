package com.baidu.lbsapi.auth;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.umeng.update.util.ProGuard;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

public class LBSAuthManager {
    private static final String API_KEY = "com.baidu.lbsapi.API_KEY";
    private static final int AUTH_TIMEOUT = 3600000;
    protected static final String AUTH_URL = "https://sapi.map.baidu.com/sdkcs/verify";
    private static final String CACHE_FILE_NAME = "authStatus";
    private static final String CACHE_KEY = "status";
    public static final int CODE_AUTHENTICATE_SUCC = 0;
    public static final int CODE_AUTHENTICATING = 602;
    protected static final int CODE_INNER_ERROR = -1;
    public static final int CODE_UNAUTHENTICATE = 601;
    public static final String VERSION = "1.0.4";
    private static Hashtable<String, LBSAuthManagerListener> listenerTable;
    private static int mAuthCounter;
    private static Context mContext;
    private static C0444m mThreadLooper;
    private boolean debug;
    private final Handler mHandler;
    private C0432c mHttpAsyncTask;
    private C0437f mHttpSyncTask;

    static {
        mThreadLooper = null;
        mAuthCounter = CODE_AUTHENTICATE_SUCC;
        listenerTable = new Hashtable();
    }

    public LBSAuthManager(Context context) {
        this.debug = true;
        this.mHttpAsyncTask = null;
        this.mHttpSyncTask = null;
        this.mHandler = new C0440i(this, Looper.getMainLooper());
        mContext = context;
        if (!(mThreadLooper == null || mThreadLooper.isAlive())) {
            mThreadLooper = null;
        }
        createAuthThread();
    }

    private int authenticate(LBSAuthManagerListener lBSAuthManagerListener) {
        return authenticate(false, "", null, lBSAuthManagerListener);
    }

    private int authenticate(boolean z, Hashtable<String, String> hashtable, LBSAuthManagerListener lBSAuthManagerListener) {
        return authenticate(z, "", hashtable, lBSAuthManagerListener);
    }

    private synchronized void callbackToMainThread(String str, String str2) {
        if (str == null) {
            str = getAuthString();
        }
        Message obtainMessage = this.mHandler.obtainMessage();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(CACHE_KEY)) {
                jSONObject.put(CACHE_KEY, CODE_INNER_ERROR);
            }
            if (!jSONObject.has("current")) {
                jSONObject.put("current", System.currentTimeMillis());
            }
            saveAuthString(jSONObject.toString());
            if (jSONObject.has("current")) {
                jSONObject.remove("current");
            }
            obtainMessage.what = jSONObject.getInt(CACHE_KEY);
            obtainMessage.obj = jSONObject.toString();
            Bundle bundle = new Bundle();
            bundle.putString("listenerKey", str2);
            obtainMessage.setData(bundle);
            this.mHandler.sendMessage(obtainMessage);
        } catch (JSONException e) {
            e.printStackTrace();
            obtainMessage.what = CODE_INNER_ERROR;
            obtainMessage.obj = new JSONObject();
            bundle = new Bundle();
            bundle.putString("listenerKey", str2);
            obtainMessage.setData(bundle);
            this.mHandler.sendMessage(obtainMessage);
        }
        mThreadLooper.m5489c();
        mAuthCounter += CODE_INNER_ERROR;
        if (C0427a.f3727a) {
            C0427a.m5446a("httpRequest called mAuthCounter-- = " + mAuthCounter);
        }
        if (mAuthCounter == 0) {
            mThreadLooper.m5487a();
            if (mThreadLooper != null) {
                mThreadLooper = null;
            }
        }
    }

    private boolean checkAkChanged(String str) {
        String publicKey = getPublicKey(mContext, str);
        String str2 = "";
        try {
            JSONObject jSONObject = new JSONObject(getAuthString());
            if (!jSONObject.has("ak")) {
                return true;
            }
            Object string = jSONObject.getString("ak");
            return (publicKey == null || string == null || publicKey.equals(string)) ? false : true;
        } catch (JSONException e) {
            e.printStackTrace();
            String str3 = str2;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void createAuthThread() {
        /*
        r4 = this;
        r1 = com.baidu.lbsapi.auth.LBSAuthManager.class;
        monitor-enter(r1);
        r0 = mThreadLooper;	 Catch:{ all -> 0x002f }
        if (r0 != 0) goto L_0x0032;
    L_0x0007:
        r0 = new com.baidu.lbsapi.auth.m;	 Catch:{ all -> 0x002f }
        r2 = "auth";
        r0.<init>(r2);	 Catch:{ all -> 0x002f }
        mThreadLooper = r0;	 Catch:{ all -> 0x002f }
        r0 = mThreadLooper;	 Catch:{ all -> 0x002f }
        r0.start();	 Catch:{ all -> 0x002f }
    L_0x0015:
        r0 = mThreadLooper;	 Catch:{ all -> 0x002f }
        r0 = r0.f3761a;	 Catch:{ all -> 0x002f }
        if (r0 != 0) goto L_0x0032;
    L_0x001b:
        r0 = com.baidu.lbsapi.auth.C0427a.f3727a;	 Catch:{ InterruptedException -> 0x002a }
        if (r0 == 0) goto L_0x0024;
    L_0x001f:
        r0 = "wait for create auth thread.";
        com.baidu.lbsapi.auth.C0427a.m5446a(r0);	 Catch:{ InterruptedException -> 0x002a }
    L_0x0024:
        r2 = 3;
        java.lang.Thread.sleep(r2);	 Catch:{ InterruptedException -> 0x002a }
        goto L_0x0015;
    L_0x002a:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x002f }
        goto L_0x0015;
    L_0x002f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x002f }
        throw r0;
    L_0x0032:
        monitor-exit(r1);	 Catch:{ all -> 0x002f }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.lbsapi.auth.LBSAuthManager.createAuthThread():void");
    }

    private String getAuthString() {
        return mContext.getSharedPreferences("authStatus_" + getCurProcessName(mContext), CODE_AUTHENTICATE_SUCC).getString(CACHE_KEY, "{\"status\":601}");
    }

    private String getCurProcessName(Context context) {
        int myPid = Process.myPid();
        for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    private String getPublicKey(Context context, String str) {
        String str2 = "";
        LBSAuthManagerListener lBSAuthManagerListener;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), ProGuard.f5670c);
            if (applicationInfo.metaData == null) {
                lBSAuthManagerListener = (LBSAuthManagerListener) listenerTable.get(str);
                if (lBSAuthManagerListener != null) {
                    lBSAuthManagerListener.onAuthResult(CODE_INNER_ERROR, ErrorMessage.m5444a("AndroidManifest.xml\u7684application\u4e2d\u6ca1\u6709meta-data\u6807\u7b7e"));
                }
                return str2;
            }
            str2 = applicationInfo.metaData.getString(API_KEY);
            if (str2 == null || str2.equals("")) {
                lBSAuthManagerListener = (LBSAuthManagerListener) listenerTable.get(str);
                if (lBSAuthManagerListener != null) {
                    lBSAuthManagerListener.onAuthResult(CODE_INNER_ERROR, ErrorMessage.m5444a("\u65e0\u6cd5\u5728AndroidManifest.xml\u4e2d\u83b7\u53d6com.baidu.android.lbs.API_KEY\u7684\u503c"));
                }
            }
            return str2;
        } catch (NameNotFoundException e) {
            lBSAuthManagerListener = (LBSAuthManagerListener) listenerTable.get(str);
            if (lBSAuthManagerListener != null) {
                lBSAuthManagerListener.onAuthResult(CODE_INNER_ERROR, ErrorMessage.m5444a("\u65e0\u6cd5\u5728AndroidManifest.xml\u4e2d\u83b7\u53d6com.baidu.android.lbs.API_KEY\u7684\u503c"));
            }
        }
    }

    private int parseAuthMessage(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(CACHE_KEY)) {
                jSONObject.put(CACHE_KEY, CODE_INNER_ERROR);
            }
            int i = jSONObject.getInt(CACHE_KEY);
            if (jSONObject.has("current") && i == 0) {
                long j = jSONObject.getLong("current");
                long currentTimeMillis = System.currentTimeMillis();
                if (((double) (currentTimeMillis - j)) / 3600000.0d >= 24.0d) {
                    i = CODE_UNAUTHENTICATE;
                } else {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    if (!simpleDateFormat.format(Long.valueOf(currentTimeMillis)).equals(simpleDateFormat.format(Long.valueOf(j)))) {
                        i = CODE_UNAUTHENTICATE;
                    }
                }
            }
            if (jSONObject.has("current") && i == CODE_AUTHENTICATING) {
                if (((double) ((System.currentTimeMillis() - jSONObject.getLong("current")) / 1000)) > 180.0d) {
                    return CODE_UNAUTHENTICATE;
                }
            }
            return i;
        } catch (JSONException e) {
            JSONException jSONException = e;
            int i2 = CODE_INNER_ERROR;
            jSONException.printStackTrace();
            return i2;
        }
    }

    private void saveAuthString(String str) {
        mContext.getSharedPreferences("authStatus_" + getCurProcessName(mContext), CODE_AUTHENTICATE_SUCC).edit().putString(CACHE_KEY, str).commit();
    }

    private void sendAuthRequest(boolean z, String str, Hashtable<String, String> hashtable, String str2) {
        String publicKey = getPublicKey(mContext, str2);
        if (publicKey != null && !publicKey.equals("")) {
            HashMap hashMap = new HashMap();
            hashMap.put("url", AUTH_URL);
            hashMap.put("output", "json");
            hashMap.put("ak", publicKey);
            hashMap.put("mcode", C0429b.m5449a(mContext));
            hashMap.put("from", "lbs_yunsdk");
            if (hashtable != null && hashtable.size() > 0) {
                for (Entry entry : hashtable.entrySet()) {
                    String str3 = (String) entry.getKey();
                    publicKey = (String) entry.getValue();
                    if (!(TextUtils.isEmpty(str3) || TextUtils.isEmpty(publicKey))) {
                        hashMap.put(str3, publicKey);
                    }
                }
            }
            CharSequence charSequence = "";
            try {
                charSequence = CommonParam.m4181a(mContext);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("cuid", "");
            } else {
                hashMap.put("cuid", charSequence);
            }
            hashMap.put("pcn", mContext.getPackageName());
            hashMap.put("version", VERSION);
            charSequence = "";
            try {
                charSequence = C0429b.m5455c(mContext);
            } catch (Exception e2) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("macaddr", "");
            } else {
                hashMap.put("macaddr", charSequence);
            }
            charSequence = "";
            try {
                charSequence = C0429b.m5448a();
            } catch (Exception e3) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("language", "");
            } else {
                hashMap.put("language", charSequence);
            }
            if (z) {
                hashMap.put("force", z ? "1" : "0");
            }
            hashMap.put("from_service", str);
            this.mHttpAsyncTask = new C0432c(mContext);
            this.mHttpAsyncTask.m5470a(hashMap, new C0442k(this, str2));
        }
    }

    private void sendAuthRequests(boolean z, String str, Hashtable<String, String> hashtable, String[] strArr, String str2) {
        String publicKey = getPublicKey(mContext, str2);
        if (publicKey != null && !publicKey.equals("")) {
            HashMap hashMap = new HashMap();
            hashMap.put("url", AUTH_URL);
            hashMap.put("output", "json");
            hashMap.put("ak", publicKey);
            hashMap.put("from", "lbs_yunsdk");
            if (hashtable != null && hashtable.size() > 0) {
                for (Entry entry : hashtable.entrySet()) {
                    String str3 = (String) entry.getKey();
                    publicKey = (String) entry.getValue();
                    if (!(TextUtils.isEmpty(str3) || TextUtils.isEmpty(publicKey))) {
                        hashMap.put(str3, publicKey);
                    }
                }
            }
            CharSequence charSequence = "";
            try {
                charSequence = CommonParam.m4181a(mContext);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("cuid", "");
            } else {
                hashMap.put("cuid", charSequence);
            }
            hashMap.put("pcn", mContext.getPackageName());
            hashMap.put("version", VERSION);
            charSequence = "";
            try {
                charSequence = C0429b.m5455c(mContext);
            } catch (Exception e2) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("macaddr", "");
            } else {
                hashMap.put("macaddr", charSequence);
            }
            charSequence = "";
            try {
                charSequence = C0429b.m5448a();
            } catch (Exception e3) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("language", "");
            } else {
                hashMap.put("language", charSequence);
            }
            if (z) {
                hashMap.put("force", z ? "1" : "0");
            }
            hashMap.put("from_service", str);
            this.mHttpSyncTask = new C0437f(mContext);
            this.mHttpSyncTask.m5482a(hashMap, strArr, new C0443l(this, str2));
        }
    }

    public int authenticate(boolean z, String str, Hashtable<String, String> hashtable, LBSAuthManagerListener lBSAuthManagerListener) {
        int i;
        synchronized (LBSAuthManager.class) {
            String str2 = System.currentTimeMillis() + "";
            if (lBSAuthManagerListener != null) {
                listenerTable.put(str2, lBSAuthManagerListener);
            }
            String publicKey = getPublicKey(mContext, str2);
            if (publicKey == null || publicKey.equals("")) {
                i = CODE_INNER_ERROR;
            } else {
                mAuthCounter++;
                if (C0427a.f3727a) {
                    C0427a.m5446a(" mAuthCounter  ++ = " + mAuthCounter);
                }
                publicKey = getAuthString();
                if (C0427a.f3727a) {
                    C0427a.m5446a("getAuthMessage from cache:" + publicKey);
                }
                i = parseAuthMessage(publicKey);
                if (i == CODE_UNAUTHENTICATE) {
                    try {
                        saveAuthString(new JSONObject().put(CACHE_KEY, CODE_AUTHENTICATING).toString());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                createAuthThread();
                if (C0427a.f3727a) {
                    C0427a.m5446a("mThreadLooper.mHandler = " + mThreadLooper.f3761a);
                }
                mThreadLooper.f3761a.post(new C0441j(this, i, z, str2, str, hashtable));
            }
        }
        return i;
    }

    public String getPublicKey(Context context) {
        String str = "";
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), ProGuard.f5670c).metaData.getString(API_KEY);
    }
}
