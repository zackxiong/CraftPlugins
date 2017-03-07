package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: ProGuard */
public class NumericTypeMapping implements TypeMapping {
    private Class<?> mJavaType;
    private String mSqlType;

    public NumericTypeMapping(Class<?> cls, String str) {
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
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "1" : "0";
        } else {
            return obj.toString();
        }
    }

    public Object decodeValue(SQLiteDatabase sQLiteDatabase, Class<?> cls, Cursor cursor, int i) {
        if (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) {
            return Boolean.valueOf(cursor.getInt(i) != 0);
        } else if (cls.equals(Byte.class) || cls.equals(Byte.TYPE)) {
            return Byte.valueOf((byte) cursor.getInt(i));
        } else {
            return Integer.valueOf(cursor.getInt(i));
        }
    }
}
