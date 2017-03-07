package com.yf.gattlib.http.afinal.db.table;

import com.yf.gattlib.http.afinal.utils.FieldUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Date;

/* compiled from: ProGuard */
public class Property {
    private String column;
    private Class<?> dataType;
    private String defaultValue;
    private Field field;
    private String fieldName;
    private Method get;
    private Method set;

    public void setValue(Object obj, Object obj2) {
        if (this.set == null || obj2 == null) {
            try {
                this.field.setAccessible(true);
                this.field.set(obj, obj2);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            if (this.dataType == String.class) {
                this.set.invoke(obj, new Object[]{obj2.toString()});
            } else if (this.dataType == Integer.TYPE || this.dataType == Integer.class) {
                int intValue;
                r1 = this.set;
                r2 = new Object[1];
                if (obj2 == null) {
                    intValue = ((Integer) null).intValue();
                } else {
                    intValue = Integer.parseInt(obj2.toString());
                }
                r2[0] = Integer.valueOf(intValue);
                r1.invoke(obj, r2);
            } else if (this.dataType == Float.TYPE || this.dataType == Float.class) {
                r1 = this.set;
                r2 = new Object[1];
                r2[0] = Float.valueOf(obj2 == null ? ((Float) null).floatValue() : Float.parseFloat(obj2.toString()));
                r1.invoke(obj, r2);
            } else if (this.dataType == Double.TYPE || this.dataType == Double.class) {
                r2 = this.set;
                r3 = new Object[1];
                r3[0] = Double.valueOf(obj2 == null ? ((Double) null).doubleValue() : Double.parseDouble(obj2.toString()));
                r2.invoke(obj, r3);
            } else if (this.dataType == Long.TYPE || this.dataType == Long.class) {
                r2 = this.set;
                r3 = new Object[1];
                r3[0] = Long.valueOf(obj2 == null ? ((Long) null).longValue() : Long.parseLong(obj2.toString()));
                r2.invoke(obj, r3);
            } else if (this.dataType == Date.class || this.dataType == java.sql.Date.class) {
                r1 = this.set;
                r2 = new Object[1];
                r2[0] = obj2 == null ? (Date) null : FieldUtils.stringToDateTime(obj2.toString());
                r1.invoke(obj, r2);
            } else if (this.dataType == Boolean.TYPE || this.dataType == Boolean.class) {
                r1 = this.set;
                r2 = new Object[1];
                r2[0] = Boolean.valueOf(obj2 == null ? ((Boolean) null).booleanValue() : "1".equals(obj2.toString()));
                r1.invoke(obj, r2);
            } else {
                this.set.invoke(obj, new Object[]{obj2});
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public <T> T getValue(Object obj) {
        if (!(obj == null || this.get == null)) {
            try {
                return this.get.invoke(obj, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public void setFieldName(String str) {
        this.fieldName = str;
    }

    public String getColumn() {
        return this.column;
    }

    public void setColumn(String str) {
        this.column = str;
    }

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public void setDefaultValue(String str) {
        this.defaultValue = str;
    }

    public Class<?> getDataType() {
        return this.dataType;
    }

    public void setDataType(Class<?> cls) {
        this.dataType = cls;
    }

    public Method getGet() {
        return this.get;
    }

    public void setGet(Method method) {
        this.get = method;
    }

    public Method getSet() {
        return this.set;
    }

    public void setSet(Method method) {
        this.set = method;
    }

    public Field getField() {
        return this.field;
    }

    public void setField(Field field) {
        this.field = field;
    }
}
