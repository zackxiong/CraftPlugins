package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.bk;
import com.yf.gattlib.p117p.ProGuard;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: ProGuard */
class gz implements bk {
    final /* synthetic */ UpgradeActivity f8084a;

    gz(UpgradeActivity upgradeActivity) {
        this.f8084a = upgradeActivity;
    }

    public InputStream m9951d() {
        if (this.f8084a.f7739a.getVisibility() == 0 && this.f8084a.f7739a.getEditableText() != null) {
            String obj = this.f8084a.f7739a.getEditableText().toString();
            try {
                return new FileInputStream(obj);
            } catch (FileNotFoundException e) {
                ProGuard.m8293a(UpgradeActivity.f7712i, "Not found " + obj);
            }
        }
        try {
            return this.f8084a.openFileInput(this.f8084a.f7726N);
        } catch (FileNotFoundException e2) {
            ProGuard.m8293a(UpgradeActivity.f7712i, "Not found2 22");
            throw new com.yf.gattlib.p120e.ProGuard("Not found + " + this.f8084a.f7726N);
        }
    }

    public void m9947a() {
        this.f8084a.f7714B.m7414a("is upgrading", true);
        ProGuard.m8292a(UpgradeActivity.f7712i + " onStart() put GattSettingKeys.KEY_IS_UPGRADING = true ");
        ProGuard.m8245a(UpgradeActivity.f7712i + " onStart() put GattSettingKeys.KEY_IS_UPGRADING = true ");
        this.f8084a.m9722l();
        this.f8084a.m9668C();
        if (this.f8084a.f7730R) {
            this.f8084a.f7730R = false;
            this.f8084a.f7759x = true;
            com.yf.gattlib.client.ProGuard.m7965a().m7986d();
        }
    }

    public void m9948a(int i, int i2) {
        this.f8084a.m9688a(i, i2);
        this.f8084a.f7738Z = i2;
        this.f8084a.aa = i;
        int i3 = (i2 * 360) / i;
        if (i3 > this.f8084a.f7742d) {
            this.f8084a.f7742d = i3;
            this.f8084a.m9735s();
        }
    }

    public void m9950c() {
        ProGuard.m8245a((Object) " OTA onFinished ");
        ProGuard.m8297b(UpgradeActivity.f7712i + " OTA onFinished ");
        this.f8084a.f7714B.m7414a(UpgradeActivity.f7711g, true);
        this.f8084a.f7714B.m7414a("is upgrading", false);
        ProGuard.m8292a(UpgradeActivity.f7712i + " onFinished() put GattSettingKeys.KEY_IS_UPGRADING = false ");
        ProGuard.m8245a(UpgradeActivity.f7712i + " onFinished() put GattSettingKeys.KEY_IS_UPGRADING = false ");
        this.f8084a.m9738t();
        this.f8084a.m9728o();
        this.f8084a.f7759x = false;
        com.yf.gattlib.client.ProGuard.m7965a().m7979a(true);
        this.f8084a.f7714B.m7413a("FIRMER_UPDATE_DATE", ProGuard.m8238e());
        boolean A = this.f8084a.m9742v();
        ProGuard.m8292a(UpgradeActivity.f7712i + " OTA finish and Reset ? = " + A);
        if (A) {
            this.f8084a.f7714B.m7414a("KEY_RESET_DEVICE_WHEN_CONNECTED", true);
        }
        this.f8084a.f7743e = 1;
        this.f8084a.f7714B.m7414a("need set calories", true);
        ProGuard.m8297b(UpgradeActivity.f7712i + " OTA finish and setup total data ? = " + this.f8084a.f7714B.getBoolean("need set calories", false));
        this.f8084a.m9739u();
        if (this.f8084a.f7725M && this.f8084a.f7724L) {
            ProGuard.f8123c = true;
        }
        if (!this.f8084a.f7725M && this.f8084a.f7723K) {
            ProGuard.f8123c = true;
        }
        if (this.f8084a.f7740b.m2791b().trim().replace(" ", "").toLowerCase().contains("v3.32")) {
            ProGuard.m8292a(UpgradeActivity.f7712i + " \u6709\u5fc5\u8981\u5173\u95ed\u96f6\u70b9\u95f9\u949f");
            ProGuard.f8124d = true;
            return;
        }
        ProGuard.m8292a(UpgradeActivity.f7712i + " \u6ca1\u6709\u5fc5\u8981\u5173\u95ed\u96f6\u70b9\u95f9\u949f");
    }

    public void m9949b() {
        if (this.f8084a.f7741c.m7376f().m8078h()) {
            this.f8084a.m9738t();
            this.f8084a.m9726n();
            return;
        }
        this.f8084a.f7759x = true;
        com.yf.gattlib.client.ProGuard.m7965a().m7986d();
    }
}
