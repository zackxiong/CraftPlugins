package com.yf.gattlib.http.afinal.db.sqlite;

import android.text.TextUtils;
import com.yf.gattlib.http.afinal.db.table.Id;
import com.yf.gattlib.http.afinal.db.table.KeyValue;
import com.yf.gattlib.http.afinal.db.table.ManyToOne;
import com.yf.gattlib.http.afinal.db.table.Property;
import com.yf.gattlib.http.afinal.db.table.TableInfo;
import com.yf.gattlib.http.afinal.exception.DbException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* compiled from: ProGuard */
public class SqlBuilder {
    public static SqlInfo buildInsertSql(Object obj) {
        List<KeyValue> saveKeyValueListByEntity = getSaveKeyValueListByEntity(obj);
        StringBuffer stringBuffer = new StringBuffer();
        if (saveKeyValueListByEntity == null || saveKeyValueListByEntity.size() <= 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        stringBuffer.append("INSERT INTO ");
        stringBuffer.append(TableInfo.get(obj.getClass()).getTableName());
        stringBuffer.append(" (");
        for (KeyValue keyValue : saveKeyValueListByEntity) {
            stringBuffer.append(keyValue.getKey()).append(",");
            sqlInfo.addValue(keyValue.getValue());
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(") VALUES ( ");
        int size = saveKeyValueListByEntity.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append("?,");
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(")");
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static List<KeyValue> getSaveKeyValueListByEntity(Object obj) {
        List<KeyValue> arrayList = new ArrayList();
        TableInfo tableInfo = TableInfo.get(obj.getClass());
        Object value = tableInfo.getId().getValue(obj);
        if (!((value instanceof Integer) || !(value instanceof String) || value == null)) {
            arrayList.add(new KeyValue(tableInfo.getId().getColumn(), value));
        }
        for (Property property2KeyValue : tableInfo.propertyMap.values()) {
            KeyValue property2KeyValue2 = property2KeyValue(property2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        for (ManyToOne manyToOne2KeyValue : tableInfo.manyToOneMap.values()) {
            property2KeyValue2 = manyToOne2KeyValue(manyToOne2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        return arrayList;
    }

    private static String getDeleteSqlBytableName(String str) {
        return "DELETE FROM " + str;
    }

    public static SqlInfo buildDeleteSql(Object obj) {
        TableInfo tableInfo = TableInfo.get(obj.getClass());
        Id id = tableInfo.getId();
        Object value = id.getValue(obj);
        if (value == null) {
            throw new DbException("getDeleteSQL:" + obj.getClass() + " id value is null");
        }
        StringBuffer stringBuffer = new StringBuffer(getDeleteSqlBytableName(tableInfo.getTableName()));
        stringBuffer.append(" WHERE ").append(id.getColumn()).append("=?");
        SqlInfo sqlInfo = new SqlInfo();
        sqlInfo.setSql(stringBuffer.toString());
        sqlInfo.addValue(value);
        return sqlInfo;
    }

    public static SqlInfo buildDeleteSql(Class<?> cls, Object obj) {
        TableInfo tableInfo = TableInfo.get((Class) cls);
        Id id = tableInfo.getId();
        if (obj == null) {
            throw new DbException("getDeleteSQL:idValue is null");
        }
        StringBuffer stringBuffer = new StringBuffer(getDeleteSqlBytableName(tableInfo.getTableName()));
        stringBuffer.append(" WHERE ").append(id.getColumn()).append("=?");
        SqlInfo sqlInfo = new SqlInfo();
        sqlInfo.setSql(stringBuffer.toString());
        sqlInfo.addValue(obj);
        return sqlInfo;
    }

    public static String buildDeleteSql(Class<?> cls, String str) {
        StringBuffer stringBuffer = new StringBuffer(getDeleteSqlBytableName(TableInfo.get((Class) cls).getTableName()));
        if (!TextUtils.isEmpty(str)) {
            stringBuffer.append(" WHERE ");
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    private static String getSelectSqlByTableName(String str) {
        return new StringBuffer("SELECT * FROM ").append(str).toString();
    }

    public static String getSelectSQL(Class<?> cls, Object obj) {
        TableInfo tableInfo = TableInfo.get((Class) cls);
        StringBuffer stringBuffer = new StringBuffer(getSelectSqlByTableName(tableInfo.getTableName()));
        stringBuffer.append(" WHERE ");
        stringBuffer.append(getPropertyStrSql(tableInfo.getId().getColumn(), obj));
        return stringBuffer.toString();
    }

    public static SqlInfo getSelectSqlAsSqlInfo(Class<?> cls, Object obj) {
        TableInfo tableInfo = TableInfo.get((Class) cls);
        StringBuffer stringBuffer = new StringBuffer(getSelectSqlByTableName(tableInfo.getTableName()));
        stringBuffer.append(" WHERE ").append(tableInfo.getId().getColumn()).append("=?");
        SqlInfo sqlInfo = new SqlInfo();
        sqlInfo.setSql(stringBuffer.toString());
        sqlInfo.addValue(obj);
        return sqlInfo;
    }

    public static String getSelectSQL(Class<?> cls) {
        return getSelectSqlByTableName(TableInfo.get((Class) cls).getTableName());
    }

    public static String getSelectSQLByWhere(Class<?> cls, String str) {
        StringBuffer stringBuffer = new StringBuffer(getSelectSqlByTableName(TableInfo.get((Class) cls).getTableName()));
        if (!TextUtils.isEmpty(str)) {
            stringBuffer.append(" WHERE ").append(str);
        }
        return stringBuffer.toString();
    }

    public static SqlInfo getUpdateSqlAsSqlInfo(Object obj) {
        TableInfo tableInfo = TableInfo.get(obj.getClass());
        Object value = tableInfo.getId().getValue(obj);
        if (value == null) {
            throw new DbException("this entity[" + obj.getClass() + "]'s id value is null");
        }
        List<KeyValue> arrayList = new ArrayList();
        for (Property property2KeyValue : tableInfo.propertyMap.values()) {
            KeyValue property2KeyValue2 = property2KeyValue(property2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        for (ManyToOne manyToOne2KeyValue : tableInfo.manyToOneMap.values()) {
            property2KeyValue2 = manyToOne2KeyValue(manyToOne2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer("UPDATE ");
        stringBuffer.append(tableInfo.getTableName());
        stringBuffer.append(" SET ");
        for (KeyValue property2KeyValue22 : arrayList) {
            stringBuffer.append(property2KeyValue22.getKey()).append("=?,");
            sqlInfo.addValue(property2KeyValue22.getValue());
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(" WHERE ").append(tableInfo.getId().getColumn()).append("=?");
        sqlInfo.addValue(value);
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static SqlInfo getUpdateSqlAsSqlInfo(Object obj, String str) {
        TableInfo tableInfo = TableInfo.get(obj.getClass());
        List<KeyValue> arrayList = new ArrayList();
        for (Property property2KeyValue : tableInfo.propertyMap.values()) {
            KeyValue property2KeyValue2 = property2KeyValue(property2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        for (ManyToOne manyToOne2KeyValue : tableInfo.manyToOneMap.values()) {
            property2KeyValue2 = manyToOne2KeyValue(manyToOne2KeyValue, obj);
            if (property2KeyValue2 != null) {
                arrayList.add(property2KeyValue2);
            }
        }
        if (arrayList == null || arrayList.size() == 0) {
            throw new DbException("this entity[" + obj.getClass() + "] has no property");
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer("UPDATE ");
        stringBuffer.append(tableInfo.getTableName());
        stringBuffer.append(" SET ");
        for (KeyValue property2KeyValue22 : arrayList) {
            stringBuffer.append(property2KeyValue22.getKey()).append("=?,");
            sqlInfo.addValue(property2KeyValue22.getValue());
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        if (!TextUtils.isEmpty(str)) {
            stringBuffer.append(" WHERE ").append(str);
        }
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static String getCreatTableSQL(Class<?> cls) {
        TableInfo tableInfo = TableInfo.get((Class) cls);
        Id id = tableInfo.getId();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CREATE TABLE IF NOT EXISTS ");
        stringBuffer.append(tableInfo.getTableName());
        stringBuffer.append(" ( ");
        Class dataType = id.getDataType();
        if (dataType == Integer.TYPE || dataType == Integer.class || dataType == Long.TYPE || dataType == Long.class) {
            stringBuffer.append(id.getColumn()).append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        } else {
            stringBuffer.append(id.getColumn()).append(" TEXT PRIMARY KEY,");
        }
        for (Property property : tableInfo.propertyMap.values()) {
            stringBuffer.append(property.getColumn());
            Class dataType2 = property.getDataType();
            if (dataType2 == Integer.TYPE || dataType2 == Integer.class || dataType2 == Long.TYPE || dataType2 == Long.class) {
                stringBuffer.append(" INTEGER");
            } else if (dataType2 == Float.TYPE || dataType2 == Float.class || dataType2 == Double.TYPE || dataType2 == Double.class) {
                stringBuffer.append(" REAL");
            } else if (dataType2 == Boolean.TYPE || dataType2 == Boolean.class) {
                stringBuffer.append(" NUMERIC");
            }
            stringBuffer.append(",");
        }
        for (ManyToOne column : tableInfo.manyToOneMap.values()) {
            stringBuffer.append(column.getColumn()).append(" INTEGER").append(",");
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }

    private static String getPropertyStrSql(String str, Object obj) {
        StringBuffer append = new StringBuffer(str).append("=");
        if ((obj instanceof String) || (obj instanceof Date) || (obj instanceof java.sql.Date)) {
            append.append("'").append(obj).append("'");
        } else {
            append.append(obj);
        }
        return append.toString();
    }

    private static KeyValue property2KeyValue(Property property, Object obj) {
        String column = property.getColumn();
        Object value = property.getValue(obj);
        if (value != null) {
            return new KeyValue(column, value);
        }
        if (property.getDefaultValue() == null || property.getDefaultValue().trim().length() == 0) {
            return null;
        }
        return new KeyValue(column, property.getDefaultValue());
    }

    private static KeyValue manyToOne2KeyValue(ManyToOne manyToOne, Object obj) {
        String column = manyToOne.getColumn();
        Object value = manyToOne.getValue(obj);
        if (value != null) {
            Object value2;
            if (value.getClass() == ManyToOneLazyLoader.class) {
                value2 = TableInfo.get(manyToOne.getManyClass()).getId().getValue(((ManyToOneLazyLoader) value).get());
            } else {
                value2 = TableInfo.get(value.getClass()).getId().getValue(value);
            }
            if (!(column == null || value2 == null)) {
                return new KeyValue(column, value2);
            }
        }
        return null;
    }
}
