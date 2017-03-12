package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.platform.comapi.map.C0620f;

public final class UiSettings {
    private C0620f f4485a;

    UiSettings(C0620f c0620f) {
        this.f4485a = c0620f;
    }

    public boolean isCompassEnabled() {
        return this.f4485a.m6565h();
    }

    public boolean isOverlookingGesturesEnabled() {
        return this.f4485a.m6575n();
    }

    public boolean isRotateGesturesEnabled() {
        return this.f4485a.m6574m();
    }

    public boolean isScrollGesturesEnabled() {
        return this.f4485a.m6571k();
    }

    public boolean isZoomGesturesEnabled() {
        return this.f4485a.m6573l();
    }

    public void setAllGesturesEnabled(boolean z) {
        setRotateGesturesEnabled(z);
        setScrollGesturesEnabled(z);
        setOverlookingGesturesEnabled(z);
        setZoomGesturesEnabled(z);
    }

    public void setCompassEnabled(boolean z) {
        this.f4485a.m6560f(z);
    }

    public void setCompassPosition(Point point) {
        this.f4485a.m6538a(point);
    }

    public void setOverlookingGesturesEnabled(boolean z) {
        this.f4485a.m6572l(z);
    }

    public void setRotateGesturesEnabled(boolean z) {
        this.f4485a.m6570k(z);
    }

    public void setScrollGesturesEnabled(boolean z) {
        this.f4485a.m6566i(z);
    }

    public void setZoomGesturesEnabled(boolean z) {
        this.f4485a.m6569j(z);
    }
}
