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
import com.baidu.mapapi.search.route.WalkingRouteLine;
import com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep;
import java.util.ArrayList;
import java.util.List;

public class WalkingRouteOverlay extends OverlayManager {
    private WalkingRouteLine f4539c;

    public WalkingRouteOverlay(BaiduMap baiduMap) {
        super(baiduMap);
        this.f4539c = null;
    }

    public int getLineColor() {
        return 0;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        LatLng latLng = null;
        if (this.f4539c == null) {
            return null;
        }
        List<OverlayOptions> arrayList = new ArrayList();
        if (this.f4539c.getAllStep() != null && this.f4539c.getAllStep().size() > 0) {
            for (WalkingStep walkingStep : this.f4539c.getAllStep()) {
                Bundle bundle = new Bundle();
                bundle.putInt("index", this.f4539c.getAllStep().indexOf(walkingStep));
                if (walkingStep.getEntrace() != null) {
                    arrayList.add(new MarkerOptions().position(walkingStep.getEntrace().getLocation()).rotate((float) (360 - walkingStep.getDirection())).zIndex(10).anchor(0.5f, 0.5f).extraInfo(bundle).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
                if (this.f4539c.getAllStep().indexOf(walkingStep) == this.f4539c.getAllStep().size() - 1 && walkingStep.getExit() != null) {
                    arrayList.add(new MarkerOptions().position(walkingStep.getExit().getLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
            }
        }
        if (this.f4539c.getStarting() != null) {
            arrayList.add(new MarkerOptions().position(this.f4539c.getStarting().getLocation()).icon(getStartMarker() != null ? getStartMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png")).zIndex(10));
        }
        if (this.f4539c.getTerminal() != null) {
            arrayList.add(new MarkerOptions().position(this.f4539c.getTerminal().getLocation()).icon(getTerminalMarker() != null ? getTerminalMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png")).zIndex(10));
        }
        if (this.f4539c.getAllStep() != null && this.f4539c.getAllStep().size() > 0) {
            for (WalkingStep walkingStep2 : this.f4539c.getAllStep()) {
                LatLng latLng2;
                List wayPoints = walkingStep2.getWayPoints();
                if (wayPoints != null) {
                    List arrayList2 = new ArrayList();
                    if (latLng != null) {
                        arrayList2.add(latLng);
                    }
                    arrayList2.addAll(wayPoints);
                    arrayList.add(new PolylineOptions().points(arrayList2).width(10).color(getLineColor() != 0 ? getLineColor() : Color.argb(178, 0, 78, 255)).zIndex(0));
                    latLng2 = (LatLng) wayPoints.get(wayPoints.size() - 1);
                } else {
                    latLng2 = latLng;
                }
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
        if (!(this.f4539c.getAllStep() == null || this.f4539c.getAllStep().get(i) == null)) {
            Toast.makeText(C0556a.m6153a().m6162e(), ((WalkingStep) this.f4539c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(WalkingRouteLine walkingRouteLine) {
        this.f4539c = walkingRouteLine;
    }
}
