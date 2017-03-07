package com.yf.gattlib.db;

import android.database.sqlite.SQLiteDatabase;
import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;

/* compiled from: ProGuard */
public class LastConnection extends Entity {
    public String device;
    public int id;
    public int last;

    public LastConnection() {
        this.last = 0;
    }

    public static LastConnection obtainLastConnection() {
        LastConnection lastConnection = (LastConnection) Entity.query(LastConnection.class).where(Query.eql("last", Integer.valueOf(0))).execute();
        if (lastConnection == null) {
            return new LastConnection();
        }
        return lastConnection;
    }

    public static void update(String str) {
        LastConnection obtainLastConnection = obtainLastConnection();
        obtainLastConnection.device = str;
        obtainLastConnection.save();
    }

    public int save(SQLiteDatabase sQLiteDatabase) {
        this.last = 0;
        return super.save(sQLiteDatabase);
    }
}
