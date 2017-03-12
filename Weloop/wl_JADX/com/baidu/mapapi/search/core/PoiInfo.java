package com.baidu.mapapi.search.core;

import com.baidu.mapapi.model.LatLng;
import uk.co.chrisjenx.calligraphy.ProGuard;

public class PoiInfo {
    public String address;
    public String city;
    public boolean hasCaterDetails;
    public boolean isPano;
    public LatLng location;
    public String name;
    public String phoneNum;
    public String postCode;
    public POITYPE type;
    public String uid;

    public enum POITYPE {
        POINT(0),
        BUS_STATION(1),
        BUS_LINE(2),
        SUBWAY_STATION(3),
        SUBWAY_LINE(4);
        
        private int f4553a;

        private POITYPE(int i) {
        }

        public static POITYPE fromInt(int i) {
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    return POINT;
                case ProGuard.styleable.View_android_focusable /*1*/:
                    return BUS_STATION;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    return BUS_LINE;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    return SUBWAY_STATION;
                case ProGuard.styleable.View_theme /*4*/:
                    return SUBWAY_LINE;
                default:
                    return null;
            }
        }

        public int getInt() {
            return this.f4553a;
        }
    }
}
