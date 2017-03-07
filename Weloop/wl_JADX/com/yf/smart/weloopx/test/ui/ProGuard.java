package com.yf.smart.weloopx.test.ui;

import android.widget.ImageView;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BaiduMap.OnMapLoadedCallback;

/* renamed from: com.yf.smart.weloopx.test.ui.a */
class ProGuard implements OnMapLoadedCallback {
    final /* synthetic */ ImageView f8982a;
    final /* synthetic */ BaiduMap f8983b;
    final /* synthetic */ TestActivity f8984c;

    ProGuard(TestActivity testActivity, ImageView imageView, BaiduMap baiduMap) {
        this.f8984c = testActivity;
        this.f8982a = imageView;
        this.f8983b = baiduMap;
    }

    public void onMapLoaded() {
        this.f8982a.postDelayed(new ProGuard(this), 5000);
    }
}
