package com.baidu.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import dalvik.system.DexClassLoader;
import java.io.File;

/* renamed from: com.baidu.location.f */
public class C0513f extends Service implements C0452e {
    private static final String i6 = "app.jar";
    public static Context mC;
    public static String replaceFileName;
    LLSInterface i5;
    LLSInterface i7;
    LLSInterface i8;

    static {
        replaceFileName = "repll.jar";
        mC = null;
    }

    public C0513f() {
        this.i5 = null;
        this.i7 = null;
        this.i8 = null;
    }

    public static float getFrameVersion() {
        return 5.21f;
    }

    public static String getJarFileName() {
        return i6;
    }

    public static Context getServiceContext() {
        return mC;
    }

    public IBinder onBind(Intent intent) {
        return this.i8.onBind(intent);
    }

    public void onCreate() {
        mC = getApplicationContext();
        System.currentTimeMillis();
        this.i7 = new C0532n();
        try {
            File file = new File(C0465K.m5643long() + File.separator + replaceFileName);
            File file2 = new File(C0465K.m5643long() + File.separator + i6);
            if (file.exists()) {
                if (file2.exists()) {
                    file2.delete();
                }
                file.renameTo(file2);
            }
            if (file2.exists()) {
                this.i5 = (LLSInterface) new DexClassLoader(C0465K.m5643long() + File.separator + i6, C0465K.m5643long(), null, getClassLoader()).loadClass("com.baidu.serverLoc.LocationService").newInstance();
            }
        } catch (Exception e) {
            this.i5 = null;
        }
        if (this.i5 == null || this.i5.getVersion() <= this.i7.getVersion()) {
            this.i8 = this.i7;
            this.i5 = null;
        } else {
            this.i8 = this.i5;
            this.i7 = null;
        }
        this.i8.onCreate(this);
    }

    public void onDestroy() {
        this.i8.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return this.i8.onStartCommand(intent, i, i2);
    }

    public boolean onUnbind(Intent intent) {
        return this.i8.onUnBind(intent);
    }
}
