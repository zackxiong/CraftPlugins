package com.baidu.mapapi.utils.poi;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.baidu.mapapi.utils.C0588c;
import com.baidu.mapapi.utils.OpenClientUtil;
import com.baidu.mapapi.utils.route.BaiduMapRoutePlan;

public class BaiduMapPoiSearch {
    private static boolean f4655a;

    static {
        f4655a = true;
    }

    private static void m6421a(PoiParaOption poiParaOption, Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("http://api.map.baidu.com/place/detail?");
        stringBuilder.append("uid=");
        stringBuilder.append(poiParaOption.f4656a);
        stringBuilder.append("&output=html");
        stringBuilder.append("&src=");
        stringBuilder.append(context.getPackageName());
        Uri parse = Uri.parse(stringBuilder.toString());
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(parse);
        context.startActivity(intent);
    }

    private static void m6422b(PoiParaOption poiParaOption, Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("http://api.map.baidu.com/place/search?");
        stringBuilder.append("query=");
        stringBuilder.append(poiParaOption.f4657b);
        stringBuilder.append("&location=");
        stringBuilder.append(poiParaOption.f4658c.latitude);
        stringBuilder.append(",");
        stringBuilder.append(poiParaOption.f4658c.longitude);
        stringBuilder.append("&radius=");
        stringBuilder.append(poiParaOption.f4659d);
        stringBuilder.append("&output=html");
        stringBuilder.append("&src=");
        stringBuilder.append(context.getPackageName());
        Uri parse = Uri.parse(stringBuilder.toString());
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(parse);
        context.startActivity(intent);
    }

    public static void finish(Context context) {
        if (context != null) {
            C0588c.m6390a(context);
        }
    }

    public static void openBaiduMapPoiDetialsPage(PoiParaOption poiParaOption, Context context) {
        if (poiParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (poiParaOption.f4656a == null) {
            throw new IllegalPoiSearchArgumentException("poi uid can not be null.");
        } else if (poiParaOption.f4656a.equals("")) {
            Log.e(BaiduMapRoutePlan.class.getName(), "poi uid can not be empty string");
        } else {
            int baiduMapVersion = OpenClientUtil.getBaiduMapVersion(context);
            if (baiduMapVersion == 0) {
                Log.e("baidumapsdk", "BaiduMap app is not installed.");
                if (f4655a) {
                    m6421a(poiParaOption, context);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("BaiduMap app is not installed.");
            } else if (baiduMapVersion >= 810) {
                C0588c.m6392a(poiParaOption, context, 3);
            } else {
                Log.e("baidumapsdk", "Baidumap app version is too lowl.Version is greater than 8.1");
                if (f4655a) {
                    m6421a(poiParaOption, context);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("Baidumap app version is too lowl.Version is greater than 8.1");
            }
        }
    }

    public static void openBaiduMapPoiNearbySearch(PoiParaOption poiParaOption, Context context) {
        if (poiParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (poiParaOption.f4657b == null) {
            throw new IllegalPoiSearchArgumentException("poi search key can not be null.");
        } else if (poiParaOption.f4658c == null) {
            throw new IllegalPoiSearchArgumentException("poi search center can not be null.");
        } else if (poiParaOption.f4658c.longitude == 0.0d || poiParaOption.f4658c.latitude == 0.0d) {
            throw new IllegalPoiSearchArgumentException("poi search center longitude or latitude can not be 0.");
        } else if (poiParaOption.f4659d == 0) {
            throw new IllegalPoiSearchArgumentException("poi search radius larger than 0.");
        } else if (poiParaOption.f4657b.equals("")) {
            Log.e(BaiduMapRoutePlan.class.getName(), "poi key can not be empty string");
        } else {
            int baiduMapVersion = OpenClientUtil.getBaiduMapVersion(context);
            if (baiduMapVersion == 0) {
                Log.e("baidumapsdk", "BaiduMap app is not installed.");
                if (f4655a) {
                    m6422b(poiParaOption, context);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("BaiduMap app is not installed.");
            } else if (baiduMapVersion >= 810) {
                C0588c.m6392a(poiParaOption, context, 4);
            } else {
                Log.e("baidumapsdk", "Baidumap app version is too lowl.Version is greater than 8.1");
                if (f4655a) {
                    m6422b(poiParaOption, context);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("Baidumap app version is too lowl.Version is greater than 8.1");
            }
        }
    }

    public static void setSupportWebPoi(boolean z) {
        f4655a = z;
    }
}
