package com.roscopeco.ormdroid;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.util.List;

/* compiled from: ProGuard */
public class Query<T extends Entity> {
    private static final String TAG = "Query";
    private String customSql;
    private int limit;
    private final Class<T> mClass;
    private final EntityMapping mEntityMapping;
    private String[] orderByColumns;
    private String sqlCache;
    private String sqlCache1;
    private String whereCache;
    private SQLExpression whereExpr;

    /* compiled from: ProGuard */
    public interface SQLExpression {
        String generate();
    }

    /* compiled from: ProGuard */
    static class BinExpr implements SQLExpression {
        static final String EQ = " = ";
        static final String GEQ = " >= ";
        static final String GT = " > ";
        static final String LEQ = " <= ";
        static final String LT = " < ";
        static final String NE = " != ";
        final String column;
        final String op;
        final Object value;

        public BinExpr(String str, String str2, Object obj) {
            this.op = str;
            this.column = str2;
            this.value = obj;
        }

        public String generate() {
            return this.column + this.op + this.value;
        }
    }

    /* compiled from: ProGuard */
    static class LogicalExpr implements SQLExpression {
        final String op;
        final SQLExpression[] operands;

        public LogicalExpr(String str, SQLExpression... sQLExpressionArr) {
            this.op = str;
            if (sQLExpressionArr.length < 2) {
                throw new IllegalArgumentException("Cannot create logical expression with < 2 operands");
            }
            this.operands = sQLExpressionArr;
        }

        public String generate() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("(");
            for (int i = 0; i < this.operands.length - 1; i++) {
                stringBuilder.append(this.operands[i].generate()).append(" ").append(this.op).append(" ");
            }
            stringBuilder.append(this.operands[this.operands.length - 1].generate()).append(")");
            return stringBuilder.toString();
        }
    }

    private static StringBuilder joinStrings(StringBuilder stringBuilder, String... strArr) {
        int i = 1;
        if (strArr.length < 1) {
            return stringBuilder.append("*");
        }
        stringBuilder.append(strArr[0]);
        while (i < strArr.length) {
            stringBuilder.append(", ").append(strArr[i]);
            i++;
        }
        return stringBuilder;
    }

    public Query(Class<T> cls) {
        this.limit = -1;
        this.mClass = cls;
        this.mEntityMapping = Entity.getEntityMapping(cls);
    }

    public static <T extends Entity> Query<T> query(Class<T> cls) {
        return new Query(cls);
    }

    public static SQLExpression eql(String str, Object obj) {
        return new BinExpr(" = ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression neq(String str, Object obj) {
        return new BinExpr(" != ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression lt(String str, Object obj) {
        return new BinExpr(" < ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression gt(String str, Object obj) {
        return new BinExpr(" > ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression leq(String str, Object obj) {
        return new BinExpr(" <= ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression geq(String str, Object obj) {
        return new BinExpr(" >= ", str, TypeMapper.encodeValue(null, obj));
    }

    public static SQLExpression and(SQLExpression... sQLExpressionArr) {
        return new LogicalExpr("AND", sQLExpressionArr);
    }

    public static SQLExpression or(SQLExpression... sQLExpressionArr) {
        return new LogicalExpr("OR", sQLExpressionArr);
    }

    public Query<T> sql(String str) {
        this.sqlCache = null;
        this.sqlCache1 = null;
        this.whereCache = null;
        this.whereExpr = null;
        this.orderByColumns = null;
        this.limit = -1;
        this.customSql = str;
        return this;
    }

    public Query<T> where(SQLExpression sQLExpression) {
        if (this.customSql != null) {
            throw new IllegalStateException("Cannot change query parameters on custom SQL Query");
        }
        this.sqlCache = null;
        this.sqlCache1 = null;
        this.whereCache = null;
        this.whereExpr = sQLExpression;
        return this;
    }

    public Query<T> where(String str) {
        if (this.customSql != null) {
            throw new IllegalStateException("Cannot change query parameters on custom SQL Query");
        }
        this.sqlCache = null;
        this.sqlCache1 = null;
        this.whereCache = str;
        this.whereExpr = null;
        return this;
    }

    public Query<T> orderBy(String... strArr) {
        if (this.customSql != null) {
            throw new IllegalStateException("Cannot change query parameters on custom SQL Query");
        }
        this.sqlCache = null;
        this.sqlCache1 = null;
        this.orderByColumns = strArr;
        return this;
    }

    public Query<T> limit(int i) {
        if (this.customSql != null) {
            throw new IllegalStateException("Cannot change query parameters on custom SQL Query");
        }
        this.sqlCache = null;
        this.sqlCache1 = null;
        this.limit = i;
        return this;
    }

    private String generate(int i) {
        StringBuilder append = new StringBuilder().append("SELECT * FROM ").append(this.mEntityMapping.mTableName);
        if (this.customSql != null) {
            return append.append(" ").append(this.customSql).toString();
        }
        if (this.whereCache != null) {
            append.append(" WHERE ").append(this.whereCache);
        } else if (this.whereExpr != null) {
            StringBuilder append2 = append.append(" WHERE ");
            String generate = this.whereExpr.generate();
            this.whereCache = generate;
            append2.append(generate);
        }
        if (this.orderByColumns != null && this.orderByColumns.length > 0) {
            joinStrings(append.append(" ORDER BY "), this.orderByColumns);
        }
        if (i > -1) {
            append.append(" LIMIT ").append(i);
        }
        return append.toString();
    }

    public String toSql() {
        if (this.sqlCache != null) {
            return this.sqlCache;
        }
        String generate = generate(this.limit);
        this.sqlCache = generate;
        return generate;
    }

    public String toString() {
        return toSql();
    }

    public T execute() {
        return execute(ORMDroidApplication.getDefaultDatabase());
    }

    public T execute(SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        T t = null;
        EntityMapping entityMappingEnsureSchema = Entity.getEntityMappingEnsureSchema(sQLiteDatabase, this.mClass);
        if (this.sqlCache1 == null) {
            this.sqlCache1 = generate(1);
        }
        String str = this.sqlCache1;
        Log.v(TAG, str);
        Cursor rawQuery;
        try {
            rawQuery = sQLiteDatabase.rawQuery(str, null);
            try {
                if (rawQuery.moveToFirst()) {
                    t = entityMappingEnsureSchema.load(sQLiteDatabase, rawQuery);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } else if (rawQuery != null) {
                    rawQuery.close();
                }
                return t;
            } catch (Throwable th2) {
                th = th2;
                if (rawQuery != null) {
                    rawQuery.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            rawQuery = null;
            th = th4;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
    }

    public Cursor executeMultiForCursor() {
        return executeMultiForCursor(ORMDroidApplication.getDefaultDatabase());
    }

    public List<T> executeMulti() {
        return executeMulti(ORMDroidApplication.getDefaultDatabase());
    }

    public Cursor executeMultiForCursor(SQLiteDatabase sQLiteDatabase) {
        String toSql = toSql();
        Log.v(TAG, toSql);
        return sQLiteDatabase.rawQuery(toSql, null);
    }

    public List<T> executeMulti(SQLiteDatabase sQLiteDatabase) {
        String toSql = toSql();
        Log.v(TAG, toSql);
        return Entity.getEntityMappingEnsureSchema(sQLiteDatabase, this.mClass).loadAll(sQLiteDatabase, sQLiteDatabase.rawQuery(toSql, null));
    }
}
