package com.baidu.frontia.module.deeplink.p082a;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import com.baidu.android.pushservice.PushConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.frontia.module.deeplink.a.d */
class C0412d {
    private int f3674a;
    private String f3675b;
    private String f3676c;
    private String f3677d;
    private int f3678e;
    private String f3679f;
    private int f3680g;
    private int f3681h;
    private List<C0413e> f3682i;

    C0412d() {
        this.f3674a = -1;
        this.f3675b = null;
        this.f3676c = null;
        this.f3677d = null;
        this.f3678e = 0;
        this.f3680g = 10000;
        this.f3681h = 10000;
        this.f3682i = null;
    }

    public static C0412d m5376a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        C0412d c0412d = new C0412d();
        c0412d.f3674a = cursor.getInt(cursor.getColumnIndex(PushConstants.EXTRA_APP_ID));
        c0412d.f3675b = cursor.getString(cursor.getColumnIndex("service_path"));
        c0412d.f3676c = cursor.getString(cursor.getColumnIndex("package_name"));
        c0412d.f3677d = cursor.getString(cursor.getColumnIndex("domain"));
        c0412d.f3678e = cursor.getInt(cursor.getColumnIndex("update_time"));
        c0412d.f3680g = cursor.getInt(cursor.getColumnIndex("web_visit_rule"));
        c0412d.f3681h = cursor.getInt(cursor.getColumnIndex("client_visit_rule"));
        c0412d.f3679f = cursor.getString(cursor.getColumnIndex("default_uri"));
        return c0412d;
    }

    public static C0412d m5377a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C0412d c0412d = new C0412d();
        if (jSONObject.has("uri_info")) {
            List a = C0413e.m5390a(jSONObject.getJSONArray("uri_info"));
            if (a != null && a.size() > 0) {
                c0412d.f3682i = a;
            }
        }
        if (jSONObject.has(PushConstants.EXTRA_APP_ID)) {
            c0412d.f3674a = jSONObject.getInt(PushConstants.EXTRA_APP_ID);
        }
        if (jSONObject.has("service_path")) {
            c0412d.f3675b = jSONObject.getString("service_path");
        }
        if (jSONObject.has("domain")) {
            c0412d.f3677d = jSONObject.getString("domain");
        }
        if (jSONObject.has("package_name")) {
            c0412d.f3676c = jSONObject.getString("package_name");
        }
        if (jSONObject.has("default_uri")) {
            c0412d.f3679f = jSONObject.getString("default_uri");
        }
        if (jSONObject.has("web_visit_rule")) {
            c0412d.f3680g = jSONObject.getInt("web_visit_rule");
        }
        if (jSONObject.has("client_visit_rule")) {
            c0412d.f3681h = jSONObject.getInt("client_visit_rule");
        }
        if (!jSONObject.has("update_time")) {
            return c0412d;
        }
        c0412d.f3678e = jSONObject.getInt("update_time");
        return c0412d;
    }

    public static List<C0412d> m5378a(JSONArray jSONArray) {
        JSONException e;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        List<C0412d> arrayList;
        try {
            arrayList = new ArrayList();
            int i = 0;
            while (i < jSONArray.length()) {
                try {
                    arrayList.add(C0412d.m5377a(jSONArray.getJSONObject(i)));
                    i++;
                } catch (JSONException e2) {
                    e = e2;
                }
            }
            return arrayList;
        } catch (JSONException e3) {
            JSONException jSONException = e3;
            arrayList = null;
            e = jSONException;
            Log.e("DLServiceInfo", "error " + e.getMessage());
            return arrayList;
        }
    }

    public String m5379a() {
        return this.f3679f;
    }

    public void m5380a(List<C0413e> list) {
        this.f3682i = list;
    }

    public String m5381b() {
        return this.f3675b;
    }

    public String m5382c() {
        return this.f3676c;
    }

    public int m5383d() {
        return this.f3678e;
    }

    public int m5384e() {
        return this.f3680g;
    }

    public int m5385f() {
        return this.f3681h;
    }

    public List<C0413e> m5386g() {
        return this.f3682i;
    }

    public ContentValues m5387h() {
        ContentValues contentValues = new ContentValues();
        contentValues = new ContentValues();
        contentValues.put(PushConstants.EXTRA_APP_ID, Integer.valueOf(this.f3674a));
        contentValues.put("service_path", this.f3675b);
        contentValues.put("package_name", this.f3676c);
        contentValues.put("domain", this.f3677d);
        contentValues.put("web_visit_rule", Integer.valueOf(this.f3680g));
        contentValues.put("client_visit_rule", Integer.valueOf(this.f3681h));
        contentValues.put("update_time", Integer.valueOf(this.f3678e));
        contentValues.put("default_uri", this.f3679f);
        return contentValues;
    }
}
