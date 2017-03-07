package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Date;

/* compiled from: ProGuard */
public class DateTypeMapping implements TypeMapping {
    private Class<?> mJavaType;
    private String mSqlType;

    public DateTypeMapping() {
        this.mJavaType = Date.class;
        this.mSqlType = "BIGINT";
    }

    public Class<?> javaType() {
        return this.mJavaType;
    }

    public String sqlType(Class<?> cls) {
        return this.mSqlType;
    }

    public String encodeValue(SQLiteDatabase sQLiteDatabase, Object obj) {
        return "\"" + ((Date) obj).getTime() + "\"";
    }

    public Object decodeValue(SQLiteDatabase sQLiteDatabase, Class<?> cls, Cursor cursor, int i) {
        return new Date(cursor.getLong(i));
    }
}
