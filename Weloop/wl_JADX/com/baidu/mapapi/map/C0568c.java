package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.platform.comapi.map.C0567l;

/* renamed from: com.baidu.mapapi.map.c */
class C0568c implements C0567l {
    final /* synthetic */ BaiduMap f4489a;

    C0568c(BaiduMap baiduMap) {
        this.f4489a = baiduMap;
    }

    public Bundle m6321a(int i, int i2, int i3) {
        this.f4489a.f4250u.lock();
        try {
            if (this.f4489a.f4249t != null) {
                C0575j a = this.f4489a.f4249t.m6239a(i, i2, i3);
                if (a != null) {
                    Bundle a2 = a.m6350a();
                    return a2;
                }
            }
            this.f4489a.f4250u.unlock();
            return null;
        } finally {
            this.f4489a.f4250u.unlock();
        }
    }
}
