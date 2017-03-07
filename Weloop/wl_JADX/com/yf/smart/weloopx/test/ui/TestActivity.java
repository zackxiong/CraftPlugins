package com.yf.smart.weloopx.test.ui;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ImageView;
import com.baidu.mapapi.SDKInitializer;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.MyLocationData.Builder;
import com.baidu.mapapi.model.LatLng;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class TestActivity extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m11384a();
    }

    private void m11384a() {
        SDKInitializer.initialize(getApplicationContext());
        setContentView(R.layout.map_shot);
        m11385a((MapView) findViewById(R.id.map), (ImageView) findViewById(R.id.img), 29.904214d, 114.407413d);
        m11385a((MapView) findViewById(R.id.map2), (ImageView) findViewById(R.id.img2), 29.904214d, 116.407413d);
        m11385a((MapView) findViewById(R.id.map3), (ImageView) findViewById(R.id.img3), 29.904214d, 118.407413d);
    }

    private void m11385a(MapView mapView, ImageView imageView, double d, double d2) {
        mapView.showZoomControls(false);
        mapView.showScaleControl(false);
        BaiduMap map = mapView.getMap();
        map.setMaxAndMinZoomLevel(19.0f, 16.0f);
        map.setMapType(1);
        LatLng latLng = new LatLng(d, d2);
        map.setMyLocationData(new Builder().accuracy(100.0f).direction(100.0f).latitude(latLng.latitude).longitude(latLng.longitude).build());
        map.animateMapStatus(MapStatusUpdateFactory.newLatLng(latLng));
        map.setOnMapLoadedCallback(new ProGuard(this, imageView, map));
    }
}
