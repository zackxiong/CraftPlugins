package com.yf.gattlib.http.afinal.db.table;

import com.yf.gattlib.http.afinal.exception.DbException;
import com.yf.gattlib.http.afinal.utils.ClassUtils;
import com.yf.gattlib.http.afinal.utils.FieldUtils;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;

/* compiled from: ProGuard */
public class TableInfo {
    private static final HashMap<String, TableInfo> tableInfoMap;
    private boolean checkDatabese;
    private String className;
    private Id id;
    public final HashMap<String, ManyToOne> manyToOneMap;
    public final HashMap<String, OneToMany> oneToManyMap;
    public final HashMap<String, Property> propertyMap;
    private String tableName;

    static {
        tableInfoMap = new HashMap();
    }

    private TableInfo() {
        this.propertyMap = new HashMap();
        this.oneToManyMap = new HashMap();
        this.manyToOneMap = new HashMap();
    }

    public static TableInfo get(Class<?> cls) {
        if (cls == null) {
            throw new DbException("table info get error,because the clazz is null");
        }
        TableInfo tableInfo = (TableInfo) tableInfoMap.get(cls.getName());
        if (tableInfo == null) {
            TableInfo tableInfo2 = new TableInfo();
            tableInfo2.setTableName(ClassUtils.getTableName(cls));
            tableInfo2.setClassName(cls.getName());
            Field primaryKeyField = ClassUtils.getPrimaryKeyField(cls);
            if (primaryKeyField != null) {
                Id id = new Id();
                id.setColumn(FieldUtils.getColumnByField(primaryKeyField));
                id.setFieldName(primaryKeyField.getName());
                id.setSet(FieldUtils.getFieldSetMethod((Class) cls, primaryKeyField));
                id.setGet(FieldUtils.getFieldGetMethod((Class) cls, primaryKeyField));
                id.setDataType(primaryKeyField.getType());
                tableInfo2.setId(id);
                List<Property> propertyList = ClassUtils.getPropertyList(cls);
                if (propertyList != null) {
                    for (Property property : propertyList) {
                        if (property != null) {
                            tableInfo2.propertyMap.put(property.getColumn(), property);
                        }
                    }
                }
                List<ManyToOne> manyToOneList = ClassUtils.getManyToOneList(cls);
                if (manyToOneList != null) {
                    for (ManyToOne manyToOne : manyToOneList) {
                        if (manyToOne != null) {
                            tableInfo2.manyToOneMap.put(manyToOne.getColumn(), manyToOne);
                        }
                    }
                }
                List<OneToMany> oneToManyList = ClassUtils.getOneToManyList(cls);
                if (oneToManyList != null) {
                    for (OneToMany oneToMany : oneToManyList) {
                        if (oneToMany != null) {
                            tableInfo2.oneToManyMap.put(oneToMany.getColumn(), oneToMany);
                        }
                    }
                }
                tableInfoMap.put(cls.getName(), tableInfo2);
                tableInfo = tableInfo2;
            } else {
                throw new DbException("the class[" + cls + "]'s idField is null , \n you can define _id,id property or use annotation @id to solution this exception");
            }
        }
        if (tableInfo != null) {
            return tableInfo;
        }
        throw new DbException("the class[" + cls + "]'s table is null");
    }

    public static TableInfo get(String str) {
        try {
            return get(Class.forName(str));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }

    public Id getId() {
        return this.id;
    }

    public void setId(Id id) {
        this.id = id;
    }

    public boolean isCheckDatabese() {
        return this.checkDatabese;
    }

    public void setCheckDatabese(boolean z) {
        this.checkDatabese = z;
    }
}
