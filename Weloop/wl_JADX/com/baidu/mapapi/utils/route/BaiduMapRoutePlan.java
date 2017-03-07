package com.baidu.mapapi.utils.route;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.baidu.mapapi.navi.IllegalNaviArgumentException;
import com.baidu.mapapi.utils.C0588c;
import com.baidu.mapapi.utils.OpenClientUtil;
import com.baidu.mapapi.utils.poi.IllegalPoiSearchArgumentException;
import com.baidu.mapapi.utils.route.RouteParaOption.EBusStrategyType;
import uk.co.chrisjenx.calligraphy.ProGuard;

public class BaiduMapRoutePlan {
    private static boolean f4660a;

    static {
        f4660a = true;
    }

    private static void m6423a(RouteParaOption routeParaOption, Context context, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("http://api.map.baidu.com/direction?");
        stringBuilder.append("origin=");
        if (routeParaOption.f4662a != null && routeParaOption.f4664c != null && !routeParaOption.f4664c.equals("")) {
            stringBuilder.append("latlng:");
            stringBuilder.append(routeParaOption.f4662a.latitude);
            stringBuilder.append(",");
            stringBuilder.append(routeParaOption.f4662a.longitude);
            stringBuilder.append("|");
            stringBuilder.append("name:");
            stringBuilder.append(routeParaOption.f4664c);
        } else if (routeParaOption.f4662a != null) {
            stringBuilder.append(routeParaOption.f4662a.latitude);
            stringBuilder.append(",");
            stringBuilder.append(routeParaOption.f4662a.longitude);
        } else {
            stringBuilder.append(routeParaOption.f4664c);
        }
        stringBuilder.append("&destination=");
        if (routeParaOption.f4663b != null && routeParaOption.f4665d != null && !routeParaOption.f4665d.equals("")) {
            stringBuilder.append("latlng:");
            stringBuilder.append(routeParaOption.f4663b.latitude);
            stringBuilder.append(",");
            stringBuilder.append(routeParaOption.f4663b.longitude);
            stringBuilder.append("|");
            stringBuilder.append("name:");
            stringBuilder.append(routeParaOption.f4665d);
        } else if (routeParaOption.f4663b != null) {
            stringBuilder.append(routeParaOption.f4663b.latitude);
            stringBuilder.append(",");
            stringBuilder.append(routeParaOption.f4663b.longitude);
        } else {
            stringBuilder.append(routeParaOption.f4665d);
        }
        String str = "";
        switch (i) {
            case ProGuard.styleable.View_android_theme /*0*/:
                str = "driving";
                break;
            case ProGuard.styleable.View_android_focusable /*1*/:
                str = "transit";
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                str = "walking";
                break;
        }
        stringBuilder.append("&mode=");
        stringBuilder.append(str);
        stringBuilder.append("&region=");
        if (routeParaOption.getCityName() == null || routeParaOption.getCityName().equals("")) {
            stringBuilder.append("\u5168\u56fd");
        } else {
            stringBuilder.append(routeParaOption.getCityName());
        }
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

    public static void openBaiduMapDrivingRoute(RouteParaOption routeParaOption, Context context) {
        if (routeParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (routeParaOption.f4663b == null && routeParaOption.f4662a == null && routeParaOption.f4665d == null && routeParaOption.f4664c == null) {
            throw new IllegalNaviArgumentException("startPoint and endPoint and endName and startName not all null.");
        } else if (routeParaOption.f4664c == null && routeParaOption.f4662a == null) {
            throw new IllegalNaviArgumentException("startPoint and startName not all null.");
        } else if (routeParaOption.f4665d == null && routeParaOption.f4663b == null) {
            throw new IllegalNaviArgumentException("endPoint and endName not all null.");
        } else if (((routeParaOption.f4664c == null || routeParaOption.f4664c.equals("")) && routeParaOption.f4662a == null) || ((routeParaOption.f4665d == null || routeParaOption.f4665d.equals("")) && routeParaOption.f4663b == null)) {
            Log.e(BaiduMapRoutePlan.class.getName(), "poi startName or endName can not be empty string while pt is null");
        } else {
            if (routeParaOption.f4667f == null) {
                routeParaOption.f4667f = EBusStrategyType.bus_recommend_way;
            }
            int baiduMapVersion = OpenClientUtil.getBaiduMapVersion(context);
            if (baiduMapVersion == 0) {
                Log.e("baidumapsdk", "BaiduMap app is not installed.");
                if (f4660a) {
                    m6423a(routeParaOption, context, 0);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("BaiduMap app is not installed.");
            } else if (baiduMapVersion >= 810) {
                C0588c.m6393a(routeParaOption, context, 0);
            } else {
                Log.e("baidumapsdk", "Baidumap app version is too lowl.Version is greater than 8.1");
                if (f4660a) {
                    m6423a(routeParaOption, context, 0);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("Baidumap app version is too lowl.Version is greater than 8.1");
            }
        }
    }

    public static void openBaiduMapTransitRoute(RouteParaOption routeParaOption, Context context) {
        if (routeParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (routeParaOption.f4663b == null && routeParaOption.f4662a == null && routeParaOption.f4665d == null && routeParaOption.f4664c == null) {
            throw new IllegalNaviArgumentException("startPoint and endPoint and endName and startName not all null.");
        } else if (routeParaOption.f4664c == null && routeParaOption.f4662a == null) {
            throw new IllegalNaviArgumentException("startPoint and startName not all null.");
        } else if (routeParaOption.f4665d == null && routeParaOption.f4663b == null) {
            throw new IllegalNaviArgumentException("endPoint and endName not all null.");
        } else if (((routeParaOption.f4664c == null || routeParaOption.f4664c.equals("")) && routeParaOption.f4662a == null) || ((routeParaOption.f4665d == null || routeParaOption.f4665d.equals("")) && routeParaOption.f4663b == null)) {
            Log.e(BaiduMapRoutePlan.class.getName(), "poi startName or endName can not be empty string while pt is null");
        } else {
            if (routeParaOption.f4667f == null) {
                routeParaOption.f4667f = EBusStrategyType.bus_recommend_way;
            }
            int baiduMapVersion = OpenClientUtil.getBaiduMapVersion(context);
            if (baiduMapVersion == 0) {
                Log.e("baidumapsdk", "BaiduMap app is not installed.");
                if (f4660a) {
                    m6423a(routeParaOption, context, 1);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("BaiduMap app is not installed.");
            } else if (baiduMapVersion >= 810) {
                C0588c.m6393a(routeParaOption, context, 1);
            } else {
                Log.e("baidumapsdk", "Baidumap app version is too lowl.Version is greater than 8.1");
                if (f4660a) {
                    m6423a(routeParaOption, context, 1);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("Baidumap app version is too lowl.Version is greater than 8.1");
            }
        }
    }

    public static void openBaiduMapWalkingRout(RouteParaOption routeParaOption, Context context) {
        if (routeParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (routeParaOption.f4663b == null && routeParaOption.f4662a == null && routeParaOption.f4665d == null && routeParaOption.f4664c == null) {
            throw new IllegalNaviArgumentException("startPoint and endPoint and endName and startName not all null.");
        } else if (routeParaOption.f4664c == null && routeParaOption.f4662a == null) {
            throw new IllegalNaviArgumentException("startPoint and startName not all null.");
        } else if (routeParaOption.f4665d == null && routeParaOption.f4663b == null) {
            throw new IllegalNaviArgumentException("endPoint and endName not all null.");
        } else if (((routeParaOption.f4664c == null || routeParaOption.f4664c.equals("")) && routeParaOption.f4662a == null) || ((routeParaOption.f4665d == null || routeParaOption.f4665d.equals("")) && routeParaOption.f4663b == null)) {
            Log.e(BaiduMapRoutePlan.class.getName(), "poi startName or endName can not be empty string while pt is null");
        } else {
            if (routeParaOption.f4667f == null) {
                routeParaOption.f4667f = EBusStrategyType.bus_recommend_way;
            }
            int baiduMapVersion = OpenClientUtil.getBaiduMapVersion(context);
            if (baiduMapVersion == 0) {
                Log.e("baidumapsdk", "BaiduMap app is not installed.");
                if (f4660a) {
                    m6423a(routeParaOption, context, 2);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("BaiduMap app is not installed.");
            } else if (baiduMapVersion >= 810) {
                C0588c.m6393a(routeParaOption, context, 2);
            } else {
                Log.e("baidumapsdk", "Baidumap app version is too lowl.Version is greater than 8.1");
                if (f4660a) {
                    m6423a(routeParaOption, context, 2);
                    return;
                }
                throw new IllegalPoiSearchArgumentException("Baidumap app version is too lowl.Version is greater than 8.1");
            }
        }
    }

    public static void setSupportWebRoute(boolean z) {
        f4660a = z;
    }
}
