package com.tencent.p099b.p100a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.baidu.android.pushservice.PushConstants;
import com.tencent.p099b.p100a.p102b.C0689r;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.tencent.b.a.d */
final class C0693d extends SQLiteOpenHelper {
    private String f5233a;
    private Context f5234b;

    public C0693d(Context context, String str) {
        super(context, str, null, 3);
        this.f5233a = "";
        this.f5234b = null;
        this.f5233a = str;
        this.f5234b = context.getApplicationContext();
        if (C0708t.m7062b()) {
            ai.f5114h.m6935a("SQLiteOpenHelper " + this.f5233a);
        }
    }

    private static void m7028a(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Throwable th;
        String str = null;
        try {
            query = sQLiteDatabase.query("user", null, null, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                if (query.moveToNext()) {
                    str = query.getString(0);
                    query.getInt(1);
                    query.getString(2);
                    query.getLong(3);
                    contentValues.put("uid", C0689r.m7020b(str));
                }
                if (str != null) {
                    sQLiteDatabase.update("user", contentValues, "uid=?", new String[]{str});
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    ai.f5114h.m6938b(th);
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private static void m7029b(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Throwable th;
        Cursor cursor;
        try {
            query = sQLiteDatabase.query("events", null, null, null, null, null, null);
            try {
                List<C0694e> arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(new C0694e(query.getLong(0), query.getString(1), query.getInt(2), query.getInt(3)));
                }
                ContentValues contentValues = new ContentValues();
                for (C0694e c0694e : arrayList) {
                    contentValues.put(PushConstants.EXTRA_CONTENT, C0689r.m7020b(c0694e.f5236b));
                    sQLiteDatabase.update("events", contentValues, "event_id=?", new String[]{Long.toString(c0694e.f5235a)});
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public final synchronized void close() {
        super.close();
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)");
        sQLiteDatabase.execSQL("create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
        sQLiteDatabase.execSQL("CREATE INDEX if not exists status_idx ON events(status)");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ai.f5114h.m6942f("upgrade DB from oldVersion " + i + " to newVersion " + i2);
        if (i == 1) {
            sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
            C0693d.m7028a(sQLiteDatabase);
            C0693d.m7029b(sQLiteDatabase);
        }
        if (i == 2) {
            C0693d.m7028a(sQLiteDatabase);
            C0693d.m7029b(sQLiteDatabase);
        }
    }
}
