package com.baidu.mapapi.map;

import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import org.json.JSONObject;

public final class MapPoi {
    private static final String f4345c;
    String f4346a;
    LatLng f4347b;

    static {
        f4345c = MapPoi.class.getSimpleName();
    }

    void m6243a(JSONObject jSONObject) {
        this.f4346a = jSONObject.optString("tx");
        this.f4347b = C0579a.m6357a(jSONObject.optString("geo"));
    }

    public String getName() {
        return this.f4346a;
    }

    public LatLng getPosition() {
        return this.f4347b;
    }
}
