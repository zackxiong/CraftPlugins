package com.yf.gattlib.http.afinal.db.sqlite;

import java.util.LinkedList;

/* compiled from: ProGuard */
public class SqlInfo {
    private LinkedList<Object> bindArgs;
    private String sql;

    public String getSql() {
        return this.sql;
    }

    public void setSql(String str) {
        this.sql = str;
    }

    public LinkedList<Object> getBindArgs() {
        return this.bindArgs;
    }

    public void setBindArgs(LinkedList<Object> linkedList) {
        this.bindArgs = linkedList;
    }

    public Object[] getBindArgsAsArray() {
        if (this.bindArgs != null) {
            return this.bindArgs.toArray();
        }
        return null;
    }

    public String[] getBindArgsAsStringArray() {
        if (this.bindArgs == null) {
            return null;
        }
        String[] strArr = new String[this.bindArgs.size()];
        for (int i = 0; i < this.bindArgs.size(); i++) {
            strArr[i] = this.bindArgs.get(i).toString();
        }
        return strArr;
    }

    public void addValue(Object obj) {
        if (this.bindArgs == null) {
            this.bindArgs = new LinkedList();
        }
        this.bindArgs.add(obj);
    }
}
