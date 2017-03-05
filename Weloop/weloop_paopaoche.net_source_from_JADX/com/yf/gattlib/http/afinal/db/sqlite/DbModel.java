package com.yf.gattlib.http.afinal.db.sqlite;

import java.util.HashMap;

/* compiled from: ProGuard */
public class DbModel {
    private HashMap<String, Object> dataMap;

    public DbModel() {
        this.dataMap = new HashMap();
    }

    public Object get(String str) {
        return this.dataMap.get(str);
    }

    public String getString(String str) {
        return String.valueOf(get(str));
    }

    public int getInt(String str) {
        return Integer.valueOf(getString(str)).intValue();
    }

    public boolean getBoolean(String str) {
        return Boolean.valueOf(getString(str)).booleanValue();
    }

    public double getDouble(String str) {
        return Double.valueOf(getString(str)).doubleValue();
    }

    public float getFloat(String str) {
        return Float.valueOf(getString(str)).floatValue();
    }

    public long getLong(String str) {
        return Long.valueOf(getString(str)).longValue();
    }

    public void set(String str, Object obj) {
        this.dataMap.put(str, obj);
    }

    public HashMap<String, Object> getDataMap() {
        return this.dataMap;
    }
}
