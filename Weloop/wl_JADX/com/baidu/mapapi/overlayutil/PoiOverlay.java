package com.baidu.mapapi.overlayutil;

import android.os.Bundle;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.poi.PoiResult;
import java.util.ArrayList;
import java.util.List;

public class PoiOverlay extends OverlayManager {
    private PoiResult f4536c;

    public PoiOverlay(BaiduMap baiduMap) {
        super(baiduMap);
        this.f4536c = null;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        if (this.f4536c == null || this.f4536c.getAllPoi() == null) {
            return null;
        }
        List<OverlayOptions> arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < this.f4536c.getAllPoi().size() && i < 10; i2++) {
            if (((PoiInfo) this.f4536c.getAllPoi().get(i2)).location != null) {
                i++;
                Bundle bundle = new Bundle();
                bundle.putInt("index", i2);
                arrayList.add(new MarkerOptions().icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_mark" + i + ".png")).extraInfo(bundle).position(((PoiInfo) this.f4536c.getAllPoi().get(i2)).location));
            }
        }
        return arrayList;
    }

    public PoiResult getPoiResult() {
        return this.f4536c;
    }

    public final boolean onMarkerClick(Marker marker) {
        return marker.getExtraInfo() != null ? onPoiClick(marker.getExtraInfo().getInt("index")) : false;
    }

    public boolean onPoiClick(int i) {
        return false;
    }

    public void setData(PoiResult poiResult) {
        this.f4536c = poiResult;
    }
}
