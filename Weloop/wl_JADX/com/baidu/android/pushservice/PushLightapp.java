package com.baidu.android.pushservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.baidu.android.pushservice.p068b.C0193a;
import java.util.ArrayList;
import java.util.List;

public class PushLightapp {
    private static final String ACTION_PUSH_SERVICE = "com.baidu.android.pushservice.action.PUSH_SERVICE";
    public static final String ACTION_REGISTER_SYNC = "com.baidu.android.pushservice.action.BIND_SYNC";
    private static int BIND_TIME_OUT = 0;
    public static final int CONTEXT_FLAG_MODE_MULTI_PROCESS = 4;
    private static final boolean DEBUG = false;
    private static final int ERROR_CODE_AIDL_FAIL = -2;
    private static boolean EVER_BIND = false;
    public static final String KEY_PRIORITY2 = "priority2";
    private static final String PUSHSERVICE = "com.baidu.android.pushservice.PushService";
    private static final int PUSH_VERSION_LEGAL_41 = 23;
    private static final int PUSH_VERSION_LEGAL_42 = 25;
    private static final int PUSH_VERSION_LEGAL_43 = 26;
    private static final int PUSH_VERSION_LEGAL_44 = 27;
    private static int RUNNING_PUSH_VERSION = 0;
    public static final String SETTINGS_KEY_CURRENT_PACKAGE_NAME = "com.baidu.push.cur_pkg";
    public static final String SHARED_NAME_SETTINGS = ".push_sync";
    private static final String TAG = "PushLightapp";
    private static PushLightapp sInstance;
    private static IPushLightappListener sListener;
    private int bind_times;
    private boolean mBound;
    private ServiceConnection mConnection;
    private Context mContext;
    C0193a mIPushService;

    static {
        EVER_BIND = DEBUG;
        BIND_TIME_OUT = 3500;
        RUNNING_PUSH_VERSION = 0;
    }

    public PushLightapp(Context context) {
        this.mBound = DEBUG;
        this.bind_times = 0;
        this.mConnection = new C0298m(this);
        this.mContext = context.getApplicationContext();
        tryBindPush();
    }

    private static boolean checkPushServiceEnable(Context context, String str) {
        if (!isAppInstalled(context, str)) {
            return DEBUG;
        }
        try {
            Intent intent = new Intent(ACTION_PUSH_SERVICE);
            intent.setPackage(str);
            List queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            int i = 0;
            while (i < queryIntentServices.size()) {
                if (!PUSHSERVICE.equals(((ResolveInfo) queryIntentServices.get(i)).serviceInfo.name)) {
                    i++;
                } else if (!((ResolveInfo) queryIntentServices.get(i)).serviceInfo.exported) {
                    return DEBUG;
                } else {
                    int componentEnabledSetting = context.getPackageManager().getComponentEnabledSetting(new ComponentName(str, PUSHSERVICE));
                    if (componentEnabledSetting == 0 || componentEnabledSetting == 1) {
                        return true;
                    }
                    return DEBUG;
                }
            }
        } catch (Exception e) {
        }
        return DEBUG;
    }

    private String getCurPushPackageName(Context context) {
        return pickPushPackageName(context, System.getString(context.getContentResolver(), SETTINGS_KEY_CURRENT_PACKAGE_NAME));
    }

    public static List<ResolveInfo> getFriendPackages(Context context) {
        List<ResolveInfo> arrayList = new ArrayList();
        try {
            arrayList = context.getPackageManager().queryBroadcastReceivers(new Intent(ACTION_REGISTER_SYNC), 0);
        } catch (Exception e) {
        }
        return arrayList;
    }

    private static PushLightapp getInstance(Context context) {
        if (context == null) {
            return null;
        }
        if (sInstance == null) {
            sInstance = new PushLightapp(context);
        } else if (sInstance.mIPushService == null) {
            sInstance.tryBindPush();
        }
        return sInstance;
    }

