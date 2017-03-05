package com.baidu.mapapi.utils;

import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.p086a.C0597c;
import com.baidu.platform.comjni.tools.C0647a;

public class DistanceUtil {
    public static double getDistance(LatLng latLng, LatLng latLng2) {
        if (latLng == null || latLng2 == null) {
            return -1.0d;
        }
        C0597c b = C0579a.m6361b(latLng);
        C0597c b2 = C0579a.m6361b(latLng2);
        return (b == null || b2 == null) ? -1.0d : C0647a.m6680a(b, b2);
    }
}
