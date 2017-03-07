package cn.sharesdk.framework.statistics.p030a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/* renamed from: cn.sharesdk.framework.statistics.a.c */
public class C0051c {
    private static C0051c f2020c;
    private Context f2021a;
    private SharedPreferences f2022b;

    private C0051c(Context context) {
        this.f2021a = context.getApplicationContext();
        this.f2022b = this.f2021a.getSharedPreferences("share_sdk_0", 0);
    }

    public static C0051c m3086a(Context context) {
        if (f2020c == null) {
            f2020c = new C0051c(context.getApplicationContext());
        }
        return f2020c;
    }

    public long m3087a() {
        return this.f2022b.getLong("service_time", 0);
    }

    public String m3088a(String str) {
        return this.f2022b.getString(str, "");
    }

    public void m3089a(String str, int i) {
        Editor edit = this.f2022b.edit();
        edit.putInt(str, i);
        edit.commit();
    }

    public void m3090a(String str, Long l) {
        Editor edit = this.f2022b.edit();
        edit.putLong(str, l.longValue());
        edit.commit();
    }

    public void m3091a(String str, String str2) {
        Editor edit = this.f2022b.edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public long m3092b(String str) {
        return this.f2022b.getLong(str, 0);
    }

    public void m3093b(String str, String str2) {
        m3091a("buffered_snsconf_" + str, str2);
    }

    public boolean m3094b() {
        return Boolean.parseBoolean(this.f2022b.getString("upload_device_info", "true"));
    }

    public int m3095c(String str) {
        return this.f2022b.getInt(str, 0);
    }

    public boolean m3096c() {
        return Boolean.parseBoolean(this.f2022b.getString("upload_user_info", "true"));
    }

    public int m3097d() {
        String string = this.f2022b.getString("upload_share_content", "0");
        return "true".equals(string) ? 1 : "false".equals(string) ? -1 : 0;
    }

    public void m3098d(String str) {
        m3091a("upload_device_info", str);
    }

    public void m3099e(String str) {
        m3091a("upload_user_info", str);
    }

    public void m3100f(String str) {
        m3091a("upload_share_content", str);
    }

    public String m3101g(String str) {
        return m3088a("buffered_snsconf_" + str);
    }
}
