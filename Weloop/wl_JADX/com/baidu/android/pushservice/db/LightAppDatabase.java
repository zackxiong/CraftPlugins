package com.baidu.android.pushservice.db;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.File;

public class LightAppDatabase implements NoProGuard {
    private static final String TAG = "LightAppDatabase";
    private static C0243a mDbHelper;

    /* renamed from: com.baidu.android.pushservice.db.LightAppDatabase.a */
    private static class C0243a extends SQLiteOpenHelper {
        public C0243a(Context context, String str, int i) {
            super(context, str, null, i);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS subscribe");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS message");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS register");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS blacklist");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS notification");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS weak_subscribe");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info");
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_SUBSCRIBE);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_MESSAGE);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_REGISTER);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_BLACKLIST);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_NOTIFICATION);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_WEAK_SUBSCRIBE);
            sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_APP_INFO);
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(LightAppDatabase.TAG, "downgrade from: " + i + " to: " + i2);
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(LightAppDatabase.TAG, "upgrade from: " + i + " to: " + i2);
            }
            if (i < 1) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS subscribe");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS message");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS register");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS blacklist");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS notification");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS weak_subscribe");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info");
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_SUBSCRIBE);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_MESSAGE);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_REGISTER);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_BLACKLIST);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_NOTIFICATION);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_APP_INFO);
            } else if (i == 1) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS notification");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS weak_subscribe");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info");
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_NOTIFICATION);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_WEAK_SUBSCRIBE);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_APP_INFO);
            } else if (i == 2) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS weak_subscribe");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info");
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_WEAK_SUBSCRIBE);
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_APP_INFO);
            } else if (i == 3) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info");
                sQLiteDatabase.execSQL(LightAppTableDefine.SQL_CREATE_TABLE_APP_INFO);
            }
        }
    }

    static {
        mDbHelper = null;
    }

    private static synchronized C0243a getDBOpenHelper(Context context) {
        C0243a c0243a;
        synchronized (LightAppDatabase.class) {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + LightAppTableDefine.DB_DIR);
            if (!file.exists()) {
                mDbHelper = null;
                file.mkdirs();
            }
            if (mDbHelper == null) {
                mDbHelper = new C0243a(context, file.getAbsolutePath() + File.separator + LightAppTableDefine.DB_NAME, 4);
            }
            c0243a = mDbHelper;
        }
        return c0243a;
    }

    public static synchronized SQLiteDatabase getWritableDb(Context context) {
        SQLiteDatabase sQLiteDatabase = null;
        synchronized (LightAppDatabase.class) {
            if (C0374f.m5192a()) {
                C0243a dBOpenHelper = getDBOpenHelper(context);
                if (dBOpenHelper != null) {
                    try {
                        sQLiteDatabase = dBOpenHelper.getWritableDatabase();
                    } catch (SQLException e) {
                        mDbHelper = null;
                        if (C0192a.m4341b()) {
                            C0385a.m5311b(TAG, "getWritableDb exception: " + e);
                        }
                    }
                }
            }
        }
        return sQLiteDatabase;
    }
}
