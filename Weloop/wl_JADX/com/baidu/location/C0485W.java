package com.baidu.location;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* renamed from: com.baidu.location.W */
class C0485W extends SQLiteOpenHelper {
    private static C0485W f3961a;

    public C0485W(Context context) {
        super(context, "bd_geofence.db", null, 2);
    }

    public static synchronized C0485W m5762a(Context context) {
        C0485W c0485w;
        synchronized (C0485W.class) {
            if (f3961a == null) {
                f3961a = new C0485W(context);
            }
            c0485w = f3961a;
        }
        return c0485w;
    }

    private String m5763a(String str, String str2, String str3) {
        return "ALTER TABLE " + str + " ADD " + str2 + " " + str3;
    }

    private void m5764a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS geofence (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,longitude NTEXT,latitude NTEXT,radius_type INTEGER,radius NTEXT,valid_date INTEGER,duration_millis INTEGER,coord_type NTEXT,next_active_time INTEGER,is_lac INTEGER,is_cell INTEGER,is_wifi INTEGER,next_exit_active_time INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS geofence_detail (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,ap NTEXT,ap_backup NTEXT);");
        sQLiteDatabase.execSQL("CREATE INDEX  IF NOT EXISTS ap_index ON geofence_detail (ap);");
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m5764a(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            m5763a("geofence", "next_exit_active_time", "INTEGER");
        }
        m5764a(sQLiteDatabase);
    }
}
