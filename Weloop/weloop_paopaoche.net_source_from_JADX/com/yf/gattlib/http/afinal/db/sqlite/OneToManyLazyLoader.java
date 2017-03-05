package com.yf.gattlib.http.afinal.db.sqlite;

import com.yf.gattlib.http.afinal.FinalDb;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class OneToManyLazyLoader<O, M> {
    FinalDb db;
    List<M> entities;
    Class<M> listItemClazz;
    Class<O> ownerClazz;
    O ownerEntity;

    public OneToManyLazyLoader(O o, Class<O> cls, Class<M> cls2, FinalDb finalDb) {
        this.ownerEntity = o;
        this.ownerClazz = cls;
        this.listItemClazz = cls2;
        this.db = finalDb;
    }

    public List<M> getList() {
        if (this.entities == null) {
            this.db.loadOneToMany(this.ownerEntity, this.ownerClazz, this.listItemClazz);
        }
        if (this.entities == null) {
            this.entities = new ArrayList();
        }
        return this.entities;
    }

    public void setList(List<M> list) {
        this.entities = list;
    }
}
