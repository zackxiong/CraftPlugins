package com.baidu.android.pushservice;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import com.baidu.android.pushservice.p068b.C0193a.C0195a;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

public class PushService extends Service {
    public static final String ACTION_START = "com.baidu.pushservice.action.START";
    public static final String ACTION_STOP = "com.baidu.pushservice.action.STOP";
    public static final int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
    public static final int SERVICE_STOPPED_DELAY = 1000;
    private static final String TAG = "PushService";
    private int bindCnt;
    private boolean initSuc;
    private final C0195a mBinder;
    private Runnable mDestroyRunnable;
    private boolean mExitOnDestroy;
    private Handler mHandler;
    private SDcardRemovedReceiver sdcardRemovedReceiver;

    public PushService() {
        this.mExitOnDestroy = false;
        this.mHandler = new Handler();
        this.initSuc = false;
        this.mDestroyRunnable = new C0380w(this);
        this.bindCnt = 0;
        this.mBinder = new C0381x(this);
    }

    private void stopSelf(boolean z, boolean z2) {
        this.mExitOnDestroy = z;
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "stopSelf : exitOnDestroy=" + z + " --- immediate=" + z2);
        }
        if (z2) {
            this.mDestroyRunnable.run();
            return;
        }
        this.mHandler.removeCallbacks(this.mDestroyRunnable);
        this.mHandler.postDelayed(this.mDestroyRunnable, 1000);
    }

    public IBinder onBind(Intent intent) {
        this.bindCnt++;
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "onBind(" + this.bindCnt + "), intent=" + intent + " cur: " + getApplicationContext().getPackageName() + " initSuc: " + this.initSuc);
        }
        return this.initSuc ? this.mBinder : null;
    }

    public void onCreate() {
        super.onCreate();
        PushSettings.m4207a(getApplicationContext());
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "onCreate from : " + getPackageName());
        }
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushService onCreate from : " + getPackageName() + " at Time :" + System.currentTimeMillis(), getApplicationContext());
        }
        try {
            this.sdcardRemovedReceiver = new SDcardRemovedReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
            intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
            registerReceiver(this.sdcardRemovedReceiver, intentFilter);
        } catch (Exception e) {
            C0385a.m5311b("TAG", "sdcard receiver register failed");
        }
        this.initSuc = PushSDK.getInstance(this).initPushSDK();
        if (!this.initSuc) {
            stopSelf(true, true);
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "onDestroy from : " + getPackageName());
        }
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushService onDestroy from : " + getPackageName() + " at Time :" + System.currentTimeMillis(), getApplicationContext());
        }
        try {
            unregisterReceiver(this.sdcardRemovedReceiver);
        } catch (Exception e) {
            C0385a.m5311b("TAG", "sdcard receiver unregister failed");
        }
        PushSDK.destroy();
        if (this.mExitOnDestroy) {
            Process.killProcess(Process.myPid());
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            intent = new Intent();
            if (C0192a.m4341b()) {
                C0385a.m5308a(TAG, "--- onStart by null intent!");
            }
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "-- onStartCommand -- " + intent.toURI());
        }
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushService onStartCommand from " + getPackageName() + " Intent " + intent.toURI() + " at Time " + System.currentTimeMillis(), getApplicationContext());
        }
        this.mHandler.removeCallbacks(this.mDestroyRunnable);
        try {
            this.initSuc = PushSDK.getInstance(this).handleOnStart(intent);
            if (this.initSuc) {
                return 1;
            }
            stopSelf(true, true);
            return 2;
        } catch (Exception e) {
            C0385a.m5313d(TAG, e.getStackTrace().toString());
            stopSelf(true, true);
            return 2;
        }
    }

    public boolean onUnbind(Intent intent) {
        this.bindCnt--;
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "onUnbind(" + this.bindCnt + "), intent=" + intent);
        }
        return super.onUnbind(intent);
    }
}
