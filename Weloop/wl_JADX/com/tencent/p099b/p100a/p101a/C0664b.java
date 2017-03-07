package com.tencent.p099b.p100a.p101a;

import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.b */
public final class C0664b {
    public String f5075a;
    public JSONArray f5076b;
    public JSONObject f5077c;

    public C0664b() {
        this.f5077c = null;
    }

    public C0664b(String str) {
        this.f5077c = null;
        this.f5075a = str;
        this.f5077c = new JSONObject();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0664b)) {
            return false;
        }
        return toString().equals(((C0664b) obj).toString());
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(this.f5075a).append(",");
        if (this.f5076b != null) {
            stringBuilder.append(this.f5076b.toString());
        }
        if (this.f5077c != null) {
            stringBuilder.append(this.f5077c.toString());
        }
        return stringBuilder.toString();
    }
}
