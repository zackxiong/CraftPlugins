package com.baidu.mapapi.model;

public final class LatLngBounds {
    public final LatLng northeast;
    public final LatLng southwest;

    public static final class Builder {
        private double f4515a;
        private double f4516b;
        private double f4517c;
        private double f4518d;
        private boolean f4519e;

        public Builder() {
            this.f4519e = true;
        }

        public LatLngBounds build() {
            return new LatLngBounds(new LatLng(this.f4516b, this.f4518d), new LatLng(this.f4515a, this.f4517c));
        }

        public Builder include(LatLng latLng) {
            if (latLng != null) {
                double d;
                if (this.f4519e) {
                    this.f4519e = false;
                    d = latLng.latitude;
                    this.f4515a = d;
                    this.f4516b = d;
                    d = latLng.longitude;
                    this.f4517c = d;
                    this.f4518d = d;
                }
                d = latLng.latitude;
                double d2 = latLng.longitude;
                if (d < this.f4515a) {
                    this.f4515a = d;
                }
                if (d > this.f4516b) {
                    this.f4516b = d;
                }
                if (d2 < this.f4517c) {
                    this.f4517c = d2;
                }
                if (d2 > this.f4518d) {
                    this.f4518d = d2;
                }
            }
            return this;
        }
    }

    LatLngBounds(LatLng latLng, LatLng latLng2) {
        this.northeast = latLng;
        this.southwest = latLng2;
    }

    public boolean contains(LatLng latLng) {
        if (latLng == null) {
            return false;
        }
        double d = this.southwest.latitude;
        double d2 = this.northeast.latitude;
        double d3 = this.southwest.longitude;
        double d4 = this.northeast.longitude;
        double d5 = latLng.latitude;
        double d6 = latLng.longitude;
        return d5 >= d && d5 <= d2 && d6 >= d3 && d6 <= d4;
    }

    public LatLng getCenter() {
        return new LatLng(((this.northeast.latitude - this.southwest.latitude) / 2.0d) + this.southwest.latitude, ((this.northeast.longitude - this.southwest.longitude) / 2.0d) + this.southwest.longitude);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("southwest: ");
        stringBuilder.append(this.southwest.latitude);
        stringBuilder.append(", ");
        stringBuilder.append(this.southwest.longitude);
        stringBuilder.append("\n");
        stringBuilder.append("northeast: ");
        stringBuilder.append(this.northeast.latitude);
        stringBuilder.append(", ");
        stringBuilder.append(this.northeast.longitude);
        return stringBuilder.toString();
    }
}
