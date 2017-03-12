package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.os.Bundle;
import android.widget.Toast;
import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.Overlay;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.route.DrivingRouteLine;
import com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep;
import java.util.ArrayList;
import java.util.List;

public class DrivingRouteOverlay extends OverlayManager {
    private DrivingRouteLine f4535c;

    public DrivingRouteOverlay(BaiduMap baiduMap) {
        super(baiduMap);
        this.f4535c = null;
    }

    public int getLineColor() {
        return 0;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        LatLng latLng = null;
        if (this.f4535c == null) {
            return null;
        }
        DrivingStep drivingStep;
        List<OverlayOptions> arrayList = new ArrayList();
        if (this.f4535c.getAllStep() != null && this.f4535c.getAllStep().size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            for (DrivingStep drivingStep2 : this.f4535c.getAllStep()) {
                Bundle bundle = new Bundle();
                bundle.putInt("index", this.f4535c.getAllStep().indexOf(drivingStep2));
                if (drivingStep2.getEntrace() != null) {
                    arrayList.add(new MarkerOptions().position(drivingStep2.getEntrace().getLocation()).anchor(0.5f, 0.5f).zIndex(10).rotate((float) (360 - drivingStep2.getDirection())).extraInfo(bundle).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
                if (this.f4535c.getAllStep().indexOf(drivingStep2) == this.f4535c.getAllStep().size() - 1 && drivingStep2.getExit() != null) {
                    arrayList.add(new MarkerOptions().position(drivingStep2.getExit().getLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
            }
        }
        if (this.f4535c.getStarting() != null) {
            arrayList.add(new MarkerOptions().position(this.f4535c.getStarting().getLocation()).icon(getStartMarker() != null ? getStartMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png")).zIndex(10));
        }
        if (this.f4535c.getTerminal() != null) {
            arrayList.add(new MarkerOptions().position(this.f4535c.getTerminal().getLocation()).icon(getTerminalMarker() != null ? getTerminalMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png")).zIndex(10));
        }
        if (this.f4535c.getAllStep() != null && this.f4535c.getAllStep().size() > 0) {
            List allStep = this.f4535c.getAllStep();
            int size = allStep.size();
            int i = 0;
            while (i < size) {
                LatLng latLng2;
                drivingStep2 = (DrivingStep) allStep.get(i);
                if (drivingStep2.getWayPoints() == null || drivingStep2.getWayPoints().size() <= 0) {
                    latLng2 = latLng;
                } else {
                    List arrayList3 = new ArrayList();
                    if (latLng != null) {
                        arrayList3.add(latLng);
                    }
                    List wayPoints = drivingStep2.getWayPoints();
                    arrayList3.addAll(wayPoints);
                    arrayList.add(new PolylineOptions().points(arrayList3).width(10).color(getLineColor() != 0 ? getLineColor() : Color.argb(178, 0, 78, 255)).zIndex(0));
                    latLng2 = (LatLng) wayPoints.get(wayPoints.size() - 1);
                }
                i++;
                latLng = latLng2;
            }
        }
        return arrayList;
    }

    public BitmapDescriptor getStartMarker() {
        return null;
    }

    public BitmapDescriptor getTerminalMarker() {
        return null;
    }

    public final boolean onMarkerClick(Marker marker) {
        for (Overlay overlay : this.b) {
            if ((overlay instanceof Marker) && overlay.equals(marker) && marker.getExtraInfo() != null) {
                onRouteNodeClick(marker.getExtraInfo().getInt("index"));
            }
        }
        return true;
    }

    public boolean onRouteNodeClick(int i) {
        if (!(this.f4535c.getAllStep() == null || this.f4535c.getAllStep().get(i) == null)) {
            Toast.makeText(C0556a.m6153a().m6162e(), ((DrivingStep) this.f4535c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(DrivingRouteLine drivingRouteLine) {
        this.f4535c = drivingRouteLine;
    }
}
