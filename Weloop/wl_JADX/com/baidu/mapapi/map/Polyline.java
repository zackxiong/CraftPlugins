package com.baidu.mapapi.map;

import android.os.Bundle;
import android.util.Log;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import java.util.List;

public final class Polyline extends Overlay {
    int f4444a;
    List<LatLng> f4445b;
    int f4446c;
    boolean f4447d;
    BitmapDescriptor f4448e;

    Polyline() {
        this.o = C0617e.polyline;
    }

    private Bundle m6273a(boolean z) {
        return z ? BitmapDescriptorFactory.fromAsset("lineDashTexture.png").m6204b() : this.f4448e.m6204b();
    }

    Bundle m6274a(Bundle bundle) {
        super.m6169a(bundle);
        C0596b a = C0579a.m6359a((LatLng) this.f4445b.get(0));
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putInt("width", this.f4446c);
        Overlay.m6167a(this.f4445b, bundle);
        Overlay.m6166a(this.f4444a, bundle);
        if (this.f4447d) {
            bundle.putInt("dotline", 1);
        } else {
            bundle.putInt("dotline", 0);
        }
        if (this.f4447d) {
            try {
                if (this.f4448e != null) {
                    bundle.putInt("custom", 1);
                    bundle.putBundle("image_info", m6273a(false));
                } else {
                    bundle.putInt("custom", 0);
                    bundle.putBundle("image_info", m6273a(true));
                }
            } catch (Exception e) {
                Log.e("baidumapsdk", "load texture resource failed!");
                bundle.putInt("dotline", 0);
            }
        }
        return bundle;
    }

    public int getColor() {
        return this.f4444a;
    }

    public List<LatLng> getPoints() {
        return this.f4445b;
    }

    public int getWidth() {
        return this.f4446c;
    }

    public boolean isDottedLine() {
        return this.f4447d;
    }

    public void setColor(int i) {
        this.f4444a = i;
        this.listener.m6270b(this);
    }

    public void setDottedLine(boolean z) {
        this.f4447d = z;
        this.listener.m6270b(this);
    }

    public void setPoints(List<LatLng> list) {
        if (list == null) {
            throw new IllegalArgumentException("points list can not be null");
        } else if (list.size() < 2 || list.size() > 10000) {
            throw new IllegalArgumentException("points count can not less than 2 or more than 10000");
        } else if (list.contains(null)) {
            throw new IllegalArgumentException("points list can not contains null");
        } else {
            this.f4445b = list;
            this.listener.m6270b(this);
        }
    }

    public void setWidth(int i) {
        if (i > 0) {
            this.f4446c = i;
            this.listener.m6270b(this);
        }
    }
}
