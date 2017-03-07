package com.roscopeco.ormdroid;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: ProGuard */
public final class TypeMapper {
    private static final MappingList TYPEMAPS;
    private static TypeMapping mDefaultMapping;

    static {
        TYPEMAPS = new MappingList();
        mDefaultMapping = null;
        mapType(new NumericTypeMapping(Short.class, "SMALLINT"));
        mapType(new NumericTypeMapping(Short.TYPE, "SMALLINT"));
        mapType(new NumericTypeMapping(Byte.class, "TINYINT"));
        mapType(new NumericTypeMapping(Byte.TYPE, "TINYINT"));
        mapType(new NumericTypeMapping(Float.class, "FLOAT"));
        mapType(new NumericTypeMapping(Float.TYPE, "FLOAT"));
        mapType(new NumericTypeMapping(Double.class, "DOUBLE"));
        mapType(new NumericTypeMapping(Double.TYPE, "DOUBLE"));
        mapType(new NumericTypeMapping(Boolean.class, "TINYINT"));
        mapType(new NumericTypeMapping(Boolean.TYPE, "TINYINT"));
        mapType(new NumericTypeMapping(Long.class, "BIGINT"));
        mapType(new NumericTypeMapping(Long.TYPE, "BIGINT"));
        mapType(new DateTypeMapping());
        mapType(new EntityTypeMapping());
        mapType(new NumericTypeMapping(Integer.class, "INTEGER"));
        mapType(new NumericTypeMapping(Integer.TYPE, "INTEGER"));
        mapType(new StringTypeMapping(String.class, "VARCHAR"));
    }

    public static String sqlType(Class<?> cls) {
        return getMapping(cls).sqlType(cls);
    }

    public static TypeMapping getMapping(Class<?> cls) {
        TypeMapping findMapping = TYPEMAPS.findMapping(cls);
        return findMapping != null ? findMapping : mDefaultMapping;
    }

    public static String encodeValue(SQLiteDatabase sQLiteDatabase, Object obj) {
        return getMapping(obj.getClass()).encodeValue(sQLiteDatabase, obj);
    }

    public static void mapType(TypeMapping typeMapping) {
        TYPEMAPS.addMapping(typeMapping);
    }

    public static void setDefaultMapping(TypeMapping typeMapping) {
        mDefaultMapping = typeMapping;
    }

    private TypeMapper() {
        throw new InstantiationException();
    }
}
