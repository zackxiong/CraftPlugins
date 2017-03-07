package com.baidu.frontia.module.deeplink.p082a;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.frontia.module.deeplink.a.e */
class C0413e {
    private int f3683a;
    private String f3684b;
    private String f3685c;
    private String f3686d;
    private String f3687e;
    private int f3688f;
    private List<C0414f> f3689g;

    C0413e() {
        this.f3683a = -1;
        this.f3684b = null;
        this.f3685c = null;
        this.f3686d = null;
        this.f3688f = 0;
        this.f3689g = null;
    }

    public static C0413e m5388a(Cursor cursor) {
        C0413e c0413e = null;
        if (cursor != null) {
            c0413e = new C0413e();
            c0413e.f3683a = cursor.getInt(cursor.getColumnIndex("uri_id"));
            c0413e.f3684b = cursor.getString(cursor.getColumnIndex("uri_path"));
            c0413e.f3685c = cursor.getString(cursor.getColumnIndex("web_uri"));
            c0413e.f3686d = cursor.getString(cursor.getColumnIndex("android_uri"));
            c0413e.f3688f = cursor.getInt(cursor.getColumnIndex("update_time"));
            String string = cursor.getString(cursor.getColumnIndex("uri_params"));
            if (string != null && string.length() > 0) {
                try {
                    c0413e.f3689g = C0414f.m5398a(new JSONObject(string));
                } catch (JSONException e) {
                    Log.e("DLURIInfo", "error " + e.getMessage());
                }
            }
        }
        return c0413e;
    }

    public static C0413e m5389a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C0413e c0413e = new C0413e();
        if (jSONObject.has("uri_id")) {
            c0413e.f3683a = jSONObject.getInt("uri_id");
        }
        if (jSONObject.has("uri_path")) {
            c0413e.f3684b = jSONObject.getString("uri_path");
        }
        if (jSONObject.has("uri_params")) {
            String string = jSONObject.getString("uri_params");
            if (string != null && string.length() > 0) {
                List a = C0414f.m5398a(new JSONObject(string));
                if (a != null && a.size() > 0) {
                    c0413e.f3689g = a;
                }
            }
        }
        if (jSONObject.has("web_uri")) {
            c0413e.f3685c = jSONObject.getString("web_uri");
        }
        if (jSONObject.has("android_uri")) {
            c0413e.f3686d = jSONObject.getString("android_uri");
        }
        if (jSONObject.has("as_uri")) {
            c0413e.f3687e = jSONObject.getString("as_uri");
        }
        if (!jSONObject.has("update_time")) {
            return c0413e;
        }
        c0413e.f3688f = jSONObject.getInt("update_time");
        return c0413e;
    }

    public static List<C0413e> m5390a(JSONArray jSONArray) {
        JSONException e;
        if (jSONArray != null) {
            List<C0413e> arrayList;
            try {
                if (jSONArray.length() > 0) {
                    arrayList = new ArrayList();
                    int i = 0;
                    while (i < jSONArray.length()) {
                        try {
                            arrayList.add(C0413e.m5389a(jSONArray.getJSONObject(i)));
                            i++;
                        } catch (JSONException e2) {
                            e = e2;
                        }
                    }
                    return arrayList;
                }
            } catch (JSONException e3) {
                JSONException jSONException = e3;
                arrayList = null;
                e = jSONException;
                Log.e("DLURIInfo", "error " + e.getMessage());
                return arrayList;
            }
        }
        return null;
    }

    public String m5391a() {
        return this.f3684b;
    }

    public String m5392b() {
        return this.f3685c;
    }

    public String m5393c() {
        return this.f3686d;
    }

    public int m5394d() {
        return this.f3688f;
    }

    public List<C0414f> m5395e() {
        return this.f3689g;
    }

    public String m5396f() {
        if (this.f3689g == null || this.f3689g.size() <= 0) {
            return null;
        }
        int i = 0;
        String str = "{";
        while (i < this.f3689g.size()) {
            String str2 = i > 0 ? str + "," : str;
            i++;
            str = str2 + ((C0414f) this.f3689g.get(i)).m5400b();
        }
        return str + "}";
    }

    public ContentValues m5397g() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("uri_path", this.f3684b);
        contentValues.put("uri_id", Integer.valueOf(this.f3683a));
        contentValues.put("web_uri", this.f3685c);
        contentValues.put("android_uri", this.f3686d);
        contentValues.put("uri_params", m5396f());
        contentValues.put("update_time", Integer.valueOf(this.f3688f));
        return contentValues;
    }
}
