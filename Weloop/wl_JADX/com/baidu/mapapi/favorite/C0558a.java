package com.baidu.mapapi.favorite;

import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.p086a.C0597c;
import com.baidu.platform.comapi.p087b.C0599a;
import org.json.JSONObject;

/* renamed from: com.baidu.mapapi.favorite.a */
class C0558a {
    static FavoritePoiInfo m6163a(C0599a c0599a) {
        if (c0599a == null || c0599a.f4679c == null || c0599a.f4678b.equals("")) {
            return null;
        }
        FavoritePoiInfo favoritePoiInfo = new FavoritePoiInfo();
        favoritePoiInfo.f4200a = c0599a.f4677a;
        favoritePoiInfo.f4201b = c0599a.f4678b;
        favoritePoiInfo.f4202c = new LatLng(((double) c0599a.f4679c.f4675b) / 1000000.0d, ((double) c0599a.f4679c.f4674a) / 1000000.0d);
        favoritePoiInfo.f4204e = c0599a.f4681e;
        favoritePoiInfo.f4205f = c0599a.f4682f;
        favoritePoiInfo.f4203d = c0599a.f4680d;
        favoritePoiInfo.f4206g = Long.parseLong(c0599a.f4684h);
        return favoritePoiInfo;
    }

    static FavoritePoiInfo m6164a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        FavoritePoiInfo favoritePoiInfo = new FavoritePoiInfo();
        JSONObject optJSONObject = jSONObject.optJSONObject("pt");
        favoritePoiInfo.f4202c = new LatLng(((double) optJSONObject.optInt("y")) / 1000000.0d, ((double) optJSONObject.optInt("x")) / 1000000.0d);
        favoritePoiInfo.f4201b = jSONObject.optString("uspoiname");
        favoritePoiInfo.f4206g = Long.parseLong(jSONObject.optString("addtimesec"));
        favoritePoiInfo.f4203d = jSONObject.optString("addr");
        favoritePoiInfo.f4205f = jSONObject.optString("uspoiuid");
        favoritePoiInfo.f4204e = jSONObject.optString("ncityid");
        favoritePoiInfo.f4200a = jSONObject.optString("key");
        return favoritePoiInfo;
    }

    static C0599a m6165a(FavoritePoiInfo favoritePoiInfo) {
        if (favoritePoiInfo == null || favoritePoiInfo.f4202c == null || favoritePoiInfo.f4201b == null || favoritePoiInfo.f4201b.equals("")) {
            return null;
        }
        C0599a c0599a = new C0599a();
        c0599a.f4678b = favoritePoiInfo.f4201b;
        c0599a.f4679c = new C0597c((int) (favoritePoiInfo.f4202c.longitude * 1000000.0d), (int) (favoritePoiInfo.f4202c.latitude * 1000000.0d));
        c0599a.f4680d = favoritePoiInfo.f4203d;
        c0599a.f4681e = favoritePoiInfo.f4204e;
        c0599a.f4682f = favoritePoiInfo.f4205f;
        c0599a.f4685i = false;
        return c0599a;
    }
}
