package com.baidu.mapapi.favorite;

import android.util.Log;
import com.baidu.mapapi.C0556a;
import com.baidu.platform.comapi.p087b.C0599a;
import com.baidu.platform.comapi.p087b.C0604b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FavoriteManager {
    private static FavoriteManager f4198a;
    private static C0604b f4199b;

    private FavoriteManager() {
    }

    public static FavoriteManager getInstance() {
        if (f4198a == null) {
            f4198a = new FavoriteManager();
        }
        return f4198a;
    }

    public int add(FavoritePoiInfo favoritePoiInfo) {
        if (f4199b == null) {
            Log.e("baidumapsdk", "you may have not call init method!");
            return 0;
        } else if (favoritePoiInfo == null || favoritePoiInfo.f4202c == null) {
            Log.e("baidumapsdk", "object or pt can not be null!");
            return 0;
        } else if (favoritePoiInfo.f4201b == null || favoritePoiInfo.f4201b.equals("")) {
            Log.e("baidumapsdk", "poiName can not be null or empty!");
            return -1;
        } else {
            C0599a a = C0558a.m6165a(favoritePoiInfo);
            int a2 = f4199b.m6453a(a.f4678b, a);
            if (a2 != 1) {
                return a2;
            }
            favoritePoiInfo.f4200a = a.f4677a;
            favoritePoiInfo.f4206g = Long.parseLong(a.f4684h);
            return a2;
        }
    }

    public boolean clearAllFavPoi() {
        if (f4199b != null) {
            return f4199b.m6458c();
        }
        Log.e("baidumapsdk", "you may have not call init method!");
        return false;
    }

    public boolean deleteFavPoi(String str) {
        if (f4199b != null) {
            return (str == null || str.equals("")) ? false : f4199b.m6454a(str);
        } else {
            Log.e("baidumapsdk", "you may have not call init method!");
            return false;
        }
    }

    public void destroy() {
        if (f4199b != null) {
            f4199b.m6456b();
            f4199b = null;
            C0556a.m6153a().m6161d();
        }
    }

    public List<FavoritePoiInfo> getAllFavPois() {
        if (f4199b == null) {
            Log.e("baidumapsdk", "you may have not call init method!");
            return null;
        }
        String f = f4199b.m6462f();
        if (f == null || f.equals("")) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(f);
            if (jSONObject.optInt("favpoinum") == 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("favcontents");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(C0558a.m6164a(optJSONArray.getJSONObject(i)));
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public FavoritePoiInfo getFavPoi(String str) {
        if (f4199b == null) {
            Log.e("baidumapsdk", "you may have not call init method!");
            return null;
        } else if (str == null || str.equals("")) {
            return null;
        } else {
            C0599a b = f4199b.m6455b(str);
            return b != null ? C0558a.m6163a(b) : null;
        }
    }

    public void init() {
        if (f4199b == null) {
            f4199b = C0604b.m6448a();
            C0556a.m6153a().m6159b();
        }
    }

    public boolean updateFavPoi(String str, FavoritePoiInfo favoritePoiInfo) {
        if (f4199b == null) {
            Log.e("baidumapsdk", "you may have not call init method!");
            return false;
        } else if (str == null || str.equals("") || favoritePoiInfo == null) {
            return false;
        } else {
            if (favoritePoiInfo == null || favoritePoiInfo.f4202c == null) {
                Log.e("baidumapsdk", "object or pt can not be null!");
                return false;
            } else if (favoritePoiInfo.f4201b == null || favoritePoiInfo.f4201b.equals("")) {
                Log.e("baidumapsdk", "poiName can not be null or empty!");
                return false;
            } else {
                favoritePoiInfo.f4200a = str;
                return f4199b.m6457b(str, C0558a.m6165a(favoritePoiInfo));
            }
        }
    }
}
