package com.baidu.mapapi.map;

import android.view.View;
import com.baidu.mapapi.model.LatLng;

public class InfoWindow {
    BitmapDescriptor f4337a;
    View f4338b;
    LatLng f4339c;
    OnInfoWindowClickListener f4340d;
    int f4341e;

    public interface OnInfoWindowClickListener {
        void onInfoWindowClick();
    }

    public InfoWindow(View view, LatLng latLng, int i) {
        if (view == null || latLng == null) {
            throw new IllegalArgumentException("view and position can not be null");
        }
        this.f4338b = view;
        this.f4339c = latLng;
        this.f4341e = i;
    }

    public InfoWindow(BitmapDescriptor bitmapDescriptor, LatLng latLng, int i, OnInfoWindowClickListener onInfoWindowClickListener) {
        if (bitmapDescriptor == null || latLng == null) {
            throw new IllegalArgumentException("bitmapDescriptor and position can not be null");
        }
        this.f4337a = bitmapDescriptor;
        this.f4339c = latLng;
        this.f4340d = onInfoWindowClickListener;
        this.f4341e = i;
    }
}
