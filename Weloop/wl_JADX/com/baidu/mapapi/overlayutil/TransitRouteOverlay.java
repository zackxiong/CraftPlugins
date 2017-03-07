package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.os.Bundle;
import android.widget.Toast;
import com.baidu.location.C0452e;
import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.Overlay;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.search.route.TransitRouteLine;
import com.baidu.mapapi.search.route.TransitRouteLine.TransitStep;
import com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType;
import java.util.ArrayList;
import java.util.List;
import uk.co.chrisjenx.calligraphy.ProGuard;

public class TransitRouteOverlay extends OverlayManager {
    private TransitRouteLine f4538c;

    /* renamed from: com.baidu.mapapi.overlayutil.TransitRouteOverlay.1 */
    static /* synthetic */ class C05801 {
        static final /* synthetic */ int[] f4537a;

        static {
            f4537a = new int[TransitRouteStepType.values().length];
            try {
                f4537a[TransitRouteStepType.BUSLINE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4537a[TransitRouteStepType.SUBWAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4537a[TransitRouteStepType.WAKLING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public TransitRouteOverlay(BaiduMap baiduMap) {
        super(baiduMap);
        this.f4538c = null;
    }

    private BitmapDescriptor m6366a(TransitStep transitStep) {
        switch (C05801.f4537a[transitStep.getStepType().ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_bus_station.png");
            case ProGuard.styleable.View_paddingStart /*2*/:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_subway_station.png");
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_walk_route.png");
            default:
                return null;
        }
    }

    public int getLineColor() {
        return 0;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        if (this.f4538c == null) {
            return null;
        }
        List<OverlayOptions> arrayList = new ArrayList();
        if (this.f4538c.getAllStep() != null && this.f4538c.getAllStep().size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            for (TransitStep transitStep : this.f4538c.getAllStep()) {
                Bundle bundle = new Bundle();
                bundle.putInt("index", this.f4538c.getAllStep().indexOf(transitStep));
                if (transitStep.getEntrace() != null) {
                    arrayList.add(new MarkerOptions().position(transitStep.getEntrace().getLocation()).anchor(0.5f, 0.5f).zIndex(10).extraInfo(bundle).icon(m6366a(transitStep)));
                }
                if (this.f4538c.getAllStep().indexOf(transitStep) == this.f4538c.getAllStep().size() - 1 && transitStep.getExit() != null) {
                    arrayList.add(new MarkerOptions().position(transitStep.getExit().getLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(m6366a(transitStep)));
                }
            }
        }
        if (this.f4538c.getStarting() != null) {
            arrayList.add(new MarkerOptions().position(this.f4538c.getStarting().getLocation()).icon(getStartMarker() != null ? getStartMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png")).zIndex(10));
        }
        if (this.f4538c.getTerminal() != null) {
            arrayList.add(new MarkerOptions().position(this.f4538c.getTerminal().getLocation()).icon(getTerminalMarker() != null ? getTerminalMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png")).zIndex(10));
        }
        if (this.f4538c.getAllStep() != null && this.f4538c.getAllStep().size() > 0) {
            arrayList2 = new ArrayList();
            for (TransitStep transitStep2 : this.f4538c.getAllStep()) {
                if (transitStep2.getWayPoints() != null) {
                    int lineColor = transitStep2.getStepType() != TransitRouteStepType.WAKLING ? getLineColor() != 0 ? getLineColor() : Color.argb(178, 0, 78, 255) : getLineColor() != 0 ? getLineColor() : Color.argb(178, 88, C0452e.f3840goto, 0);
                    arrayList.add(new PolylineOptions().points(transitStep2.getWayPoints()).width(10).color(lineColor).zIndex(0));
                }
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
        if (!(this.f4538c.getAllStep() == null || this.f4538c.getAllStep().get(i) == null)) {
            Toast.makeText(C0556a.m6153a().m6162e(), ((TransitStep) this.f4538c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(TransitRouteLine transitRouteLine) {
        this.f4538c = transitRouteLine;
    }
}
