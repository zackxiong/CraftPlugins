package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.LocalServerSocket;
import android.os.Handler;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.frontia.module.deeplink.C0423g;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0386a;
import com.baidu.location.LocationClientOption;
import java.io.IOException;

@SuppressLint({"WorldReadableFiles", "InlinedApi"})
public class PushSDK implements NoProGuard {
    private static int ALARM_NETWORKLESS_TIMEOUT = 0;
    private static int ALARM_TIMEOUT = 0;
    public static final String LOCAL_SOCKET_ADDRESS = "com.baidu.pushservice.singelinstance";
    private static String TAG;
    private static Context mContext;
    private static Handler mHandler;
    private static Object mIsAlive_lock;
    private static LocalServerSocket mLocalSocket;
    private static Object mPushConnLock;
    public static C0293h mPushConnection;
    private static PushSDK mPushSDK;
    private int alarmTimeout;
    private Runnable mConnectRunnable;
    private Boolean mIsAlive;
    private Boolean mIsInited;
    private Runnable mRegisterRunnable;
    private ac mRegistrationService;
    private Runnable mStartRunnable;

    static {
        TAG = "PushSDK";
        mPushSDK = null;
        ALARM_TIMEOUT = 180000;
        ALARM_NETWORKLESS_TIMEOUT = 1800000;
        mPushConnLock = new Object();
        mIsAlive_lock = new Object();
    }

    private PushSDK(Context context) {
        this.mIsAlive = Boolean.valueOf(false);
        this.mIsInited = Boolean.valueOf(false);
        this.mStartRunnable = new C0352t(this);
        this.mRegisterRunnable = new C0353u(this);
        this.mConnectRunnable = new C0379v(this);
        mHandler = new Handler(context.getMainLooper());
        mContext = context.getApplicationContext();
        PushSettings.m4207a(context.getApplicationContext());
        this.alarmTimeout = ALARM_TIMEOUT;
        C0374f.m5221h(mContext.getApplicationContext());
    }

    private void cancelAlarmRepeat() {
        Intent intent = new Intent();
        intent.putExtra("AlarmAlert", "OK");
        intent.setFlags(32);
        intent.setClass(mContext, PushService.class);
        try {
            ((AlarmManager) mContext.getSystemService("alarm")).cancel(PendingIntent.getService(mContext, 0, intent, 268435456));
        } catch (Exception e) {
        }
    }

    public static void destroy() {
        if (mPushSDK != null) {
            mPushSDK.doDestroy();
        }
    }

