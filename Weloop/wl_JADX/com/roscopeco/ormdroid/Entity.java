package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: ProGuard */
public abstract class Entity {
    private static final HashMap<Class<? extends Entity>, EntityMapping> entityMappings;
    public static final byte[] mDbLock;
    private EntityMapping mMappingCache;
    boolean mTransient;

    /* compiled from: ProGuard */
    static final class EntityMapping {
        private static final Pattern MATCH_DOTDOLLAR;
        private static final String TAG = "INTERNAL<EntityMapping>";
        private ArrayList<String> mColumnNames;
        private ArrayList<Field> mFields;
        private Class<? extends Entity> mMappedClass;
        private Field mPrimaryKey;
        String mPrimaryKeyColumnName;
        boolean mSchemaCreated;
        String mTableName;

        EntityMapping() {
            this.mColumnNames = new ArrayList();
            this.mFields = new ArrayList();
            this.mSchemaCreated = false;
        }

        static {
            MATCH_DOTDOLLAR = Pattern.compile("[\\.\\$]");
        }

        static EntityMapping build(Class<? extends Entity> cls) {
            EntityMapping entityMapping = new EntityMapping();
            entityMapping.mMappedClass = cls;
            Table table = (Table) cls.getAnnotation(Table.class);
            if (table != null) {
                entityMapping.mTableName = table.name();
            } else {
                entityMapping.mTableName = MATCH_DOTDOLLAR.matcher(cls.getName()).replaceAll("");
            }
            ArrayList arrayList = new ArrayList();
            for (Class cls2 = cls; !"com.roscopeco.ormdroid.Entity".equals(cls2.getName()); cls2 = cls2.getSuperclass()) {
                for (Field field : cls2.getDeclaredFields()) {
                    field.setAccessible(true);
                    Column column = (Column) field.getAnnotation(Column.class);
                    boolean z = column != null && column.inverse();
                    boolean z2;
                    if (column == null || !column.forceMap()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    int modifiers = field.getModifiers();
                    if (!(Modifier.isStatic(modifiers) || Modifier.isFinal(modifiers) || ((Modifier.isPrivate(modifiers) && !r0) || arrayList.contains(field.getName()) || z))) {
                        if (TypeMapper.getMapping(field.getType()) == null) {
                            throw new TypeMappingException("Model " + cls2.getName() + " has unmappable field: " + field);
                        }
                        String name;
                        column = (Column) field.getAnnotation(Column.class);
                        if (column != null) {
                            name = column.name();
                            if ("".equals(name)) {
                                name = field.getName();
                            }
                            if (column.primaryKey()) {
                                entityMapping.mPrimaryKey = field;
                                entityMapping.mPrimaryKeyColumnName = name;
                            }
                        } else {
                            name = field.getName();
                        }
                        if (entityMapping.mPrimaryKey == null && ("_id".equals(name) || "id".equals(name))) {
                            entityMapping.mPrimaryKey = field;
                            entityMapping.mPrimaryKeyColumnName = name;
                        }
                        entityMapping.mFields.add(field);
                        entityMapping.mColumnNames.add(name);
                        arrayList.add(field.getName());
                    }
                }
            }
            if (entityMapping.mPrimaryKey != null) {
                return entityMapping;
            }
            Log.e(TAG, "No primary key specified or determined for " + cls);
            throw new ORMDroidException("No primary key was specified, and a default could not be determined for " + cls);
        }

        void createSchema(SQLiteDatabase sQLiteDatabase) {
            String str;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("CREATE TABLE IF NOT EXISTS " + this.mTableName + " (");
            int size = this.mFields.size();
            for (int i = 0; i < size; i++) {
                str = (String) this.mColumnNames.get(i);
                stringBuilder.append(str);
                stringBuilder.append(" ");
                stringBuilder.append(TypeMapper.sqlType(((Field) this.mFields.get(i)).getType()));
                if (str.equals(this.mPrimaryKeyColumnName)) {
                    stringBuilder.append(" PRIMARY KEY AUTOINCREMENT");
                }
                if (i < size - 1) {
                    stringBuilder.append(",");
                }
            }
            stringBuilder.append(");");
            str = stringBuilder.toString();
            Log.v(TAG, str);
            sQLiteDatabase.execSQL(str);
            this.mSchemaCreated = true;
        }

        private boolean isPrimaryKey(Field field) {
            return this.mPrimaryKey.equals(field);
        }

        Object getPrimaryKeyValue(Entity entity) {
            try {
                return this.mPrimaryKey.get(entity);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "IllegalAccessException accessing primary key " + this.mPrimaryKey + "; Update failed");
                throw new ORMDroidException("IllegalAccessException accessing primary key " + this.mPrimaryKey + "; Update failed");
            }
        }

