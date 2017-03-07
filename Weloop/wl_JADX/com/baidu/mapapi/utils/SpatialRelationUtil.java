package com.baidu.mapapi.utils;

import com.baidu.mapapi.model.LatLng;
import java.util.List;

public class SpatialRelationUtil {
    private static boolean m6371a(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        return ((int) DistanceUtil.getDistance(latLng, latLng2)) >= ((int) (DistanceUtil.getDistance(latLng, latLng3) + DistanceUtil.getDistance(latLng2, latLng3)));
    }

    private static LatLng m6372b(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double sqrt = Math.sqrt(((latLng2.longitude - latLng.longitude) * (latLng2.longitude - latLng.longitude)) + ((latLng2.latitude - latLng.latitude) * (latLng2.latitude - latLng.latitude)));
        sqrt = (((latLng2.longitude - latLng.longitude) * (latLng3.longitude - latLng.longitude)) + ((latLng2.latitude - latLng.latitude) * (latLng3.latitude - latLng.latitude))) / (sqrt * sqrt);
        return new LatLng((sqrt * (latLng2.latitude - latLng.latitude)) + latLng.latitude, latLng.longitude + ((latLng2.longitude - latLng.longitude) * sqrt));
    }

    public static LatLng getNearestPointFromLine(List<LatLng> list, LatLng latLng) {
        if (list == null || list.size() == 0 || latLng == null) {
            return null;
        }
        int i = 0;
        LatLng latLng2 = null;
        while (i < list.size() - 1) {
            LatLng b = m6372b((LatLng) list.get(i), (LatLng) list.get(i + 1), latLng);
            LatLng latLng3 = m6371a((LatLng) list.get(i), (LatLng) list.get(i + 1), b) ? b : DistanceUtil.getDistance(latLng, (LatLng) list.get(i)) < DistanceUtil.getDistance(latLng, (LatLng) list.get(i + 1)) ? (LatLng) list.get(i) : (LatLng) list.get(i + 1);
            if (latLng2 != null && DistanceUtil.getDistance(latLng, r0) >= DistanceUtil.getDistance(latLng, latLng2)) {
                latLng3 = latLng2;
            }
            i++;
            latLng2 = latLng3;
        }
        return latLng2;
    }

    public static boolean isCircleContainsPoint(LatLng latLng, int i, LatLng latLng2) {
        if (latLng == null || i == 0 || latLng2 == null) {
            return false;
        }
        double distance = DistanceUtil.getDistance(latLng, latLng2);
        return distance <= ((double) i) ? distance == ((double) i) ? true : true : false;
    }

    public static boolean isPolygonContainsPoint(List<LatLng> list, LatLng latLng) {
        boolean z = false;
        if (list == null || list.size() == 0 || latLng == null) {
            return false;
        }
        int i = 0;
        while (i < list.size()) {
            if (latLng.longitude == ((LatLng) list.get(i)).longitude && latLng.latitude == ((LatLng) list.get(i)).latitude) {
                return true;
            }
            i++;
        }
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            int i4;
            LatLng latLng2 = (LatLng) list.get(i2);
            LatLng latLng3 = (LatLng) list.get((i2 + 1) % size);
            if (latLng2.latitude == latLng3.latitude) {
                i4 = i3;
            } else if (latLng.latitude < Math.min(latLng2.latitude, latLng3.latitude)) {
                i4 = i3;
            } else if (latLng.latitude > Math.max(latLng2.latitude, latLng3.latitude)) {
                i4 = i3;
            } else {
                double d = latLng2.longitude + (((latLng.latitude - latLng2.latitude) * (latLng3.longitude - latLng2.longitude)) / (latLng3.latitude - latLng2.latitude));
                if (d == latLng.longitude) {
                    return true;
                }
                i4 = d < latLng.longitude ? i3 + 1 : i3;
            }
            i2++;
            i3 = i4;
        }
        if (i3 % 2 == 1) {
            z = true;
        }
        return z;
    }
}
