package com.yf.gattlib.http.afinal.db.table;

import com.yf.gattlib.http.afinal.utils.FieldUtils;
import java.util.Date;

/* compiled from: ProGuard */
public class KeyValue {
    private String key;
    private Object value;

    public KeyValue(String str, Object obj) {
        this.key = str;
        this.value = obj;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public Object getValue() {
        if ((this.value instanceof Date) || (this.value instanceof java.sql.Date)) {
            return FieldUtils.SDF.format(this.value);
        }
        return this.value;
    }

    public void setValue(Object obj) {
        this.value = obj;
    }
}
