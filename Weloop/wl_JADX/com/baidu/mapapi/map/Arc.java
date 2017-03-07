package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import java.util.ArrayList;
import java.util.List;

public final class Arc extends Overlay {
    private static final String f4212f;
    int f4213a;
    int f4214b;
    LatLng f4215c;
    LatLng f4216d;
    LatLng f4217e;

    static {
        f4212f = Arc.class.getSimpleName();
    }

    Arc() {
        this.o = C0617e.arc;
    }

    Bundle m6170a(Bundle bundle) {
        super.m6169a(bundle);
        List arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add(this.f4215c);
        arrayList.add(this.f4216d);
        arrayList.add(this.f4217e);
        C0596b a = C0579a.m6359a((LatLng) arrayList.get(0));
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putInt("width", this.f4214b);
        Overlay.m6167a(arrayList, bundle);
        Overlay.m6166a(this.f4213a, bundle);
        return bundle;
    }

    public int getColor() {
        return this.f4213a;
    }

    public LatLng getEndPoint() {
        return this.f4217e;
    }

    public LatLng getMiddlePoint() {
        return this.f4216d;
    }

    public LatLng getStartPoint() {
        return this.f4215c;
    }

    public int getWidth() {
        return this.f4214b;
    }

    public void setColor(int i) {
        this.f4213a = i;
        this.listener.m6270b(this);
    }

    public void setPoints(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        if (latLng == null || latLng2 == null || latLng3 == null) {
            throw new IllegalArgumentException("start and middle and end points can not be null");
        } else if (latLng == latLng2 || latLng == latLng3 || latLng2 == latLng3) {
            throw new IllegalArgumentException("start and middle and end points can not be same");
        } else {
            this.f4215c = latLng;
            this.f4216d = latLng2;
            this.f4217e = latLng3;
            this.listener.m6270b(this);
        }
    }

    public void setWidth(int i) {
        if (i > 0) {
            this.f4214b = i;
            this.listener.m6270b(this);
        }
    }
}
