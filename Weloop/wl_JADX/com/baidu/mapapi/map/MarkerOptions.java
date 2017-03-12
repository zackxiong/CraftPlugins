package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import java.util.ArrayList;

public final class MarkerOptions extends OverlayOptions {
    int f4413a;
    boolean f4414b;
    Bundle f4415c;
    private LatLng f4416d;
    private BitmapDescriptor f4417e;
    private float f4418f;
    private float f4419g;
    private boolean f4420h;
    private boolean f4421i;
    private float f4422j;
    private String f4423k;
    private int f4424l;
    private boolean f4425m;
    private ArrayList<BitmapDescriptor> f4426n;
    private int f4427o;

    public MarkerOptions() {
        this.f4418f = 0.5f;
        this.f4419g = 1.0f;
        this.f4420h = true;
        this.f4421i = false;
        this.f4425m = false;
        this.f4427o = 20;
        this.f4414b = true;
    }

    MarkerOptions m6267a(int i) {
        this.f4424l = i;
        return this;
    }

    Overlay m6268a() {
        Overlay marker = new Marker();
        marker.q = this.f4414b;
        marker.p = this.f4413a;
        marker.r = this.f4415c;
        if (this.f4416d == null) {
            throw new IllegalStateException("when you add marker, you must set the position");
        }
        marker.f4400a = this.f4416d;
        if (this.f4417e == null && this.f4426n == null) {
            throw new IllegalStateException("when you add marker, you must set the icon or icons");
        }
        marker.f4401b = this.f4417e;
        marker.f4402c = this.f4418f;
        marker.f4403d = this.f4419g;
        marker.f4404e = this.f4420h;
        marker.f4405f = this.f4421i;
        marker.f4406g = this.f4422j;
        marker.f4407h = this.f4423k;
        marker.f4408i = this.f4424l;
        marker.f4409j = this.f4425m;
        marker.f4411l = this.f4426n;
        marker.f4412m = this.f4427o;
        return marker;
    }

    public MarkerOptions anchor(float f, float f2) {
        if (f >= 0.0f && f <= 1.0f && f2 >= 0.0f && f2 <= 1.0f) {
            this.f4418f = f;
            this.f4419g = f2;
        }
        return this;
    }

    public MarkerOptions draggable(boolean z) {
        this.f4421i = z;
        return this;
    }

    public MarkerOptions extraInfo(Bundle bundle) {
        this.f4415c = bundle;
        return this;
    }

    public MarkerOptions flat(boolean z) {
        this.f4425m = z;
        return this;
    }

    public float getAnchorX() {
        return this.f4418f;
    }

    public float getAnchorY() {
        return this.f4419g;
    }

    public Bundle getExtraInfo() {
        return this.f4415c;
    }

    public BitmapDescriptor getIcon() {
        return this.f4417e;
    }

    public ArrayList<BitmapDescriptor> getIcons() {
        return this.f4426n;
    }

    public int getPeriod() {
        return this.f4427o;
    }

    public LatLng getPosition() {
        return this.f4416d;
    }

    public float getRotate() {
        return this.f4422j;
    }

    public String getTitle() {
        return this.f4423k;
    }

    public int getZIndex() {
        return this.f4413a;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null) {
            throw new IllegalArgumentException("marker's icon can not be null");
        }
        this.f4417e = bitmapDescriptor;
        return this;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.baidu.mapapi.map.MarkerOptions icons(java.util.ArrayList<com.baidu.mapapi.map.BitmapDescriptor> r3) {
        /*
        r2 = this;
        if (r3 != 0) goto L_0x000a;
    L_0x0002:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "marker's icons can not be null";
        r0.<init>(r1);
        throw r0;
    L_0x000a:
        r0 = r3.size();
        if (r0 != 0) goto L_0x0011;
    L_0x0010:
        return r2;
    L_0x0011:
        r0 = 0;
        r1 = r0;
    L_0x0013:
        r0 = r3.size();
        if (r1 >= r0) goto L_0x002d;
    L_0x0019:
        r0 = r3.get(r1);
        if (r0 == 0) goto L_0x0010;
    L_0x001f:
        r0 = r3.get(r1);
        r0 = (com.baidu.mapapi.map.BitmapDescriptor) r0;
        r0 = r0.f4265a;
        if (r0 == 0) goto L_0x0010;
    L_0x0029:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0013;
    L_0x002d:
        r2.f4426n = r3;
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapapi.map.MarkerOptions.icons(java.util.ArrayList):com.baidu.mapapi.map.MarkerOptions");
    }

    public boolean isDraggable() {
        return this.f4421i;
    }

    public boolean isFlat() {
        return this.f4425m;
    }

    public boolean isPerspective() {
        return this.f4420h;
    }

    public boolean isVisible() {
        return this.f4414b;
    }

    public MarkerOptions period(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("marker's period must be greater than zero ");
        }
        this.f4427o = i;
        return this;
    }

    public MarkerOptions perspective(boolean z) {
        this.f4420h = z;
        return this;
    }

    public MarkerOptions position(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("marker's position can not be null");
        }
        this.f4416d = latLng;
        return this;
    }

    public MarkerOptions rotate(float f) {
        while (f < 0.0f) {
            f += 360.0f;
        }
        this.f4422j = f % 360.0f;
        return this;
    }

    public MarkerOptions title(String str) {
        this.f4423k = str;
        return this;
    }

    public MarkerOptions visible(boolean z) {
        this.f4414b = z;
        return this;
    }

    public MarkerOptions zIndex(int i) {
        this.f4413a = i;
        return this;
    }
}
