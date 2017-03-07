package com.baidu.mapapi.map;

import android.graphics.Point;
import android.view.ViewGroup.LayoutParams;
import com.baidu.mapapi.model.LatLng;

public final class MapViewLayoutParams extends LayoutParams {
    public static final int ALIGN_BOTTOM = 16;
    public static final int ALIGN_CENTER_HORIZONTAL = 4;
    public static final int ALIGN_CENTER_VERTICAL = 32;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int ALIGN_TOP = 8;
    LatLng f4394a;
    Point f4395b;
    ELayoutMode f4396c;
    float f4397d;
    float f4398e;
    int f4399f;

    public static final class Builder {
        private int f4386a;
        private int f4387b;
        private LatLng f4388c;
        private Point f4389d;
        private ELayoutMode f4390e;
        private int f4391f;
        private int f4392g;
        private int f4393h;

        public Builder() {
            this.f4390e = ELayoutMode.absoluteMode;
            this.f4391f = MapViewLayoutParams.ALIGN_CENTER_HORIZONTAL;
            this.f4392g = MapViewLayoutParams.ALIGN_BOTTOM;
        }

        public Builder align(int i, int i2) {
            if (i == MapViewLayoutParams.ALIGN_LEFT || i == MapViewLayoutParams.ALIGN_RIGHT || i == MapViewLayoutParams.ALIGN_CENTER_HORIZONTAL) {
                this.f4391f = i;
            }
            if (i2 == MapViewLayoutParams.ALIGN_TOP || i2 == MapViewLayoutParams.ALIGN_BOTTOM || i2 == MapViewLayoutParams.ALIGN_CENTER_VERTICAL) {
                this.f4392g = i2;
            }
            return this;
        }

        public MapViewLayoutParams build() {
            Object obj = MapViewLayoutParams.ALIGN_LEFT;
            if (this.f4390e != ELayoutMode.mapMode ? !(this.f4390e == ELayoutMode.absoluteMode && this.f4389d == null) : this.f4388c != null) {
                obj = null;
            }
            if (obj == null) {
                return new MapViewLayoutParams(this.f4386a, this.f4387b, this.f4388c, this.f4389d, this.f4390e, this.f4391f, this.f4392g, this.f4393h);
            }
            throw new IllegalStateException("if it is map mode, you must supply position info; else if it is absolute mode, you must supply the point info");
        }

        public Builder height(int i) {
            this.f4387b = i;
            return this;
        }

        public Builder layoutMode(ELayoutMode eLayoutMode) {
            this.f4390e = eLayoutMode;
            return this;
        }

        public Builder point(Point point) {
            this.f4389d = point;
            return this;
        }

        public Builder position(LatLng latLng) {
            this.f4388c = latLng;
            return this;
        }

        public Builder width(int i) {
            this.f4386a = i;
            return this;
        }

        public Builder yOffset(int i) {
            this.f4393h = i;
            return this;
        }
    }

    public enum ELayoutMode {
        mapMode,
        absoluteMode
    }

    MapViewLayoutParams(int i, int i2, LatLng latLng, Point point, ELayoutMode eLayoutMode, int i3, int i4, int i5) {
        super(i, i2);
        this.f4394a = latLng;
        this.f4395b = point;
        this.f4396c = eLayoutMode;
        switch (i3) {
            case ALIGN_LEFT /*1*/:
                this.f4397d = 0.0f;
                break;
            case ALIGN_RIGHT /*2*/:
                this.f4397d = 1.0f;
                break;
            case ALIGN_CENTER_HORIZONTAL /*4*/:
                this.f4397d = 0.5f;
                break;
            default:
                this.f4397d = 0.5f;
                break;
        }
        switch (i4) {
            case ALIGN_TOP /*8*/:
                this.f4398e = 0.0f;
                break;
            case ALIGN_BOTTOM /*16*/:
                this.f4398e = 1.0f;
                break;
            case ALIGN_CENTER_VERTICAL /*32*/:
                this.f4398e = 0.5f;
                break;
            default:
                this.f4398e = 1.0f;
                break;
        }
        this.f4399f = i5;
    }
}
