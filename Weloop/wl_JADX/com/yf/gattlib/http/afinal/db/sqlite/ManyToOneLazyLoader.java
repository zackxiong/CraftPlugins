package com.yf.gattlib.http.afinal.db.sqlite;

import com.yf.gattlib.http.afinal.FinalDb;

/* compiled from: ProGuard */
public class ManyToOneLazyLoader<M, O> {
    FinalDb db;
    private Object fieldValue;
    boolean hasLoaded;
    Class<M> manyClazz;
    M manyEntity;
    Class<O> oneClazz;
    O oneEntity;

    public ManyToOneLazyLoader(M m, Class<M> cls, Class<O> cls2, FinalDb finalDb) {
        this.hasLoaded = false;
        this.manyEntity = m;
        this.manyClazz = cls;
        this.oneClazz = cls2;
        this.db = finalDb;
    }

    public O get() {
        if (this.oneEntity == null && !this.hasLoaded) {
            this.db.loadManyToOne(null, this.manyEntity, this.manyClazz, this.oneClazz);
            this.hasLoaded = true;
        }
        return this.oneEntity;
    }

    public void set(O o) {
        this.oneEntity = o;
    }

    public Object getFieldValue() {
        return this.fieldValue;
    }

    public void setFieldValue(Object obj) {
        this.fieldValue = obj;
    }
}
