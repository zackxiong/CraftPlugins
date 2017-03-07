package com.baidu.android.pushservice.p072f.p073a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.baidu.android.pushservice.f.a.a */
public class C0263a extends SQLiteOpenHelper {
    private static C0263a f3167a;
    private AtomicInteger f3168b;
    private SQLiteDatabase f3169c;

    private C0263a(Context context, String str, CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.f3168b = new AtomicInteger();
    }

    public static synchronized C0263a m4812a(Context context) {
        C0263a c0263a = null;
        synchronized (C0263a.class) {
            if (context == null) {
                Log.e("WifiDBHelper", "WifiCacheDBHelper getInstance Para context is null ");
            } else {
                if (f3167a == null) {
                    try {
                        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "baidu" + File.separator + "pushservice" + File.separator + "database");
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        f3167a = new C0263a(context, file.getAbsolutePath() + File.separator + "push_wifi_4.4.3.db", null, 1);
                    } catch (Exception e) {
                        f3167a = null;
                    }
                }
                c0263a = f3167a;
            }
        }
        return c0263a;
    }

    public synchronized SQLiteDatabase m4813a() {
        if (this.f3168b.incrementAndGet() == 1) {
            this.f3169c = super.getWritableDatabase();
        }
        return this.f3169c;
    }

    public synchronized void m4814b() {
        if (this.f3168b.decrementAndGet() == 0) {
            this.f3169c.close();
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS LOCAL_WIFI_CACHE");
        sQLiteDatabase.execSQL("CREATE TABLE LOCAL_WIFI_CACHE (ID INTEGER PRIMARY KEY AUTOINCREMENT, KEY TEXT UNIQUE, VALUE TEXT NOT NULL, CREATE_TIME BIGINT DEFAULT -1, LAST_MODIFY_TIME  BIGINT DEFAULT -1, EXPIRE_TIME BIGITNT DEFAULT -1);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
