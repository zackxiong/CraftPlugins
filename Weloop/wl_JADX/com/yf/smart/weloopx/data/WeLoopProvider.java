package com.yf.smart.weloopx.data;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.BDLocationStatusCodes;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
public class WeLoopProvider extends ContentProvider {
    final UriMatcher f8838a;
    final SparseArray<String> f8839b;
    final SparseArray<String> f8840c;
    private SQLiteDatabase f8841d;

    public WeLoopProvider() {
        int i;
        int i2 = 0;
        SparseArray sparseArray = new SparseArray();
        this.f8839b = sparseArray;
        sparseArray.put(1, "locus");
        sparseArray.put(2, "watchface");
        sparseArray.put(3, "original");
        sparseArray.put(4, LightAppTableDefine.DB_TABLE_MESSAGE);
        sparseArray.put(5, "device");
        sparseArray.put(6, "achievement");
        sparseArray.put(7, "daily_gain");
        sparseArray.put(8, "goal");
        sparseArray.put(9, "activity");
        sparseArray.put(10, "weather");
        sparseArray.put(11, "user");
        sparseArray.put(12, "sleep_item");
        sparseArray.put(13, "calorie_item");
        sparseArray.put(14, "ranking");
        sparseArray.put(15, "AlarmTable");
        sparseArray.put(16, "LocationNewTable");
        sparseArray.put(17, "MessageNotificationTable");
        sparseArray.put(18, "FriendTable");
        sparseArray.put(19, "ApplyAddFriendTable");
        sparseArray.put(20, "StatisticsTable");
        sparseArray.put(21, "RemindersTable");
        sparseArray.put(22, "RuningDataTable");
        sparseArray.put(23, "RunningTrainingTable");
        sparseArray.put(24, "CourseOriginalTable");
        sparseArray.put(25, "CourseTable");
        sparseArray.put(26, "SyncdataAndOTAStatisticsTable");
        sparseArray = new SparseArray();
        this.f8840c = sparseArray;
        sparseArray.put(BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES, "calorie_statistics");
        sparseArray.put(BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, "sleep_statistics");
        this.f8838a = new UriMatcher(0);
        for (i = 0; i < this.f8839b.size(); i++) {
            int keyAt = this.f8839b.keyAt(i);
            this.f8838a.addURI("com.yf.smart.weloopx.data.WeLoopProvider", (String) this.f8839b.get(keyAt), keyAt);
        }
        while (i2 < this.f8840c.size()) {
            i = this.f8840c.keyAt(i2);
            this.f8838a.addURI("com.yf.smart.weloopx.data.WeLoopProvider", (String) this.f8840c.get(i), i);
            i2++;
        }
    }

    public boolean onCreate() {
        this.f8841d = new ProGuard(getContext()).getWritableDatabase();
        return this.f8841d != null;
    }

    private String m11020a(Uri uri) {
        String str = (String) this.f8839b.get(this.f8838a.match(uri));
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        try {
            sQLiteQueryBuilder.setTables(m11020a(uri));
            Cursor query = sQLiteQueryBuilder.query(this.f8841d, strArr, str, strArr2, null, null, str2);
            query.setNotificationUri(getContext().getContentResolver(), uri);
            return query;
        } catch (IllegalArgumentException e) {
            return m11019a(uri, str, strArr2);
        }
    }

    private Cursor m11019a(Uri uri, String str, String[] strArr) {
        switch (this.f8838a.match(uri)) {
            case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                return this.f8841d.rawQuery("select sum(active_point) as active_point_sum, sum(calorie_goal) as calorie_goal_sum, sum(calorie) as calorie_sum, sum(distance) as distance_sum, sum(step_count) as step_count_sum, avg(calorie) as calorie_average, avg(distance) as distance_average, avg(step_count) as step_count_average, avg(active_point) as active_point_average from calorie_item where " + str, strArr);
            case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                return this.f8841d.rawQuery("select sum(deep_sleep_time) as deep_sleep_sum, sum(shallow_sleep_time) as shallow_sleep_sum, sum(wake_time) as wake_sum, sum(sleep_goal) as sleep_goal_sum, avg(wake_time) as wake_average, avg(deep_sleep_time) as deep_sleep_average, avg(shallow_sleep_time) as shallow_sleep_average, avg(sleep_score) as sleep_score_average from sleep_item where " + str, strArr);
            default:
                return null;
        }
    }

