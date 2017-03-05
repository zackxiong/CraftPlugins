package com.baidu.mapapi.utils;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.lbsapi.auth.LBSAuthManager;
import com.baidu.lbsapi.auth.LBSAuthManagerListener;
import com.baidu.platform.comapi.p088c.C0607c;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;

public class PermissionCheck {
    private static final String f4610a;
    private static Context f4611b;
    private static Hashtable<String, String> f4612c;
    private static LBSAuthManager f4613d;
    private static LBSAuthManagerListener f4614e;
    private static C0555c f4615f;

    /* renamed from: com.baidu.mapapi.utils.PermissionCheck.c */
    public interface C0555c {
        void m6152a(C0584b c0584b);
    }

    /* renamed from: com.baidu.mapapi.utils.PermissionCheck.a */
    private static class C0583a implements LBSAuthManagerListener {
        private C0583a() {
        }

        public void onAuthResult(int i, String str) {
            if (str != null) {
                C0584b c0584b = new C0584b();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has("status")) {
                        c0584b.f4605a = jSONObject.optInt("status");
                    }
                    if (jSONObject.has("appid")) {
                        c0584b.f4607c = jSONObject.optString("appid");
                    }
                    if (jSONObject.has("uid")) {
                        c0584b.f4606b = jSONObject.optString("uid");
                    }
                    if (jSONObject.has(LightAppTableDefine.DB_TABLE_MESSAGE)) {
                        c0584b.f4608d = jSONObject.optString(LightAppTableDefine.DB_TABLE_MESSAGE);
                    }
                    if (jSONObject.has("token")) {
                        c0584b.f4609e = jSONObject.optString("token");
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                if (PermissionCheck.f4615f != null) {
                    PermissionCheck.f4615f.m6152a(c0584b);
                }
            }
        }
    }

    /* renamed from: com.baidu.mapapi.utils.PermissionCheck.b */
    public static class C0584b {
        public int f4605a;
        public String f4606b;
        public String f4607c;
        public String f4608d;
        public String f4609e;

        public C0584b() {
            this.f4605a = 0;
            this.f4606b = "-1";
            this.f4607c = "-1";
            this.f4608d = "";
        }

        public String toString() {
            return String.format("errorcode: %d uid: %s appid %s msg: %s", new Object[]{Integer.valueOf(this.f4605a), this.f4606b, this.f4607c, this.f4608d});
        }
    }

    static {
        f4610a = PermissionCheck.class.getSimpleName();
        f4613d = null;
        f4614e = null;
        f4615f = null;
    }

    public static void destory() {
        f4615f = null;
        f4611b = null;
        f4613d = null;
        f4614e = null;
    }

    public static void init(Context context) {
        f4611b = context;
        if (f4612c == null) {
            f4612c = new Hashtable();
        }
        if (f4613d == null) {
            f4613d = new LBSAuthManager(f4611b);
        }
        if (f4614e == null) {
            f4614e = new C0583a();
        }
        Object obj = "";
        try {
            obj = context.getPackageManager().getPackageInfo(f4611b.getPackageName(), 0).applicationInfo.loadLabel(f4611b.getPackageManager()).toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Log.d("auth info", "mcode: " + C0586a.m6374a(f4611b));
        Bundle a = C0607c.m6469a();
        f4612c.put("mb", a.getString("mb"));
        f4612c.put("os", a.getString("os"));
        f4612c.put("sv", a.getString("sv"));
        f4612c.put("imt", "1");
        f4612c.put("net", a.getString("net"));
        f4612c.put("cpu", a.getString("cpu"));
        f4612c.put("glr", a.getString("glr"));
        f4612c.put("glv", a.getString("glv"));
        f4612c.put("resid", a.getString("resid"));
        f4612c.put("appid", "-1");
        f4612c.put("ver", "1");
        f4612c.put("screen", String.format("(%d,%d)", new Object[]{Integer.valueOf(a.getInt("screen_x")), Integer.valueOf(a.getInt("screen_y"))}));
        f4612c.put("dpi", String.format("(%d,%d)", new Object[]{Integer.valueOf(a.getInt("dpi_x")), Integer.valueOf(a.getInt("dpi_y"))}));
        f4612c.put("pcn", a.getString("pcn"));
        f4612c.put("cuid", a.getString("cuid"));
        f4612c.put("name", obj);
    }

    public static synchronized int permissionCheck() {
        int i = 0;
        synchronized (PermissionCheck.class) {
            if (!(f4613d == null || f4614e == null || f4611b == null)) {
                i = f4613d.authenticate(false, "lbs_androidsdk", f4612c, f4614e);
            }
        }
        return i;
    }

    public static void setPermissionCheckResultListener(C0555c c0555c) {
        f4615f = c0555c;
    }
}
