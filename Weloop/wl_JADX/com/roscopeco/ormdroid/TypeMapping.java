package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: ProGuard */
public interface TypeMapping {
    Object decodeValue(SQLiteDatabase sQLiteDatabase, Class<?> cls, Cursor cursor, int i);

    String encodeValue(SQLiteDatabase sQLiteDatabase, Object obj);

    Class<?> javaType();

    String sqlType(Class<?> cls);
}
