package com.yf.gattlib.server.android;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;
import com.yf.gattlib.db.LastConnection;
import com.yf.gattlib.db.Relationship;

/* renamed from: com.yf.gattlib.server.android.f */
public class ProGuard implements ProGuard {
    private GattServerService f6428a;

    public String m8447a() {
        return "disconnect";
    }

    ProGuard(GattServerService gattServerService) {
        this.f6428a = gattServerService;
    }

    public boolean m8448a(Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_DEVICE_ADDRESS");
        this.f6428a.m8435e();
        com.yf.gattlib.p109b.ProGuard.m7399a().m7402c();
        ProGuard.m8445a(stringExtra);
        return true;
    }

    public static void m8445a(String str) {
        com.yf.gattlib.p121f.ProGuard f = com.yf.gattlib.p108a.ProGuard.m7368a().m7376f();
        if (!(TextUtils.isEmpty(str) || f.m8076f() == null)) {
            f.m8076f().m8403a(str);
        }
        com.yf.gattlib.p117p.ProGuard.m8293a("ConnectDeviceCommand", str + ", disconnected");
        com.yf.gattlib.client.ProGuard.m7965a().m7986d();
        if (!TextUtils.isEmpty(str)) {
            for (Relationship delete : Entity.query(Relationship.class).where(Query.eql("left", str)).executeMulti()) {
                delete.delete();
            }
            LastConnection obtainLastConnection = LastConnection.obtainLastConnection();
            if (str.equals(obtainLastConnection.device)) {
                obtainLastConnection.delete();
            }
        }
        com.yf.gattlib.p117p.ProGuard.m8299c().m8269b();
    }

    public static void m8444a(Context context, String str) {
        Intent b = ProGuard.m8446b(str);
        b.setClass(context, GattServerService.class);
        context.startService(b);
    }

    public static Intent m8446b(String str) {
        com.yf.gattlib.p117p.ProGuard.m8290a();
        Intent a = ProGuard.m8438a("disconnect");
        a.putExtra("EXTRA_DEVICE_ADDRESS", str);
        return a;
    }
}
