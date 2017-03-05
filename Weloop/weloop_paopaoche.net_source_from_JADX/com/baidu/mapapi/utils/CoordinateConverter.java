package com.baidu.mapapi.utils;

import com.baidu.location.BDGeofence;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comapi.p086a.C0597c;
import uk.co.chrisjenx.calligraphy.ProGuard;

public class CoordinateConverter {
    private LatLng f4603a;
    private CoordType f4604b;

    /* renamed from: com.baidu.mapapi.utils.CoordinateConverter.1 */
    static /* synthetic */ class C05811 {
        static final /* synthetic */ int[] f4602a;

        static {
            f4602a = new int[CoordType.values().length];
            try {
                f4602a[CoordType.COMMON.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4602a[CoordType.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public enum CoordType {
        GPS,
        COMMON
    }

    private static LatLng m6367a(LatLng latLng) {
        return m6368a(latLng, "wgs84");
    }

    private static LatLng m6368a(LatLng latLng, String str) {
        if (latLng == null) {
            return null;
        }
        C0597c a = C0579a.m6360a((float) latLng.longitude, (float) latLng.latitude, str);
        return a != null ? C0579a.m6356a(new C0596b(a.m6430b(), a.m6428a())) : null;
    }

    private static LatLng m6369b(LatLng latLng) {
        return m6368a(latLng, BDGeofence.COORD_TYPE_GCJ);
    }

    public LatLng convert() {
        if (this.f4603a == null) {
            return null;
        }
        if (this.f4604b == null) {
            this.f4604b = CoordType.GPS;
        }
        switch (C05811.f4602a[this.f4604b.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return m6369b(this.f4603a);
            case ProGuard.styleable.View_paddingStart /*2*/:
                return m6367a(this.f4603a);
            default:
                return null;
        }
    }

    public CoordinateConverter coord(LatLng latLng) {
        this.f4603a = latLng;
        return this;
    }

    public CoordinateConverter from(CoordType coordType) {
        this.f4604b = coordType;
        return this;
    }
}
