package com.baidu.mapapi.map;

public class MyLocationData {
    public final float accuracy;
    public final float direction;
    public final double latitude;
    public final double longitude;
    public final int satellitesNum;
    public final float speed;

    public static class Builder {
        private double f4429a;
        private double f4430b;
        private float f4431c;
        private float f4432d;
        private float f4433e;
        private int f4434f;

        public Builder accuracy(float f) {
            this.f4433e = f;
            return this;
        }

        public MyLocationData build() {
            return new MyLocationData(this.f4429a, this.f4430b, this.f4431c, this.f4432d, this.f4433e, this.f4434f);
        }

        public Builder direction(float f) {
            this.f4432d = f;
            return this;
        }

        public Builder latitude(double d) {
            this.f4429a = d;
            return this;
        }

        public Builder longitude(double d) {
            this.f4430b = d;
            return this;
        }

        public Builder satellitesNum(int i) {
            this.f4434f = i;
            return this;
        }

        public Builder speed(float f) {
            this.f4431c = f;
            return this;
        }
    }

    MyLocationData(double d, double d2, float f, float f2, float f3, int i) {
        this.latitude = d;
        this.longitude = d2;
        this.speed = f;
        this.direction = f2;
        this.accuracy = f3;
        this.satellitesNum = i;
    }
}