    public static synchronized void getInstanceAsync(Context context, IPushLightappListener iPushLightappListener) {
        synchronized (PushLightapp.class) {
            if (sInstance == null || sInstance.mIPushService == null) {
                sListener = iPushLightappListener;
                getInstance(context);
            } else if (iPushLightappListener != null) {
                iPushLightappListener.initialComplete(sInstance);
            }
        }
    }

    private int getRunningServiceVersion() {
        if (this.mIPushService != null) {
            try {
                return this.mIPushService.m4401c();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    private static boolean isAppInstalled(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return DEBUG;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 8192) != null ? true : DEBUG;
        } catch (Exception e) {
            return DEBUG;
        }
    }

    private String pickPushPackageName(Context context, String str) {
        Context context2;
        String packageName = context.getPackageName();
        List<ResolveInfo> friendPackages = getFriendPackages(context.getApplicationContext());
        if (friendPackages == null || friendPackages.size() <= 1) {
            return packageName;
        }
        long j = context.getSharedPreferences(context.getPackageName() + SHARED_NAME_SETTINGS, 5).getLong(KEY_PRIORITY2, 0);
        long j2 = 23 << CONTEXT_FLAG_MODE_MULTI_PROCESS;
        if (j >= j2) {
            j2 = j;
        }
        j = j2;
        String str2 = packageName;
        for (ResolveInfo resolveInfo : friendPackages) {
            SharedPreferences sharedPreferences;
            String str3 = resolveInfo.activityInfo.packageName;
            Context context3 = null;
            SharedPreferences sharedPreferences2 = null;
            try {
                context3 = context.createPackageContext(str3, 2);
                sharedPreferences2 = context3.getSharedPreferences(str3 + SHARED_NAME_SETTINGS, 5);
                context2 = context3;
                sharedPreferences = sharedPreferences2;
            } catch (Exception e) {
                context2 = context3;
                sharedPreferences = sharedPreferences2;
            }
            if (sharedPreferences != null) {
                String str4;
                long j3 = sharedPreferences.getLong(KEY_PRIORITY2, 0);
                if ((j3 > j || (j3 == j && str3.equals(str))) && checkPushServiceEnable(r6, str3)) {
                    str4 = str3;
                    j2 = j3;
                } else {
                    long j4 = j;
                    str4 = str2;
                    j2 = j4;
                }
                str2 = str4;
                j = j2;
            }
        }
        return str2;
    }

    private void tryBindPush() {
        if (this.mContext == null) {
            unbindService();
            return;
        }
        if (EVER_BIND || this.mIPushService != null || RUNNING_PUSH_VERSION > 0) {
            unbindService();
        }
        EVER_BIND = true;
        Intent intent = new Intent();
        intent.setClassName(getCurPushPackageName(this.mContext), PUSHSERVICE);
        try {
            this.mContext.bindService(intent, this.mConnection, 1);
        } catch (Exception e) {
        }
        this.bind_times++;
        new C0297l(this).start();
    }

    private void unbindService() {
        try {
            this.mIPushService = null;
            EVER_BIND = DEBUG;
            RUNNING_PUSH_VERSION = 0;
            this.mBound = DEBUG;
            if (this.mContext != null) {
                this.mContext.unbindService(this.mConnection);
            }
        } catch (Exception e) {
        }
    }

    public boolean clearNewMsgNum(String str) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4405e(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return DEBUG;
    }

    public int deleteAllMsg(String str, int i) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4403c(str, i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public int deleteMsg(String str) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4402c(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public void destroy() {
        if (this.mBound) {
            unbindService();
            sInstance = null;
        }
    }

    public String getBlackList(String str) {
        String str2 = null;
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_43) {
            try {
                str2 = this.mIPushService.m4406f(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }

    public String getMsgs(String str, int i, boolean z, int i2, int i3) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4388a(str, i, z, i2, i3);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public int getNewMsgNum(String str) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4404d(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public String getSubcribeApps() {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4386a();
            } catch (Exception e) {
            }
        }
        return null;
    }

    public String getSubscribedAppids() {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4398b();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public String getSubscribedAppinfos(String str) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4387a(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public int getUnreadMsgNumber(String str, int i) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4385a(str, i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public boolean isReady() {
        return this.mIPushService != null ? true : DEBUG;
    }

    public boolean register(String str, String str2) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4392a(str, str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return DEBUG;
    }

    public boolean register(String str, String str2, String str3, String str4) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4394a(str, str2, str3, str4);
            } catch (Exception e) {
            }
        }
        return DEBUG;
    }

    public boolean removeBlacklist(String str, String str2) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4400b(str, str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return DEBUG;
    }

    public int setAllMsgRead(String str, int i) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4397b(str, i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public int setMsgRead(String str) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4396b(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ERROR_CODE_AIDL_FAIL;
    }

    public boolean setNotifySwitch(String str, boolean z) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4395a(str, z);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return DEBUG;
    }

    public void subscribeLight(String str, String str2, boolean z, IPushLightappListener iPushLightappListener) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                this.mIPushService.m4390a(str, str2, z, new C0327n(this, iPushLightappListener));
            } catch (Exception e) {
                e.printStackTrace();
                if (iPushLightappListener != null) {
                    iPushLightappListener.onSubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_EXCEPTION);
                }
            }
        } else if (iPushLightappListener != null) {
            iPushLightappListener.onSubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_NO_PUSHSERVICE);
        }
    }

    public void subscribeLight(String str, String str2, boolean z, String str3, IPushLightappListener iPushLightappListener) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_42) {
            try {
                this.mIPushService.m4391a(str, str2, z, str3, new C0328o(this, iPushLightappListener));
            } catch (Exception e) {
                e.printStackTrace();
                if (iPushLightappListener != null) {
                    iPushLightappListener.onSubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_EXCEPTION);
                }
            }
        } else if (iPushLightappListener != null) {
            iPushLightappListener.onSubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_NO_PUSHSERVICE);
        }
    }

    public void subscribeLightByApiKey(String str, String str2, boolean z, String str3, IPushLightappListener iPushLightappListener) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_44) {
            try {
                this.mIPushService.m4391a(str, str2, z, str3, new C0329p(this, iPushLightappListener, str));
            } catch (Exception e) {
                e.printStackTrace();
                if (iPushLightappListener != null) {
                    iPushLightappListener.onSubscribeByApiKey(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_EXCEPTION);
                }
            }
        } else if (iPushLightappListener != null) {
            iPushLightappListener.onSubscribeByApiKey(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_NO_PUSHSERVICE);
        }
    }

    public void unbindLight(String str, String str2, IPushLightappListener iPushLightappListener) {
        if (this.mIPushService == null || RUNNING_PUSH_VERSION < PUSH_VERSION_LEGAL_41) {
            iPushLightappListener.onUnbindLightResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_NO_PUSHSERVICE);
            return;
        }
        try {
            this.mIPushService.m4399b(str, str2, new C0331r(this, iPushLightappListener));
        } catch (Exception e) {
            if (iPushLightappListener != null) {
                iPushLightappListener.onUnbindLightResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_EXCEPTION);
            }
        }
    }

    public void unsubscribeLight(String str, String str2, IPushLightappListener iPushLightappListener) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                this.mIPushService.m4389a(str, str2, new C0330q(this, iPushLightappListener));
            } catch (Exception e) {
                if (iPushLightappListener != null) {
                    iPushLightappListener.onUnsubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_EXCEPTION);
                }
            }
        } else if (iPushLightappListener != null) {
            iPushLightappListener.onUnsubscribeResult(PushConstants.ERROR_AIDL_FAIL, PushConstants.ERROR_AIDL_FAIL_NO_PUSHSERVICE);
        }
    }

    public boolean updateBlacklist(String str, String str2, int i) {
        if (this.mIPushService != null && RUNNING_PUSH_VERSION >= PUSH_VERSION_LEGAL_41) {
            try {
                return this.mIPushService.m4393a(str, str2, i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return DEBUG;
    }
}
