package com.baidu.mapapi.map;

import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.platform.comapi.map.C0639z;

/* renamed from: com.baidu.mapapi.map.g */
class C0572g implements OnClickListener {
    final /* synthetic */ MapView f4501a;

    C0572g(MapView mapView) {
        this.f4501a = mapView;
    }

    public void onClick(View view) {
        C0639z p = this.f4501a.f4373b.m6577p();
        p.f4882a -= 1.0f;
        this.f4501a.f4373b.m6545a(p, 300);
    }
}
