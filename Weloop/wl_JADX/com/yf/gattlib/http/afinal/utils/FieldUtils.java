package com.yf.gattlib.http.afinal.utils;

import com.yf.gattlib.http.afinal.annotation.sqlite.Id;
import com.yf.gattlib.http.afinal.annotation.sqlite.ManyToOne;
import com.yf.gattlib.http.afinal.annotation.sqlite.OneToMany;
import com.yf.gattlib.http.afinal.annotation.sqlite.Property;
import com.yf.gattlib.http.afinal.annotation.sqlite.Transient;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: ProGuard */
public class FieldUtils {
    public static final SimpleDateFormat SDF;

    static {
        SDF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    public static Method getFieldGetMethod(Class<?> cls, Field field) {
        String name = field.getName();
        Method method = null;
        if (field.getType() == Boolean.TYPE) {
            method = getBooleanFieldGetMethod(cls, name);
        }
        if (method == null) {
            return getFieldGetMethod((Class) cls, name);
        }
        return method;
    }

    public static Method getBooleanFieldGetMethod(Class<?> cls, String str) {
        String str2 = "is" + str.substring(0, 1).toUpperCase() + str.substring(1);
        if (!isISStart(str)) {
            str = str2;
        }
        try {
            return cls.getDeclaredMethod(str, new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Method getBooleanFieldSetMethod(Class<?> cls, Field field) {
        String name = field.getName();
        String str = "set" + name.substring(0, 1).toUpperCase() + name.substring(1);
        if (isISStart(field.getName())) {
            str = "set" + name.substring(2, 3).toUpperCase() + name.substring(3);
        }
        try {
            return cls.getDeclaredMethod(str, new Class[]{field.getType()});
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean isISStart(String str) {
        if (str == null || str.trim().length() == 0 || !str.startsWith("is") || Character.isLowerCase(str.charAt(2))) {
            return false;
        }
        return true;
    }

    public static Method getFieldGetMethod(Class<?> cls, String str) {
        try {
            return cls.getDeclaredMethod("get" + str.substring(0, 1).toUpperCase() + str.substring(1), new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Method getFieldSetMethod(Class<?> cls, Field field) {
        String name = field.getName();
        try {
            return cls.getDeclaredMethod("set" + name.substring(0, 1).toUpperCase() + name.substring(1), new Class[]{field.getType()});
        } catch (NoSuchMethodException e) {
            if (field.getType() == Boolean.TYPE) {
                return getBooleanFieldSetMethod(cls, field);
            }
            return null;
        }
    }

    public static Method getFieldSetMethod(Class<?> cls, String str) {
        try {
            return getFieldSetMethod((Class) cls, cls.getDeclaredField(str));
        } catch (SecurityException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Object getFieldValue(Object obj, Field field) {
        return invoke(obj, getFieldGetMethod(obj.getClass(), field));
    }

    public static Object getFieldValue(Object obj, String str) {
        return invoke(obj, getFieldGetMethod(obj.getClass(), str));
    }

    public static void setFieldValue(Object obj, Field field, Object obj2) {
        try {
            Method fieldSetMethod = getFieldSetMethod(obj.getClass(), field);
            if (fieldSetMethod != null) {
                fieldSetMethod.setAccessible(true);
                Class type = field.getType();
                if (type == String.class) {
                    fieldSetMethod.invoke(obj, new Object[]{obj2.toString()});
                } else if (type == Integer.TYPE || type == Integer.class) {
                    int intValue;
                    r1 = new Object[1];
                    if (obj2 == null) {
                        intValue = ((Integer) null).intValue();
                    } else {
                        intValue = Integer.parseInt(obj2.toString());
                    }
                    r1[0] = Integer.valueOf(intValue);
                    fieldSetMethod.invoke(obj, r1);
                } else if (type == Float.TYPE || type == Float.class) {
                    r1 = new Object[1];
                    r1[0] = Float.valueOf(obj2 == null ? ((Float) null).floatValue() : Float.parseFloat(obj2.toString()));
                    fieldSetMethod.invoke(obj, r1);
                } else if (type == Long.TYPE || type == Long.class) {
                    Object[] objArr = new Object[1];
                    objArr[0] = Long.valueOf(obj2 == null ? ((Long) null).longValue() : Long.parseLong(obj2.toString()));
                    fieldSetMethod.invoke(obj, objArr);
                } else if (type == Date.class) {
                    r1 = new Object[1];
                    r1[0] = obj2 == null ? (Date) null : stringToDateTime(obj2.toString());
                    fieldSetMethod.invoke(obj, r1);
                } else {
                    fieldSetMethod.invoke(obj, new Object[]{obj2});
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Field getFieldByColumnName(Class<?> cls, String str) {
        if (str == null) {
            return null;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields == null || declaredFields.length <= 0) {
            return null;
        }
        Field primaryKeyField;
        Field field;
        if (str.equals(ClassUtils.getPrimaryKeyColumn(cls))) {
            primaryKeyField = ClassUtils.getPrimaryKeyField(cls);
        } else {
            primaryKeyField = null;
        }
        if (primaryKeyField == null) {
            for (Field field2 : declaredFields) {
                Property property = (Property) field2.getAnnotation(Property.class);
                if (property != null && str.equals(property.column())) {
                    field = field2;
                    break;
                }
                ManyToOne manyToOne = (ManyToOne) field2.getAnnotation(ManyToOne.class);
                if (manyToOne != null && manyToOne.column().trim().length() != 0) {
                    field = field2;
                    break;
                }
            }
        }
        field = primaryKeyField;
        if (field == null) {
            return getFieldByName(cls, str);
        }
        return field;
    }

    public static Field getFieldByName(Class<?> cls, String str) {
        Field field = null;
        if (str != null) {
            try {
                field = cls.getDeclaredField(str);
            } catch (SecurityException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
        return field;
    }

    public static String getColumnByField(Field field) {
        Property property = (Property) field.getAnnotation(Property.class);
        if (property != null && property.column().trim().length() != 0) {
            return property.column();
        }
        ManyToOne manyToOne = (ManyToOne) field.getAnnotation(ManyToOne.class);
        if (manyToOne != null && manyToOne.column().trim().length() != 0) {
            return manyToOne.column();
        }
        OneToMany oneToMany = (OneToMany) field.getAnnotation(OneToMany.class);
        if (oneToMany != null && oneToMany.manyColumn() != null && oneToMany.manyColumn().trim().length() != 0) {
            return oneToMany.manyColumn();
        }
        Id id = (Id) field.getAnnotation(Id.class);
        if (id == null || id.column().trim().length() == 0) {
            return field.getName();
        }
        return id.column();
    }

    public static String getPropertyDefaultValue(Field field) {
        Property property = (Property) field.getAnnotation(Property.class);
        if (property == null || property.defaultValue().trim().length() == 0) {
            return null;
        }
        return property.defaultValue();
    }

    public static boolean isTransient(Field field) {
        return field.getAnnotation(Transient.class) != null;
    }

    private static Object invoke(Object obj, Method method) {
        Object obj2 = null;
        if (!(obj == null || method == null)) {
            try {
                obj2 = method.invoke(obj, new Object[0]);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return obj2;
    }

    public static boolean isManyToOne(Field field) {
        return field.getAnnotation(ManyToOne.class) != null;
    }

    public static boolean isOneToMany(Field field) {
        return field.getAnnotation(OneToMany.class) != null;
    }

    public static boolean isManyToOneOrOneToMany(Field field) {
        return isManyToOne(field) || isOneToMany(field);
    }

    public static boolean isBaseDateType(Field field) {
        Class type = field.getType();
        return type.equals(String.class) || type.equals(Integer.class) || type.equals(Byte.class) || type.equals(Long.class) || type.equals(Double.class) || type.equals(Float.class) || type.equals(Character.class) || type.equals(Short.class) || type.equals(Boolean.class) || type.equals(Date.class) || type.equals(Date.class) || type.equals(java.sql.Date.class) || type.isPrimitive();
    }

    public static Date stringToDateTime(String str) {
        if (str != null) {
            try {
                return SDF.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
