package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

/* compiled from: ProGuard */
public class EntityTypeMapping implements TypeMapping {
    private static final String TAG = "EntityTypeMapping";

    public Class<?> javaType() {
        return Entity.class;
    }

    public String sqlType(Class<?> cls) {
        EntityMapping entityMapping = Entity.getEntityMapping(cls);
        return "INTEGER REFERENCES " + entityMapping.mTableName + "(" + entityMapping.mPrimaryKeyColumnName + ")";
    }

    public String encodeValue(SQLiteDatabase sQLiteDatabase, Object obj) {
        Entity entity = (Entity) obj;
        if (!entity.isTransient()) {
            return TypeMapper.encodeValue(sQLiteDatabase, entity.getPrimaryKeyValue());
        }
        if (sQLiteDatabase != null) {
            return TypeMapper.encodeValue(sQLiteDatabase, Integer.valueOf(entity.save(sQLiteDatabase)));
        }
        throw new IllegalArgumentException("Transient object doesn't make sense here");
    }

    public Object decodeValue(SQLiteDatabase sQLiteDatabase, Class<?> cls, Cursor cursor, int i) {
        Object obj = null;
        if (Entity.class.isAssignableFrom(cls)) {
            EntityMapping entityMappingEnsureSchema = Entity.getEntityMappingEnsureSchema(sQLiteDatabase, cls);
            String str = "SELECT * FROM " + entityMappingEnsureSchema.mTableName + " WHERE " + entityMappingEnsureSchema.mPrimaryKeyColumnName + "=" + cursor.getInt(i) + " LIMIT 1";
            Log.v(TAG, str);
            Cursor rawQuery = sQLiteDatabase.rawQuery(str, null);
            try {
                if (rawQuery.moveToFirst()) {
                    obj = entityMappingEnsureSchema.load(sQLiteDatabase, rawQuery);
                } else if (rawQuery != null) {
                    rawQuery.close();
                }
                return obj;
            } finally {
                if (rawQuery != null) {
                    rawQuery.close();
                }
            }
        } else {
            throw new IllegalArgumentException("EntityTypeMapping can only be used with Entity subclasses");
        }
    }
}
