package com.yf.gattlib.db;

import android.text.TextUtils;

/* renamed from: com.yf.gattlib.db.a */
public class ProGuard {
    public String f6157a;
    public String f6158b;
    public String f6159c;
    public String f6160d;

    public static ProGuard m8017a() {
        ProGuard proGuard = new ProGuard();
        proGuard.f6158b = "Unknown";
        proGuard.f6157a = "Unknown";
        proGuard.f6159c = "Unknown";
        proGuard.f6160d = "Unknown";
        com.yf.gattlib.p110c.ProGuard q = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        if (q != null) {
            Object string = q.getString("LastMusic2", null);
            if (!TextUtils.isEmpty(string)) {
                String[] split = string.split("#&##&");
                proGuard.f6158b = split[0];
                proGuard.f6157a = split[1];
                proGuard.f6159c = split[2];
                proGuard.f6160d = split[3];
            }
        }
        return proGuard;
    }

    public void m8018b() {
        com.yf.gattlib.p110c.ProGuard q = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        if (q != null) {
            q.m7413a("LastMusic2", this.f6158b + "#&##&" + this.f6157a + "#&##&" + this.f6159c + "#&##&" + this.f6160d);
        }
    }
}
