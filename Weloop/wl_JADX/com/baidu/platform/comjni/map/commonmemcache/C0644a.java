package com.baidu.platform.comjni.map.commonmemcache;

import android.os.Bundle;

/* renamed from: com.baidu.platform.comjni.map.commonmemcache.a */
public class C0644a {
    private int f4911a;
    private JNICommonMemCache f4912b;

    public C0644a() {
        this.f4911a = 0;
        this.f4912b = null;
        this.f4912b = new JNICommonMemCache();
    }

    public int m6664a() {
        this.f4911a = this.f4912b.Create();
        return this.f4911a;
    }

    public void m6665a(Bundle bundle) {
        if (this.f4911a != 0) {
            this.f4912b.Init(this.f4911a, bundle);
        }
    }
}
