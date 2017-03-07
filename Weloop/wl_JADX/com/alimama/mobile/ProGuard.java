package com.alimama.mobile;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alimama.mobile.csdk.umupdate.models.MMEntity;
import com.alimama.mobile.csdk.umupdate.models.Promoter;
import java.util.List;

/* renamed from: com.alimama.mobile.c */
class ProGuard implements ProGuard {
    final /* synthetic */ ProGuard f2290a;
    final /* synthetic */ boolean f2291b;
    final /* synthetic */ com.alimama.mobile.csdk.umupdate.models.ProGuard f2292c;
    final /* synthetic */ ProGuard f2293d;

    ProGuard(ProGuard proGuard, ProGuard proGuard2, boolean z, com.alimama.mobile.csdk.umupdate.models.ProGuard proGuard3) {
        this.f2293d = proGuard;
        this.f2290a = proGuard2;
        this.f2291b = z;
        this.f2292c = proGuard3;
    }

    public void m3603a(int i, List<Promoter> list) {
        if (i == 1) {
            this.f2290a.m3584a(i, list);
            m3602a(this.f2291b);
            return;
        }
        new com.alimama.mobile.csdk.umupdate.p036a.ProGuard(this.f2292c, new ProGuard(this), 0, false).m3630a(com.alimama.mobile.csdk.umupdate.p036a.ProGuard.c, (Object[]) new Void[0]);
    }

    private void m3602a(boolean z) {
        try {
            MMEntity mMEntity = (MMEntity) this.f2292c.m3721b().clone();
            mMEntity.m3711b();
            com.alimama.mobile.csdk.umupdate.models.ProGuard proGuard = new com.alimama.mobile.csdk.umupdate.models.ProGuard(mMEntity);
            if (z) {
                com.alimama.mobile.csdk.umupdate.models.ProGuard a = this.f2292c.m3720a();
                SharedPreferences sharedPreferences = this.f2293d.f2287c.getSharedPreferences(a.m3728c(), 0);
                synchronized (sharedPreferences) {
                    Editor edit = sharedPreferences.edit();
                    edit.remove(a.m3730e());
                    edit.commit();
                }
                new com.alimama.mobile.csdk.umupdate.p036a.ProGuard(proGuard, null, 0, true).m3630a(com.alimama.mobile.csdk.umupdate.p036a.ProGuard.c, (Object[]) new Void[0]);
            }
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
    }
}
