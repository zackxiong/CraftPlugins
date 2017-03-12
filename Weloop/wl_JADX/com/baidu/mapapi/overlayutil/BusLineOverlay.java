package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.widget.Toast;
import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.search.busline.BusLineResult;
import com.baidu.mapapi.search.busline.BusLineResult.BusStation;
import com.baidu.mapapi.search.busline.BusLineResult.BusStep;
import java.util.ArrayList;
import java.util.List;

public class BusLineOverlay extends OverlayManager {
    private BusLineResult f4534c;

    public BusLineOverlay(BaiduMap baiduMap) {
        super(baiduMap);
        this.f4534c = null;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        if (this.f4534c == null || this.f4534c.getStations() == null) {
            return null;
        }
        List<OverlayOptions> arrayList = new ArrayList();
        for (BusStation location : this.f4534c.getStations()) {
            arrayList.add(new MarkerOptions().position(location.getLocation()).zIndex(10).anchor(0.5f, 0.5f).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_bus_station.png")));
        }
        List arrayList2 = new ArrayList();
        for (BusStep busStep : this.f4534c.getSteps()) {
            if (busStep.getWayPoints() != null) {
                arrayList2.addAll(busStep.getWayPoints());
            }
        }
        if (arrayList2.size() > 0) {
            arrayList.add(new PolylineOptions().width(10).color(Color.argb(178, 0, 78, 255)).zIndex(0).points(arrayList2));
        }
        return arrayList;
    }

    public boolean onBusStationClick(int i) {
        if (!(this.f4534c.getStations() == null || this.f4534c.getStations().get(i) == null)) {
            Toast.makeText(C0556a.m6153a().m6162e(), ((BusStation) this.f4534c.getStations().get(i)).getTitle(), 1).show();
        }
        return false;
    }

    public final boolean onMarkerClick(Marker marker) {
        return (this.b == null || !this.b.contains(marker)) ? false : onBusStationClick(this.b.indexOf(marker));
    }

    public void setData(BusLineResult busLineResult) {
        this.f4534c = busLineResult;
    }
}
