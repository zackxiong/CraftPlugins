package com.baidu.android.pushservice.db;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p072f.C0273h;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.SDKInitializer;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.db.a */
public class C0245a {
    private Context f3093a;
    private final AtomicInteger f3094b;
    private SQLiteDatabase f3095c;
    private final ReentrantLock f3096d;

    /* renamed from: com.baidu.android.pushservice.db.a.a */
    private static class C0244a {
        static final C0245a f3092a;

        static {
            f3092a = new C0245a();
        }
    }

    public C0245a() {
        this.f3094b = new AtomicInteger();
        this.f3096d = new ReentrantLock();
    }

    public static C0245a m4576a() {
        return C0244a.f3092a;
    }

    private String m4577a(Cursor cursor, int i, int i2) {
        int i3 = 0;
        if (cursor == null) {
            return null;
        }
        String str;
        JSONArray jSONArray = new JSONArray();
        int i4 = 0;
        while (cursor.moveToNext()) {
            if (-1 != i) {
                i3++;
                if (i3 < i) {
                    continue;
                }
            }
            JSONObject a = m4579a(cursor);
            if (-1 == i2) {
                jSONArray.put(a);
            } else {
                i4++;
                if (i4 <= i2) {
                    try {
                        jSONArray.put(a);
                    } catch (JSONException e) {
                        str = "error " + e.getMessage();
                        C0385a.m5313d("DatabaseManager", str);
                        return null;
                    } finally {
                        cursor.close();
                    }
                }
            }
        }
        break;
        str = jSONArray.toString();
        return str;
    }

