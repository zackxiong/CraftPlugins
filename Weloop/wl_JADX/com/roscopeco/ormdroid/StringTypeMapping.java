package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: ProGuard */
public class StringTypeMapping implements TypeMapping {
    private Class<?> mJavaType;
    private String mSqlType;

    public StringTypeMapping(Class<?> cls, String str) {
        this.mJavaType = cls;
        this.mSqlType = str;
    }

    public Class<?> javaType() {
        return this.mJavaType;
    }

    public String sqlType(Class<?> cls) {
        return this.mSqlType;
    }

    public String encodeValue(SQLiteDatabase sQLiteDatabase, Object obj) {
        return DatabaseUtils.sqlEscapeString(obj.toString());
    }

    public Object decodeValue(SQLiteDatabase sQLiteDatabase, Class<?> cls, Cursor cursor, int i) {
        return cursor.getString(i);
    }
}