        private void setPrimaryKeyValue(Entity entity, Object obj) {
            try {
                this.mPrimaryKey.set(entity, obj);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "IllegalAccessException accessing primary key " + this.mPrimaryKey + "; Update failed");
                throw new ORMDroidException("IllegalAccessException accessing primary key " + this.mPrimaryKey + "; Update failed");
            }
        }

        private String processValue(SQLiteDatabase sQLiteDatabase, Object obj) {
            return TypeMapper.encodeValue(sQLiteDatabase, obj);
        }

        private String getColNames() {
            StringBuilder stringBuilder = new StringBuilder();
            ArrayList arrayList = this.mColumnNames;
            ArrayList arrayList2 = this.mFields;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!isPrimaryKey((Field) arrayList2.get(i))) {
                    stringBuilder.append((String) arrayList.get(i));
                    if (i < size - 1) {
                        stringBuilder.append(",");
                    }
                }
            }
            return stringBuilder.toString();
        }

        private String getFieldValues(SQLiteDatabase sQLiteDatabase, Entity entity) {
            StringBuilder stringBuilder = new StringBuilder();
            ArrayList arrayList = this.mFields;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Field field = (Field) arrayList.get(i);
                if (!isPrimaryKey(field)) {
                    Object obj;
                    try {
                        obj = field.get(entity);
                    } catch (IllegalAccessException e) {
                        Log.e(TAG, "IllegalAccessException accessing field " + ((Field) arrayList.get(i)).getName() + "; Inserting NULL");
                        obj = null;
                    }
                    stringBuilder.append(obj == null ? "null" : processValue(sQLiteDatabase, obj));
                    if (i < size - 1) {
                        stringBuilder.append(",");
                    }
                }
            }
            return stringBuilder.toString();
        }

        private String getSetFields(SQLiteDatabase sQLiteDatabase, Object obj) {
            StringBuilder stringBuilder = new StringBuilder();
            ArrayList arrayList = this.mColumnNames;
            ArrayList arrayList2 = this.mFields;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Field field = (Field) arrayList2.get(i);
                String str = (String) arrayList.get(i);
                if (str != this.mPrimaryKeyColumnName) {
                    Object obj2;
                    stringBuilder.append(str);
                    stringBuilder.append("=");
                    try {
                        obj2 = field.get(obj);
                    } catch (IllegalAccessException e) {
                        Log.w(TAG, "IllegalAccessException accessing field " + ((Field) arrayList2.get(i)).getName() + "; Inserting NULL");
                        obj2 = null;
                    }
                    stringBuilder.append(obj2 == null ? "null" : processValue(sQLiteDatabase, obj2));
                    if (i < size - 1) {
                        stringBuilder.append(",");
                    }
                }
            }
            return stringBuilder.toString();
        }

        private String stripTrailingComma(String str) {
            if (str.endsWith(",")) {
                return str.substring(0, str.length() - 1);
            }
            return str;
        }

        int insert(SQLiteDatabase sQLiteDatabase, Entity entity) {
            String str = "INSERT INTO " + this.mTableName + " (" + stripTrailingComma(getColNames()) + ") VALUES (" + stripTrailingComma(getFieldValues(sQLiteDatabase, entity)) + ")";
            Log.v(getClass().getSimpleName(), str);
            sQLiteDatabase.execSQL(str);
            Cursor rawQuery = sQLiteDatabase.rawQuery("select last_insert_rowid();", null);
            try {
                if (rawQuery.moveToFirst()) {
                    Integer valueOf = Integer.valueOf(rawQuery.getInt(0));
                    setPrimaryKeyValue(entity, valueOf);
                    int intValue = valueOf.intValue();
                    return intValue;
                }
                throw new ORMDroidException("Failed to get last inserted id after INSERT");
            } finally {
                if (rawQuery != null) {
                    rawQuery.close();
                }
            }
        }

        void update(SQLiteDatabase sQLiteDatabase, Entity entity) {
            String str = "UPDATE " + this.mTableName + " SET " + stripTrailingComma(getSetFields(sQLiteDatabase, entity)) + " WHERE " + this.mPrimaryKeyColumnName + "=" + getPrimaryKeyValue(entity);
            Log.v(getClass().getSimpleName(), str);
            sQLiteDatabase.execSQL(str);
        }

        <T extends Entity> T load(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
            try {
                Entity entity = (Entity) this.mMappedClass.newInstance();
                entity.mTransient = false;
                ArrayList arrayList = this.mColumnNames;
                ArrayList arrayList2 = this.mFields;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Field field = (Field) arrayList2.get(i);
                    Class type = field.getType();
                    int columnIndex = cursor.getColumnIndex((String) arrayList.get(i));
                    if (columnIndex == -1) {
                        Log.e("Internal<ModelMapping>", "Got -1 column index for `" + ((String) arrayList.get(i)) + "' - Database schema may not match entity");
                        throw new ORMDroidException("Got -1 column index for `" + ((String) arrayList.get(i)) + "' - Database schema may not match entity");
                    }
                    field.set(entity, TypeMapper.getMapping(field.getType()).decodeValue(sQLiteDatabase, type, cursor, columnIndex));
                }
                return entity;
            } catch (Throwable e) {
                throw new ORMDroidException("Failed to instantiate model class - does it have a public null constructor?", e);
            } catch (Throwable e2) {
                throw new ORMDroidException("Access denied. Is your model's constructor non-public?", e2);
            }
        }

        <T extends Entity> List<T> loadAll(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
            List arrayList = new ArrayList();
            if (cursor.moveToFirst()) {
                do {
                    arrayList.add(load(sQLiteDatabase, cursor));
                } while (cursor.moveToNext());
            }
            cursor.close();
            return arrayList;
        }

        void delete(SQLiteDatabase sQLiteDatabase, Entity entity) {
            String str = "DELETE FROM " + this.mTableName + " WHERE " + this.mPrimaryKeyColumnName + "=" + getPrimaryKeyValue(entity);
            Log.v(getClass().getSimpleName(), str);
            sQLiteDatabase.execSQL(str);
        }
    }

    static {
        mDbLock = new byte[0];
        entityMappings = new HashMap();
    }

    static EntityMapping getEntityMapping(Class<? extends Entity> cls) {
        EntityMapping entityMapping = (EntityMapping) entityMappings.get(cls);
        if (entityMapping != null) {
            return entityMapping;
        }
        HashMap hashMap = entityMappings;
        entityMapping = EntityMapping.build(cls);
        hashMap.put(cls, entityMapping);
        return entityMapping;
    }

    static EntityMapping getEntityMappingEnsureSchema(SQLiteDatabase sQLiteDatabase, Class<? extends Entity> cls) {
        EntityMapping entityMapping = getEntityMapping(cls);
        if (!entityMapping.mSchemaCreated) {
            entityMapping.createSchema(sQLiteDatabase);
        }
        return entityMapping;
    }

    public static <T extends Entity> Query<T> query(Class<T> cls) {
        return new Query(cls);
    }

    protected Entity() {
        this.mTransient = true;
    }

    public boolean isTransient() {
        return this.mTransient;
    }

    private EntityMapping getEntityMapping() {
        if (this.mMappingCache != null) {
            return this.mMappingCache;
        }
        EntityMapping entityMapping = getEntityMapping(getClass());
        this.mMappingCache = entityMapping;
        return entityMapping;
    }

    private EntityMapping getEntityMappingEnsureSchema(SQLiteDatabase sQLiteDatabase) {
        EntityMapping entityMapping = getEntityMapping();
        if (!entityMapping.mSchemaCreated) {
            entityMapping.createSchema(sQLiteDatabase);
        }
        return entityMapping;
    }

    public Object getPrimaryKeyValue() {
        return getEntityMapping().getPrimaryKeyValue(this);
    }

    public int save(SQLiteDatabase sQLiteDatabase) {
        EntityMapping entityMappingEnsureSchema = getEntityMappingEnsureSchema(sQLiteDatabase);
        if (this.mTransient) {
            int insert = entityMappingEnsureSchema.insert(sQLiteDatabase, this);
            this.mTransient = false;
            return insert;
        }
        entityMappingEnsureSchema.update(sQLiteDatabase, this);
        return -1;
    }

    public int save() {
        int save;
        synchronized (mDbLock) {
            SQLiteDatabase defaultDatabase = ORMDroidApplication.getDefaultDatabase();
            defaultDatabase.beginTransaction();
            try {
                save = save(defaultDatabase);
                defaultDatabase.setTransactionSuccessful();
                defaultDatabase.endTransaction();
            } catch (Throwable th) {
                defaultDatabase.endTransaction();
            }
        }
        return save;
    }

    public void delete(SQLiteDatabase sQLiteDatabase) {
        EntityMapping entityMappingEnsureSchema = getEntityMappingEnsureSchema(sQLiteDatabase);
        if (!this.mTransient) {
            entityMappingEnsureSchema.delete(sQLiteDatabase, this);
        }
    }

    public void delete() {
        synchronized (mDbLock) {
            if (!this.mTransient) {
                SQLiteDatabase defaultDatabase = ORMDroidApplication.getDefaultDatabase();
                defaultDatabase.beginTransaction();
                try {
                    delete(defaultDatabase);
                    defaultDatabase.setTransactionSuccessful();
                    defaultDatabase.endTransaction();
                } catch (Throwable th) {
                    defaultDatabase.endTransaction();
                }
            }
        }
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass().equals(getClass()) && ((Entity) obj).getPrimaryKeyValue().equals(getPrimaryKeyValue());
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + getPrimaryKeyValue().hashCode();
    }
}