    public String getType(Uri uri) {
        return "vnd.android.cursor.dir/vnd.yf.weloopx";
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues != null) {
            if (this.f8841d.insert(m11020a(uri), null, contentValues) > 0) {
                getContext().getContentResolver().notifyChange(uri, null);
            } else {
                throw new SQLException("Failed to insert row into " + uri);
            }
        }
        return uri;
    }

    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        int i = 0;
        if (contentValuesArr == null || contentValuesArr.length == 0) {
            return 0;
        }
        String a = m11020a(uri);
        SQLiteStatement compileStatement;
        int length;
        ContentValues contentValues;
        switch (this.f8838a.match(uri)) {
            case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                this.f8841d.beginTransaction();
                try {
                    compileStatement = this.f8841d.compileStatement("insert into " + a + "(" + "account" + "," + "happen_date" + "," + "deep_sleep_time" + "," + "shallow_sleep_time" + "," + "sleep_goal" + "," + "sleep_score" + "," + "wake_time" + ")" + " values " + "(?,?,?,?,?,?,?)");
                    length = contentValuesArr.length;
                    while (i < length) {
                        contentValues = contentValuesArr[i];
                        compileStatement.bindString(1, contentValues.getAsString("account"));
                        compileStatement.bindString(2, contentValues.getAsString("happen_date"));
                        compileStatement.bindString(3, contentValues.getAsString("deep_sleep_time"));
                        compileStatement.bindString(4, contentValues.getAsString("shallow_sleep_time"));
                        compileStatement.bindString(5, contentValues.getAsString("sleep_goal"));
                        compileStatement.bindString(6, contentValues.getAsString("sleep_score"));
                        compileStatement.bindString(7, contentValues.getAsString("wake_time"));
                        compileStatement.execute();
                        i++;
                    }
                    this.f8841d.setTransactionSuccessful();
                    getContext().getContentResolver().notifyChange(uri, null);
                    return contentValuesArr.length;
                } finally {
                    this.f8841d.endTransaction();
                }
            case ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                this.f8841d.beginTransaction();
                try {
                    compileStatement = this.f8841d.compileStatement("insert into " + a + "(" + "account" + "," + "happen_date" + "," + "calorie" + "," + "calorie_goal" + "," + "distance" + "," + "active_point" + "," + "step_count" + ")" + " values " + "(?,?,?,?,?,?,?)");
                    length = contentValuesArr.length;
                    while (i < length) {
                        contentValues = contentValuesArr[i];
                        compileStatement.bindString(1, contentValues.getAsString("account"));
                        compileStatement.bindString(2, contentValues.getAsString("happen_date"));
                        compileStatement.bindString(3, contentValues.getAsString("calorie"));
                        compileStatement.bindString(4, contentValues.getAsString("calorie_goal"));
                        compileStatement.bindString(5, contentValues.getAsString("distance"));
                        compileStatement.bindString(6, contentValues.getAsString("active_point"));
                        compileStatement.bindString(7, contentValues.getAsString("step_count"));
                        compileStatement.execute();
                        i++;
                    }
                    this.f8841d.setTransactionSuccessful();
                    getContext().getContentResolver().notifyChange(uri, null);
                    return contentValuesArr.length;
                } finally {
                    this.f8841d.endTransaction();
                }
            case ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                this.f8841d.beginTransaction();
                try {
                    compileStatement = this.f8841d.compileStatement("insert into " + a + "(" + "LOCATION_DATE" + "," + "LOCATION_DEVICE_ID" + "," + "LOCATION_IS_SUBMIT" + "," + "LOCATION_LOCATION_INFO" + "," + "LOCATION_TIME" + "," + "LOCATION_USER_ID" + ")" + " values " + "(?,?,?,?,?,?)");
                    length = contentValuesArr.length;
                    while (i < length) {
                        contentValues = contentValuesArr[i];
                        compileStatement.bindString(1, contentValues.getAsString("LOCATION_DATE"));
                        compileStatement.bindString(2, contentValues.getAsString("LOCATION_DEVICE_ID"));
                        compileStatement.bindString(3, contentValues.getAsString("LOCATION_IS_SUBMIT"));
                        compileStatement.bindString(4, contentValues.getAsString("LOCATION_LOCATION_INFO"));
                        compileStatement.bindString(5, contentValues.getAsString("LOCATION_TIME"));
                        compileStatement.bindString(6, contentValues.getAsString("LOCATION_USER_ID"));
                        compileStatement.execute();
                        i++;
                    }
                    this.f8841d.setTransactionSuccessful();
                    getContext().getContentResolver().notifyChange(uri, null);
                    return contentValuesArr.length;
                } finally {
                    this.f8841d.endTransaction();
                }
            default:
                length = contentValuesArr.length;
                while (i < length) {
                    this.f8841d.insert(a, null, contentValuesArr[i]);
                    i++;
                }
                getContext().getContentResolver().notifyChange(uri, null);
                return contentValuesArr.length;
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        int delete = this.f8841d.delete(m11020a(uri), str, strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return delete;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int update = this.f8841d.update(m11020a(uri), contentValues, str, strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return update;
    }
}
