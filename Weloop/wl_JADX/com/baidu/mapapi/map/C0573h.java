package com.baidu.mapapi.map;

import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.platform.comapi.map.C0639z;

/* renamed from: com.baidu.mapapi.map.h */
class C0573h implements OnClickListener {
    final /* synthetic */ MapView f4502a;

    C0573h(MapView mapView) {
        this.f4502a = mapView;
    }

    public void onClick(View view) {
        C0639z p = this.f4502a.f4373b.m6577p();
        p.f4882a += 1.0f;
        this.f4502a.f4373b.m6545a(p, 300);
    }
}
