package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.map.Overlay.C0562a;

/* renamed from: com.baidu.mapapi.map.a */
class C0564a implements C0562a {
    final /* synthetic */ BaiduMap f4487a;

    C0564a(BaiduMap baiduMap) {
        this.f4487a = baiduMap;
    }

    public void m6282a(Overlay overlay) {
        if (this.f4487a.f4235f.contains(overlay)) {
            this.f4487a.f4234e.m6553c(overlay.m6168a());
            this.f4487a.f4235f.remove(overlay);
        }
        if (this.f4487a.f4236g.contains(overlay)) {
            Marker marker = (Marker) overlay;
            if (marker.f4411l != null) {
                this.f4487a.f4236g.remove(marker);
                if (this.f4487a.f4236g.size() == 0) {
                    this.f4487a.f4234e.m6548a(false);
                }
            }
        }
    }

    public void m6283b(Overlay overlay) {
        if (this.f4487a.f4235f.contains(overlay)) {
            if (overlay instanceof Marker) {
                Marker marker = (Marker) overlay;
                if (!(marker.f4411l == null || marker.f4411l.size() == 0)) {
                    if (this.f4487a.f4236g.contains(marker)) {
                        this.f4487a.f4236g.remove(marker);
                    }
                    this.f4487a.f4236g.add(marker);
                    this.f4487a.f4234e.m6548a(true);
                }
            }
            this.f4487a.f4234e.m6550b(overlay.m6169a(new Bundle()));
        }
    }
}
