package com.baidu.mapapi.overlayutil;

import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BaiduMap.OnMarkerClickListener;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.Overlay;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.model.LatLngBounds.Builder;
import java.util.ArrayList;
import java.util.List;

public abstract class OverlayManager implements OnMarkerClickListener {
    BaiduMap f4531a;
    List<Overlay> f4532b;
    private List<OverlayOptions> f4533c;

    public OverlayManager(BaiduMap baiduMap) {
        this.f4531a = null;
        this.f4533c = null;
        this.f4532b = null;
        this.f4531a = baiduMap;
        if (this.f4533c == null) {
            this.f4533c = new ArrayList();
        }
        if (this.f4532b == null) {
            this.f4532b = new ArrayList();
        }
    }

    public final void addToMap() {
        if (this.f4531a != null) {
            removeFromMap();
            if (getOverlayOptions() != null) {
                this.f4533c.addAll(getOverlayOptions());
            }
            for (OverlayOptions addOverlay : this.f4533c) {
                this.f4532b.add(this.f4531a.addOverlay(addOverlay));
            }
        }
    }

    public abstract List<OverlayOptions> getOverlayOptions();

    public final void removeFromMap() {
        if (this.f4531a != null) {
            for (Overlay remove : this.f4532b) {
                remove.remove();
            }
            this.f4533c.clear();
            this.f4532b.clear();
        }
    }

    public void zoomToSpan() {
        if (this.f4531a != null && this.f4532b.size() > 0) {
            Builder builder = new Builder();
            for (Overlay overlay : this.f4532b) {
                if (overlay instanceof Marker) {
                    builder.include(((Marker) overlay).getPosition());
                }
            }
            this.f4531a.setMapStatus(MapStatusUpdateFactory.newLatLngBounds(builder.build()));
        }
    }
}
