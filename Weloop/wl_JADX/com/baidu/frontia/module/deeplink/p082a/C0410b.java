package com.baidu.frontia.module.deeplink.p082a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0387b;
import com.baidu.frontia.p075a.p079c.C0393g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.baidu.frontia.module.deeplink.a.b */
class C0410b {
    private Context f3669a;
    private String f3670b;

    public C0410b(Context context, String str) {
        this.f3669a = context;
        this.f3670b = str;
    }

    private String m5363a() {
        return "service_path=? AND package_name=?";
    }

    private List<C0412d> m5364a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        if (sQLiteDatabase != null) {
            Cursor query;
            String str4 = "service_path=?";
            String[] strArr = new String[]{str};
            if (str2 != null) {
                str4 = m5363a();
                strArr = new String[]{str, str2};
            }
            try {
                query = sQLiteDatabase.query(true, "ServiceInfo", null, str4, strArr, null, null, null, null);
            } catch (Exception e) {
                C0385a.m5311b("DLDBProvider", "queryServiceInfo E: " + e);
                query = null;
            }
            if (query != null) {
                List<C0412d> arrayList = new ArrayList();
                query.moveToFirst();
                while (!query.isAfterLast()) {
                    C0412d a = C0412d.m5376a(query);
                    if (a != null) {
                        arrayList.add(a);
                    }
                    query.moveToNext();
                }
                query.close();
                if (str3 != null) {
                    for (C0412d c0412d : arrayList) {
                        c0412d.m5380a(m5368b(sQLiteDatabase, c0412d.m5381b(), c0412d.m5382c(), str3));
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    private List<C0412d> m5365a(String str) {
        try {
            HttpResponse a = C0393g.m5323a(new HttpGet(str));
            if (a != null && 200 == a.getStatusLine().getStatusCode()) {
                HttpEntity entity = a.getEntity();
                if (entity != null) {
                    try {
                        return C0412d.m5378a(new JSONArray(EntityUtils.toString(entity, "UTF-8")));
                    } catch (JSONException e) {
                        C0385a.m5313d("DLDBProvider", "error " + e.getMessage());
                    }
                }
            }
        } catch (IOException e2) {
            C0385a.m5313d("DLDBProvider", "error " + e2.getMessage());
        }
        return null;
    }

    private void m5366a(SQLiteDatabase sQLiteDatabase, C0412d c0412d) {
        ContentValues h = c0412d.m5387h();
        try {
            List a = m5364a(sQLiteDatabase, c0412d.m5381b(), c0412d.m5382c(), null);
            if (a == null || a.size() <= 0) {
                sQLiteDatabase.insert("ServiceInfo", null, h);
            } else if (((C0412d) a.get(0)).m5383d() < c0412d.m5383d()) {
                long update = (long) sQLiteDatabase.update("ServiceInfo", h, m5363a(), new String[]{c0412d.m5381b(), c0412d.m5382c()});
            }
            List g = c0412d.m5386g();
            if (g != null) {
                for (int i = 0; i < g.size(); i++) {
                    C0413e c0413e = (C0413e) g.get(i);
                    ContentValues g2 = c0413e.m5397g();
                    g2.put("service_path", c0412d.m5381b());
                    g2.put("package_name", c0412d.m5382c());
                    List b = m5368b(sQLiteDatabase, c0412d.m5381b(), c0412d.m5382c(), c0413e.m5391a());
                    if (b == null || b.size() <= 0) {
                        sQLiteDatabase.insert("URIInfo", null, g2);
                    } else if (((C0413e) b.get(0)).m5394d() < c0413e.m5394d()) {
                        long update2 = (long) sQLiteDatabase.update("URIInfo", g2, m5367b(), new String[]{c0412d.m5381b(), c0412d.m5382c(), c0413e.m5391a()});
                    }
                }
            }
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("DLDBProvider", "saveServiceInfo E : " + e);
            }
        }
    }

    private String m5367b() {
        return "service_path=? AND package_name=? AND uri_path=?";
    }

    private List<C0413e> m5368b(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        if (!(sQLiteDatabase == null || str == null || str2 == null || str3 == null)) {
            Cursor query;
            try {
                query = sQLiteDatabase.query(true, "URIInfo", null, m5367b(), new String[]{str, str2, str3}, null, null, null, null);
            } catch (Exception e) {
                C0385a.m5311b("DLDBProvider", "queryUriInfo E: " + e);
                query = null;
            }
            if (query != null) {
                List<C0413e> arrayList = new ArrayList();
                query.moveToFirst();
                while (!query.isAfterLast()) {
                    C0413e a = C0413e.m5388a(query);
                    if (a != null) {
                        arrayList.add(a);
                    }
                    query.moveToNext();
                }
                query.close();
                return arrayList;
            }
        }
        return null;
    }

    private List<C0412d> m5369b(String str, String str2) {
        if (!(this.f3669a == null || str == null || str2 == null)) {
            C0409a c0409a = new C0409a(this.f3669a);
            List<C0412d> a;
            try {
                a = m5364a(c0409a.getReadableDatabase(), str, null, str2);
                return a;
            } catch (SQLiteException e) {
                a = "error " + e.getMessage();
                C0385a.m5313d("DLDBProvider", a);
            } finally {
                c0409a.close();
            }
        }
        return new ArrayList();
    }

    private List<C0412d> m5370c(String str, String str2) {
        return (str == null || str2 == null) ? new ArrayList() : m5365a(C0387b.m5320a().m5321b() + "/deeplink/data/" + str + "/" + str2 + "?platform=android" + "&client_id=" + this.f3670b);
    }

    public List<C0412d> m5371a(String str, String str2) {
        List<C0412d> b = m5369b(str, str2);
        if (b != null && b.size() > 0) {
            return b;
        }
        List c = m5370c(str, str2);
        m5372a(c);
        return c;
    }

    public void m5372a(List<C0412d> list) {
        if (list != null && this.f3669a != null) {
            C0409a c0409a = new C0409a(this.f3669a);
            SQLiteDatabase writableDatabase = c0409a.getWritableDatabase();
            for (C0412d a : list) {
                m5366a(writableDatabase, a);
            }
            c0409a.close();
        }
    }
}
