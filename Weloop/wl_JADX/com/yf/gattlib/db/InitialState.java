package com.yf.gattlib.db;

import android.database.sqlite.SQLiteDatabase;
import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;

/* compiled from: ProGuard */
public class InitialState extends Entity {
    public int id;
    public boolean isInitialled;
    public int last;

    public InitialState() {
        this.last = 0;
    }

    public static InitialState obtianInitailState() {
        InitialState initialState = (InitialState) Entity.query(InitialState.class).where(Query.eql("last", Integer.valueOf(0))).execute();
        if (initialState != null) {
            return initialState;
        }
        initialState = new InitialState();
        initialState.isInitialled = false;
        return initialState;
    }

    public int save(SQLiteDatabase sQLiteDatabase) {
        this.last = 0;
        return super.save(sQLiteDatabase);
    }
}
