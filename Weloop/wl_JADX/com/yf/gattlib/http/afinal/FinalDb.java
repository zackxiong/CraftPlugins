package com.yf.gattlib.http.afinal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.yf.gattlib.http.afinal.db.sqlite.CursorUtils;
import com.yf.gattlib.http.afinal.db.sqlite.DbModel;
import com.yf.gattlib.http.afinal.db.sqlite.ManyToOneLazyLoader;
import com.yf.gattlib.http.afinal.db.sqlite.OneToManyLazyLoader;
import com.yf.gattlib.http.afinal.db.sqlite.SqlBuilder;
import com.yf.gattlib.http.afinal.db.sqlite.SqlInfo;
import com.yf.gattlib.http.afinal.db.table.KeyValue;
import com.yf.gattlib.http.afinal.db.table.ManyToOne;
import com.yf.gattlib.http.afinal.db.table.OneToMany;
import com.yf.gattlib.http.afinal.db.table.TableInfo;
import com.yf.gattlib.http.afinal.exception.DbException;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* compiled from: ProGuard */
public class FinalDb {
    private static final String TAG = "FinalDb";
    private static HashMap<String, FinalDb> daoMap;
    private DaoConfig config;
    private SQLiteDatabase db;

    /* compiled from: ProGuard */
    public static class DaoConfig {
        private DbUpdateListener dbUpdateListener;
        private int dbVersion;
        private boolean debug;
        private Context mContext;
        private String mDbName;
        private String targetDirectory;

        public DaoConfig() {
            this.mContext = null;
            this.mDbName = "afinal.db";
            this.dbVersion = 1;
            this.debug = true;
        }

        public Context getContext() {
            return this.mContext;
        }

        public void setContext(Context context) {
            this.mContext = context;
        }

        public String getDbName() {
            return this.mDbName;
        }

        public void setDbName(String str) {
            this.mDbName = str;
        }

        public int getDbVersion() {
            return this.dbVersion;
        }

        public void setDbVersion(int i) {
            this.dbVersion = i;
        }

        public boolean isDebug() {
            return this.debug;
        }

        public void setDebug(boolean z) {
            this.debug = z;
        }

        public DbUpdateListener getDbUpdateListener() {
            return this.dbUpdateListener;
        }

        public void setDbUpdateListener(DbUpdateListener dbUpdateListener) {
            this.dbUpdateListener = dbUpdateListener;
        }

        public String getTargetDirectory() {
            return this.targetDirectory;
        }

        public void setTargetDirectory(String str) {
            this.targetDirectory = str;
        }
    }

