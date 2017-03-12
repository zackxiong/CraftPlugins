package com.roscopeco.ormdroid;

import android.app.Application;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.umeng.update.util.ProGuard;

/* compiled from: ProGuard */
public class ORMDroidApplication extends Application {
    private static ORMDroidApplication singleton;
    private SQLiteDatabase db;
    private Context mContext;
    private String mDBName;

    private static void initInstance(ORMDroidApplication oRMDroidApplication, Context context) {
        Context applicationContext = context.getApplicationContext();
        oRMDroidApplication.mContext = applicationContext;
        oRMDroidApplication.attachBaseContext(applicationContext);
    }

    public static boolean isInitialized() {
        return singleton != null;
    }

    public static void initialize(Context context) {
        if (!isInitialized()) {
            ORMDroidApplication oRMDroidApplication = new ORMDroidApplication();
            singleton = oRMDroidApplication;
            initInstance(oRMDroidApplication, context);
        }
    }

    public static ORMDroidApplication getSingleton() {
        if (isInitialized()) {
            return singleton;
        }
        Log.e("ORMDroidApplication", "ORMDroid is not initialized");
        throw new ORMDroidException("ORMDroid is not initialized - You must call ORMDroidApplication.initialize");
    }

    public static SQLiteDatabase getDefaultDatabase() {
        return getSingleton().getDatabase();
    }

    public void onCreate() {
        if (singleton != null) {
            throw new IllegalStateException("ORMDroidApplication already initialized!");
        }
        singleton = this;
        this.mContext = getApplicationContext();
    }

    private void initDatabaseConfig() {
        try {
            this.mDBName = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), ProGuard.f5670c).metaData.get("ormdroid.database.name").toString();
        } catch (Throwable e) {
            throw new ORMDroidException("ORMDroid database configuration not found; Did you set properties in your app manifest?", e);
        }
    }

    public String getDatabaseName() {
        if (this.mDBName == null) {
            initDatabaseConfig();
        }
        return this.mDBName;
    }

    public synchronized SQLiteDatabase getDatabase() {
        if (this.db == null) {
            this.db = openOrCreateDatabase(getDatabaseName(), 0, null);
        }
        return this.db;
    }
}
