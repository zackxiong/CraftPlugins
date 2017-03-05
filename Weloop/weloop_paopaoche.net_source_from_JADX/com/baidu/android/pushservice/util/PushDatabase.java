package com.baidu.android.pushservice.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.p072f.C0265a;
import com.baidu.android.pushservice.p072f.C0267p;
import com.baidu.android.pushservice.p072f.C0268b;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0271f;
import com.baidu.android.pushservice.p072f.C0272g;
import com.baidu.android.pushservice.p072f.C0276j;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0278l;
import com.baidu.android.pushservice.p072f.C0285u;
import com.baidu.android.pushservice.p072f.C0286v;
import com.baidu.android.pushservice.p072f.C0287w;
import com.baidu.android.pushservice.p072f.C0288x;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class PushDatabase implements NoProGuard {
    private static final String DB_DIR = "baidu/pushservice/database";
    private static final String DB_NAME = "pushstat_4.5.3.db";
    private static final int DB_VERSION = 1;
    private static final String TAG = "PushDatabase";
    private static C0358e mDbHelper;
    private static Object myLock;

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.a */
    enum C0354a {
        actionId,
        actionName,
        timeStamp,
        networkStatus,
        msgType,
        msgId,
        msgLen,
        advertiseStyle,
        errorCode,
        appid,
        actionType
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.b */
    enum C0355b {
        appInfoId,
        appid,
        appType,
        rsaUserId,
        userId,
        packageName,
        appName,
        cFrom,
        versionCode,
        versionName,
        intergratedPushVersion
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.c */
    enum C0356c {
        actionId,
        actionName,
        timeStamp,
        networkStatus,
        msgType,
        msgId,
        msgLen,
        errorMsg,
        requestId,
        stableHeartInterval,
        errorCode,
        appid,
        channel,
        openByPackageName
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.d */
    static class C0357d extends ContextWrapper {
        public C0357d(Context context) {
            super(context);
        }

        public File getDatabasePath(String str) {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + PushDatabase.DB_DIR + File.separator + str;
            if (!str2.endsWith(".db")) {
                str2 = str2 + ".db";
            }
            File file = new File(str2);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            return file;
        }

        public SQLiteDatabase openOrCreateDatabase(String str, int i, CursorFactory cursorFactory) {
            return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), null);
        }
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.e */
    private static class C0358e extends SQLiteOpenHelper {
        public C0358e(Context context, String str, int i) {
            super(new C0357d(context), str, null, i);
        }

        private void m5146a(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MsgResultInfo");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS StatisticsInfo");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS FileDownloadingInfo");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS PushBehavior");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS LappMsgInfo");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS NoDisturb");
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(PushDatabase.TAG, "dropTables Exception: " + e);
                }
            }
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MsgResultInfo");
                sQLiteDatabase.execSQL("CREATE TABLE StatisticsInfo (" + C0365l.info_id.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0365l.packageName.name() + " TEXT NOT NULL, " + C0365l.open_type.name() + " TEXT NOT NULL, " + C0365l.msgid.name() + " TEXT, " + C0365l.app_open_time.name() + " TEXT NOT NULL, " + C0365l.app_close_time.name() + " TEXT NOT NULL, " + C0365l.use_duration.name() + " TEXT NOT NULL, " + C0365l.extra.name() + " TEXT" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE PushBehavior (" + C0356c.actionId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0356c.actionName.name() + " TEXT NOT NULL, " + C0356c.timeStamp.name() + " LONG  NOT NULL, " + C0356c.networkStatus.name() + " TEXT, " + C0356c.msgType.name() + " INTEGER, " + C0356c.msgId.name() + " TEXT, " + C0356c.msgLen.name() + " INTEGER, " + C0356c.errorMsg.name() + " TEXT, " + C0356c.requestId.name() + " TEXT, " + C0356c.stableHeartInterval.name() + " INTEGER, " + C0356c.errorCode.name() + " INTEGER, " + C0356c.appid.name() + " TEXT, " + C0356c.channel.name() + " TEXT, " + C0356c.openByPackageName.name() + " Text" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE ADPushBehavior (" + C0354a.actionId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0354a.actionName.name() + " TEXT NOT NULL, " + C0354a.timeStamp.name() + " LONG  NOT NULL, " + C0354a.networkStatus.name() + " TEXT, " + C0354a.msgType.name() + " INTEGER, " + C0354a.msgId.name() + " TEXT, " + C0354a.msgLen.name() + " INTEGER, " + C0354a.advertiseStyle.name() + " TEXT, " + C0354a.errorCode.name() + " INTEGER, " + C0354a.appid.name() + " TEXT, " + C0354a.actionType.name() + " TEXT" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE WifiActionBehavior (" + C0366m.actionId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0366m.actionName.name() + " TEXT NOT NULL, " + C0366m.timeStamp.name() + " LONG  NOT NULL, " + C0366m.networkStatus.name() + " TEXT, " + C0366m.lbsInfo.name() + " TEXT, " + C0366m.zhidaId.name() + " TEXT, " + C0366m.ssid.name() + " TEXT, " + C0366m.bssid.name() + " TEXT, " + C0366m.wifiUrl.name() + " TEXT, " + C0366m.appid.name() + " TEXT, " + C0366m.access.name() + " INTEGER" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE WifiInfo (" + C0367n.wifiInfoId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0367n.actionName.name() + " TEXT NOT NULL, " + C0367n.timeStamp.name() + " LONG  NOT NULL, " + C0367n.msgRestult.name() + " TEXT NOT NULL" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE AppInfo (" + C0355b.appInfoId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0355b.appid.name() + " TEXT UNIQUE, " + C0355b.appType.name() + " INTEGER, " + C0355b.rsaUserId.name() + " TEXT, " + C0355b.userId.name() + " TEXT, " + C0355b.packageName.name() + " TEXT, " + C0355b.appName.name() + " TEXT, " + C0355b.cFrom.name() + " TEXT, " + C0355b.versionCode.name() + " TEXT, " + C0355b.versionName.name() + " TEXT, " + C0355b.intergratedPushVersion.name() + " TEXT" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE LappMsgInfo (" + C0362i.lappMsgId.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + C0362i.appid.name() + " TEXT NOT NULL, " + C0362i.title.name() + " TEXT, " + C0362i.description.name() + " TEXT, " + C0362i.url.name() + " TEXT, " + C0362i.timestamp.name() + " LONG NOT NULL, " + C0362i.visited.name() + " INTEGER" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE FileDownloadingInfo (" + C0359f.belongTo.name() + " TEXT, " + C0359f.downloadUrl.name() + " TEXT PRIMARY KEY, " + C0359f.savePath.name() + " TEXT NOT NULL, " + C0359f.title.name() + " TEXT, " + C0359f.description.name() + " TEXT, " + C0359f.fileName.name() + " TEXT NOT NULL, " + C0359f.downloadBytes.name() + " INTEGER NOT NULL, " + C0359f.totalBytes.name() + " INTEGER NOT NULL, " + C0359f.downloadStatus.name() + " INTEGER NOT NULL," + C0359f.timeStamp.name() + " INTEGER NOT NULL" + ");");
                sQLiteDatabase.execSQL("CREATE TABLE NoDisturb (" + C0363j.pkgName.name() + " TEXT NOT NULL, " + C0363j.startHour.name() + " INTEGER, " + C0363j.startMinute.name() + " INTEGER, " + C0363j.endHour.name() + " INTEGER, " + C0363j.endMinute.name() + " INTEGER" + ");");
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(PushDatabase.TAG, "DbOpenHelper onCreate E: " + e);
                }
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            m5146a(sQLiteDatabase);
            onCreate(sQLiteDatabase);
        }
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.f */
    enum C0359f {
        belongTo,
        downloadUrl,
        title,
        description,
        savePath,
        fileName,
        downloadBytes,
        totalBytes,
        downloadStatus,
        timeStamp
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.g */
    public static class C0360g {
        public String f3536a;
        public String f3537b;
        public String f3538c;
        public String f3539d;
        public String f3540e;
        public String f3541f;
        public int f3542g;
        public int f3543h;
        public int f3544i;
        public long f3545j;
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.h */
    public static class C0361h {
        public String f3546a;
        public String f3547b;
        public String f3548c;
        public String f3549d;
        public long f3550e;
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.i */
    enum C0362i {
        lappMsgId,
        appid,
        title,
        description,
        url,
        timestamp,
        visited
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.j */
    enum C0363j {
        pkgName,
        startHour,
        startMinute,
        endHour,
        endMinute
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.k */
    public static class C0364k {
        public String f3565a;
        public String f3566b;
        public String f3567c;
        public String f3568d;
        public String f3569e;
        public String f3570f;
        public JSONObject f3571g;
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.l */
    enum C0365l {
        info_id,
        packageName,
        open_type,
        msgid,
        app_open_time,
        app_close_time,
        use_duration,
        extra
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.m */
    enum C0366m {
        actionId,
        actionName,
        timeStamp,
        networkStatus,
        lbsInfo,
        zhidaId,
        ssid,
        bssid,
        wifiUrl,
        appid,
        access
    }

    /* renamed from: com.baidu.android.pushservice.util.PushDatabase.n */
    enum C0367n {
        wifiInfoId,
        actionName,
        timeStamp,
        msgRestult
    }

    static {
        mDbHelper = null;
        myLock = new Object();
    }

    public static synchronized long clearAppInfo(Context context) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = 0;
            } else {
                try {
                    db.delete("AppInfo", null, null);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5308a(TAG, "clearAppInfo Exception: " + e);
                    }
                }
                db.close();
                j = (long) -1;
            }
        }
        return j;
    }

    public static synchronized long clearBehaviorInfo(Context context) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = 0;
            } else {
                try {
                    db.delete("PushBehavior", null, null);
                    db.delete("ADPushBehavior", null, null);
                    db.delete("WifiActionBehavior", null, null);
                    db.delete("WifiInfo", null, null);
                    db.delete("AppInfo", null, null);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5308a(TAG, "clearBehaviorInfo Exception: " + e);
                    }
                }
                db.close();
                j = (long) -1;
            }
        }
        return j;
    }

    public static void close() {
        synchronized (myLock) {
            try {
                if (mDbHelper != null) {
                    mDbHelper.close();
                    mDbHelper = null;
                }
            } catch (Exception e) {
                mDbHelper = null;
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "close db: " + e);
                }
            }
        }
    }

    public static synchronized int deleteFileDownloadingInfo(Context context, String str) {
        int i = 0;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                String[] strArr = new String[DB_VERSION];
                strArr[0] = str;
                i = -1;
                try {
                    i = db.delete("FileDownloadingInfo", C0359f.downloadUrl.name() + "=?", strArr);
                } catch (Exception e) {
                }
                db.close();
            }
        }
        return i;
    }

    public static synchronized List<C0265a> getADBehaviorEnumClassList(Context context, long j, long j2, int i, int i2) {
        Cursor rawQuery;
        Exception e;
        Throwable th;
        List<C0265a> list = null;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                List<C0265a> arrayList = new ArrayList();
                String str = "SELECT * FROM ADPushBehavior WHERE " + C0354a.timeStamp.name() + " < " + j + " AND " + C0354a.timeStamp.name() + " >= " + j2 + " LIMIT " + i2 + " OFFSET " + i + ";";
                C0385a.m5311b(TAG, "selection " + str);
                try {
                    rawQuery = db.rawQuery(str, null);
                    while (rawQuery.moveToNext()) {
                        try {
                            C0265a c0265a = new C0265a();
                            c0265a.m4822a(rawQuery.getInt(rawQuery.getColumnIndex(C0354a.actionId.name())));
                            c0265a.m4824a(rawQuery.getString(rawQuery.getColumnIndex(C0354a.actionName.name())));
                            c0265a.m4834e(rawQuery.getString(rawQuery.getColumnIndex(C0354a.appid.name())));
                            c0265a.m4832d(rawQuery.getInt(rawQuery.getColumnIndex(C0354a.errorCode.name())));
                            c0265a.m4830c(rawQuery.getString(rawQuery.getColumnIndex(C0354a.msgId.name())));
                            c0265a.m4829c(rawQuery.getInt(rawQuery.getColumnIndex(C0354a.msgLen.name())));
                            c0265a.m4826b(rawQuery.getInt(rawQuery.getColumnIndex(C0354a.msgType.name())));
                            c0265a.m4827b(rawQuery.getString(rawQuery.getColumnIndex(C0354a.networkStatus.name())));
                            c0265a.m4835f(rawQuery.getString(rawQuery.getColumnIndex(C0354a.actionType.name())));
                            c0265a.m4833d(rawQuery.getString(rawQuery.getColumnIndex(C0354a.advertiseStyle.name())));
                            c0265a.m4823a(rawQuery.getLong(rawQuery.getColumnIndex(C0354a.timeStamp.name())));
                            arrayList.add(c0265a);
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Exception e3) {
                    Exception exception = e3;
                    rawQuery = null;
                    e = exception;
                    try {
                        C0385a.m5311b(TAG, "e " + e.getMessage());
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        list = arrayList;
                        return list;
                    } catch (Throwable th2) {
                        th = th2;
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    rawQuery = null;
                    th = th3;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    throw th;
                }
                list = arrayList;
            }
        }
        return list;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized java.util.List<com.baidu.android.pushservice.p072f.C0277k> getAppInfo(android.content.Context r7) {
        /*
        r0 = 0;
        r2 = com.baidu.android.pushservice.util.PushDatabase.class;
        monitor-enter(r2);
        r3 = getDb(r7);	 Catch:{ all -> 0x00eb }
        if (r3 != 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r2);
        return r0;
    L_0x000c:
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x00eb }
        r1.<init>();	 Catch:{ all -> 0x00eb }
        r4 = "SELECT * FROM AppInfo;";
        r5 = 0;
        r0 = r3.rawQuery(r4, r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00ee }
    L_0x0018:
        r4 = r0.moveToNext();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        if (r4 == 0) goto L_0x00e0;
    L_0x001e:
        r4 = new com.baidu.android.pushservice.f.k;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.<init>();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.appid;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4840a(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.appType;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getInt(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4910c(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.rsaUserId;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4843b(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.userId;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4845c(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.packageName;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4847d(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.appName;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4849e(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.cFrom;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4851f(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.versionCode;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getInt(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4839a(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.versionName;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getString(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4853g(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = com.baidu.android.pushservice.util.PushDatabase.C0355b.intergratedPushVersion;	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r5.name();	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getColumnIndex(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r5 = r0.getInt(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r4.m4842b(r5);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        r1.add(r4);	 Catch:{ Exception -> 0x00d2, all -> 0x00fd }
        goto L_0x0018;
    L_0x00d2:
        r4 = move-exception;
        if (r0 == 0) goto L_0x00d8;
    L_0x00d5:
        r0.close();	 Catch:{ all -> 0x00eb }
    L_0x00d8:
        if (r3 == 0) goto L_0x00dd;
    L_0x00da:
        r3.close();	 Catch:{ all -> 0x00eb }
    L_0x00dd:
        r0 = r1;
        goto L_0x000a;
    L_0x00e0:
        if (r0 == 0) goto L_0x00e5;
    L_0x00e2:
        r0.close();	 Catch:{ all -> 0x00eb }
    L_0x00e5:
        if (r3 == 0) goto L_0x00dd;
    L_0x00e7:
        r3.close();	 Catch:{ all -> 0x00eb }
        goto L_0x00dd;
    L_0x00eb:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
    L_0x00ee:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x00f2:
        if (r1 == 0) goto L_0x00f7;
    L_0x00f4:
        r1.close();	 Catch:{ all -> 0x00eb }
    L_0x00f7:
        if (r3 == 0) goto L_0x00fc;
    L_0x00f9:
        r3.close();	 Catch:{ all -> 0x00eb }
    L_0x00fc:
        throw r0;	 Catch:{ all -> 0x00eb }
    L_0x00fd:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x00f2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.util.PushDatabase.getAppInfo(android.content.Context):java.util.List<com.baidu.android.pushservice.f.k>");
    }

    public static synchronized List<C0271f> getBehaviorEnumClassList(Context context, long j, long j2, int i, int i2) {
        Cursor rawQuery;
        Exception e;
        Throwable th;
        List<C0271f> list = null;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                List<C0271f> arrayList = new ArrayList();
                String str = "SELECT * FROM PushBehavior WHERE " + C0356c.timeStamp.name() + " < " + j + " AND " + C0356c.timeStamp.name() + " >= " + j2 + " LIMIT " + i2 + " OFFSET " + i + ";";
                C0385a.m5311b(TAG, "selection " + str);
                try {
                    rawQuery = db.rawQuery(str, null);
                    while (rawQuery.moveToNext()) {
                        try {
                            C0271f c0271f = new C0271f();
                            c0271f.m4857a(rawQuery.getInt(rawQuery.getColumnIndex(C0356c.actionId.name())));
                            c0271f.m4859a(rawQuery.getString(rawQuery.getColumnIndex(C0356c.actionName.name())));
                            c0271f.m4873f(rawQuery.getString(rawQuery.getColumnIndex(C0356c.appid.name())));
                            c0271f.m4875g(rawQuery.getString(rawQuery.getColumnIndex(C0356c.channel.name())));
                            c0271f.m4870e(rawQuery.getInt(rawQuery.getColumnIndex(C0356c.errorCode.name())));
                            c0271f.m4868d(rawQuery.getString(rawQuery.getColumnIndex(C0356c.errorMsg.name())));
                            c0271f.m4865c(rawQuery.getString(rawQuery.getColumnIndex(C0356c.msgId.name())));
                            c0271f.m4864c(rawQuery.getInt(rawQuery.getColumnIndex(C0356c.msgLen.name())));
                            c0271f.m4861b(rawQuery.getInt(rawQuery.getColumnIndex(C0356c.msgType.name())));
                            c0271f.m4862b(rawQuery.getString(rawQuery.getColumnIndex(C0356c.networkStatus.name())));
                            c0271f.m4876h(rawQuery.getString(rawQuery.getColumnIndex(C0356c.openByPackageName.name())));
                            c0271f.m4871e(rawQuery.getString(rawQuery.getColumnIndex(C0356c.requestId.name())));
                            c0271f.m4867d(rawQuery.getInt(rawQuery.getColumnIndex(C0356c.stableHeartInterval.name())));
                            c0271f.m4858a(rawQuery.getLong(rawQuery.getColumnIndex(C0356c.timeStamp.name())));
                            arrayList.add(c0271f);
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Exception e3) {
                    Exception exception = e3;
                    rawQuery = null;
                    e = exception;
                    try {
                        C0385a.m5311b(TAG, "e " + e.getMessage());
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        list = arrayList;
                        return list;
                    } catch (Throwable th2) {
                        th = th2;
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    rawQuery = null;
                    th = th3;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    throw th;
                }
                list = arrayList;
            }
        }
        return list;
    }

    public static synchronized int getBehaviorEnumCount(Context context, long j, long j2) {
        Cursor cursor = null;
        int i = 0;
        synchronized (PushDatabase.class) {
            int i2;
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                String str = "SELECT COUNT(*) FROM PushBehavior WHERE " + C0356c.timeStamp.name() + " < " + j + " AND " + C0356c.timeStamp.name() + " >= " + j2 + " ;";
                String str2 = "SELECT COUNT(*) FROM ADPushBehavior WHERE " + C0354a.timeStamp.name() + " < " + j + " AND " + C0354a.timeStamp.name() + " >= " + j2 + " ;";
                try {
                    cursor = db.rawQuery(str, null);
                    cursor.moveToFirst();
                    int i3 = cursor.getInt(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                        i2 = i3;
                    } else {
                        i2 = i3;
                    }
                } catch (Exception e) {
                    C0385a.m5311b(TAG, "e " + e.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                        i2 = i;
                    } else {
                        i2 = i;
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                }
                try {
                    cursor = db.rawQuery(str2, null);
                    cursor.moveToFirst();
                    i = cursor.getInt(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Exception e2) {
                    C0385a.m5311b(TAG, "e " + e2.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                }
                i += i2;
            }
        }
        return i;
    }

    private static SQLiteDatabase getDb(Context context) {
        SQLiteDatabase sQLiteDatabase = null;
        C0358e dbOpenHelper = getDbOpenHelper(context);
        if (dbOpenHelper != null) {
            try {
                sQLiteDatabase = dbOpenHelper.getWritableDatabase();
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "getDb Exception: " + e);
                }
            }
        }
        return sQLiteDatabase;
    }

    private static C0358e getDbOpenHelper(Context context) {
        synchronized (myLock) {
            if (mDbHelper == null) {
                if (Environment.getExternalStorageState().equals("mounted")) {
                    File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + DB_DIR);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    mDbHelper = new C0358e(context, file.getAbsolutePath() + File.separator + DB_NAME, DB_VERSION);
                } else {
                    return null;
                }
            }
            return mDbHelper;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized com.baidu.android.pushservice.util.PushDatabase.C0360g getFileDownloadingInfo(android.content.Context r10, java.lang.String r11) {
        /*
        r8 = 0;
        r9 = com.baidu.android.pushservice.util.PushDatabase.class;
        monitor-enter(r9);
        r0 = getDb(r10);	 Catch:{ all -> 0x0116 }
        if (r0 != 0) goto L_0x000d;
    L_0x000a:
        r0 = r8;
    L_0x000b:
        monitor-exit(r9);
        return r0;
    L_0x000d:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0116 }
        r1.<init>();	 Catch:{ all -> 0x0116 }
        r2 = "(";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0116 }
        r2 = com.baidu.android.pushservice.util.PushDatabase.C0359f.downloadUrl;	 Catch:{ all -> 0x0116 }
        r2 = r2.name();	 Catch:{ all -> 0x0116 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0116 }
        r2 = "==?";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0116 }
        r2 = ")";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0116 }
        r3 = r1.toString();	 Catch:{ all -> 0x0116 }
        r1 = 1;
        r4 = new java.lang.String[r1];	 Catch:{ all -> 0x0116 }
        r1 = 0;
        r4[r1] = r11;	 Catch:{ all -> 0x0116 }
        r1 = "FileDownloadingInfo";
        r2 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r2 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00fa, all -> 0x0109 }
        r1 = r2.moveToFirst();	 Catch:{ Exception -> 0x011b, all -> 0x0119 }
        if (r1 == 0) goto L_0x0125;
    L_0x0048:
        r1 = new com.baidu.android.pushservice.util.PushDatabase$g;	 Catch:{ Exception -> 0x011b, all -> 0x0119 }
        r1.<init>();	 Catch:{ Exception -> 0x011b, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.belongTo;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3536a = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.downloadUrl;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3537b = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.title;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3538c = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.description;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3539d = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.savePath;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3540e = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.fileName;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getString(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3541f = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.downloadBytes;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3542g = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.totalBytes;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3543h = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.downloadStatus;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getInt(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3544i = r3;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = com.baidu.android.pushservice.util.PushDatabase.C0359f.timeStamp;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r3.name();	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r3 = r2.getColumnIndex(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r4 = r2.getLong(r3);	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
        r1.f3545j = r4;	 Catch:{ Exception -> 0x011f, all -> 0x0119 }
    L_0x00ed:
        if (r2 == 0) goto L_0x00f2;
    L_0x00ef:
        r2.close();	 Catch:{ all -> 0x0116 }
    L_0x00f2:
        if (r0 == 0) goto L_0x0122;
    L_0x00f4:
        r0.close();	 Catch:{ all -> 0x0116 }
        r0 = r1;
        goto L_0x000b;
    L_0x00fa:
        r1 = move-exception;
        r1 = r8;
    L_0x00fc:
        if (r8 == 0) goto L_0x0101;
    L_0x00fe:
        r8.close();	 Catch:{ all -> 0x0116 }
    L_0x0101:
        if (r0 == 0) goto L_0x0122;
    L_0x0103:
        r0.close();	 Catch:{ all -> 0x0116 }
        r0 = r1;
        goto L_0x000b;
    L_0x0109:
        r1 = move-exception;
        r2 = r8;
    L_0x010b:
        if (r2 == 0) goto L_0x0110;
    L_0x010d:
        r2.close();	 Catch:{ all -> 0x0116 }
    L_0x0110:
        if (r0 == 0) goto L_0x0115;
    L_0x0112:
        r0.close();	 Catch:{ all -> 0x0116 }
    L_0x0115:
        throw r1;	 Catch:{ all -> 0x0116 }
    L_0x0116:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x0119:
        r1 = move-exception;
        goto L_0x010b;
    L_0x011b:
        r1 = move-exception;
        r1 = r8;
        r8 = r2;
        goto L_0x00fc;
    L_0x011f:
        r3 = move-exception;
        r8 = r2;
        goto L_0x00fc;
    L_0x0122:
        r0 = r1;
        goto L_0x000b;
    L_0x0125:
        r1 = r8;
        goto L_0x00ed;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.util.PushDatabase.getFileDownloadingInfo(android.content.Context, java.lang.String):com.baidu.android.pushservice.util.PushDatabase$g");
    }

    public static synchronized boolean getLappVisitedInfoByTime(Context context, long j) {
        boolean z;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                z = false;
            } else {
                Cursor query = db.query("LappMsgInfo", null, C0362i.timestamp.name() + " = " + j + ";", null, null, null, null);
                boolean z2 = (!query.moveToNext() || query.getInt(query.getColumnIndex(C0362i.visited.name())) <= 0) ? false : DB_VERSION;
                query.close();
                db.close();
                z = z2;
            }
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized int[] getNoDisturb(android.content.Context r11, java.lang.String r12) {
        /*
        r8 = 0;
        r9 = com.baidu.android.pushservice.util.PushDatabase.class;
        monitor-enter(r9);
        r0 = getDb(r11);	 Catch:{ all -> 0x0142 }
        if (r0 != 0) goto L_0x000d;
    L_0x000a:
        r0 = r8;
    L_0x000b:
        monitor-exit(r9);
        return r0;
    L_0x000d:
        r1 = "NoDisturb";
        r2 = 0;
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r3.<init>();	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r4 = com.baidu.android.pushservice.util.PushDatabase.C0363j.pkgName;	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r4 = r4.name();	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r3 = r3.append(r4);	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r4 = "= ?";
        r3 = r3.append(r4);	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r3 = r3.toString();	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r5 = 0;
        r4[r5] = r12;	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r2 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x010a, all -> 0x0135 }
        if (r2 == 0) goto L_0x00ea;
    L_0x0038:
        r1 = r2.moveToNext();	 Catch:{ Exception -> 0x0147 }
        if (r1 == 0) goto L_0x00ea;
    L_0x003e:
        r1 = com.baidu.android.pushservice.util.PushDatabase.C0363j.startHour;	 Catch:{ Exception -> 0x0147 }
        r1 = r1.name();	 Catch:{ Exception -> 0x0147 }
        r1 = r2.getColumnIndex(r1);	 Catch:{ Exception -> 0x0147 }
        r3 = r2.getInt(r1);	 Catch:{ Exception -> 0x0147 }
        r1 = com.baidu.android.pushservice.util.PushDatabase.C0363j.startMinute;	 Catch:{ Exception -> 0x0147 }
        r1 = r1.name();	 Catch:{ Exception -> 0x0147 }
        r1 = r2.getColumnIndex(r1);	 Catch:{ Exception -> 0x0147 }
        r4 = r2.getInt(r1);	 Catch:{ Exception -> 0x0147 }
        r1 = com.baidu.android.pushservice.util.PushDatabase.C0363j.endHour;	 Catch:{ Exception -> 0x0147 }
        r1 = r1.name();	 Catch:{ Exception -> 0x0147 }
        r1 = r2.getColumnIndex(r1);	 Catch:{ Exception -> 0x0147 }
        r5 = r2.getInt(r1);	 Catch:{ Exception -> 0x0147 }
        r1 = com.baidu.android.pushservice.util.PushDatabase.C0363j.endMinute;	 Catch:{ Exception -> 0x0147 }
        r1 = r1.name();	 Catch:{ Exception -> 0x0147 }
        r1 = r2.getColumnIndex(r1);	 Catch:{ Exception -> 0x0147 }
        r6 = r2.getInt(r1);	 Catch:{ Exception -> 0x0147 }
        r1 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ Exception -> 0x0147 }
        if (r1 == 0) goto L_0x00b6;
    L_0x007c:
        r1 = "PushDatabase";
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0147 }
        r7.<init>();	 Catch:{ Exception -> 0x0147 }
        r7 = r7.append(r12);	 Catch:{ Exception -> 0x0147 }
        r10 = " disturb data is found! startHour: ";
        r7 = r7.append(r10);	 Catch:{ Exception -> 0x0147 }
        r7 = r7.append(r3);	 Catch:{ Exception -> 0x0147 }
        r10 = " startMinute: ";
        r7 = r7.append(r10);	 Catch:{ Exception -> 0x0147 }
        r7 = r7.append(r4);	 Catch:{ Exception -> 0x0147 }
        r10 = " endHour: ";
        r7 = r7.append(r10);	 Catch:{ Exception -> 0x0147 }
        r7 = r7.append(r5);	 Catch:{ Exception -> 0x0147 }
        r10 = " endMinute: ";
        r7 = r7.append(r10);	 Catch:{ Exception -> 0x0147 }
        r7 = r7.append(r6);	 Catch:{ Exception -> 0x0147 }
        r7 = r7.toString();	 Catch:{ Exception -> 0x0147 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5311b(r1, r7);	 Catch:{ Exception -> 0x0147 }
    L_0x00b6:
        if (r3 != 0) goto L_0x00ce;
    L_0x00b8:
        if (r4 != 0) goto L_0x00ce;
    L_0x00ba:
        if (r5 != 0) goto L_0x00ce;
    L_0x00bc:
        if (r6 != 0) goto L_0x00ce;
    L_0x00be:
        r1 = 0;
        r1 = new int[r1];	 Catch:{ Exception -> 0x0147 }
        if (r0 == 0) goto L_0x00c6;
    L_0x00c3:
        r0.close();	 Catch:{ all -> 0x0142 }
    L_0x00c6:
        if (r2 == 0) goto L_0x00cb;
    L_0x00c8:
        r2.close();	 Catch:{ all -> 0x0142 }
    L_0x00cb:
        r0 = r1;
        goto L_0x000b;
    L_0x00ce:
        r1 = 4;
        r1 = new int[r1];	 Catch:{ Exception -> 0x0147 }
        r7 = 0;
        r1[r7] = r3;	 Catch:{ Exception -> 0x0147 }
        r3 = 1;
        r1[r3] = r4;	 Catch:{ Exception -> 0x0147 }
        r3 = 2;
        r1[r3] = r5;	 Catch:{ Exception -> 0x0147 }
        r3 = 3;
        r1[r3] = r6;	 Catch:{ Exception -> 0x0147 }
        if (r0 == 0) goto L_0x00e2;
    L_0x00df:
        r0.close();	 Catch:{ all -> 0x0142 }
    L_0x00e2:
        if (r2 == 0) goto L_0x00e7;
    L_0x00e4:
        r2.close();	 Catch:{ all -> 0x0142 }
    L_0x00e7:
        r0 = r1;
        goto L_0x000b;
    L_0x00ea:
        r1 = com.baidu.android.pushservice.C0192a.m4341b();	 Catch:{ Exception -> 0x0147 }
        if (r1 == 0) goto L_0x00f7;
    L_0x00f0:
        r1 = "PushDatabase";
        r3 = "no disturb data not found use default value";
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5311b(r1, r3);	 Catch:{ Exception -> 0x0147 }
    L_0x00f7:
        r1 = 4;
        r1 = new int[r1];	 Catch:{ Exception -> 0x0147 }
        r1 = {23, 0, 7, 0};
        if (r0 == 0) goto L_0x0102;
    L_0x00ff:
        r0.close();	 Catch:{ all -> 0x0142 }
    L_0x0102:
        if (r2 == 0) goto L_0x0107;
    L_0x0104:
        r2.close();	 Catch:{ all -> 0x0142 }
    L_0x0107:
        r0 = r1;
        goto L_0x000b;
    L_0x010a:
        r1 = move-exception;
        r2 = r8;
    L_0x010c:
        r3 = "PushDatabase";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0145 }
        r4.<init>();	 Catch:{ all -> 0x0145 }
        r5 = "error ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0145 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x0145 }
        r1 = r4.append(r1);	 Catch:{ all -> 0x0145 }
        r1 = r1.toString();	 Catch:{ all -> 0x0145 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);	 Catch:{ all -> 0x0145 }
        if (r0 == 0) goto L_0x012d;
    L_0x012a:
        r0.close();	 Catch:{ all -> 0x0142 }
    L_0x012d:
        if (r2 == 0) goto L_0x0132;
    L_0x012f:
        r2.close();	 Catch:{ all -> 0x0142 }
    L_0x0132:
        r0 = r8;
        goto L_0x000b;
    L_0x0135:
        r1 = move-exception;
        r2 = r8;
    L_0x0137:
        if (r0 == 0) goto L_0x013c;
    L_0x0139:
        r0.close();	 Catch:{ all -> 0x0142 }
    L_0x013c:
        if (r2 == 0) goto L_0x0141;
    L_0x013e:
        r2.close();	 Catch:{ all -> 0x0142 }
    L_0x0141:
        throw r1;	 Catch:{ all -> 0x0142 }
    L_0x0142:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x0145:
        r1 = move-exception;
        goto L_0x0137;
    L_0x0147:
        r1 = move-exception;
        goto L_0x010c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.util.PushDatabase.getNoDisturb(android.content.Context, java.lang.String):int[]");
    }

    public static synchronized List<C0286v> getWifiActionBehaviorEnumClassList(Context context, long j, long j2, int i, int i2) {
        Cursor rawQuery;
        Exception e;
        Throwable th;
        List<C0286v> list = null;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                List<C0286v> arrayList = new ArrayList();
                String str = "SELECT * FROM WifiActionBehavior WHERE " + C0366m.timeStamp.name() + " < " + j + " AND " + C0366m.timeStamp.name() + " >= " + j2 + " LIMIT " + i2 + " OFFSET " + i + ";";
                C0385a.m5311b(TAG, "selection " + str);
                try {
                    rawQuery = db.rawQuery(str, null);
                    while (rawQuery.moveToNext()) {
                        try {
                            C0286v c0286v = new C0286v();
                            c0286v.m4942a(rawQuery.getInt(rawQuery.getColumnIndex(C0366m.actionId.name())));
                            c0286v.m4944a(rawQuery.getString(rawQuery.getColumnIndex(C0366m.actionName.name())));
                            c0286v.m4947b(rawQuery.getString(rawQuery.getColumnIndex(C0366m.networkStatus.name())));
                            c0286v.m4955h(rawQuery.getString(rawQuery.getColumnIndex(C0366m.appid.name())));
                            c0286v.m4943a(rawQuery.getLong(rawQuery.getColumnIndex(C0366m.timeStamp.name())));
                            c0286v.m4949c(rawQuery.getString(rawQuery.getColumnIndex(C0366m.lbsInfo.name())));
                            c0286v.m4951d(rawQuery.getString(rawQuery.getColumnIndex(C0366m.zhidaId.name())));
                            c0286v.m4952e(rawQuery.getString(rawQuery.getColumnIndex(C0366m.ssid.name())));
                            c0286v.m4953f(rawQuery.getString(rawQuery.getColumnIndex(C0366m.bssid.name())));
                            c0286v.m4954g(rawQuery.getString(rawQuery.getColumnIndex(C0366m.wifiUrl.name())));
                            c0286v.m4946b(rawQuery.getInt(rawQuery.getColumnIndex(C0366m.access.name())));
                            arrayList.add(c0286v);
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Exception e3) {
                    Exception exception = e3;
                    rawQuery = null;
                    e = exception;
                    try {
                        C0385a.m5311b(TAG, "e " + e.getMessage());
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        list = arrayList;
                        return list;
                    } catch (Throwable th2) {
                        th = th2;
                        if (rawQuery != null) {
                            rawQuery.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    rawQuery = null;
                    th = th3;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    throw th;
                }
                list = arrayList;
            }
        }
        return list;
    }

    public static List<C0288x> getWifiBehaviorEnumClassList(Context context, long j, long j2, int i, int i2) {
        Cursor rawQuery;
        Exception e;
        Throwable th;
        SQLiteDatabase db = getDb(context);
        if (db == null) {
            return null;
        }
        List<C0288x> arrayList = new ArrayList();
        try {
            rawQuery = db.rawQuery("SELECT * FROM WifiInfo WHERE " + C0367n.timeStamp.name() + " < " + j + " AND " + C0367n.timeStamp.name() + " >= " + j2 + " LIMIT " + i2 + " OFFSET " + i + ";", null);
            while (rawQuery.moveToNext()) {
                try {
                    C0288x c0288x = new C0288x();
                    c0288x.m4958a(rawQuery.getInt(rawQuery.getColumnIndex(C0367n.wifiInfoId.name())));
                    c0288x.m4960a(rawQuery.getString(rawQuery.getColumnIndex(C0367n.actionName.name())));
                    c0288x.m4959a(rawQuery.getLong(rawQuery.getColumnIndex(C0367n.timeStamp.name())));
                    c0288x.m4961b(rawQuery.getString(rawQuery.getColumnIndex(C0367n.msgRestult.name())));
                    arrayList.add(c0288x);
                } catch (Exception e2) {
                    e = e2;
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (db != null) {
                db.close();
            }
        } catch (Exception e3) {
            Exception exception = e3;
            rawQuery = null;
            e = exception;
            try {
                C0385a.m5311b(TAG, "e " + e.getMessage());
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (db != null) {
                    db.close();
                }
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (db != null) {
                    db.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            rawQuery = null;
            th = th3;
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (db != null) {
                db.close();
            }
            throw th;
        }
        return arrayList;
    }

    public static synchronized long insertADPushBehavior(Context context, C0268b c0268b) {
        long j = -1;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0354a.actionName.name(), c0268b.g);
                contentValues.put(C0354a.timeStamp.name(), Long.valueOf(c0268b.h));
                contentValues.put(C0354a.networkStatus.name(), c0268b.i);
                if (c0268b.k != null) {
                    contentValues.put(C0354a.appid.name(), c0268b.k);
                }
                contentValues.put(C0354a.advertiseStyle.name(), c0268b.f3200d);
                contentValues.put(C0354a.msgType.name(), Integer.valueOf(c0268b.f3199c));
                contentValues.put(C0354a.msgId.name(), c0268b.f3197a);
                contentValues.put(C0354a.msgLen.name(), Integer.valueOf(c0268b.f3198b));
                contentValues.put(C0354a.errorCode.name(), Integer.valueOf(c0268b.j));
                contentValues.put(C0354a.actionType.name(), c0268b.f3201e);
                try {
                    j = db.insert("ADPushBehavior", null, contentValues);
                    if (C0192a.m4341b() && C0192a.f2943d >= DB_VERSION && C0192a.f2943d <= 5) {
                        C0374f.m5189a("pushadvertise:  insert into database", context);
                    }
                } catch (Exception e) {
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertAgentOrHttpBehavior(Context context, C0276j c0276j) {
        long j = 0;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else if (!needToInsertUpdatePromptBehavior(db, c0276j)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0356c.actionName.name(), c0276j.g);
                contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0276j.h));
                contentValues.put(C0356c.networkStatus.name(), c0276j.i);
                contentValues.put(C0356c.stableHeartInterval.name(), Integer.valueOf(DB_VERSION));
                contentValues.put(C0356c.errorCode.name(), Integer.valueOf(c0276j.j));
                contentValues.put(C0356c.appid.name(), c0276j.k);
                try {
                    j = db.insert("PushBehavior", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertAgentOrHttpBehavior E: " + e);
                    }
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertApiBehavior(Context context, C0269c c0269c) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0356c.actionName.name(), c0269c.g);
                contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0269c.h));
                contentValues.put(C0356c.networkStatus.name(), c0269c.i);
                contentValues.put(C0356c.appid.name(), c0269c.k);
                contentValues.put(C0356c.errorMsg.name(), c0269c.f3202a);
                contentValues.put(C0356c.requestId.name(), c0269c.f3203b);
                contentValues.put(C0356c.errorCode.name(), Integer.valueOf(c0269c.j));
                if (c0269c.f3204c != null) {
                    contentValues.put(C0356c.channel.name(), c0269c.f3204c);
                }
                try {
                    j = db.insert("PushBehavior", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertApiBehavior E: " + e);
                    }
                    j = 0;
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertAppInfo(Context context, C0277k c0277k) {
        long j = 0;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else if (needToInsertUpdate(db, c0277k) == null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0355b.appid.name(), c0277k.m4838a());
                contentValues.put(C0355b.appType.name(), Integer.valueOf(c0277k.m4911j()));
                contentValues.put(C0355b.rsaUserId.name(), c0277k.m4841b());
                contentValues.put(C0355b.userId.name(), c0277k.m4844c());
                contentValues.put(C0355b.packageName.name(), c0277k.m4846d());
                contentValues.put(C0355b.appName.name(), c0277k.m4848e());
                contentValues.put(C0355b.cFrom.name(), c0277k.m4850f());
                contentValues.put(C0355b.versionCode.name(), Integer.valueOf(c0277k.m4852g()));
                contentValues.put(C0355b.versionName.name(), c0277k.m4854h());
                contentValues.put(C0355b.intergratedPushVersion.name(), Integer.valueOf(c0277k.m4855i()));
                try {
                    j = db.insert("AppInfo", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertAppInfo E: " + e);
                    }
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertCrashBehavior(Context context, C0272g c0272g) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0356c.actionName.name(), c0272g.g);
                contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0272g.h));
                contentValues.put(C0356c.networkStatus.name(), c0272g.i);
                contentValues.put(C0356c.errorMsg.name(), c0272g.f3228a);
                contentValues.put(C0356c.appid.name(), c0272g.k);
                try {
                    j = db.insert("PushBehavior", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertCrashBehavior E: " + e);
                    }
                    j = 0;
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertFileDownloadingInfo(Context context, C0360g c0360g) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0359f.belongTo.name(), c0360g.f3536a);
                contentValues.put(C0359f.downloadUrl.name(), c0360g.f3537b);
                contentValues.put(C0359f.title.name(), c0360g.f3538c);
                contentValues.put(C0359f.description.name(), c0360g.f3539d);
                contentValues.put(C0359f.savePath.name(), c0360g.f3540e);
                contentValues.put(C0359f.fileName.name(), c0360g.f3541f);
                contentValues.put(C0359f.downloadBytes.name(), Integer.valueOf(c0360g.f3542g));
                contentValues.put(C0359f.totalBytes.name(), Integer.valueOf(c0360g.f3543h));
                contentValues.put(C0359f.downloadStatus.name(), Integer.valueOf(c0360g.f3544i));
                contentValues.put(C0359f.timeStamp.name(), Long.valueOf(System.currentTimeMillis()));
                j = db.insert("FileDownloadingInfo", null, contentValues);
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertLappMsgInfo(Context context, C0361h c0361h) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0362i.appid.name(), c0361h.f3546a);
                contentValues.put(C0362i.title.name(), c0361h.f3547b);
                contentValues.put(C0362i.description.name(), c0361h.f3548c);
                contentValues.put(C0362i.url.name(), c0361h.f3549d);
                contentValues.put(C0362i.timestamp.name(), Long.valueOf(c0361h.f3550e));
                contentValues.put(C0362i.visited.name(), Integer.valueOf(0));
                try {
                    j = db.insert("LappMsgInfo", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertLappMsgInfo E: " + e);
                    }
                    j = 0;
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertPromptBehavior(Context context, C0276j c0276j) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0356c.actionName.name(), c0276j.g);
                contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0276j.h));
                contentValues.put(C0356c.networkStatus.name(), c0276j.i);
                contentValues.put(C0356c.stableHeartInterval.name(), Integer.valueOf(c0276j.f3242a));
                contentValues.put(C0356c.errorCode.name(), Integer.valueOf(c0276j.j));
                contentValues.put(C0356c.appid.name(), c0276j.k);
                try {
                    j = db.insert("PushBehavior", null, contentValues);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "insertPromptBehavior E: " + e);
                    }
                    j = 0;
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertPushBehavior(Context context, C0278l c0278l) {
        long j = -1;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0356c.actionName.name(), c0278l.g);
                contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0278l.h));
                contentValues.put(C0356c.networkStatus.name(), c0278l.i);
                if (c0278l.k != null) {
                    contentValues.put(C0356c.appid.name(), c0278l.k);
                }
                contentValues.put(C0356c.msgType.name(), Integer.valueOf(c0278l.f3248c));
                contentValues.put(C0356c.msgId.name(), c0278l.f3246a);
                contentValues.put(C0356c.msgLen.name(), Integer.valueOf(c0278l.f3247b));
                contentValues.put(C0356c.errorCode.name(), Integer.valueOf(c0278l.j));
                if (c0278l.f3249d != null) {
                    contentValues.put(C0356c.openByPackageName.name(), c0278l.f3249d);
                }
                try {
                    j = db.insert("PushBehavior", null, contentValues);
                } catch (Exception e) {
                }
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertStatisticsInfo(Context context, C0364k c0364k) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0365l.packageName.name(), c0364k.f3565a);
                contentValues.put(C0365l.msgid.name(), c0364k.f3567c);
                contentValues.put(C0365l.open_type.name(), c0364k.f3566b);
                contentValues.put(C0365l.app_open_time.name(), c0364k.f3568d);
                contentValues.put(C0365l.app_close_time.name(), c0364k.f3569e);
                contentValues.put(C0365l.use_duration.name(), c0364k.f3570f);
                if (c0364k.f3571g != null) {
                    contentValues.put(C0365l.extra.name(), c0364k.f3571g.toString());
                }
                j = db.insert("StatisticsInfo", null, contentValues);
                db.close();
            }
        }
        return j;
    }

    public static synchronized long insertWifiActionBehavior(Context context, C0285u c0285u) {
        long insert;
        Exception e;
        long j = -1;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0366m.actionName.name(), c0285u.g);
                contentValues.put(C0366m.timeStamp.name(), Long.valueOf(c0285u.h));
                contentValues.put(C0366m.networkStatus.name(), c0285u.i);
                if (c0285u.k != null) {
                    contentValues.put(C0366m.appid.name(), c0285u.k);
                }
                if (c0285u.f3263a != null) {
                    contentValues.put(C0366m.lbsInfo.name(), c0285u.f3263a);
                }
                contentValues.put(C0366m.zhidaId.name(), c0285u.f3264b);
                contentValues.put(C0366m.ssid.name(), c0285u.f3265c);
                contentValues.put(C0366m.bssid.name(), c0285u.f3266d);
                contentValues.put(C0366m.wifiUrl.name(), c0285u.f3267e);
                contentValues.put(C0366m.access.name(), Integer.valueOf(c0285u.f3268v));
                try {
                    insert = db.insert("WifiActionBehavior", null, contentValues);
                    try {
                        if (C0192a.m4341b() && C0192a.f2943d >= DB_VERSION && C0192a.f2943d <= 5) {
                            C0374f.m5189a("pushadvertise:  insert into database", context);
                        }
                        j = insert;
                    } catch (Exception e2) {
                        e = e2;
                        C0385a.m5313d(TAG, e.getMessage());
                        j = insert;
                        db.close();
                        return j;
                    }
                } catch (Exception e3) {
                    Exception exception = e3;
                    insert = -1;
                    e = exception;
                    C0385a.m5313d(TAG, e.getMessage());
                    j = insert;
                    db.close();
                    return j;
                }
                db.close();
            }
        }
        return j;
    }

    public static long insertWifiBehavior(Context context, C0287w c0287w) {
        long j = -1;
        SQLiteDatabase db = getDb(context);
        if (db != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(C0367n.actionName.name(), c0287w.g);
            contentValues.put(C0367n.timeStamp.name(), Long.valueOf(c0287w.h));
            contentValues.put(C0367n.msgRestult.name(), c0287w.f3280a);
            try {
                j = db.insert("WifiInfo", null, contentValues);
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d(TAG, "insertWifiBehavior failure");
                }
            }
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "insertWifiBehavior again ");
            }
            db.close();
        }
        return j;
    }

    public static synchronized boolean isNeedUpload(Context context, long j, long j2) {
        Cursor cursor;
        Cursor cursor2 = null;
        boolean z = false;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                try {
                    cursor2 = db.rawQuery("SELECT " + C0356c.actionName.name() + " FROM " + "PushBehavior" + " WHERE " + C0356c.timeStamp.name() + " < " + j + " AND " + C0356c.timeStamp.name() + " >= " + j2 + " ;", null);
                    while (cursor2.moveToNext()) {
                        Object string = cursor2.getString(0);
                        if (!TextUtils.isEmpty(string) && !string.startsWith(C0267p.f3195t)) {
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (db != null) {
                                db.close();
                            }
                            z = true;
                        }
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (db != null) {
                        db.close();
                        cursor = cursor2;
                        cursor = db.rawQuery("SELECT COUNT(*) FROM ADPushBehavior WHERE " + C0354a.timeStamp.name() + " < " + j + " AND " + C0354a.timeStamp.name() + " >= " + j2 + " ;", null);
                        cursor.moveToFirst();
                        if (cursor.getInt(0) <= 0) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (db != null) {
                                db.close();
                            }
                            z = true;
                        } else {
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (db != null) {
                                db.close();
                            }
                        }
                    }
                } catch (Exception e) {
                    C0385a.m5311b(TAG, "e " + e.getMessage());
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (db != null) {
                        db.close();
                        cursor = cursor2;
                    }
                } catch (Throwable th) {
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                }
                cursor = cursor2;
                try {
                    cursor = db.rawQuery("SELECT COUNT(*) FROM ADPushBehavior WHERE " + C0354a.timeStamp.name() + " < " + j + " AND " + C0354a.timeStamp.name() + " >= " + j2 + " ;", null);
                    cursor.moveToFirst();
                    if (cursor.getInt(0) <= 0) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                    } else {
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        z = true;
                    }
                } catch (Exception e2) {
                    C0385a.m5311b(TAG, "e " + e2.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                }
            }
        }
        return z;
    }

    private static C0277k needToInsertUpdate(SQLiteDatabase sQLiteDatabase, C0277k c0277k) {
        Cursor rawQuery;
        Object e;
        Throwable th;
        if (sQLiteDatabase == null) {
            return null;
        }
        C0277k c0277k2 = new C0277k(c0277k.m4838a());
        try {
            rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM AppInfo WHERE " + C0355b.appid.name() + " = " + c0277k.m4838a() + ";", null);
            Object obj = null;
            try {
                if (rawQuery.moveToNext()) {
                    obj = DB_VERSION;
                    int i = rawQuery.getInt(rawQuery.getColumnIndex(C0355b.appInfoId.name()));
                    if (!(TextUtils.equals(c0277k.m4844c(), rawQuery.getString(rawQuery.getColumnIndex(C0355b.userId.name()))) && TextUtils.equals(c0277k.m4850f(), rawQuery.getString(rawQuery.getColumnIndex(C0355b.cFrom.name()))) && TextUtils.equals(c0277k.m4852g() + "", rawQuery.getInt(rawQuery.getColumnIndex(C0355b.versionCode.name())) + "") && TextUtils.equals(c0277k.m4855i() + "", rawQuery.getString(rawQuery.getColumnIndex(C0355b.intergratedPushVersion.name()))))) {
                        updateAppInfo(sQLiteDatabase, i, c0277k);
                    }
                }
                if (obj != null) {
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return c0277k2;
                } else if (rawQuery == null) {
                    return null;
                } else {
                    rawQuery.close();
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                try {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "needToInsertUpdate Exception: " + e);
                    }
                    if (rawQuery != null) {
                        return null;
                    }
                    rawQuery.close();
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            rawQuery = null;
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "needToInsertUpdate Exception: " + e);
            }
            if (rawQuery != null) {
                return null;
            }
            rawQuery.close();
            return null;
        } catch (Throwable th3) {
            rawQuery = null;
            th = th3;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
    }

    private static boolean needToInsertUpdatePromptBehavior(SQLiteDatabase sQLiteDatabase, C0276j c0276j) {
        Cursor cursor = null;
        if (sQLiteDatabase == null) {
            return true;
        }
        try {
            boolean z;
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM PushBehavior WHERE " + C0356c.actionName.name() + " = '" + c0276j.g + "' AND " + C0356c.errorCode.name() + " = " + c0276j.j + ";", null);
            if (cursor.moveToNext()) {
                c0276j.f3242a = cursor.getInt(cursor.getColumnIndex(C0356c.stableHeartInterval.name()));
                updatePromptBehavior(sQLiteDatabase, c0276j);
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            } else if (cursor == null) {
                return true;
            } else {
                cursor.close();
                return true;
            }
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5308a(TAG, "needToInsertUpdatePromptBehavior Exception: " + e);
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static synchronized List<C0360g> selectFileDownloadingInfo(Context context) {
        List<C0360g> list;
        Throwable th;
        Cursor cursor = null;
        synchronized (PushDatabase.class) {
            List<C0360g> arrayList = new ArrayList();
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                list = arrayList;
            } else {
                Cursor query;
                try {
                    query = db.query("FileDownloadingInfo", null, null, null, null, null, C0359f.timeStamp.name() + " DESC");
                    while (query.moveToNext()) {
                        try {
                            C0360g c0360g = new C0360g();
                            c0360g.f3536a = query.getString(query.getColumnIndex(C0359f.belongTo.name()));
                            c0360g.f3537b = query.getString(query.getColumnIndex(C0359f.downloadUrl.name()));
                            c0360g.f3538c = query.getString(query.getColumnIndex(C0359f.title.name()));
                            c0360g.f3539d = query.getString(query.getColumnIndex(C0359f.description.name()));
                            c0360g.f3540e = query.getString(query.getColumnIndex(C0359f.savePath.name()));
                            c0360g.f3541f = query.getString(query.getColumnIndex(C0359f.fileName.name()));
                            c0360g.f3542g = query.getInt(query.getColumnIndex(C0359f.downloadBytes.name()));
                            c0360g.f3543h = query.getInt(query.getColumnIndex(C0359f.totalBytes.name()));
                            c0360g.f3544i = query.getInt(query.getColumnIndex(C0359f.downloadStatus.name()));
                            c0360g.f3545j = query.getLong(query.getColumnIndex(C0359f.timeStamp.name()));
                            arrayList.add(c0360g);
                        } catch (Exception e) {
                        } catch (Throwable th2) {
                            cursor = query;
                            th = th2;
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                } catch (Exception e2) {
                    query = null;
                    if (query != null) {
                        query.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    list = arrayList;
                    return list;
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    throw th;
                }
                list = arrayList;
            }
        }
        return list;
    }

    public static synchronized long setNoDisturbMode(Context context, String str, int i, int i2, int i3, int i4) {
        long j;
        Cursor query;
        long insert;
        Object e;
        Throwable th;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                try {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "package name: " + str + " setNoDisturbMode -- startHour: " + i + " startMinute: " + i2 + " endHour: " + i3 + " endMinute: " + i4);
                    }
                    String[] strArr = new String[DB_VERSION];
                    strArr[0] = C0363j.pkgName.name();
                    String str2 = C0363j.pkgName.name() + "= ?";
                    String[] strArr2 = new String[DB_VERSION];
                    strArr2[0] = str;
                    query = db.query("NoDisturb", strArr, str2, strArr2, null, null, null);
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(C0363j.pkgName.name(), str);
                        contentValues.put(C0363j.startHour.name(), Integer.valueOf(i));
                        contentValues.put(C0363j.startMinute.name(), Integer.valueOf(i2));
                        contentValues.put(C0363j.endHour.name(), Integer.valueOf(i3));
                        contentValues.put(C0363j.endMinute.name(), Integer.valueOf(i4));
                        if (query == null || !query.moveToNext()) {
                            if (C0192a.m4341b()) {
                                C0385a.m5311b(TAG, "add No Disturb record for " + str);
                            }
                            insert = db.insert("NoDisturb", null, contentValues);
                        } else if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
                            if (C0192a.m4341b()) {
                                C0385a.m5311b(TAG, "delete No Disturb record for " + str);
                            }
                            String str3 = C0363j.pkgName.name() + "= ?";
                            String[] strArr3 = new String[DB_VERSION];
                            strArr3[0] = str;
                            insert = (long) db.delete("NoDisturb", str3, strArr3);
                        } else {
                            if (C0192a.m4341b()) {
                                C0385a.m5311b(TAG, "update No Disturb record for " + str);
                            }
                            str2 = C0363j.pkgName.name() + "= ?";
                            String[] strArr4 = new String[DB_VERSION];
                            strArr4[0] = str;
                            insert = (long) db.update("NoDisturb", contentValues, str2, strArr4);
                        }
                        if (query != null) {
                            try {
                                query.close();
                            } catch (Exception e2) {
                                e = e2;
                                try {
                                    if (C0192a.m4341b()) {
                                        C0385a.m5308a(TAG, "setNoDisturbMode Exception: " + e);
                                    }
                                    if (db != null) {
                                        db.close();
                                    }
                                    if (query != null) {
                                        query.close();
                                        j = insert;
                                        return j;
                                    }
                                    j = insert;
                                    return j;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (db != null) {
                                        db.close();
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                    throw th;
                                }
                            }
                        }
                        if (db != null) {
                            db.close();
                        }
                        if (query != null) {
                            query.close();
                            j = insert;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        insert = -1;
                        if (C0192a.m4341b()) {
                            C0385a.m5308a(TAG, "setNoDisturbMode Exception: " + e);
                        }
                        if (db != null) {
                            db.close();
                        }
                        if (query != null) {
                            query.close();
                            j = insert;
                            return j;
                        }
                        j = insert;
                        return j;
                    }
                } catch (Exception e4) {
                    e = e4;
                    query = null;
                    insert = -1;
                    if (C0192a.m4341b()) {
                        C0385a.m5308a(TAG, "setNoDisturbMode Exception: " + e);
                    }
                    if (db != null) {
                        db.close();
                    }
                    if (query != null) {
                        query.close();
                        j = insert;
                        return j;
                    }
                    j = insert;
                    return j;
                } catch (Throwable th3) {
                    th = th3;
                    query = null;
                    if (db != null) {
                        db.close();
                    }
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
                j = insert;
            }
        }
        return j;
    }

    private static int updateAppInfo(SQLiteDatabase sQLiteDatabase, int i, C0277k c0277k) {
        int i2 = 0;
        if (sQLiteDatabase != null) {
            String[] strArr = new String[DB_VERSION];
            strArr[0] = "" + i;
            ContentValues contentValues = new ContentValues();
            contentValues.put(C0355b.appInfoId.name(), Integer.valueOf(i));
            contentValues.put(C0355b.appid.name(), c0277k.m4838a());
            contentValues.put(C0355b.appType.name(), Integer.valueOf(c0277k.m4911j()));
            contentValues.put(C0355b.rsaUserId.name(), c0277k.m4841b());
            contentValues.put(C0355b.userId.name(), c0277k.m4844c());
            contentValues.put(C0355b.packageName.name(), c0277k.m4846d());
            contentValues.put(C0355b.appName.name(), c0277k.m4848e());
            if (!TextUtils.isEmpty(c0277k.m4850f())) {
                contentValues.put(C0355b.cFrom.name(), c0277k.m4850f());
            }
            contentValues.put(C0355b.versionCode.name(), Integer.valueOf(c0277k.m4852g()));
            contentValues.put(C0355b.versionName.name(), c0277k.m4854h());
            contentValues.put(C0355b.intergratedPushVersion.name(), Integer.valueOf(c0277k.m4855i()));
            i2 = -1;
            try {
                i2 = sQLiteDatabase.update("AppInfo", contentValues, C0355b.appInfoId.name() + "=?", strArr);
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a(TAG, "updateAppInfo exception " + e);
                }
            }
        }
        return i2;
    }

    public static synchronized int updateFileDownloadingInfo(Context context, String str, C0360g c0360g) {
        int i = 0;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db != null) {
                String[] strArr = new String[DB_VERSION];
                strArr[0] = str;
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0359f.belongTo.name(), c0360g.f3536a);
                contentValues.put(C0359f.downloadUrl.name(), c0360g.f3537b);
                contentValues.put(C0359f.title.name(), c0360g.f3538c);
                contentValues.put(C0359f.description.name(), c0360g.f3539d);
                contentValues.put(C0359f.savePath.name(), c0360g.f3540e);
                contentValues.put(C0359f.fileName.name(), c0360g.f3541f);
                contentValues.put(C0359f.downloadBytes.name(), Integer.valueOf(c0360g.f3542g));
                contentValues.put(C0359f.totalBytes.name(), Integer.valueOf(c0360g.f3543h));
                contentValues.put(C0359f.downloadStatus.name(), Integer.valueOf(c0360g.f3544i));
                contentValues.put(C0359f.timeStamp.name(), Long.valueOf(System.currentTimeMillis()));
                try {
                    i = db.update("FileDownloadingInfo", contentValues, C0359f.downloadUrl.name() + "=?", strArr);
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5308a(TAG, "updateFileDownloadingInfo Exception: " + e);
                    }
                    i = -1;
                }
                db.close();
            }
        }
        return i;
    }

    public static synchronized long updateLappVisitedInfo(Context context, C0361h c0361h) {
        long j;
        synchronized (PushDatabase.class) {
            SQLiteDatabase db = getDb(context);
            if (db == null) {
                j = -1;
            } else {
                String[] strArr = new String[DB_VERSION];
                strArr[0] = "" + c0361h.f3550e;
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0362i.appid.name(), c0361h.f3546a);
                contentValues.put(C0362i.title.name(), c0361h.f3547b);
                contentValues.put(C0362i.description.name(), c0361h.f3548c);
                contentValues.put(C0362i.url.name(), c0361h.f3549d);
                contentValues.put(C0362i.timestamp.name(), Long.valueOf(c0361h.f3550e));
                contentValues.put(C0362i.visited.name(), Integer.valueOf(DB_VERSION));
                j = (long) db.update("LappMsgInfo", contentValues, C0362i.timestamp + "=?", strArr);
                db.close();
            }
        }
        return j;
    }

    private static int updatePromptBehavior(SQLiteDatabase sQLiteDatabase, C0276j c0276j) {
        if (sQLiteDatabase == null) {
            return 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(C0356c.actionName.name(), c0276j.g);
        contentValues.put(C0356c.timeStamp.name(), Long.valueOf(c0276j.h));
        contentValues.put(C0356c.networkStatus.name(), c0276j.i);
        contentValues.put(C0356c.stableHeartInterval.name(), Integer.valueOf(c0276j.f3242a + DB_VERSION));
        contentValues.put(C0356c.errorCode.name(), Integer.valueOf(c0276j.j));
        contentValues.put(C0356c.appid.name(), c0276j.k);
        try {
            sQLiteDatabase.update("PushBehavior", contentValues, C0356c.actionName.name() + " = " + "'" + c0276j.g + "' AND " + C0356c.errorCode.name() + " = " + c0276j.j + ";", null);
            return -1;
        } catch (Exception e) {
            if (!C0192a.m4341b()) {
                return -1;
            }
            C0385a.m5308a(TAG, "updatePromptBehavior Exception: " + e);
            return -1;
        }
    }
}
