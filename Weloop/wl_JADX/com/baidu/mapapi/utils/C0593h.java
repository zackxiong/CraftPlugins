package com.baidu.mapapi.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* renamed from: com.baidu.mapapi.utils.h */
public final class C0593h {
    private final boolean f4643a;
    private final String f4644b;
    private final String f4645c;
    private final String f4646d;
    private final String f4647e;
    private final String f4648f;

    C0593h(Context context) {
        this.f4643a = false;
        this.f4644b = Environment.getExternalStorageDirectory().getAbsolutePath();
        this.f4645c = this.f4644b + File.separator + "BaiduMapSDK";
        this.f4646d = context.getCacheDir().getAbsolutePath();
        this.f4647e = "";
        this.f4648f = "";
    }

    C0593h(String str, boolean z, String str2, Context context) {
        this.f4643a = z;
        this.f4644b = str;
        this.f4645c = this.f4644b + File.separator + "BaiduMapSDK";
        this.f4646d = this.f4645c + File.separator + "cache";
        this.f4647e = context.getCacheDir().getAbsolutePath();
        this.f4648f = str2;
    }

    public String m6409a() {
        return this.f4644b;
    }

    public String m6410b() {
        return this.f4644b + File.separator + "BaiduMapSDK";
    }

    public String m6411c() {
        return this.f4646d;
    }

    public String m6412d() {
        return this.f4647e;
    }

    public boolean equals(Object obj) {
        if (obj == null || !C0593h.class.isInstance(obj)) {
            return false;
        }
        return this.f4644b.equals(((C0593h) obj).f4644b);
    }
}