    /* compiled from: ProGuard */
    public interface DbUpdateListener {
        void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);
    }

    /* compiled from: ProGuard */
    class SqliteDbHelper extends SQLiteOpenHelper {
        private DbUpdateListener mDbUpdateListener;

        public SqliteDbHelper(Context context, String str, int i, DbUpdateListener dbUpdateListener) {
            super(context, str, null, i);
            this.mDbUpdateListener = dbUpdateListener;
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (this.mDbUpdateListener != null) {
                this.mDbUpdateListener.onUpgrade(sQLiteDatabase, i, i2);
            } else {
                FinalDb.this.dropDb();
            }
        }
    }

    static {
        daoMap = new HashMap();
    }

    private FinalDb(DaoConfig daoConfig) {
        if (daoConfig == null) {
            throw new DbException("daoConfig is null");
        } else if (daoConfig.getContext() == null) {
            throw new DbException("android context is null");
        } else {
            if (daoConfig.getTargetDirectory() == null || daoConfig.getTargetDirectory().trim().length() <= 0) {
                this.db = new SqliteDbHelper(daoConfig.getContext().getApplicationContext(), daoConfig.getDbName(), daoConfig.getDbVersion(), daoConfig.getDbUpdateListener()).getWritableDatabase();
            } else {
                this.db = createDbFileOnSDCard(daoConfig.getTargetDirectory(), daoConfig.getDbName());
            }
            this.config = daoConfig;
        }
    }

    private static synchronized FinalDb getInstance(DaoConfig daoConfig) {
        FinalDb finalDb;
        synchronized (FinalDb.class) {
            finalDb = (FinalDb) daoMap.get(daoConfig.getDbName());
            if (finalDb == null) {
                finalDb = new FinalDb(daoConfig);
                daoMap.put(daoConfig.getDbName(), finalDb);
            }
        }
        return finalDb;
    }

    public static FinalDb create(Context context) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, boolean z) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setDebug(z);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setDbName(str);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str, boolean z) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setDbName(str);
        daoConfig.setDebug(z);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str, String str2) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setDbName(str2);
        daoConfig.setTargetDirectory(str);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str, String str2, boolean z) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setTargetDirectory(str);
        daoConfig.setDbName(str2);
        daoConfig.setDebug(z);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str, boolean z, int i, DbUpdateListener dbUpdateListener) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setDbName(str);
        daoConfig.setDebug(z);
        daoConfig.setDbVersion(i);
        daoConfig.setDbUpdateListener(dbUpdateListener);
        return create(daoConfig);
    }

    public static FinalDb create(Context context, String str, String str2, boolean z, int i, DbUpdateListener dbUpdateListener) {
        DaoConfig daoConfig = new DaoConfig();
        daoConfig.setContext(context);
        daoConfig.setTargetDirectory(str);
        daoConfig.setDbName(str2);
        daoConfig.setDebug(z);
        daoConfig.setDbVersion(i);
        daoConfig.setDbUpdateListener(dbUpdateListener);
        return create(daoConfig);
    }

    public static FinalDb create(DaoConfig daoConfig) {
        return getInstance(daoConfig);
    }

    public void save(Object obj) {
        checkTableExist(obj.getClass());
        exeSqlInfo(SqlBuilder.buildInsertSql(obj));
    }

    public boolean saveBindId(Object obj) {
        checkTableExist(obj.getClass());
        List saveKeyValueListByEntity = SqlBuilder.getSaveKeyValueListByEntity(obj);
        if (saveKeyValueListByEntity == null || saveKeyValueListByEntity.size() <= 0) {
            return false;
        }
        TableInfo tableInfo = TableInfo.get(obj.getClass());
        ContentValues contentValues = new ContentValues();
        insertContentValues(saveKeyValueListByEntity, contentValues);
        Long valueOf = Long.valueOf(this.db.insert(tableInfo.getTableName(), null, contentValues));
        if (valueOf.longValue() == -1) {
            return false;
        }
        tableInfo.getId().setValue(obj, valueOf);
        return true;
    }

    private void insertContentValues(List<KeyValue> list, ContentValues contentValues) {
        if (list == null || contentValues == null) {
            Log.w(TAG, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!");
            return;
        }
        for (KeyValue keyValue : list) {
            contentValues.put(keyValue.getKey(), keyValue.getValue().toString());
        }
    }

    public void update(Object obj) {
        checkTableExist(obj.getClass());
        exeSqlInfo(SqlBuilder.getUpdateSqlAsSqlInfo(obj));
    }

    public void update(Object obj, String str) {
        checkTableExist(obj.getClass());
        exeSqlInfo(SqlBuilder.getUpdateSqlAsSqlInfo(obj, str));
    }

    public void delete(Object obj) {
        checkTableExist(obj.getClass());
        exeSqlInfo(SqlBuilder.buildDeleteSql(obj));
    }

    public void deleteById(Class<?> cls, Object obj) {
        checkTableExist(cls);
        exeSqlInfo(SqlBuilder.buildDeleteSql((Class) cls, obj));
    }

    public void deleteByWhere(Class<?> cls, String str) {
        checkTableExist(cls);
        String buildDeleteSql = SqlBuilder.buildDeleteSql((Class) cls, str);
        debugSql(buildDeleteSql);
        this.db.execSQL(buildDeleteSql);
    }

    public void deleteAll(Class<?> cls) {
        checkTableExist(cls);
        String buildDeleteSql = SqlBuilder.buildDeleteSql((Class) cls, null);
        debugSql(buildDeleteSql);
        this.db.execSQL(buildDeleteSql);
    }

    public void dropTable(Class<?> cls) {
        checkTableExist(cls);
        String str = "DROP TABLE " + TableInfo.get((Class) cls).getTableName();
        debugSql(str);
        this.db.execSQL(str);
    }

    public void dropDb() {
        Cursor rawQuery = this.db.rawQuery("SELECT name FROM sqlite_master WHERE type ='table' AND name != 'sqlite_sequence'", null);
        if (rawQuery != null) {
            while (rawQuery.moveToNext()) {
                this.db.execSQL("DROP TABLE " + rawQuery.getString(0));
            }
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
    }

    private void exeSqlInfo(SqlInfo sqlInfo) {
        if (sqlInfo != null) {
            debugSql(sqlInfo.getSql());
            this.db.execSQL(sqlInfo.getSql(), sqlInfo.getBindArgsAsArray());
            return;
        }
        Log.e(TAG, "sava error:sqlInfo is null");
    }

    public <T> T findById(Object obj, Class<T> cls) {
        checkTableExist(cls);
        SqlInfo selectSqlAsSqlInfo = SqlBuilder.getSelectSqlAsSqlInfo(cls, obj);
        if (selectSqlAsSqlInfo != null) {
            debugSql(selectSqlAsSqlInfo.getSql());
            Cursor rawQuery = this.db.rawQuery(selectSqlAsSqlInfo.getSql(), selectSqlAsSqlInfo.getBindArgsAsStringArray());
            T entity;
            try {
                if (rawQuery.moveToNext()) {
                    entity = CursorUtils.getEntity(rawQuery, cls, this);
                    return entity;
                }
                rawQuery.close();
            } catch (Exception e) {
                entity = e;
                entity.printStackTrace();
            } finally {
                rawQuery.close();
            }
        }
        return null;
    }

    public <T> T findWithManyToOneById(Object obj, Class<T> cls) {
        checkTableExist(cls);
        String selectSQL = SqlBuilder.getSelectSQL(cls, obj);
        debugSql(selectSQL);
        DbModel findDbModelBySQL = findDbModelBySQL(selectSQL);
        if (findDbModelBySQL != null) {
            return loadManyToOne(findDbModelBySQL, CursorUtils.dbModel2Entity(findDbModelBySQL, cls), cls, new Class[0]);
        }
        return null;
    }

    public <T> T findWithManyToOneById(Object obj, Class<T> cls, Class<?>... clsArr) {
        checkTableExist(cls);
        String selectSQL = SqlBuilder.getSelectSQL(cls, obj);
        debugSql(selectSQL);
        DbModel findDbModelBySQL = findDbModelBySQL(selectSQL);
        if (findDbModelBySQL != null) {
            return loadManyToOne(findDbModelBySQL, CursorUtils.dbModel2Entity(findDbModelBySQL, cls), cls, clsArr);
        }
        return null;
    }

    public <T> T loadManyToOne(DbModel dbModel, T t, Class<T> cls, Class<?>... clsArr) {
        if (t != null) {
            try {
                for (ManyToOne manyToOne : TableInfo.get((Class) cls).manyToOneMap.values()) {
                    Object obj;
                    if (dbModel != null) {
                        obj = dbModel.get(manyToOne.getColumn());
                    } else if (manyToOne.getValue(t).getClass() != ManyToOneLazyLoader.class || manyToOne.getValue(t) == null) {
                        obj = null;
                    } else {
                        obj = ((ManyToOneLazyLoader) manyToOne.getValue(t)).getFieldValue();
                    }
                    if (obj != null) {
                        Object obj2;
                        if (clsArr == null || clsArr.length == 0) {
                            obj2 = 1;
                        } else {
                            obj2 = null;
                        }
                        for (Class<?> cls2 : clsArr) {
                            if (manyToOne.getManyClass() == cls2) {
                                obj2 = 1;
                                break;
                            }
                        }
                        if (obj2 != null) {
                            obj2 = findById(Integer.valueOf(obj.toString()), manyToOne.getManyClass());
                            if (obj2 != null) {
                                if (manyToOne.getValue(t).getClass() == ManyToOneLazyLoader.class) {
                                    if (manyToOne.getValue(t) == null) {
                                        manyToOne.setValue(t, new ManyToOneLazyLoader(t, cls, manyToOne.getManyClass(), this));
                                    }
                                    ((ManyToOneLazyLoader) manyToOne.getValue(t)).set(obj2);
                                } else {
                                    manyToOne.setValue(t, obj2);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return t;
    }

    public <T> T findWithOneToManyById(Object obj, Class<T> cls) {
        checkTableExist(cls);
        String selectSQL = SqlBuilder.getSelectSQL(cls, obj);
        debugSql(selectSQL);
        DbModel findDbModelBySQL = findDbModelBySQL(selectSQL);
        if (findDbModelBySQL != null) {
            return loadOneToMany(CursorUtils.dbModel2Entity(findDbModelBySQL, cls), cls, new Class[0]);
        }
        return null;
    }

    public <T> T findWithOneToManyById(Object obj, Class<T> cls, Class<?>... clsArr) {
        checkTableExist(cls);
        String selectSQL = SqlBuilder.getSelectSQL(cls, obj);
        debugSql(selectSQL);
        DbModel findDbModelBySQL = findDbModelBySQL(selectSQL);
        if (findDbModelBySQL != null) {
            return loadOneToMany(CursorUtils.dbModel2Entity(findDbModelBySQL, cls), cls, clsArr);
        }
        return null;
    }

    public <T> T loadOneToMany(T t, Class<T> cls, Class<?>... clsArr) {
        if (t != null) {
            try {
                Collection<OneToMany> values = TableInfo.get((Class) cls).oneToManyMap.values();
                Object value = TableInfo.get((Class) cls).getId().getValue(t);
                for (OneToMany oneToMany : values) {
                    Object obj;
                    if (clsArr == null || clsArr.length == 0) {
                        obj = 1;
                    } else {
                        obj = null;
                    }
                    for (Class<?> cls2 : clsArr) {
                        if (oneToMany.getOneClass() == cls2) {
                            obj = 1;
                            break;
                        }
                    }
                    if (obj != null) {
                        List findAllByWhere = findAllByWhere(oneToMany.getOneClass(), oneToMany.getColumn() + "=" + value);
                        if (findAllByWhere == null) {
                            continue;
                        } else if (oneToMany.getDataType() == OneToManyLazyLoader.class) {
                            ((OneToManyLazyLoader) oneToMany.getValue(t)).setList(findAllByWhere);
                        } else {
                            oneToMany.setValue(t, findAllByWhere);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return t;
    }

    public <T> List<T> findAll(Class<T> cls) {
        checkTableExist(cls);
        return findAllBySql(cls, SqlBuilder.getSelectSQL(cls));
    }

    public <T> List<T> findAll(Class<T> cls, String str) {
        checkTableExist(cls);
        return findAllBySql(cls, SqlBuilder.getSelectSQL(cls) + " ORDER BY " + str);
    }

    public <T> List<T> findAllByWhere(Class<T> cls, String str) {
        checkTableExist(cls);
        return findAllBySql(cls, SqlBuilder.getSelectSQLByWhere(cls, str));
    }

    public <T> List<T> findAllByWhere(Class<T> cls, String str, String str2) {
        checkTableExist(cls);
        return findAllBySql(cls, SqlBuilder.getSelectSQLByWhere(cls, str) + " ORDER BY " + str2);
    }

    private <T> List<T> findAllBySql(Class<T> cls, String str) {
        checkTableExist(cls);
        debugSql(str);
        Cursor rawQuery = this.db.rawQuery(str, null);
        try {
            List<T> arrayList = new ArrayList();
            while (rawQuery.moveToNext()) {
                arrayList.add(CursorUtils.getEntity(rawQuery, cls, this));
            }
            if (rawQuery == null) {
                return arrayList;
            }
            rawQuery.close();
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }

    public DbModel findDbModelBySQL(String str) {
        DbModel dbModel = null;
        debugSql(str);
        Cursor rawQuery = this.db.rawQuery(str, null);
        try {
            if (rawQuery.moveToNext()) {
                dbModel = CursorUtils.getDbModel(rawQuery);
            } else {
                rawQuery.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            rawQuery.close();
        }
        return dbModel;
    }

    public List<DbModel> findDbModelListBySQL(String str) {
        debugSql(str);
        Cursor rawQuery = this.db.rawQuery(str, null);
        List<DbModel> arrayList = new ArrayList();
        while (rawQuery.moveToNext()) {
            try {
                arrayList.add(CursorUtils.getDbModel(rawQuery));
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                rawQuery.close();
            }
        }
        return arrayList;
    }

    private void checkTableExist(Class<?> cls) {
        if (!tableIsExist(TableInfo.get((Class) cls))) {
            String creatTableSQL = SqlBuilder.getCreatTableSQL(cls);
            debugSql(creatTableSQL);
            this.db.execSQL(creatTableSQL);
        }
    }

    private boolean tableIsExist(TableInfo tableInfo) {
        Cursor cursor = null;
        if (tableInfo.isCheckDatabese()) {
            return true;
        }
        try {
            String str = "SELECT COUNT(*) AS c FROM sqlite_master WHERE type ='table' AND name ='" + tableInfo.getTableName() + "' ";
            debugSql(str);
            cursor = this.db.rawQuery(str, null);
            if (cursor == null || !cursor.moveToNext() || cursor.getInt(0) <= 0) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
            tableInfo.setCheckDatabese(true);
            if (cursor == null) {
                return true;
            }
            cursor.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private void debugSql(String str) {
        if (this.config != null && this.config.isDebug()) {
            Log.d("Debug SQL", ">>>>>>  " + str);
        }
    }

    private SQLiteDatabase createDbFileOnSDCard(String str, String str2) {
        File file = new File(str, str2);
        if (file.exists()) {
            return SQLiteDatabase.openOrCreateDatabase(file, null);
        }
        try {
            if (file.createNewFile()) {
                return SQLiteDatabase.openOrCreateDatabase(file, null);
            }
            return null;
        } catch (Throwable e) {
            throw new DbException("\u6570\u636e\u5e93\u6587\u4ef6\u521b\u5efa\u5931\u8d25", e);
        }
    }
}
