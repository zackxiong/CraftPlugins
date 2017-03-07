package com.baidu.mapapi.map;

import android.graphics.Point;
import android.graphics.PointF;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0620f;
import com.baidu.platform.comapi.map.C0639z;
import com.baidu.platform.comapi.p086a.C0596b;

public final class Projection {
    private C0620f f4458a;

    Projection(C0620f c0620f) {
        this.f4458a = c0620f;
    }

    public LatLng fromScreenLocation(Point point) {
        return point != null ? C0579a.m6356a(this.f4458a.m6536a(point.x, point.y)) : null;
    }

    public float metersToEquatorPixels(float f) {
        return f <= 0.0f ? 0.0f : (float) (((double) f) / this.f4458a.m6579r());
    }

    public PointF toOpenGLLocation(LatLng latLng, MapStatus mapStatus) {
        if (latLng == null || mapStatus == null) {
            return null;
        }
        C0596b a = C0579a.m6359a(latLng);
        C0639z c0639z = mapStatus.f4356a;
        return new PointF((float) ((((double) a.m6426b()) - c0639z.f4885d) / c0639z.f4895n), (float) ((((double) a.m6424a()) - c0639z.f4886e) / c0639z.f4895n));
    }

    public Point toScreenLocation(LatLng latLng) {
        if (latLng == null) {
            return null;
        }
        return this.f4458a.m6535a(C0579a.m6359a(latLng));
    }
}