    private ArrayList<String> m4578a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query;
        Exception e;
        ArrayList<String> arrayList = new ArrayList();
        try {
            query = sQLiteDatabase.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"host_channel"}, "appid=?", new String[]{str}, null, null, null);
            try {
                if (query.moveToNext() && !TextUtils.isEmpty(query.getString(0))) {
                    String string = query.getString(0);
                    if (string != null && string.length() > 0) {
                        for (Object add : query.getString(0).split(":")) {
                            arrayList.add(add);
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                if (query != null) {
                    query.close();
                }
                return arrayList;
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            if (C0192a.m4341b()) {
                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
            }
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        if (query != null) {
            query.close();
        }
        return arrayList;
    }

    private JSONObject m4579a(Cursor cursor) {
        JSONObject jSONObject = new JSONObject();
        String string = cursor.getString(cursor.getColumnIndex(PushConstants.EXTRA_MSGID));
        String string2 = cursor.getString(cursor.getColumnIndex("appid"));
        String string3 = cursor.getString(cursor.getColumnIndex("title"));
        String string4 = cursor.getString(cursor.getColumnIndex(PushConstants.EXTRA_CONTENT));
        String string5 = cursor.getString(cursor.getColumnIndex("link"));
        int i = cursor.getInt(cursor.getColumnIndex("status"));
        int i2 = cursor.getInt(cursor.getColumnIndex(ProGuard.f5475c));
        long j = cursor.getLong(cursor.getColumnIndex("time"));
        jSONObject.put("id", string);
        jSONObject.put("appid", string2);
        jSONObject.put("title", string3);
        jSONObject.put(PushConstants.EXTRA_CONTENT, string4);
        jSONObject.put("link", string5);
        jSONObject.put("status", i);
        jSONObject.put(ProGuard.f5475c, i2);
        jSONObject.put("time", j);
        return jSONObject;
    }

    public synchronized int m4580a(int i, String str) {
        int count;
        Exception e;
        Cursor cursor = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        if (str.equals("0")) {
                            if (i == 0) {
                                cursor2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, null, "status=?", new String[]{String.valueOf(1)}, null, null, null);
                            } else {
                                cursor2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, null, "status=? AND type=?", new String[]{String.valueOf(1), "" + i}, null, null, null);
                            }
                        } else if (i == 0) {
                            cursor2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, null, "status=? AND appid=? ", new String[]{String.valueOf(1), "" + str}, null, null, null);
                        } else {
                            cursor2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, null, "status=? AND appid=? AND type=?", new String[]{String.valueOf(1), "" + str, "" + i}, null, null, null);
                        }
                        try {
                            count = cursor2.getCount();
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            m4608c();
                        } catch (Exception e2) {
                            e = e2;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                                }
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                m4608c();
                                count = -1;
                                return count;
                            } catch (Throwable th) {
                                Throwable th2 = th;
                                cursor = cursor2;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                m4608c();
                                throw th2;
                            }
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    cursor2 = null;
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    m4608c();
                    count = -1;
                    return count;
                } catch (Throwable th3) {
                    th2 = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    throw th2;
                }
            }
            if (null != null) {
                cursor2.close();
            }
            m4608c();
            count = -1;
        }
        return count;
    }

    public synchronized long m4581a(String str) {
        long update;
        Throwable th;
        Cursor cursor = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("apikey", str);
                        contentValues.put("is_blacked", Integer.valueOf(1));
                        Cursor query = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"is_blacked"}, "apikey=?", new String[]{str}, null, null, null);
                        try {
                            if (query.moveToNext()) {
                                update = (long) b.update(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, contentValues, "apikey=?", new String[]{str});
                            } else {
                                update = b.insert(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, null, contentValues);
                            }
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                        } catch (Exception e) {
                            e = e;
                            cursor2 = query;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "blackWeakSubscribe" + e.getMessage());
                                }
                                m4608c();
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                update = -1;
                                return update;
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursor2;
                                m4608c();
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = query;
                            m4608c();
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor2 = null;
                    if (C0192a.m4341b()) {
                        Exception e3;
                        C0385a.m5313d("DatabaseManager", "blackWeakSubscribe" + e3.getMessage());
                    }
                    m4608c();
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    update = -1;
                    return update;
                } catch (Throwable th4) {
                    th = th4;
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            m4608c();
            if (null != null) {
                cursor2.close();
            }
            update = -1;
        }
        return update;
    }

    public synchronized long m4582a(String str, String str2, String str3, String str4) {
        long update;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b != null) {
            Cursor query;
            try {
                if (!TextUtils.isEmpty(str)) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("appid", str);
                    contentValues.put("apikey", str2);
                    contentValues.put("app_name", str3);
                    contentValues.put("app_logo", str4);
                    query = b.query(LightAppTableDefine.DB_TABLE_APP_INFO, new String[]{"appid"}, "appid=?", new String[]{str}, null, null, null);
                    try {
                        if (query.moveToNext()) {
                            update = (long) b.update(LightAppTableDefine.DB_TABLE_APP_INFO, contentValues, "appid=?", new String[]{str});
                        } else {
                            update = b.insert(LightAppTableDefine.DB_TABLE_APP_INFO, null, contentValues);
                        }
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                    } catch (Exception e) {
                        e = e;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "addAppInfo " + e.getMessage());
                            }
                            update = -1;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            return update;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            cursor = query;
                            m4608c();
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                query = cursor;
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "addAppInfo " + e3.getMessage());
                }
                update = -1;
                m4608c();
                if (query != null) {
                    query.close();
                }
                return update;
            } catch (Throwable th3) {
                th2 = th3;
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                throw th2;
            }
        }
        update = -1;
        m4608c();
        if (cursor != null) {
            cursor.close();
        }
        return update;
    }

    public synchronized long m4583a(String str, String str2, String str3, String str4, String str5) {
        long update;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b != null) {
            Cursor query;
            try {
                if (!TextUtils.isEmpty(str)) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("appid", str);
                    contentValues.put("apikey", str2);
                    contentValues.put("app_name", str3);
                    contentValues.put("app_logo", str4);
                    contentValues.put("sub_time", Long.valueOf(System.currentTimeMillis()));
                    contentValues.put("is_bind", Integer.valueOf(1));
                    String str6 = str5 == null ? "other" : str5;
                    query = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"host_channel"}, "appid=?", new String[]{str}, null, null, null);
                    try {
                        if (query.moveToNext()) {
                            String string = query.getString(0);
                            if (string != null && string.length() > 0) {
                                string = str6;
                                for (String str7 : string.split(":")) {
                                    if (!str7.equals(str6)) {
                                        string = string + ":" + str7;
                                    }
                                }
                            }
                            contentValues.put("host_channel", string);
                            update = (long) b.update(LightAppTableDefine.DB_TABLE_SUBSCRIBE, contentValues, "appid=?", new String[]{str});
                        } else {
                            contentValues.put("host_channel", str6);
                            update = b.insert(LightAppTableDefine.DB_TABLE_SUBSCRIBE, null, contentValues);
                        }
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                    } catch (Exception e) {
                        e = e;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "subscribe " + e.getMessage());
                            }
                            update = -1;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            return update;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                query = cursor;
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "subscribe " + e3.getMessage());
                }
                update = -1;
                m4608c();
                if (query != null) {
                    query.close();
                }
                return update;
            } catch (Throwable th3) {
                th2 = th3;
                query = cursor;
                m4608c();
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        }
        update = -1;
        m4608c();
        if (cursor != null) {
            cursor.close();
        }
        return update;
    }

    public synchronized long m4584a(String str, String str2, String str3, String str4, String str5, int i, int i2) {
        long j = -1;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (b == null) {
                m4608c();
            } else {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.EXTRA_MSGID, str);
                    contentValues.put("appid", str2);
                    contentValues.put("title", str3);
                    contentValues.put(PushConstants.EXTRA_CONTENT, str4);
                    contentValues.put("link", str5);
                    contentValues.put("status", Integer.valueOf(i2));
                    contentValues.put(ProGuard.f5475c, Integer.valueOf(i));
                    contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
                    j = b.insert(LightAppTableDefine.DB_TABLE_MESSAGE, null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                    }
                } finally {
                    m4608c();
                }
            }
        }
        return j;
    }

    public synchronized long m4585a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        long insert;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b != null) {
            Cursor query;
            try {
                if (!TextUtils.isEmpty(str2)) {
                    String str8;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("apikey", str2);
                    contentValues.put("appid", str);
                    contentValues.put("app_name", str3);
                    contentValues.put("app_logo", str4);
                    contentValues.put("sub_time", Long.valueOf(System.currentTimeMillis()));
                    contentValues.put("is_blacked", Integer.valueOf(0));
                    contentValues.put("push_token", str7);
                    if (TextUtils.isEmpty(str5)) {
                        str8 = "other";
                    }
                    query = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"sub_tags", "is_blacked"}, "apikey=?", new String[]{str2}, null, null, null);
                    try {
                        if (!query.moveToNext()) {
                            insert = b.insert(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, null, contentValues);
                        } else if (query.getInt(query.getColumnIndex("is_blacked")) == 1) {
                            insert = -1;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                        } else {
                            str8 = query.getString(0);
                            if (!TextUtils.isEmpty(str6)) {
                                Object obj = null;
                                if (TextUtils.isEmpty(str8)) {
                                    JSONArray jSONArray = new JSONArray();
                                    jSONArray.put(str6);
                                    str8 = jSONArray.toString();
                                } else {
                                    JSONArray jSONArray2 = new JSONArray(str8);
                                    for (int i = 0; i < jSONArray2.length(); i++) {
                                        if (str6.equals(jSONArray2.get(i))) {
                                            obj = 1;
                                            break;
                                        }
                                    }
                                    if (obj == null) {
                                        jSONArray2.put(str6);
                                        str8 = jSONArray2.toString();
                                    }
                                }
                                contentValues.put("sub_tags", str8);
                            }
                            insert = (long) b.update(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, contentValues, "apikey=?", new String[]{str2});
                        }
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                    } catch (Exception e) {
                        e = e;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "weakSubscribe" + e.getMessage());
                            }
                            insert = -1;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            return insert;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                query = cursor;
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "weakSubscribe" + e3.getMessage());
                }
                insert = -1;
                m4608c();
                if (query != null) {
                    query.close();
                }
                return insert;
            } catch (Throwable th3) {
                th2 = th3;
                query = cursor;
                m4608c();
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        }
        insert = -1;
        m4608c();
        if (cursor != null) {
            cursor.close();
        }
        return insert;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.lang.String m4586a(int r13, int r14) {
        /*
        r12 = this;
        r9 = 1;
        r10 = 0;
        r8 = 0;
        monitor-enter(r12);
        r0 = r12.m4601b();	 Catch:{ all -> 0x00b6 }
        r1 = 0;
        if (r0 != 0) goto L_0x0016;
    L_0x000b:
        if (r8 == 0) goto L_0x0010;
    L_0x000d:
        r1.close();	 Catch:{ all -> 0x00b6 }
    L_0x0010:
        r12.m4608c();	 Catch:{ all -> 0x00b6 }
        r0 = r8;
    L_0x0014:
        monitor-exit(r12);
        return r0;
    L_0x0016:
        r11 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x00b9, all -> 0x00e2 }
        r11.<init>();	 Catch:{ JSONException -> 0x00b9, all -> 0x00e2 }
        r1 = "weak_subscribe";
        r2 = 0;
        r3 = "is_blacked =? ";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ JSONException -> 0x00b9, all -> 0x00e2 }
        r5 = 0;
        r6 = "0";
        r4[r5] = r6;	 Catch:{ JSONException -> 0x00b9, all -> 0x00e2 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ JSONException -> 0x00b9, all -> 0x00e2 }
        if (r13 <= 0) goto L_0x0037;
    L_0x0031:
        r0 = r1.move(r13);	 Catch:{ JSONException -> 0x00ef }
        if (r0 != 0) goto L_0x0037;
    L_0x0037:
        r0 = r10;
    L_0x0038:
        r2 = r1.moveToNext();	 Catch:{ JSONException -> 0x00ef }
        if (r2 == 0) goto L_0x0088;
    L_0x003e:
        r2 = r0 + 1;
        if (r0 > r14) goto L_0x0088;
    L_0x0042:
        r0 = "appid";
        r0 = r1.getColumnIndex(r0);	 Catch:{ JSONException -> 0x00ef }
        r0 = r1.getString(r0);	 Catch:{ JSONException -> 0x00ef }
        r3 = "app_name";
        r3 = r1.getColumnIndex(r3);	 Catch:{ JSONException -> 0x00ef }
        r3 = r1.getString(r3);	 Catch:{ JSONException -> 0x00ef }
        r4 = "app_logo";
        r4 = r1.getColumnIndex(r4);	 Catch:{ JSONException -> 0x00ef }
        r4 = r1.getString(r4);	 Catch:{ JSONException -> 0x00ef }
        r5 = "apikey";
        r5 = r1.getColumnIndex(r5);	 Catch:{ JSONException -> 0x00ef }
        r5 = r1.getString(r5);	 Catch:{ JSONException -> 0x00ef }
        r6 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00ef }
        r6.<init>();	 Catch:{ JSONException -> 0x00ef }
        r7 = "appid";
        r6.put(r7, r0);	 Catch:{ JSONException -> 0x00ef }
        r0 = "app_name";
        r6.put(r0, r3);	 Catch:{ JSONException -> 0x00ef }
        r0 = "app_logo";
        r6.put(r0, r4);	 Catch:{ JSONException -> 0x00ef }
        r0 = "api_key";
        r6.put(r0, r5);	 Catch:{ JSONException -> 0x00ef }
        r11.put(r6);	 Catch:{ JSONException -> 0x00ef }
        r0 = r2;
        goto L_0x0038;
    L_0x0088:
        r2 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00ef }
        r2.<init>();	 Catch:{ JSONException -> 0x00ef }
        r0 = "app_infos";
        r3 = r11.toString();	 Catch:{ JSONException -> 0x00ef }
        r2.put(r0, r3);	 Catch:{ JSONException -> 0x00ef }
        r0 = r11.length();	 Catch:{ JSONException -> 0x00ef }
        if (r0 != r14) goto L_0x00f1;
    L_0x009c:
        r0 = r1.moveToNext();	 Catch:{ JSONException -> 0x00ef }
        if (r0 == 0) goto L_0x00f1;
    L_0x00a2:
        r0 = r9;
    L_0x00a3:
        r3 = "is_more";
        r2.put(r3, r0);	 Catch:{ JSONException -> 0x00ef }
        r0 = r2.toString();	 Catch:{ JSONException -> 0x00ef }
        if (r1 == 0) goto L_0x00b1;
    L_0x00ae:
        r1.close();	 Catch:{ all -> 0x00b6 }
    L_0x00b1:
        r12.m4608c();	 Catch:{ all -> 0x00b6 }
        goto L_0x0014;
    L_0x00b6:
        r0 = move-exception;
        monitor-exit(r12);
        throw r0;
    L_0x00b9:
        r0 = move-exception;
        r1 = r8;
    L_0x00bb:
        r2 = "DatabaseManager";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ed }
        r3.<init>();	 Catch:{ all -> 0x00ed }
        r4 = "getWeakSubscribedApps ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00ed }
        r0 = r0.getMessage();	 Catch:{ all -> 0x00ed }
        r0 = r3.append(r0);	 Catch:{ all -> 0x00ed }
        r0 = r0.toString();	 Catch:{ all -> 0x00ed }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r0);	 Catch:{ all -> 0x00ed }
        if (r1 == 0) goto L_0x00dc;
    L_0x00d9:
        r1.close();	 Catch:{ all -> 0x00b6 }
    L_0x00dc:
        r12.m4608c();	 Catch:{ all -> 0x00b6 }
        r0 = r8;
        goto L_0x0014;
    L_0x00e2:
        r0 = move-exception;
        r1 = r8;
    L_0x00e4:
        if (r1 == 0) goto L_0x00e9;
    L_0x00e6:
        r1.close();	 Catch:{ all -> 0x00b6 }
    L_0x00e9:
        r12.m4608c();	 Catch:{ all -> 0x00b6 }
        throw r0;	 Catch:{ all -> 0x00b6 }
    L_0x00ed:
        r0 = move-exception;
        goto L_0x00e4;
    L_0x00ef:
        r0 = move-exception;
        goto L_0x00bb;
    L_0x00f1:
        r0 = r10;
        goto L_0x00a3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.a(int, int):java.lang.String");
    }

    public synchronized String m4587a(String str, String str2) {
        String jSONObject;
        Exception e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        JSONObject jSONObject2 = new JSONObject();
        if (b != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    Cursor query = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"is_bind"}, "apikey=?", new String[]{str}, null, null, null);
                    try {
                        if (query.moveToNext() && query.getInt(0) == 0) {
                            jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, -1);
                            jSONObject = jSONObject2.toString();
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                        } else {
                            query.close();
                            cursor = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"is_blacked", "sub_tags", "push_token", "sub_time"}, "apikey=?", new String[]{str}, null, null, null);
                            try {
                                if (!cursor.moveToNext()) {
                                    jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, 0);
                                    jSONObject = jSONObject2.toString();
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                } else if (cursor.getInt(cursor.getColumnIndex("is_blacked")) == 1) {
                                    jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, -1);
                                    jSONObject = jSONObject2.toString();
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                } else if (TextUtils.isEmpty(str2)) {
                                    CharSequence string = cursor.getString(cursor.getColumnIndex("push_token"));
                                    long j = cursor.getLong(cursor.getColumnIndex("sub_time"));
                                    if (TextUtils.isEmpty(string) || j < System.currentTimeMillis() - 1296000000) {
                                        jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, 0);
                                    } else {
                                        jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, 1);
                                        jSONObject2.put("push_token", string);
                                    }
                                    jSONObject = jSONObject2.toString();
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                } else {
                                    Object string2 = cursor.getString(cursor.getColumnIndex("sub_tags"));
                                    if (!TextUtils.isEmpty(string2)) {
                                        JSONArray jSONArray = new JSONArray(string2);
                                        int i = 0;
                                        while (i < jSONArray.length()) {
                                            if (str2.equals(jSONArray.getString(i))) {
                                                jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, 1);
                                                jSONObject = jSONObject2.toString();
                                                m4608c();
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                            } else {
                                                i++;
                                            }
                                        }
                                    }
                                    jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, 0);
                                    jSONObject = jSONObject2.toString();
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                }
                            } catch (Exception e2) {
                                e = e2;
                                try {
                                    if (C0192a.m4341b()) {
                                        C0385a.m5313d("DatabaseManager", "isWeakSubscribed " + e.getMessage());
                                    }
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    jSONObject = null;
                                    return jSONObject;
                                } catch (Throwable th2) {
                                    th = th2;
                                    m4608c();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        cursor = query;
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "isWeakSubscribed " + e.getMessage());
                        }
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        jSONObject = null;
                        return jSONObject;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = query;
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            } catch (Exception e4) {
                e = e4;
                cursor = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "isWeakSubscribed " + e.getMessage());
                }
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                jSONObject = null;
                return jSONObject;
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        jSONObject2.put(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, -1);
        jSONObject = jSONObject2.toString();
        m4608c();
        if (null != null) {
            cursor.close();
        }
        return jSONObject;
    }

    public synchronized String m4588a(ArrayList<String> arrayList) {
        String str;
        SQLiteDatabase b = m4601b();
        if (b == null || arrayList == null) {
            m4608c();
            str = null;
        } else {
            JSONArray jSONArray = new JSONArray();
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Cursor query = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, null, "appid=?", new String[]{(String) it.next()}, null, null, null);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("appid", (String) it.next());
                        if (query.moveToNext()) {
                            String string = query.getString(query.getColumnIndex("app_name"));
                            String string2 = query.getString(query.getColumnIndex("app_logo"));
                            String string3 = query.getString(query.getColumnIndex("apikey"));
                            int i = query.getInt(query.getColumnIndex("is_bind"));
                            jSONObject.put("found", true);
                            jSONObject.put("app_name", string);
                            jSONObject.put("app_logo", string2);
                            jSONObject.put("api_key", string3);
                            jSONObject.put("is_bind", i);
                        } else {
                            jSONObject.put("found", false);
                        }
                        jSONArray.put(jSONObject);
                        if (query != null) {
                            try {
                                query.close();
                            } catch (Exception e) {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                                }
                                m4608c();
                                str = null;
                            } catch (Throwable th) {
                                m4608c();
                            }
                        } else {
                            continue;
                        }
                    } catch (JSONException e2) {
                        C0385a.m5313d("DatabaseManager", "error " + e2.getMessage());
                        if (query != null) {
                            query.close();
                        } else {
                            continue;
                        }
                    } catch (Throwable th2) {
                        if (query != null) {
                            query.close();
                        }
                    }
                }
            }
            str = jSONArray.toString();
            m4608c();
        }
        return str;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.util.ArrayList<java.lang.String> m4589a(java.lang.String r16, int r17) {
        /*
        r15 = this;
        monitor-enter(r15);
        r1 = r15.m4601b();	 Catch:{ all -> 0x00cb }
        r9 = new java.util.ArrayList;	 Catch:{ all -> 0x00cb }
        r9.<init>();	 Catch:{ all -> 0x00cb }
        r11 = new java.util.ArrayList;	 Catch:{ all -> 0x00cb }
        r11.<init>();	 Catch:{ all -> 0x00cb }
        r0 = r16;
        r12 = r15.m4578a(r1, r0);	 Catch:{ all -> 0x00cb }
        r10 = 0;
        r4 = "msg_switch=?";
        r2 = 1;
        r5 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r2 = 0;
        r3 = "0";
        r5[r2] = r3;	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r2 = "register";
        r3 = 2;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r6 = 0;
        r7 = "channel";
        r3[r6] = r7;	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r6 = 1;
        r7 = "pkg_name";
        r3[r6] = r7;	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r10 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x00e3, all -> 0x00c1 }
        r2 = 0;
    L_0x0037:
        r3 = r10.moveToNext();	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        if (r3 == 0) goto L_0x00ce;
    L_0x003d:
        r2 = "pkg_name";
        r2 = r10.getColumnIndex(r2);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r13 = r10.getString(r2);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r2 = "channel";
        r2 = r10.getColumnIndex(r2);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r14 = r10.getString(r2);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r4 = "pkg_name=? AND app_id=?";
        r2 = 2;
        r5 = new java.lang.String[r2];	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r2 = 0;
        r5[r2] = r13;	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r2 = 1;
        r5[r2] = r16;	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r2 = "blacklist";
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r6 = 0;
        r7 = "type";
        r3[r6] = r7;	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r2 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r3 = r2.moveToNext();	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        if (r3 == 0) goto L_0x0083;
    L_0x0073:
        r3 = 0;
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        if (r3 == 0) goto L_0x0037;
    L_0x007a:
        r3 = 0;
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        r0 = r17;
        if (r3 == r0) goto L_0x0037;
    L_0x0083:
        r3 = r12.contains(r14);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        if (r3 == 0) goto L_0x00bc;
    L_0x0089:
        r9.add(r13);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        goto L_0x0037;
    L_0x008d:
        r1 = move-exception;
        r2 = r10;
    L_0x008f:
        r3 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x00e0 }
        if (r3 == 0) goto L_0x00b1;
    L_0x0095:
        r3 = "DatabaseManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e0 }
        r4.<init>();	 Catch:{ all -> 0x00e0 }
        r5 = "error ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x00e0 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x00e0 }
        r1 = r4.append(r1);	 Catch:{ all -> 0x00e0 }
        r1 = r1.toString();	 Catch:{ all -> 0x00e0 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);	 Catch:{ all -> 0x00e0 }
    L_0x00b1:
        r15.m4608c();	 Catch:{ all -> 0x00cb }
        if (r2 == 0) goto L_0x00b9;
    L_0x00b6:
        r2.close();	 Catch:{ all -> 0x00cb }
    L_0x00b9:
        r1 = r9;
    L_0x00ba:
        monitor-exit(r15);
        return r1;
    L_0x00bc:
        r11.add(r13);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        goto L_0x0037;
    L_0x00c1:
        r1 = move-exception;
    L_0x00c2:
        r15.m4608c();	 Catch:{ all -> 0x00cb }
        if (r10 == 0) goto L_0x00ca;
    L_0x00c7:
        r10.close();	 Catch:{ all -> 0x00cb }
    L_0x00ca:
        throw r1;	 Catch:{ all -> 0x00cb }
    L_0x00cb:
        r1 = move-exception;
        monitor-exit(r15);
        throw r1;
    L_0x00ce:
        r9.addAll(r11);	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
        if (r2 == 0) goto L_0x00d6;
    L_0x00d3:
        r2.close();	 Catch:{ Exception -> 0x008d, all -> 0x00c1 }
    L_0x00d6:
        r15.m4608c();	 Catch:{ all -> 0x00cb }
        if (r10 == 0) goto L_0x00de;
    L_0x00db:
        r10.close();	 Catch:{ all -> 0x00cb }
    L_0x00de:
        r1 = r9;
        goto L_0x00ba;
    L_0x00e0:
        r1 = move-exception;
        r10 = r2;
        goto L_0x00c2;
    L_0x00e3:
        r1 = move-exception;
        r2 = r10;
        goto L_0x008f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.a(java.lang.String, int):java.util.ArrayList<java.lang.String>");
    }

    public synchronized HashMap<String, String> m4590a(String str, int i, boolean z, int i2, int i3) {
        HashMap<String, String> hashMap;
        Cursor query;
        Exception e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b == null || TextUtils.isEmpty(str)) {
            hashMap = null;
        } else {
            String str2 = null;
            String[] strArr = null;
            try {
                int i4;
                HashMap<String, String> hashMap2 = new HashMap();
                if (str.equals("0")) {
                    if (i == 0) {
                        if (z) {
                            str2 = "status=?";
                            strArr = new String[]{String.valueOf(1)};
                        }
                    } else if (z) {
                        str2 = "status=? AND type = ?";
                        strArr = new String[]{String.valueOf(1), String.valueOf(i)};
                    } else {
                        str2 = "type = ?";
                        strArr = new String[]{String.valueOf(i)};
                    }
                } else if (i == 0) {
                    if (z) {
                        str2 = "appid = ? AND status =? ";
                        strArr = new String[]{"" + str, String.valueOf(1)};
                    } else {
                        str2 = "appid = ?";
                        strArr = new String[]{"" + str};
                    }
                } else if (z) {
                    str2 = "appid = ? AND status=? AND type = ?";
                    strArr = new String[]{"" + str, String.valueOf(1), String.valueOf(i)};
                } else {
                    str2 = "appid = ? AND type = ?";
                    strArr = new String[]{"" + str, String.valueOf(i)};
                }
                query = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, null, str2, strArr, null, null, "time DESC");
                if (i3 >= 0) {
                    try {
                        i4 = (query.getCount() - i2) - i3 > 0 ? 1 : 0;
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                            }
                            hashMap = null;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            return hashMap;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = query;
                            m4608c();
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                i4 = 0;
                hashMap2.put("msg", m4577a(query, i2, i3));
                hashMap2.put("ismore", String.valueOf(i4));
                m4608c();
                if (query != null) {
                    query.close();
                }
                hashMap = hashMap2;
            } catch (Exception e3) {
                e = e3;
                query = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                hashMap = null;
                m4608c();
                if (query != null) {
                    query.close();
                }
                return hashMap;
            } catch (Throwable th3) {
                th = th3;
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return hashMap;
    }

    public void m4591a(Context context) {
        this.f3093a = context;
        m4610d();
    }

    public synchronized void m4592a(String str, String str2, String str3) {
        Throwable th;
        Cursor cursor = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b == null) {
                m4608c();
                if (null != null) {
                    cursor2.close();
                }
            } else if (str == null || str2 == null || str3 == null) {
                m4608c();
                if (null != null) {
                    cursor2.close();
                }
            } else {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("noti_id", str3);
                    contentValues.put(PushConstants.EXTRA_APP_ID, str2);
                    contentValues.put("msg_id", str);
                    contentValues.put(PushConstants.EXTRA_TIMESTAMP, System.currentTimeMillis() + "");
                    cursor2 = b.query(LightAppTableDefine.DB_TABLE_NOTIFICATION, new String[]{"noti_id"}, "noti_id=?", new String[]{str3}, null, null, null);
                    if (cursor2 != null) {
                        try {
                            if (cursor2.moveToNext()) {
                                b.update(LightAppTableDefine.DB_TABLE_NOTIFICATION, contentValues, "noti_id=?", new String[]{str3});
                                m4608c();
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                                }
                                m4608c();
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursor2;
                                m4608c();
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                    }
                    b.insert(LightAppTableDefine.DB_TABLE_NOTIFICATION, null, contentValues);
                    m4608c();
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor2 = null;
                    if (C0192a.m4341b()) {
                        Exception e3;
                        C0385a.m5313d("DatabaseManager", "error " + e3.getMessage());
                    }
                    m4608c();
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        }
    }

    public synchronized void m4593a(String str, String str2, boolean z) {
        int i = 1;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor = null;
            if (b == null) {
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
            } else {
                try {
                    ContentValues contentValues = new ContentValues();
                    if (!z) {
                        i = 0;
                    }
                    contentValues.put("is_bind", Integer.valueOf(i));
                    if (!TextUtils.isEmpty(str)) {
                        b.update(LightAppTableDefine.DB_TABLE_SUBSCRIBE, contentValues, "apikey=?", new String[]{str});
                    } else if (!TextUtils.isEmpty(str2)) {
                        b.update(LightAppTableDefine.DB_TABLE_SUBSCRIBE, contentValues, "appid=?", new String[]{str2});
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "updateBindState " + e.getMessage());
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void m4594a(java.util.List<java.lang.String> r14, java.util.List<java.lang.String> r15) {
        /*
        r13 = this;
        r12 = 11;
        r10 = 0;
        monitor-enter(r13);
        r1 = r13.m4601b();	 Catch:{ all -> 0x009f }
        r2 = r13.f3093a;	 Catch:{ all -> 0x009f }
        r3 = "notification";
        r2 = r2.getSystemService(r3);	 Catch:{ all -> 0x009f }
        r0 = r2;
        r0 = (android.app.NotificationManager) r0;	 Catch:{ all -> 0x009f }
        r9 = r0;
        if (r1 != 0) goto L_0x001b;
    L_0x0016:
        r13.m4608c();	 Catch:{ all -> 0x009f }
    L_0x0019:
        monitor-exit(r13);
        return;
    L_0x001b:
        if (r14 == 0) goto L_0x00e1;
    L_0x001d:
        r2 = r14.size();	 Catch:{ Exception -> 0x0077 }
        if (r2 <= 0) goto L_0x00e1;
    L_0x0023:
        r11 = r14.iterator();	 Catch:{ Exception -> 0x0077 }
    L_0x0027:
        r2 = r11.hasNext();	 Catch:{ Exception -> 0x0077 }
        if (r2 == 0) goto L_0x0177;
    L_0x002d:
        r2 = r11.next();	 Catch:{ Exception -> 0x0077 }
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0077 }
        r6 = r0;
        r2 = "notification";
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x0185, all -> 0x00d9 }
        r4 = 0;
        r5 = "noti_id";
        r3[r4] = r5;	 Catch:{ Exception -> 0x0185, all -> 0x00d9 }
        r4 = "msg_id=?";
        r5 = 1;
        r5 = new java.lang.String[r5];	 Catch:{ Exception -> 0x0185, all -> 0x00d9 }
        r7 = 0;
        r5[r7] = r6;	 Catch:{ Exception -> 0x0185, all -> 0x00d9 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0185, all -> 0x00d9 }
        r2 = r3.moveToNext();	 Catch:{ Exception -> 0x00aa }
        if (r2 == 0) goto L_0x0071;
    L_0x0054:
        r2 = 0;
        r2 = r3.getString(r2);	 Catch:{ Exception -> 0x00aa }
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x00aa }
        if (r4 < r12) goto L_0x00a2;
    L_0x005d:
        r4 = com.baidu.android.pushservice.util.C0374f.m5209d(r2);	 Catch:{ Exception -> 0x00aa }
        r9.cancel(r2, r4);	 Catch:{ Exception -> 0x00aa }
    L_0x0064:
        r4 = "notification";
        r5 = "noti_id=?";
        r6 = 1;
        r6 = new java.lang.String[r6];	 Catch:{ Exception -> 0x00aa }
        r7 = 0;
        r6[r7] = r2;	 Catch:{ Exception -> 0x00aa }
        r1.delete(r4, r5, r6);	 Catch:{ Exception -> 0x00aa }
    L_0x0071:
        if (r3 == 0) goto L_0x0027;
    L_0x0073:
        r3.close();	 Catch:{ Exception -> 0x0077 }
        goto L_0x0027;
    L_0x0077:
        r1 = move-exception;
        r2 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x00d4 }
        if (r2 == 0) goto L_0x009a;
    L_0x007e:
        r2 = "DatabaseManager";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d4 }
        r3.<init>();	 Catch:{ all -> 0x00d4 }
        r4 = "error ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00d4 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x00d4 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x00d4 }
        r1 = r1.toString();	 Catch:{ all -> 0x00d4 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);	 Catch:{ all -> 0x00d4 }
    L_0x009a:
        r13.m4608c();	 Catch:{ all -> 0x009f }
        goto L_0x0019;
    L_0x009f:
        r1 = move-exception;
        monitor-exit(r13);
        throw r1;
    L_0x00a2:
        r4 = com.baidu.android.pushservice.util.C0374f.m5209d(r2);	 Catch:{ Exception -> 0x00aa }
        r9.cancel(r4);	 Catch:{ Exception -> 0x00aa }
        goto L_0x0064;
    L_0x00aa:
        r2 = move-exception;
    L_0x00ab:
        r4 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x0182 }
        if (r4 == 0) goto L_0x00cd;
    L_0x00b1:
        r4 = "DatabaseManager";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0182 }
        r5.<init>();	 Catch:{ all -> 0x0182 }
        r6 = "error ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0182 }
        r2 = r2.getMessage();	 Catch:{ all -> 0x0182 }
        r2 = r5.append(r2);	 Catch:{ all -> 0x0182 }
        r2 = r2.toString();	 Catch:{ all -> 0x0182 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r4, r2);	 Catch:{ all -> 0x0182 }
    L_0x00cd:
        if (r3 == 0) goto L_0x0027;
    L_0x00cf:
        r3.close();	 Catch:{ Exception -> 0x0077 }
        goto L_0x0027;
    L_0x00d4:
        r1 = move-exception;
        r13.m4608c();	 Catch:{ all -> 0x009f }
        throw r1;	 Catch:{ all -> 0x009f }
    L_0x00d9:
        r1 = move-exception;
        r3 = r10;
    L_0x00db:
        if (r3 == 0) goto L_0x00e0;
    L_0x00dd:
        r3.close();	 Catch:{ Exception -> 0x0077 }
    L_0x00e0:
        throw r1;	 Catch:{ Exception -> 0x0077 }
    L_0x00e1:
        if (r15 == 0) goto L_0x0177;
    L_0x00e3:
        r2 = r15.size();	 Catch:{ Exception -> 0x0077 }
        if (r2 <= 0) goto L_0x0177;
    L_0x00e9:
        r11 = r15.iterator();	 Catch:{ Exception -> 0x0077 }
    L_0x00ed:
        r2 = r11.hasNext();	 Catch:{ Exception -> 0x0077 }
        if (r2 == 0) goto L_0x0177;
    L_0x00f3:
        r2 = r11.next();	 Catch:{ Exception -> 0x0077 }
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0077 }
        r6 = r0;
        r2 = "notification";
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x017f, all -> 0x017c }
        r4 = 0;
        r5 = "noti_id";
        r3[r4] = r5;	 Catch:{ Exception -> 0x017f, all -> 0x017c }
        r4 = "app_id=?";
        r5 = 1;
        r5 = new java.lang.String[r5];	 Catch:{ Exception -> 0x017f, all -> 0x017c }
        r7 = 0;
        r5[r7] = r6;	 Catch:{ Exception -> 0x017f, all -> 0x017c }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x017f, all -> 0x017c }
    L_0x0114:
        r2 = r3.moveToNext();	 Catch:{ Exception -> 0x0138 }
        if (r2 == 0) goto L_0x0170;
    L_0x011a:
        r2 = 0;
        r2 = r3.getString(r2);	 Catch:{ Exception -> 0x0138 }
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x0138 }
        if (r4 < r12) goto L_0x0161;
    L_0x0123:
        r4 = com.baidu.android.pushservice.util.C0374f.m5209d(r2);	 Catch:{ Exception -> 0x0138 }
        r9.cancel(r2, r4);	 Catch:{ Exception -> 0x0138 }
    L_0x012a:
        r4 = "notification";
        r5 = "noti_id=?";
        r6 = 1;
        r6 = new java.lang.String[r6];	 Catch:{ Exception -> 0x0138 }
        r7 = 0;
        r6[r7] = r2;	 Catch:{ Exception -> 0x0138 }
        r1.delete(r4, r5, r6);	 Catch:{ Exception -> 0x0138 }
        goto L_0x0114;
    L_0x0138:
        r2 = move-exception;
    L_0x0139:
        r4 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x0169 }
        if (r4 == 0) goto L_0x015b;
    L_0x013f:
        r4 = "DatabaseManager";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0169 }
        r5.<init>();	 Catch:{ all -> 0x0169 }
        r6 = "error ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0169 }
        r2 = r2.getMessage();	 Catch:{ all -> 0x0169 }
        r2 = r5.append(r2);	 Catch:{ all -> 0x0169 }
        r2 = r2.toString();	 Catch:{ all -> 0x0169 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r4, r2);	 Catch:{ all -> 0x0169 }
    L_0x015b:
        if (r3 == 0) goto L_0x00ed;
    L_0x015d:
        r3.close();	 Catch:{ Exception -> 0x0077 }
        goto L_0x00ed;
    L_0x0161:
        r4 = com.baidu.android.pushservice.util.C0374f.m5209d(r2);	 Catch:{ Exception -> 0x0138 }
        r9.cancel(r4);	 Catch:{ Exception -> 0x0138 }
        goto L_0x012a;
    L_0x0169:
        r1 = move-exception;
    L_0x016a:
        if (r3 == 0) goto L_0x016f;
    L_0x016c:
        r3.close();	 Catch:{ Exception -> 0x0077 }
    L_0x016f:
        throw r1;	 Catch:{ Exception -> 0x0077 }
    L_0x0170:
        if (r3 == 0) goto L_0x00ed;
    L_0x0172:
        r3.close();	 Catch:{ Exception -> 0x0077 }
        goto L_0x00ed;
    L_0x0177:
        r13.m4608c();	 Catch:{ all -> 0x009f }
        goto L_0x0019;
    L_0x017c:
        r1 = move-exception;
        r3 = r10;
        goto L_0x016a;
    L_0x017f:
        r2 = move-exception;
        r3 = r10;
        goto L_0x0139;
    L_0x0182:
        r1 = move-exception;
        goto L_0x00db;
    L_0x0185:
        r2 = move-exception;
        r3 = r10;
        goto L_0x00ab;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.a(java.util.List, java.util.List):void");
    }

    public synchronized boolean m4595a(String str, String str2, int i) {
        boolean z = true;
        boolean z2 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "addBlackList appid or pkgName can not be null");
                    }
                    m4608c();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.EXTRA_APP_ID, str);
                    contentValues.put(PushConstants.PACKAGE_NAME, str2);
                    contentValues.put(ProGuard.f5475c, Integer.valueOf(i));
                    if (((long) b.update(LightAppTableDefine.DB_TABLE_BLACKLIST, contentValues, "app_id=? AND pkg_name=?", new String[]{str, str2})) <= 0) {
                        z = false;
                    }
                    m4608c();
                    z2 = z;
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                m4608c();
            } catch (Throwable th) {
                m4608c();
            }
        }
        return z2;
    }

    public synchronized boolean m4596a(String str, boolean z) {
        boolean z2 = true;
        boolean z3 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "setAppMsgReceiveStatus pkgName can not be null");
                    }
                    m4608c();
                } else {
                    ContentValues contentValues = new ContentValues();
                    if (z) {
                        contentValues.put("msg_switch", Integer.valueOf(0));
                    } else {
                        contentValues.put("msg_switch", Integer.valueOf(1));
                    }
                    if (b.update(LightAppTableDefine.DB_TABLE_REGISTER, contentValues, "pkg_name=?", new String[]{str}) <= 0) {
                        z2 = false;
                    }
                    m4608c();
                    z3 = z2;
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                m4608c();
            } catch (Throwable th) {
                m4608c();
            }
        }
        return z3;
    }

    public synchronized int m4597b(int i, String str) {
        int i2;
        Exception exception;
        SQLiteDatabase b = m4601b();
        if (b != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String str2;
                    String[] strArr;
                    int update;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("status", Integer.valueOf(0));
                    if (str.equals("0")) {
                        str2 = "status=?";
                        strArr = new String[]{String.valueOf(1)};
                    } else {
                        str2 = "status=? AND appid=?";
                        strArr = new String[]{String.valueOf(1), str};
                    }
                    Cursor query = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{PushConstants.EXTRA_MSGID}, str2, strArr, null, null, null);
                    ArrayList arrayList = new ArrayList();
                    if (query != null) {
                        while (query.moveToNext()) {
                            arrayList.add(query.getString(0));
                        }
                    }
                    if (str.equals("0")) {
                        if (i == 0) {
                            update = b.update(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues, "status=?", new String[]{String.valueOf(1)});
                        } else {
                            update = b.update(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues, "status=? AND type=?", new String[]{String.valueOf(1), String.valueOf(i)});
                        }
                    } else if (i == 0) {
                        update = b.update(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues, "appid=?", new String[]{"" + str});
                    } else {
                        update = b.update(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues, "appid=? AND type=?", new String[]{"" + str, String.valueOf(i)});
                    }
                    if (update == -1) {
                        i2 = 0;
                    } else if (update > 0) {
                        try {
                            i2 = arrayList.size();
                        } catch (Exception e) {
                            Exception exception2 = e;
                            i2 = update;
                            exception = exception2;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "error " + exception.getMessage());
                                }
                                m4608c();
                                return i2;
                            } catch (Throwable th) {
                                m4608c();
                            }
                        }
                    } else {
                        i2 = update;
                    }
                    m4608c();
                }
            } catch (Exception e2) {
                exception = e2;
                i2 = -1;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + exception.getMessage());
                }
                m4608c();
                return i2;
            }
        }
        m4608c();
        i2 = -1;
        return i2;
    }

    public synchronized int m4598b(String str) {
        Cursor query;
        int i;
        Exception e;
        Throwable th;
        try {
            query = m4601b().query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"count(*)"}, "appid=?", new String[]{str}, null, null, null);
            try {
                i = query.moveToNext() ? query.getInt(0) : 0;
                if (query != null) {
                    query.close();
                }
                m4608c();
            } catch (Exception e2) {
                e = e2;
                try {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "getMsgCountByAppid " + e.getMessage());
                    }
                    if (query != null) {
                        query.close();
                    }
                    m4608c();
                    i = 0;
                    return i;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    m4608c();
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            if (C0192a.m4341b()) {
                C0385a.m5313d("DatabaseManager", "getMsgCountByAppid " + e.getMessage());
            }
            if (query != null) {
                query.close();
            }
            m4608c();
            i = 0;
            return i;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            m4608c();
            throw th;
        }
        return i;
    }

    public synchronized int m4599b(String str, String str2) {
        int i = -1;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (b == null) {
                m4608c();
            } else {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        i = b.delete(LightAppTableDefine.DB_TABLE_SUBSCRIBE, "apikey=?", new String[]{str});
                    } else if (TextUtils.isEmpty(str2)) {
                        m4608c();
                    } else {
                        i = b.delete(LightAppTableDefine.DB_TABLE_SUBSCRIBE, "appid=?", new String[]{str2});
                    }
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "unSubscribe " + e.getMessage());
                    }
                } finally {
                    m4608c();
                }
            }
        }
        return i;
    }

    public synchronized int m4600b(ArrayList<String> arrayList) {
        int i;
        SQLiteDatabase b = m4601b();
        if (b == null || arrayList == null) {
            m4608c();
            i = -1;
        } else {
            try {
                i = arrayList.size();
                if (arrayList.size() > 0) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("status", Integer.valueOf(0));
                        i = b.update(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues, "msgid=?", new String[]{str}) != 1 ? i - 1 : i;
                    }
                }
            } catch (Exception e) {
                i = C0192a.m4341b();
                if (i == true) {
                    i = "DatabaseManager";
                    C0385a.m5313d(i, "error " + e.getMessage());
                }
                i = -1;
                return i;
            } finally {
                m4608c();
            }
        }
        return i;
    }

    public synchronized SQLiteDatabase m4601b() {
        if (this.f3094b.incrementAndGet() == 1) {
            this.f3095c = LightAppDatabase.getWritableDb(this.f3093a);
        }
        return this.f3095c;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean m4602b(java.lang.String r12, int r13) {
        /*
        r11 = this;
        r10 = 1;
        r9 = 0;
        r8 = 0;
        monitor-enter(r11);
        r0 = r11.m4601b();	 Catch:{ all -> 0x00b5 }
        r1 = 0;
        if (r0 == 0) goto L_0x0011;
    L_0x000b:
        r2 = android.text.TextUtils.isEmpty(r12);	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        if (r2 == 0) goto L_0x001c;
    L_0x0011:
        r11.m4608c();	 Catch:{ all -> 0x00b5 }
        if (r9 == 0) goto L_0x0019;
    L_0x0016:
        r1.close();	 Catch:{ all -> 0x00b5 }
    L_0x0019:
        r0 = r8;
    L_0x001a:
        monitor-exit(r11);
        return r0;
    L_0x001c:
        r1 = "subscribe";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        r3 = 0;
        r4 = "host_channel";
        r2[r3] = r4;	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        r3 = "appid=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        r5 = 0;
        r4[r5] = r12;	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r9 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00b8, all -> 0x00e7 }
        r1 = r9.moveToNext();	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        if (r1 == 0) goto L_0x00fc;
    L_0x003b:
        r1 = 0;
        r1 = r9.getString(r1);	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        if (r1 == 0) goto L_0x00fc;
    L_0x0042:
        r2 = r1.length();	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        if (r2 <= 0) goto L_0x00fc;
    L_0x0048:
        r2 = ":";
        r1 = r1.split(r2);	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r2 = r1.length;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        if (r2 <= 0) goto L_0x00fc;
    L_0x0051:
        r2 = 0;
        r5 = r1[r2];	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r9.close();	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r1 = "register";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r3 = 0;
        r4 = "pkg_name";
        r2[r3] = r4;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r3 = "channel=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r6 = 0;
        r4[r6] = r5;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r9 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r1 = r9.moveToNext();	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        if (r1 == 0) goto L_0x00fc;
    L_0x0076:
        r1 = 0;
        r1 = r9.getString(r1);	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r9.close();	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r2 = 2;
        r4 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r2 = 0;
        r4[r2] = r12;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r2 = 1;
        r4[r2] = r1;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r1 = "blacklist";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r3 = 0;
        r5 = "type";
        r2[r3] = r5;	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r3 = "app_id=? AND pkg_name=? ";
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00f4, all -> 0x00e7 }
        r0 = r1.moveToNext();	 Catch:{ Exception -> 0x00f7 }
        if (r0 == 0) goto L_0x00f9;
    L_0x00a0:
        r0 = 0;
        r0 = r1.getInt(r0);	 Catch:{ Exception -> 0x00f7 }
        if (r0 == r13) goto L_0x00a9;
    L_0x00a7:
        if (r0 != 0) goto L_0x00f9;
    L_0x00a9:
        r9 = r1;
        r0 = r10;
    L_0x00ab:
        r11.m4608c();	 Catch:{ all -> 0x00b5 }
        if (r9 == 0) goto L_0x001a;
    L_0x00b0:
        r9.close();	 Catch:{ all -> 0x00b5 }
        goto L_0x001a;
    L_0x00b5:
        r0 = move-exception;
        monitor-exit(r11);
        throw r0;
    L_0x00b8:
        r0 = move-exception;
        r1 = r9;
    L_0x00ba:
        r2 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x00f1 }
        if (r2 == 0) goto L_0x00dc;
    L_0x00c0:
        r2 = "DatabaseManager";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00f1 }
        r3.<init>();	 Catch:{ all -> 0x00f1 }
        r4 = "error ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00f1 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x00f1 }
        r0 = r3.append(r0);	 Catch:{ all -> 0x00f1 }
        r0 = r0.toString();	 Catch:{ all -> 0x00f1 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r0);	 Catch:{ all -> 0x00f1 }
    L_0x00dc:
        r11.m4608c();	 Catch:{ all -> 0x00b5 }
        if (r1 == 0) goto L_0x00e4;
    L_0x00e1:
        r1.close();	 Catch:{ all -> 0x00b5 }
    L_0x00e4:
        r0 = r8;
        goto L_0x001a;
    L_0x00e7:
        r0 = move-exception;
    L_0x00e8:
        r11.m4608c();	 Catch:{ all -> 0x00b5 }
        if (r9 == 0) goto L_0x00f0;
    L_0x00ed:
        r9.close();	 Catch:{ all -> 0x00b5 }
    L_0x00f0:
        throw r0;	 Catch:{ all -> 0x00b5 }
    L_0x00f1:
        r0 = move-exception;
        r9 = r1;
        goto L_0x00e8;
    L_0x00f4:
        r0 = move-exception;
        r1 = r9;
        goto L_0x00ba;
    L_0x00f7:
        r0 = move-exception;
        goto L_0x00ba;
    L_0x00f9:
        r9 = r1;
        r0 = r8;
        goto L_0x00ab;
    L_0x00fc:
        r0 = r8;
        goto L_0x00ab;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.b(java.lang.String, int):boolean");
    }

    public synchronized boolean m4603b(String str, String str2, int i) {
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "addBlackList appid or pkgName can not be null");
                    }
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.EXTRA_APP_ID, str);
                    contentValues.put(PushConstants.PACKAGE_NAME, str2);
                    contentValues.put(ProGuard.f5475c, Integer.valueOf(i));
                    if (b.insert(LightAppTableDefine.DB_TABLE_BLACKLIST, null, contentValues) > 0) {
                        z = true;
                    }
                    m4608c();
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
            } finally {
                m4608c();
            }
        }
        return z;
    }

    public synchronized boolean m4604b(String str, String str2, String str3, String str4) {
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                try {
                    long update;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.PACKAGE_NAME, str2);
                    contentValues.put(ProGuard.f5477e, str);
                    contentValues.put("host_name", str3);
                    contentValues.put("host_version", str4);
                    Cursor query = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME}, "pkg_name=?", new String[]{str2}, null, null, null);
                    if (query.moveToNext()) {
                        update = (long) b.update(LightAppTableDefine.DB_TABLE_REGISTER, contentValues, "pkg_name=?", new String[]{str2});
                    } else {
                        contentValues.put("msg_count", Integer.valueOf(0));
                        contentValues.put("msg_switch", Integer.valueOf(0));
                        contentValues.put("reg_time", Long.valueOf(System.currentTimeMillis()));
                        update = b.insert(LightAppTableDefine.DB_TABLE_REGISTER, null, contentValues);
                    }
                    query.close();
                    boolean z2 = update > 0;
                    m4608c();
                    z = z2;
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                    }
                    m4608c();
                } catch (Throwable th) {
                    m4608c();
                }
            } else if (C0192a.m4341b()) {
                C0385a.m5311b("DatabaseManager", "register pkgName or channel can not be null");
            }
        }
        return z;
    }

    public synchronized int m4605c(int i, String str) {
        String[] strArr = null;
        int i2 = -1;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (b != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        String str2;
                        if (str.equals("0")) {
                            if (i != 0) {
                                str2 = "type = ?";
                                strArr = new String[]{String.valueOf(i)};
                            } else {
                                str2 = null;
                            }
                        } else if (i == 0) {
                            str2 = "appid = ?";
                            strArr = new String[]{"" + str};
                        } else {
                            str2 = "appid= ? AND type = ?";
                            strArr = new String[]{"" + str, String.valueOf(i)};
                        }
                        i2 = b.delete(LightAppTableDefine.DB_TABLE_MESSAGE, str2, strArr);
                    }
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                    }
                    return i2;
                } finally {
                    m4608c();
                }
            }
            m4608c();
        }
        return i2;
    }

    public synchronized int m4606c(String str) {
        Cursor query;
        int i;
        Exception e;
        Throwable th;
        try {
            query = m4601b().query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"count(*)"}, "appid=? AND status=?", new String[]{str, "1"}, null, null, null);
            try {
                i = query.moveToNext() ? query.getInt(0) : 0;
                if (query != null) {
                    query.close();
                }
                m4608c();
            } catch (Exception e2) {
                e = e2;
                try {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "getMsgUnreadCountByAppid " + e.getMessage());
                    }
                    if (query != null) {
                        query.close();
                    }
                    m4608c();
                    i = 0;
                    return i;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    m4608c();
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            if (C0192a.m4341b()) {
                C0385a.m5313d("DatabaseManager", "getMsgUnreadCountByAppid " + e.getMessage());
            }
            if (query != null) {
                query.close();
            }
            m4608c();
            i = 0;
            return i;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            m4608c();
            throw th;
        }
        return i;
    }

    public synchronized int m4607c(ArrayList<String> arrayList) {
        int i;
        int i2 = 0;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            i = -1;
            if (b == null || arrayList == null) {
                m4608c();
            } else {
                try {
                    if (arrayList.size() > 0) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            String str = (String) it.next();
                            i2 = 1 == b.delete(LightAppTableDefine.DB_TABLE_MESSAGE, "msgid=?", new String[]{str}) ? i2 + 1 : i2;
                        }
                    }
                    i = i2;
                } catch (Exception e) {
                    Exception exception = e;
                    i = 0;
                    r1 = exception;
                    if (C0192a.m4341b()) {
                        Exception exception2;
                        C0385a.m5313d("DatabaseManager", "error " + exception2.getMessage());
                    }
                } finally {
                    m4608c();
                }
            }
        }
        return i;
    }

    public synchronized void m4608c() {
        try {
            this.f3096d.lock();
            if (this.f3094b.decrementAndGet() == 0 && this.f3095c != null) {
                this.f3095c.close();
            }
            this.f3096d.unlock();
        } catch (Exception e) {
            C0385a.m5313d("DatabaseManager", e.getMessage());
            this.f3096d.unlock();
        } catch (Throwable th) {
            this.f3096d.unlock();
        }
    }

    public synchronized boolean m4609c(String str, String str2) {
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "register pkgName or channel can not be null");
                    }
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.PACKAGE_NAME, str2);
                    contentValues.put(ProGuard.f5477e, str);
                    contentValues.put("msg_count", Integer.valueOf(0));
                    contentValues.put("msg_switch", Integer.valueOf(0));
                    contentValues.put("reg_time", Long.valueOf(System.currentTimeMillis()));
                    if (b.insert(LightAppTableDefine.DB_TABLE_REGISTER, null, contentValues) > 0) {
                        z = true;
                    }
                    m4608c();
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
            } finally {
                m4608c();
            }
        }
        return z;
    }

    public synchronized void m4610d() {
        Object e;
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (b != null) {
                try {
                    Cursor query = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"count(*)"}, null, null, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToNext() && query.getInt(0) > LightAppTableDefine.Msg_Need_Clean_COUNT) {
                                query.close();
                                Cursor query2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"appid", "count(*)"}, null, null, "appid", null, null);
                                while (query2.moveToNext()) {
                                    try {
                                        cursor2 = b.query(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"time"}, "appid =? ", new String[]{query2.getString(0)}, null, null, "time DESC", null);
                                        if (cursor2.moveToPosition(49)) {
                                            b.delete(LightAppTableDefine.DB_TABLE_MESSAGE, "appid=? AND time<?", new String[]{query2.getString(0), cursor2.getString(0)});
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cursor = query2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor = query2;
                                    }
                                }
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                query = query2;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            cursor = query;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5311b("DatabaseManager", "checkDB E: " + e);
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                m4608c();
                            } catch (Throwable th3) {
                                th = th3;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    query.close();
                    cursor = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"count(*)"}, null, null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToNext() && cursor.getInt(0) > LocationClientOption.MIN_SCAN_SPAN) {
                                cursor.close();
                                b.delete(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, "sub_time<?", new String[]{(System.currentTimeMillis() - -813934592) + ""});
                            }
                        } catch (Exception e4) {
                            e = e4;
                            if (C0192a.m4341b()) {
                                C0385a.m5311b("DatabaseManager", "checkDB E: " + e);
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                        }
                    }
                    b.delete(LightAppTableDefine.DB_TABLE_NOTIFICATION, "time_stamp<?", new String[]{(System.currentTimeMillis() - 259200000) + ""});
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e5) {
                    e = e5;
                    cursor = null;
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "checkDB E: " + e);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                } catch (Throwable th5) {
                    th = th5;
                    cursor = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                m4608c();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void m4611d(java.util.ArrayList<java.lang.String> r14) {
        /*
        r13 = this;
        r10 = 0;
        r12 = 0;
        monitor-enter(r13);
        r1 = r13.m4601b();	 Catch:{ all -> 0x0097 }
        r11 = r12;
    L_0x0008:
        r2 = r14.size();	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        if (r11 >= r2) goto L_0x0061;
    L_0x000e:
        r2 = r14.get(r11);	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r9 = r0;
        r2 = "register";
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r4 = 0;
        r5 = "msg_count";
        r3[r4] = r5;	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r4 = "pkg_name=?";
        r5 = 1;
        r5 = new java.lang.String[r5];	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r6 = 0;
        r5[r6] = r9;	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r2 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x00a7, all -> 0x00a4 }
        r3 = r2.moveToNext();	 Catch:{ Exception -> 0x006b }
        if (r3 == 0) goto L_0x00aa;
    L_0x0035:
        r3 = "msg_count";
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x006b }
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x006b }
    L_0x003f:
        r4 = new android.content.ContentValues;	 Catch:{ Exception -> 0x006b }
        r4.<init>();	 Catch:{ Exception -> 0x006b }
        r5 = "msg_count";
        r3 = r3 + 1;
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ Exception -> 0x006b }
        r4.put(r5, r3);	 Catch:{ Exception -> 0x006b }
        r3 = "register";
        r5 = "pkg_name=?";
        r6 = 1;
        r6 = new java.lang.String[r6];	 Catch:{ Exception -> 0x006b }
        r7 = 0;
        r6[r7] = r9;	 Catch:{ Exception -> 0x006b }
        r1.update(r3, r4, r5, r6);	 Catch:{ Exception -> 0x006b }
        r3 = r11 + 1;
        r11 = r3;
        r10 = r2;
        goto L_0x0008;
    L_0x0061:
        r13.m4608c();	 Catch:{ all -> 0x0097 }
        if (r10 == 0) goto L_0x0069;
    L_0x0066:
        r10.close();	 Catch:{ all -> 0x0097 }
    L_0x0069:
        monitor-exit(r13);
        return;
    L_0x006b:
        r1 = move-exception;
    L_0x006c:
        r3 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x009a }
        if (r3 == 0) goto L_0x008e;
    L_0x0072:
        r3 = "DatabaseManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009a }
        r4.<init>();	 Catch:{ all -> 0x009a }
        r5 = "error ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x009a }
        r1 = r1.getMessage();	 Catch:{ all -> 0x009a }
        r1 = r4.append(r1);	 Catch:{ all -> 0x009a }
        r1 = r1.toString();	 Catch:{ all -> 0x009a }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);	 Catch:{ all -> 0x009a }
    L_0x008e:
        r13.m4608c();	 Catch:{ all -> 0x0097 }
        if (r2 == 0) goto L_0x0069;
    L_0x0093:
        r2.close();	 Catch:{ all -> 0x0097 }
        goto L_0x0069;
    L_0x0097:
        r1 = move-exception;
        monitor-exit(r13);
        throw r1;
    L_0x009a:
        r1 = move-exception;
    L_0x009b:
        r13.m4608c();	 Catch:{ all -> 0x0097 }
        if (r2 == 0) goto L_0x00a3;
    L_0x00a0:
        r2.close();	 Catch:{ all -> 0x0097 }
    L_0x00a3:
        throw r1;	 Catch:{ all -> 0x0097 }
    L_0x00a4:
        r1 = move-exception;
        r2 = r10;
        goto L_0x009b;
    L_0x00a7:
        r1 = move-exception;
        r2 = r10;
        goto L_0x006c;
    L_0x00aa:
        r3 = r12;
        goto L_0x003f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.d(java.util.ArrayList):void");
    }

    public synchronized boolean m4612d(String str) {
        Cursor cursor;
        Exception exception;
        Throwable th;
        boolean z = true;
        Cursor cursor2 = null;
        boolean z2 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor3 = null;
            if (b == null) {
                if (null != null) {
                    cursor3.close();
                }
                m4608c();
            } else {
                try {
                    cursor2 = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"appid"}, "appid=?", new String[]{str}, null, null, null);
                    boolean z3 = cursor2.getCount() > 0;
                    if (!z3) {
                        cursor2.close();
                        cursor2 = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"appid"}, "appid=? AND is_blacked =? ", new String[]{str, "0"}, null, null, null);
                        z3 = cursor2.getCount() > 0;
                    }
                    if (z3) {
                        z = z3;
                        cursor = cursor2;
                    } else {
                        cursor2.close();
                        cursor = b.query(LightAppTableDefine.DB_TABLE_APP_INFO, new String[]{"appid"}, "appid=?", new String[]{str}, null, null, null);
                        try {
                            if (cursor.getCount() <= 0) {
                                z = false;
                            }
                        } catch (Exception e) {
                            cursor2 = cursor;
                            exception = e;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "isSubscribedByAppid " + exception.getMessage());
                                }
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                m4608c();
                                return z2;
                            } catch (Throwable th2) {
                                th = th2;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                m4608c();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            cursor2 = cursor;
                            th = th3;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            m4608c();
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    z2 = z;
                } catch (Exception e2) {
                    exception = e2;
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "isSubscribedByAppid " + exception.getMessage());
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    m4608c();
                    return z2;
                }
            }
        }
        return z2;
    }

    public synchronized boolean m4613d(String str, String str2) {
        Cursor query;
        Exception e;
        Throwable th;
        boolean z = false;
        synchronized (this) {
            try {
                query = m4601b().query(LightAppTableDefine.DB_TABLE_BLACKLIST, new String[]{PushConstants.EXTRA_APP_ID}, "app_id=? AND pkg_name=?", new String[]{str, str2}, null, null, null);
                if (query != null) {
                    try {
                        boolean z2 = query.getCount() > 0;
                        if (query != null) {
                            query.close();
                        }
                        m4608c();
                        z = z2;
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                            }
                            if (query != null) {
                                query.close();
                            }
                            m4608c();
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (query != null) {
                                query.close();
                            }
                            m4608c();
                            throw th;
                        }
                    }
                } else {
                    if (query != null) {
                        query.close();
                    }
                    m4608c();
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                if (query != null) {
                    query.close();
                }
                m4608c();
                return z;
            } catch (Throwable th3) {
                th = th3;
                query = null;
                if (query != null) {
                    query.close();
                }
                m4608c();
                throw th;
            }
        }
        return z;
    }

    public synchronized String m4614e() {
        String str;
        JSONException e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b == null) {
            if (null != null) {
                cursor.close();
            }
            m4608c();
            str = null;
        } else {
            try {
                JSONArray jSONArray = new JSONArray();
                cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, null, null, null, null, null, null);
                while (cursor.moveToNext()) {
                    try {
                        str = cursor.getString(cursor.getColumnIndex("appid"));
                        String string = cursor.getString(cursor.getColumnIndex("app_name"));
                        String string2 = cursor.getString(cursor.getColumnIndex("app_logo"));
                        String string3 = cursor.getString(cursor.getColumnIndex("apikey"));
                        int i = cursor.getInt(cursor.getColumnIndex("is_bind"));
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("appid", str);
                        jSONObject.put("app_name", string);
                        jSONObject.put("app_logo", string2);
                        jSONObject.put("api_key", string3);
                        jSONObject.put("is_bind", i);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        e = e2;
                    }
                }
                str = jSONArray.toString();
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
            } catch (JSONException e3) {
                e = e3;
                cursor = null;
                try {
                    C0385a.m5313d("DatabaseManager", "getSubscribedApps " + e.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    str = null;
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
                throw th;
            }
        }
        return str;
    }

    public synchronized boolean m4615e(String str) {
        Exception e;
        Throwable th;
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor = null;
            if (b == null) {
                if (null != null) {
                    cursor.close();
                }
                m4608c();
            } else {
                try {
                    cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"is_bind"}, "apikey=?", new String[]{str}, null, null, null);
                    try {
                        boolean z2 = cursor.moveToNext() && cursor.getInt(0) == 1;
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        z = z2;
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "isLightAppBindedByApiKey " + e.getMessage());
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    cursor = null;
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "isLightAppBindedByApiKey " + e.getMessage());
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    return z;
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    throw th;
                }
            }
        }
        return z;
    }

    public synchronized boolean m4616e(String str, String str2) {
        boolean z = true;
        boolean z2 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "deleteBlackList appid or pkgName can not be null");
                    }
                    m4608c();
                } else {
                    if (b.delete(LightAppTableDefine.DB_TABLE_BLACKLIST, "app_id = ? AND pkg_name =?", new String[]{str, str2}) <= 0) {
                        z = false;
                    }
                    m4608c();
                    z2 = z;
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                m4608c();
            } catch (Throwable th) {
                m4608c();
            }
        }
        return z2;
    }

    public synchronized ArrayList<String> m4617f() {
        ArrayList<String> arrayList;
        Exception e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b == null) {
            if (null != null) {
                cursor.close();
            }
            m4608c();
            arrayList = null;
        } else {
            try {
                cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"appid"}, null, null, null, null, null);
                try {
                    arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        arrayList.add(cursor.getString(cursor.getColumnIndex("appid")));
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                } catch (Exception e2) {
                    e = e2;
                    try {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        arrayList = null;
                        return arrayList;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                cursor = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
                arrayList = null;
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
                throw th;
            }
        }
        return arrayList;
    }

    public synchronized void m4618f(String str, String str2) {
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    ContentValues contentValues = new ContentValues();
                    cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"shortcut_by"}, "apikey=?", new String[]{str}, null, null, null);
                    try {
                        if (cursor.getCount() > 0) {
                            contentValues.put("shortcut_by", str2);
                            b.update(LightAppTableDefine.DB_TABLE_SUBSCRIBE, contentValues, "apikey=?", new String[]{str});
                        }
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Exception e) {
                        e = e;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                            }
                            m4608c();
                            if (cursor != null) {
                                cursor.close();
                            }
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            m4608c();
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "error " + e3.getMessage());
                }
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th3) {
                th2 = th3;
                cursor = null;
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                throw th2;
            }
        }
        m4608c();
        if (null != null) {
            cursor.close();
        }
    }

    public synchronized boolean m4619f(String str) {
        Exception exception;
        Throwable th;
        Cursor cursor = null;
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b == null) {
                if (null != null) {
                    cursor2.close();
                }
                m4608c();
            } else {
                try {
                    boolean z2;
                    cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"apikey"}, "app_logo=?", new String[]{str}, null, null, null);
                    if (!cursor.moveToNext() || TextUtils.isEmpty(cursor.getString(0))) {
                        cursor.close();
                        cursor = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"apikey"}, "app_logo=?", new String[]{str}, null, null, null);
                        if (!cursor.moveToNext() || TextUtils.isEmpty(cursor.getString(0))) {
                            cursor.close();
                            Cursor query = b.query(LightAppTableDefine.DB_TABLE_APP_INFO, new String[]{"apikey"}, "app_logo=?", new String[]{str}, null, null, null);
                            try {
                                if (!query.moveToNext() || TextUtils.isEmpty(query.getString(0))) {
                                    cursor2 = query;
                                    z2 = false;
                                } else {
                                    cursor2 = query;
                                    z2 = true;
                                }
                            } catch (Exception e) {
                                cursor = query;
                                exception = e;
                                try {
                                    if (C0192a.m4341b()) {
                                        C0385a.m5313d("DatabaseManager", "isLightAppInfoGeted " + exception.getMessage());
                                    }
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    m4608c();
                                    return z;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    m4608c();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                cursor = query;
                                th = th3;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                m4608c();
                                throw th;
                            }
                        }
                        z2 = true;
                        cursor2 = cursor;
                    } else {
                        z2 = true;
                        cursor2 = cursor;
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    m4608c();
                    z = z2;
                } catch (Exception e2) {
                    exception = e2;
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "isLightAppInfoGeted " + exception.getMessage());
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    return z;
                }
            }
        }
        return z;
    }

    public synchronized HashMap<String, Integer> m4620g() {
        HashMap<String, Integer> hashMap;
        SQLiteDatabase b = m4601b();
        HashMap<String, Integer> hashMap2 = new HashMap();
        Cursor query;
        try {
            query = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME, "msg_switch"}, null, null, null, null, "reg_time DESC");
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        int columnIndex = query.getColumnIndex(PushConstants.PACKAGE_NAME);
                        int columnIndex2 = query.getColumnIndex("msg_switch");
                        String string = query.getString(columnIndex);
                        columnIndex2 = query.getInt(columnIndex2);
                        if (columnIndex2 == 0) {
                            hashMap2.put(string, Integer.valueOf(columnIndex2));
                        }
                    } catch (Exception e) {
                        e = e;
                    }
                }
            }
            m4608c();
            if (query != null) {
                query.close();
            }
            hashMap = hashMap2;
        } catch (Exception e2) {
            e = e2;
            query = null;
            try {
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "error " + e3.getMessage());
                }
                m4608c();
                if (query != null) {
                    query.close();
                }
                hashMap = null;
                return hashMap;
            } catch (Throwable th) {
                Throwable th2 = th;
                m4608c();
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            th2 = th3;
            query = null;
            m4608c();
            if (query != null) {
                query.close();
            }
            throw th2;
        }
        return hashMap;
    }

    public synchronized boolean m4621g(String str) {
        Exception e;
        Throwable th;
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor = null;
            if (b == null) {
                if (null != null) {
                    cursor.close();
                }
                m4608c();
            } else {
                try {
                    cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"is_bind"}, "apikey=?", new String[]{str}, null, null, null);
                    try {
                        boolean z2 = cursor.moveToNext();
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        z = z2;
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "isLightAppSubscribedByApiKey " + e.getMessage());
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    cursor = null;
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "isLightAppSubscribedByApiKey " + e.getMessage());
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    return z;
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    m4608c();
                    throw th;
                }
            }
        }
        return z;
    }

    public synchronized String[] m4622g(String str, String str2) {
        String[] strArr;
        Cursor cursor = null;
        synchronized (this) {
            String[] strArr2 = new String[3];
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b == null) {
                m4608c();
                if (cursor != null) {
                    cursor2.close();
                }
                strArr = cursor;
            } else {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"app_name", "shortcut_by", "appid"}, "apikey=?", new String[]{str}, null, null, null);
                    } else if (TextUtils.isEmpty(str2)) {
                        m4608c();
                        if (cursor != null) {
                            cursor2.close();
                        }
                        strArr = cursor;
                    } else {
                        cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"app_name", "shortcut_by", "appid"}, "appid=?", new String[]{str2}, null, null, null);
                    }
                    if (cursor.moveToNext()) {
                        strArr2[0] = cursor.getString(cursor.getColumnIndex("app_name"));
                        strArr2[1] = cursor.getString(cursor.getColumnIndex("shortcut_by"));
                        strArr2[2] = cursor.getString(cursor.getColumnIndex("appid"));
                    }
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    strArr = strArr2;
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                    }
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    strArr = strArr2;
                } catch (Throwable th) {
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return strArr;
    }

    public synchronized ArrayList<C0273h> m4623h() {
        Cursor query;
        Cursor cursor;
        Throwable th;
        ArrayList<C0273h> arrayList;
        ArrayList<C0273h> arrayList2 = new ArrayList();
        SQLiteDatabase b = m4601b();
        try {
            query = b.query(LightAppTableDefine.DB_TABLE_REGISTER, null, null, null, null, null, "reg_time DESC");
            while (query.moveToNext()) {
                try {
                    C0273h c0273h = new C0273h();
                    c0273h.m4879a(query.getString(query.getColumnIndex(ProGuard.f5477e)));
                    String string = query.getString(query.getColumnIndex(PushConstants.PACKAGE_NAME));
                    if (string != null) {
                        c0273h.m4882b(string);
                        c0273h.m4880a(query.getInt(query.getColumnIndex("msg_switch")) == 0);
                        Cursor query2 = b.query(LightAppTableDefine.DB_TABLE_BLACKLIST, new String[]{PushConstants.EXTRA_APP_ID}, "pkg_name=?", new String[]{string}, null, null, null);
                        while (query2.moveToNext()) {
                            c0273h.m4883c(query2.getString(0));
                        }
                        query2.close();
                    }
                    arrayList2.add(c0273h);
                } catch (Exception e) {
                    cursor = query;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            m4608c();
            if (query != null) {
                query.close();
            }
            arrayList = arrayList2;
        } catch (Exception e2) {
            cursor = null;
            m4608c();
            if (cursor != null) {
                cursor.close();
            }
            arrayList = null;
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            m4608c();
            if (query != null) {
                query.close();
            }
            throw th;
        }
        return arrayList;
    }

    public synchronized boolean m4624h(String str) {
        boolean z;
        Exception e;
        Throwable th;
        Cursor cursor = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            Cursor cursor2 = null;
            if (b == null) {
                if (null != null) {
                    cursor2.close();
                }
                m4608c();
                z = false;
            } else {
                try {
                    CharSequence string;
                    int i;
                    String string2;
                    int i2;
                    Cursor cursor3;
                    cursor = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, new String[]{"host_channel"}, "appid=?", new String[]{str}, null, null, null);
                    CharSequence charSequence = "";
                    if (cursor.moveToNext()) {
                        charSequence = cursor.getString(0);
                    }
                    if (TextUtils.isEmpty(charSequence)) {
                        cursor.close();
                        cursor = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, new String[]{"host_channel"}, "appid=?", new String[]{str}, null, null, null);
                        if (cursor.moveToNext()) {
                            string = cursor.getString(0);
                            cursor2 = cursor;
                            if (TextUtils.isEmpty(string)) {
                                cursor = cursor2;
                                for (String str2 : cursor2.getString(0).split(":")) {
                                    cursor.close();
                                    cursor = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME, "msg_switch"}, "channel=?", new String[]{str2}, null, null, null);
                                    if (cursor.moveToNext()) {
                                        string2 = cursor.getString(cursor.getColumnIndex(PushConstants.PACKAGE_NAME));
                                        if (!TextUtils.isEmpty(string2) && (string2.startsWith(GetApn.PKGNAME_PREFIX) || string2.startsWith("com.baidu.voiceassistant"))) {
                                            try {
                                                i2 = this.f3093a.getPackageManager().getPackageInfo(string2, 1).versionCode;
                                                if (i2 <= 16787720) {
                                                    if (C0192a.m4341b()) {
                                                        C0385a.m5311b("DatabaseManager", " lightapp msg blocked by searchbox " + i2);
                                                    }
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    m4608c();
                                                    z = true;
                                                } else {
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    m4608c();
                                                    z = false;
                                                }
                                            } catch (NameNotFoundException e2) {
                                                if (C0192a.m4341b()) {
                                                    C0385a.m5311b("DatabaseManager", " searchbox not found ");
                                                }
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                m4608c();
                                                z = false;
                                            }
                                        }
                                    }
                                }
                                cursor3 = cursor;
                            } else {
                                cursor3 = cursor2;
                            }
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            m4608c();
                            z = false;
                        }
                    }
                    string = charSequence;
                    cursor2 = cursor;
                    try {
                        if (TextUtils.isEmpty(string)) {
                            cursor3 = cursor2;
                        } else {
                            cursor = cursor2;
                            for (i = 0; i < r13; i++) {
                                cursor.close();
                                cursor = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME, "msg_switch"}, "channel=?", new String[]{str2}, null, null, null);
                                if (cursor.moveToNext()) {
                                    string2 = cursor.getString(cursor.getColumnIndex(PushConstants.PACKAGE_NAME));
                                    i2 = this.f3093a.getPackageManager().getPackageInfo(string2, 1).versionCode;
                                    if (i2 <= 16787720) {
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        m4608c();
                                        z = false;
                                    } else {
                                        if (C0192a.m4341b()) {
                                            C0385a.m5311b("DatabaseManager", " lightapp msg blocked by searchbox " + i2);
                                        }
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        m4608c();
                                        z = true;
                                    }
                                }
                            }
                            cursor3 = cursor;
                        }
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        m4608c();
                        z = false;
                    } catch (Exception e3) {
                        e = e3;
                        cursor = cursor2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "isLightAppSubscribedByApiKey " + e.getMessage());
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            z = false;
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                }
            }
        }
        return z;
    }

    public synchronized boolean m4625i(String str) {
        Throwable th;
        boolean z = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            if (b != null) {
                Cursor query;
                try {
                    query = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME}, "pkg_name=?", new String[]{str}, null, null, null);
                    if (query != null) {
                        try {
                            boolean z2 = query.getCount() > 0;
                            m4608c();
                            if (query != null) {
                                query.close();
                            }
                            z = z2;
                        } catch (Exception e) {
                            e = e;
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                                }
                                m4608c();
                                if (query != null) {
                                    query.close();
                                }
                                return z;
                            } catch (Throwable th2) {
                                th = th2;
                                m4608c();
                                if (query != null) {
                                    query.close();
                                }
                                throw th;
                            }
                        }
                    }
                    m4608c();
                    if (query != null) {
                        query.close();
                    }
                } catch (Exception e2) {
                    e = e2;
                    query = null;
                    if (C0192a.m4341b()) {
                        Exception e3;
                        C0385a.m5313d("DatabaseManager", "error " + e3.getMessage());
                    }
                    m4608c();
                    if (query != null) {
                        query.close();
                    }
                    return z;
                } catch (Throwable th3) {
                    th = th3;
                    query = null;
                    m4608c();
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        }
        return z;
    }

    public synchronized boolean m4626j(String str) {
        boolean z = true;
        boolean z2 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "updateRegister pkgName can not be null");
                    }
                    m4608c();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("reg_time", Long.valueOf(System.currentTimeMillis()));
                    if (((long) b.update(LightAppTableDefine.DB_TABLE_REGISTER, contentValues, "pkg_name=?", new String[]{str})) <= 0) {
                        z = false;
                    }
                    m4608c();
                    z2 = z;
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                m4608c();
            } catch (Throwable th) {
                m4608c();
            }
        }
        return z2;
    }

    public synchronized String m4627k(String str) {
        String string;
        Exception e;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        if (b != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    cursor = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME}, "channel= ? ", new String[]{str}, null, null, null);
                    try {
                        if (cursor.moveToNext()) {
                            string = cursor.getString(cursor.getColumnIndex(PushConstants.PACKAGE_NAME));
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                        } else {
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            string = null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (C0192a.m4341b()) {
                                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            string = null;
                            return string;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            m4608c();
                            throw th2;
                        }
                    }
                }
            } catch (Exception e3) {
                e = e3;
                cursor = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
                string = null;
                return string;
            } catch (Throwable th3) {
                th2 = th3;
                cursor = null;
                if (cursor != null) {
                    cursor.close();
                }
                m4608c();
                throw th2;
            }
        }
        if (null != null) {
            cursor.close();
        }
        m4608c();
        string = null;
        return string;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.baidu.android.pushservice.p072f.C0273h m4628l(java.lang.String r11) {
        /*
        r10 = this;
        r8 = 0;
        monitor-enter(r10);
        r0 = r10.m4601b();	 Catch:{ all -> 0x0093 }
        r1 = "register";
        r2 = 3;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r3 = 0;
        r4 = "channel";
        r2[r3] = r4;	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r3 = 1;
        r4 = "host_name";
        r2[r3] = r4;	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r3 = 2;
        r4 = "host_version";
        r2[r3] = r4;	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r3 = "pkg_name=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r5 = 0;
        r4[r5] = r11;	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x0064, all -> 0x0096 }
        r0 = r1.moveToNext();	 Catch:{ Exception -> 0x00a6, all -> 0x00a1 }
        if (r0 == 0) goto L_0x00b1;
    L_0x002f:
        r2 = new com.baidu.android.pushservice.f.h;	 Catch:{ Exception -> 0x00a6, all -> 0x00a1 }
        r2.<init>();	 Catch:{ Exception -> 0x00a6, all -> 0x00a1 }
        r0 = "channel";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r2.m4879a(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = "host_name";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r2.f3229a = r0;	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = "host_version";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r2.f3230b = r0;	 Catch:{ Exception -> 0x00ab, all -> 0x00a1 }
        r0 = r2;
    L_0x005a:
        r10.m4608c();	 Catch:{ all -> 0x0093 }
        if (r1 == 0) goto L_0x0062;
    L_0x005f:
        r1.close();	 Catch:{ all -> 0x0093 }
    L_0x0062:
        monitor-exit(r10);
        return r0;
    L_0x0064:
        r0 = move-exception;
        r1 = r0;
        r2 = r8;
        r0 = r8;
    L_0x0068:
        r3 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ all -> 0x00a3 }
        if (r3 == 0) goto L_0x008a;
    L_0x006e:
        r3 = "DatabaseManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a3 }
        r4.<init>();	 Catch:{ all -> 0x00a3 }
        r5 = "error ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x00a3 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x00a3 }
        r1 = r4.append(r1);	 Catch:{ all -> 0x00a3 }
        r1 = r1.toString();	 Catch:{ all -> 0x00a3 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);	 Catch:{ all -> 0x00a3 }
    L_0x008a:
        r10.m4608c();	 Catch:{ all -> 0x0093 }
        if (r2 == 0) goto L_0x0062;
    L_0x008f:
        r2.close();	 Catch:{ all -> 0x0093 }
        goto L_0x0062;
    L_0x0093:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x0096:
        r0 = move-exception;
        r1 = r8;
    L_0x0098:
        r10.m4608c();	 Catch:{ all -> 0x0093 }
        if (r1 == 0) goto L_0x00a0;
    L_0x009d:
        r1.close();	 Catch:{ all -> 0x0093 }
    L_0x00a0:
        throw r0;	 Catch:{ all -> 0x0093 }
    L_0x00a1:
        r0 = move-exception;
        goto L_0x0098;
    L_0x00a3:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0098;
    L_0x00a6:
        r0 = move-exception;
        r2 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0068;
    L_0x00ab:
        r0 = move-exception;
        r9 = r0;
        r0 = r2;
        r2 = r1;
        r1 = r9;
        goto L_0x0068;
    L_0x00b1:
        r0 = r8;
        goto L_0x005a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.db.a.l(java.lang.String):com.baidu.android.pushservice.f.h");
    }

    public synchronized String m4629m(String str) {
        String str2;
        Throwable th;
        SQLiteDatabase b = m4601b();
        if (b == null || TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            Cursor query;
            try {
                String[] strArr = new String[]{str};
                query = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{PushConstants.PACKAGE_NAME}, "channel=?", strArr, null, null, null);
                try {
                    if (query.moveToNext()) {
                        str2 = query.getString(0);
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                    } else {
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                        str2 = null;
                    }
                } catch (Exception e) {
                    e = e;
                    try {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                        }
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                        str2 = null;
                        return str2;
                    } catch (Throwable th2) {
                        th = th2;
                        m4608c();
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                query = null;
                if (C0192a.m4341b()) {
                    Exception e3;
                    C0385a.m5313d("DatabaseManager", "error " + e3.getMessage());
                }
                m4608c();
                if (query != null) {
                    query.close();
                }
                str2 = null;
                return str2;
            } catch (Throwable th3) {
                th = th3;
                query = null;
                m4608c();
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        return str2;
    }

    public synchronized int m4630n(String str) {
        int i;
        Exception e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        try {
            if (TextUtils.isEmpty(str)) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b("DatabaseManager", "getNewMsgNum pkgName can not be null");
                }
                m4608c();
                if (null != null) {
                    cursor.close();
                }
                i = -1;
            } else {
                cursor = b.query(LightAppTableDefine.DB_TABLE_REGISTER, new String[]{"msg_count"}, "pkg_name=?", new String[]{str}, null, null, null);
                try {
                    i = cursor.getColumnIndex("msg_count");
                    if (cursor.moveToNext()) {
                        i = cursor.getInt(i);
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else {
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        i = -1;
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                        }
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        i = -1;
                        return i;
                    } catch (Throwable th2) {
                        th = th2;
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
            if (C0192a.m4341b()) {
                C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
            }
            m4608c();
            if (cursor != null) {
                cursor.close();
            }
            i = -1;
            return i;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            m4608c();
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return i;
    }

    public synchronized boolean m4631o(String str) {
        boolean z = true;
        boolean z2 = false;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            try {
                if (TextUtils.isEmpty(str)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "clearNewMsgNum pkgName can not be null");
                    }
                    m4608c();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("msg_count", Integer.valueOf(0));
                    if (b.update(LightAppTableDefine.DB_TABLE_REGISTER, contentValues, "pkg_name=?", new String[]{str}) <= 0) {
                        z = false;
                    }
                    m4608c();
                    z2 = z;
                }
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                }
                m4608c();
            } catch (Throwable th) {
                m4608c();
            }
        }
        return z2;
    }

    public synchronized HashMap<String, Integer> m4632p(String str) {
        HashMap<String, Integer> hashMap;
        Cursor cursor = null;
        synchronized (this) {
            SQLiteDatabase b = m4601b();
            HashMap<String, Integer> hashMap2 = new HashMap();
            try {
                Cursor cursor2;
                if (TextUtils.isEmpty(str)) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("DatabaseManager", "getBlackList appid can not be null");
                    }
                    cursor2 = null;
                } else {
                    cursor2 = b.query(LightAppTableDefine.DB_TABLE_BLACKLIST, null, "app_id = ? ", new String[]{str}, null, null, null);
                    if (cursor2 != null) {
                        while (cursor2.moveToNext()) {
                            try {
                                hashMap2.put(cursor2.getString(cursor2.getColumnIndex(PushConstants.PACKAGE_NAME)), Integer.valueOf(cursor2.getInt(cursor2.getColumnIndex(ProGuard.f5475c))));
                            } catch (Exception e) {
                                Exception exception = e;
                                r1 = cursor2;
                                r0 = exception;
                            } catch (Throwable th) {
                                cursor = cursor2;
                                r0 = th;
                            }
                        }
                    }
                }
                m4608c();
                if (cursor2 != null) {
                    cursor2.close();
                }
                hashMap = hashMap2;
            } catch (Exception e2) {
                r0 = e2;
                r1 = null;
                Cursor cursor3;
                try {
                    if (C0192a.m4341b()) {
                        Exception exception2;
                        C0385a.m5313d("DatabaseManager", "error " + exception2.getMessage());
                    }
                    m4608c();
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    return hashMap;
                } catch (Throwable th2) {
                    Throwable th3;
                    th3 = th2;
                    cursor = cursor3;
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                th3 = th4;
                m4608c();
                if (cursor != null) {
                    cursor.close();
                }
                throw th3;
            }
        }
        return hashMap;
    }

    public String m4633q(String str) {
        Cursor query;
        Exception exception;
        Throwable th;
        String str2 = null;
        SQLiteDatabase b = m4601b();
        if (!(b == null || str == null)) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    query = b.query(LightAppTableDefine.DB_TABLE_SUBSCRIBE, null, "appid=?", new String[]{str}, null, null, null);
                    try {
                        String string;
                        Cursor cursor;
                        if (query.moveToNext()) {
                            string = query.getString(query.getColumnIndex("app_logo"));
                            cursor = query;
                        } else {
                            query.close();
                            query = b.query(LightAppTableDefine.DB_TABLE_WEAK_SUBSCRIBE, null, "appid=?", new String[]{str}, null, null, null);
                            if (query.moveToNext()) {
                                string = query.getString(query.getColumnIndex("app_logo"));
                                cursor = query;
                            } else {
                                query.close();
                                cursor = b.query(LightAppTableDefine.DB_TABLE_APP_INFO, null, "appid=?", new String[]{str}, null, null, null);
                                try {
                                    string = cursor.moveToNext() ? cursor.getString(cursor.getColumnIndex("app_logo")) : str2;
                                } catch (Exception e) {
                                    query = cursor;
                                    exception = e;
                                    try {
                                        if (C0192a.m4341b()) {
                                            C0385a.m5313d("DatabaseManager", "error " + exception.getMessage());
                                        }
                                        if (query != null) {
                                            query.close();
                                        }
                                        m4608c();
                                        return str2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (query != null) {
                                            query.close();
                                        }
                                        m4608c();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    query = cursor;
                                    th = th3;
                                    if (query != null) {
                                        query.close();
                                    }
                                    m4608c();
                                    throw th;
                                }
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        m4608c();
                        return string;
                    } catch (Exception e2) {
                        exception = e2;
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "error " + exception.getMessage());
                        }
                        if (query != null) {
                            query.close();
                        }
                        m4608c();
                        return str2;
                    }
                }
            } catch (Exception e3) {
                exception = e3;
                query = str2;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("DatabaseManager", "error " + exception.getMessage());
                }
                if (query != null) {
                    query.close();
                }
                m4608c();
                return str2;
            } catch (Throwable th4) {
                th = th4;
                query = str2;
                if (query != null) {
                    query.close();
                }
                m4608c();
                throw th;
            }
        }
        if (str2 != null) {
            str2.close();
        }
        m4608c();
        return str2;
    }

    public synchronized String m4634r(String str) {
        String str2;
        Exception e;
        Throwable th;
        SQLiteDatabase b = m4601b();
        Cursor cursor = null;
        JSONArray jSONArray = new JSONArray();
        if (b == null) {
            m4608c();
            if (null != null) {
                cursor.close();
            }
            str2 = null;
        } else {
            if (str != null) {
                try {
                    cursor = b.query(LightAppTableDefine.DB_TABLE_BLACKLIST, new String[]{PushConstants.EXTRA_APP_ID, PushConstants.PACKAGE_NAME, ProGuard.f5475c}, "pkg_name=?", new String[]{str}, null, null, null);
                } catch (Exception e2) {
                    e = e2;
                    cursor = null;
                    try {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("DatabaseManager", "error " + e.getMessage());
                        }
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        str2 = null;
                        return str2;
                    } catch (Throwable th2) {
                        th = th2;
                        m4608c();
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                    m4608c();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            cursor = b.query(LightAppTableDefine.DB_TABLE_BLACKLIST, new String[]{PushConstants.EXTRA_APP_ID, PushConstants.PACKAGE_NAME, ProGuard.f5475c}, null, null, null, null, null);
            while (cursor.moveToNext()) {
                try {
                    str2 = cursor.getString(cursor.getColumnIndex(PushConstants.EXTRA_APP_ID));
                    String string = cursor.getString(cursor.getColumnIndex(PushConstants.PACKAGE_NAME));
                    int i = cursor.getInt(cursor.getColumnIndex(ProGuard.f5475c));
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("appid", str2);
                    jSONObject.put(PushConstants.PACKAGE_NAME, string);
                    jSONObject.put("msg_type", i);
                    jSONArray.put(jSONObject);
                } catch (Exception e3) {
                    e = e3;
                }
            }
            str2 = jSONArray.toString();
            m4608c();
            if (cursor != null) {
                cursor.close();
            }
        }
        return str2;
    }
}