    private void doDestroy() {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "destroy");
        }
        if (mContext != null) {
            C0423g.m5431a(mContext).m5439d();
        }
        synchronized (mIsAlive_lock) {
            try {
                if (mLocalSocket != null) {
                    mLocalSocket.close();
                    mLocalSocket = null;
                }
            } catch (IOException e) {
                C0385a.m5313d(TAG, "error " + e.getMessage());
            }
            if (mPushConnection != null) {
                synchronized (mPushConnLock) {
                    mPushConnection.m5009c();
                    mPushConnection = null;
                }
            }
            try {
                PushDatabase.close();
            } catch (Exception e2) {
                C0385a.m5313d(TAG, "error " + e2.getMessage());
            }
            this.mIsAlive = Boolean.valueOf(false);
            mPushSDK = null;
        }
    }

    public static PushSDK getInstance() {
        return mPushSDK;
    }

    public static synchronized PushSDK getInstance(Context context) {
        PushSDK pushSDK;
        synchronized (PushSDK.class) {
            if (mPushSDK == null || mContext == null) {
                mPushSDK = new PushSDK(context);
            }
            pushSDK = mPushSDK;
        }
        return pushSDK;
    }

    private boolean heartbeat() {
        boolean a = C0386a.m5315a(mContext);
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "heartbeat networkConnected :" + a);
        }
        if (a) {
            if (mPushConnection == null) {
                return false;
            }
            if (mPushConnection.m5007a()) {
                mPushConnection.m5010d();
                Intent intent = new Intent(PushConstants.ACTION_METHOD);
                intent.putExtra(PushConstants.EXTRA_METHOD, "com.baidu.android.pushservice.action.SEND_APPSTAT");
                intent.setClass(mContext, PushService.class);
                this.mRegistrationService.m4376a(intent);
            } else if (ad.m4377a().m4384e()) {
                scheduleConnect();
            } else {
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "Channel token is not available, start NETWORK REGISTER SERVICE .");
                }
                scheduleRegister();
            }
            if (C0192a.f2943d <= 0) {
                return true;
            }
            C0374f.m5189a("heartbeat PushConnection isConnected " + PushManager.isConnected(mContext) + " at Time " + System.currentTimeMillis(), mContext.getApplicationContext());
            return true;
        } else if (this.alarmTimeout == ALARM_NETWORKLESS_TIMEOUT) {
            return true;
        } else {
            setAlarmTimeout(ALARM_NETWORKLESS_TIMEOUT / LocationClientOption.MIN_SCAN_SPAN);
            return true;
        }
    }

    public static boolean isAlive() {
        return mPushSDK != null ? mPushSDK.mIsAlive.booleanValue() : false;
    }

    private void newPushConnection() {
        synchronized (mPushConnLock) {
            mPushConnection = C0293h.m4973a(mContext);
        }
    }

    private void scheduleConnect() {
        mHandler.removeCallbacks(this.mConnectRunnable);
        mHandler.postDelayed(this.mConnectRunnable, 1000);
    }

    private void scheduleRegister() {
        mHandler.removeCallbacks(this.mRegisterRunnable);
        mHandler.postDelayed(this.mRegisterRunnable, 500);
    }

    private void setAlarmRepeat() {
        cancelAlarmRepeat();
        Intent intent = new Intent();
        intent.putExtra("AlarmAlert", "OK");
        intent.setFlags(32);
        intent.setClass(mContext, PushService.class);
        PendingIntent service = PendingIntent.getService(mContext.getApplicationContext(), 0, intent, 268435456);
        long currentTimeMillis = System.currentTimeMillis() + ((long) this.alarmTimeout);
        int i = ((int) (currentTimeMillis / 1000)) % 60;
        if (((int) ((currentTimeMillis / 60000) % 5)) == 0 && i < 15) {
            currentTimeMillis += ((long) (Math.random() * ((double) (this.alarmTimeout - 20000)))) + 15000;
        }
        ((AlarmManager) mContext.getSystemService("alarm")).setRepeating(0, currentTimeMillis, (long) this.alarmTimeout, service);
    }

    private boolean shouldStopSelf(Context context) {
        String B = C0374f.m5170B(context);
        String packageName = context.getPackageName();
        if (packageName.equals(B)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Try use current push service, package name is: " + packageName);
            }
            return false;
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "Current push service : " + packageName + " should stop!!!" + " highest priority service is: " + B);
        }
        return true;
    }

    private boolean tryConnect() {
        boolean a = C0386a.m5315a(mContext);
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "tryConnect networkConnected :" + a);
        }
        if (!a || mPushConnection == null) {
            return false;
        }
        if (!mPushConnection.m5007a()) {
            if (ad.m4377a().m4384e()) {
                scheduleConnect();
            } else {
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "Channel token is not available, start NETWORK REGISTER SERVICE .");
                }
                scheduleRegister();
            }
        }
        return true;
    }

    private void tryUpdateGlobalPriority() {
        C0374f.m5185a(mContext, "com.baidu.push.cur_prio", C0192a.m4336a());
        C0374f.m5206c(mContext, PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME, mContext.getPackageName());
    }

    public Context getContext() {
        return mContext;
    }

    public ac getRegistrationService() {
        return this.mRegistrationService;
    }

    public boolean handleOnStart(Intent intent) {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "handleOnStart intent action = " + (intent != null ? intent.getAction() + "  " + intent.toURI() : ""));
        }
        if (intent == null) {
            intent = new Intent();
            if (C0192a.m4341b()) {
                C0385a.m5308a(TAG, "--- handleOnStart by null intent!");
            }
        }
        if (!this.mIsInited.booleanValue() && !initPushSDK()) {
            return false;
        }
        synchronized (mIsAlive_lock) {
            if (this.mIsAlive.booleanValue()) {
                mHandler.removeCallbacks(this.mStartRunnable);
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "-- handleOnStart -- " + intent);
                }
                if (mLocalSocket == null) {
                    return false;
                } else if (intent.getStringExtra("AlarmAlert") != null) {
                    boolean heartbeat = heartbeat();
                    return heartbeat;
                } else if (PushService.ACTION_STOP.equals(intent.getAction())) {
                    return false;
                } else {
                    if (intent != null) {
                        if ("pushservice_restart_v2".equals(intent.getStringExtra(PushConstants.EXTRA_METHOD))) {
                            if (C0374f.m5207c(mContext)) {
                                return false;
                            } else if (intent.getLongExtra(PushLightapp.KEY_PRIORITY2, 0) <= C0374f.m5236o(mContext)) {
                                if (!(mPushConnection == null || mPushConnection.m5007a())) {
                                    tryConnect();
                                }
                                return true;
                            } else {
                                C0374f.m5182a(mContext, 3000);
                                return false;
                            }
                        } else if (this.mRegistrationService.m4376a(intent)) {
                            if (C0192a.m4341b()) {
                                C0385a.m5308a(TAG, "-- handleOnStart -- intent handled  by mRegistrationService ");
                            }
                            return true;
                        }
                    }
                    tryConnect();
                    return true;
                }
            }
            return false;
        }
    }

    public boolean initPushSDK() {
        String r;
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "Create PushSDK from : " + mContext.getPackageName());
        }
        this.mIsInited = Boolean.valueOf(true);
        cancelAlarmRepeat();
        if (C0374f.m5207c(mContext.getApplicationContext()) || shouldStopSelf(mContext)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "onCreate shouldStopSelf");
            }
            return false;
        }
        synchronized (mIsAlive_lock) {
            if (mLocalSocket == null) {
                try {
                    mLocalSocket = new LocalServerSocket(C0374f.m5249v(mContext));
                } catch (Exception e) {
                    r = C0374f.m5241r(mContext, PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME);
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "--- Socket Adress (" + C0374f.m5249v(mContext) + ") in use --- @ " + mContext.getPackageName() + " --- cur: " + r);
                    }
                    long j = C0374f.m5225j(mContext, r);
                    if (mContext != null && j < C0374f.m5236o(mContext)) {
                        if (r == null || r.equals(mContext.getPackageName())) {
                            for (String r2 : C0374f.m5253x(mContext)) {
                                C0374f.m5222h(mContext, r2);
                            }
                        } else {
                            Intent d = C0374f.m5210d(mContext);
                            d.setAction(PushConstants.EXTRA_METHOD);
                            d.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5236o(mContext));
                            d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
                            d.setPackage(r2);
                            d.putExtra(PushConstants.PACKAGE_NAME, mContext.getPackageName());
                            mContext.sendBroadcast(d);
                        }
                    }
                }
            }
            if (mLocalSocket == null) {
                return false;
            } else if (PushSocket.f3324a) {
                tryUpdateGlobalPriority();
                Thread.setDefaultUncaughtExceptionHandler(new C0199b(mContext.getApplicationContext()));
                newPushConnection();
                this.mRegistrationService = new ac(mContext);
                PushSettings.m4229f(mContext);
                C0423g.m5431a(mContext).m5438c();
                mHandler.postDelayed(this.mStartRunnable, 500);
                this.mIsAlive = Boolean.valueOf(true);
                tryConnect();
                return true;
            } else {
                return false;
            }
        }
    }

    void sendRequestTokenIntent() {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, ">> sendRequestTokenIntent");
        }
        C0192a.m4337a(mContext, new Intent("com.baidu.pushservice.action.TOKEN"));
    }

    public void setAlarmTimeout(int i) {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "heartbeat set : " + i + " secs");
        }
        if (i > 0) {
            this.alarmTimeout = i * LocationClientOption.MIN_SCAN_SPAN;
        }
        setAlarmRepeat();
    }
}
