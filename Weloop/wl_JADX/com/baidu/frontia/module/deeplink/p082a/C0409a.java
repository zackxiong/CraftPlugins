package com.baidu.frontia.module.deeplink.p082a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* renamed from: com.baidu.frontia.module.deeplink.a.a */
class C0409a extends SQLiteOpenHelper {
    public C0409a(Context context) {
        super(context, "com.baidu.frontia.module.deeplink.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE ServiceInfo (app_id INTEGER not null,package_name VARCHAR not null,service_path VARCHAR not null,domain VARCHAR,web_visit_rule INTEGER,client_visit_rule INTEGER,update_time INTEGER,default_uri VARCHAR, PRIMARY KEY ( package_name,service_path))");
        sQLiteDatabase.execSQL("CREATE TABLE URIInfo (package_name VARCHAR not null,service_path VARCHAR not null,uri_path VARCHAR,uri_id INTEGER,web_uri VARCHAR,android_uri VARCHAR,uri_params VARCHAR,update_time INTEGER, PRIMARY KEY ( package_name,service_path,uri_path))");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
