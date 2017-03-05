package com.baidu.mapapi.utils;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.util.Log;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.utils.poi.PoiParaOption;
import com.baidu.mapapi.utils.route.BaiduMapRoutePlan;
import com.baidu.mapapi.utils.route.RouteParaOption;
import com.baidu.mapapi.utils.route.RouteParaOption.EBusStrategyType;
import com.baidu.p059a.p060a.p061a.C0151a;
import com.baidu.p059a.p060a.p061a.C0154b;
import com.baidu.platform.comjni.tools.C0647a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.mapapi.utils.c */
public class C0588c {
    public static int f4623a;
    static ServiceConnection f4624b;
    private static final String f4625c;
    private static C0154b f4626d;
    private static C0151a f4627e;
    private static int f4628f;
    private static String f4629g;
    private static LatLng f4630h;
    private static LatLng f4631i;
    private static String f4632j;
    private static String f4633k;
    private static EBusStrategyType f4634l;
    private static String f4635m;
    private static String f4636n;
    private static LatLng f4637o;
    private static int f4638p;
    private static boolean f4639q;
    private static boolean f4640r;

    static {
        f4625c = BaiduMapRoutePlan.class.getName();
        f4623a = -1;
        f4629g = null;
        f4630h = null;
        f4631i = null;
        f4632j = null;
        f4633k = null;
        f4635m = null;
        f4636n = null;
        f4637o = null;
        f4638p = 0;
        f4639q = false;
        f4640r = false;
        f4624b = new C0590e();
    }

    public static String m6388a() {
        return C0647a.m6682a();
    }

    public static void m6389a(int i) {
        switch (i) {
            case ProGuard.styleable.View_android_theme /*0*/:
            case ProGuard.styleable.View_android_focusable /*1*/:
            case ProGuard.styleable.View_paddingStart /*2*/:
                C0588c.m6402f();
            case ProGuard.styleable.View_paddingEnd /*3*/:
                C0588c.m6403g();
            case ProGuard.styleable.View_theme /*4*/:
                C0588c.m6404h();
            default:
        }
    }

    public static void m6390a(Context context) {
        if (f4640r) {
            context.unbindService(f4624b);
            f4640r = false;
        }
    }

    public static void m6391a(Context context, int i) {
        try {
            f4639q = false;
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    f4623a = 0;
                    break;
                case ProGuard.styleable.View_android_focusable /*1*/:
                    f4623a = 1;
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    f4623a = 2;
                    break;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    f4623a = 3;
                    break;
                case ProGuard.styleable.View_theme /*4*/:
                    f4623a = 4;
                    break;
            }
            if (f4626d == null) {
                C0588c.m6396b(context);
            } else if (f4627e != null) {
                C0588c.m6389a(i);
                f4639q = true;
            } else {
                f4626d.m4137a(new C0589d(i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void m6392a(PoiParaOption poiParaOption, Context context, int i) {
        C0588c.m6397b(poiParaOption, context, i);
        C0588c.m6391a(context, i);
    }

    public static void m6393a(RouteParaOption routeParaOption, Context context, int i) {
        C0588c.m6398b(routeParaOption, context, i);
        C0588c.m6391a(context, i);
    }

    private static void m6396b(Context context) {
        Intent intent = new Intent();
        String a = C0588c.m6388a();
        if (a != null) {
            intent.putExtra("api_token", a);
            intent.setAction("com.baidu.map.action.OPEN_SERVICE");
            intent.setPackage("com.baidu.BaiduMap");
            f4640r = context.bindService(intent, f4624b, 1);
        }
    }

    private static void m6397b(PoiParaOption poiParaOption, Context context, int i) {
        f4629g = context.getPackageName();
        if (poiParaOption.getUid() != null) {
            f4635m = poiParaOption.getUid();
        }
        if (poiParaOption.getKey() != null) {
            f4636n = poiParaOption.getKey();
        }
        if (poiParaOption.getCenter() != null) {
            f4637o = poiParaOption.getCenter();
        }
        if (poiParaOption.getRadius() != 0) {
            f4638p = poiParaOption.getRadius();
        }
    }

    private static void m6398b(RouteParaOption routeParaOption, Context context, int i) {
        f4629g = context.getPackageName();
        if (routeParaOption.getStartPoint() != null) {
            f4630h = routeParaOption.getStartPoint();
        }
        if (routeParaOption.getEndPoint() != null) {
            f4631i = routeParaOption.getEndPoint();
        }
        if (routeParaOption.getStartName() != null) {
            f4632j = routeParaOption.getStartName();
        }
        if (routeParaOption.getEndName() != null) {
            f4633k = routeParaOption.getEndName();
        }
        if (routeParaOption.getBusStrategyType() != null) {
            f4634l = routeParaOption.getBusStrategyType();
        }
        switch (i) {
            case ProGuard.styleable.View_android_theme /*0*/:
                f4628f = 0;
            case ProGuard.styleable.View_android_focusable /*1*/:
                f4628f = 1;
            case ProGuard.styleable.View_paddingStart /*2*/:
                f4628f = 2;
            default:
        }
    }

    private static void m6402f() {
        try {
            Log.d(f4625c, "callDispatchTakeOutRoute");
            String a = f4627e.m4132a("map.android.baidu.mainmap");
            if (a != null) {
                Bundle bundle = new Bundle();
                bundle.putString("target", "route_search_page");
                Bundle bundle2 = new Bundle();
                bundle2.putInt("route_type", f4628f);
                bundle2.putInt("bus_strategy", f4634l.ordinal());
                bundle2.putInt("cross_city_bus_strategy", 5);
                if (f4630h != null) {
                    bundle2.putInt("start_type", 1);
                    bundle2.putInt("start_longitude", C0579a.m6359a(f4630h).m6426b());
                    bundle2.putInt("start_latitude", C0579a.m6359a(f4630h).m6424a());
                } else {
                    bundle2.putInt("start_type", 2);
                    bundle2.putInt("start_longitude", 0);
                    bundle2.putInt("start_latitude", 0);
                }
                if (f4632j != null) {
                    bundle2.putString("start_keyword", f4632j);
                } else {
                    bundle2.putString("start_keyword", "\u5730\u56fe\u4e0a\u7684\u70b9");
                }
                bundle2.putString("start_uid", "");
                if (f4631i != null) {
                    bundle2.putInt("end_type", 1);
                    bundle2.putInt("end_longitude", C0579a.m6359a(f4631i).m6426b());
                    bundle2.putInt("end_latitude", C0579a.m6359a(f4631i).m6424a());
                } else {
                    bundle2.putInt("end_type", 2);
                    bundle2.putInt("end_longitude", 0);
                    bundle2.putInt("end_latitude", 0);
                }
                if (f4633k != null) {
                    bundle2.putString("end_keyword", f4633k);
                } else {
                    bundle2.putString("end_keyword", "\u5730\u56fe\u4e0a\u7684\u70b9");
                }
                bundle2.putString("end_uid", "");
                bundle.putBundle("base_params", bundle2);
                bundle2 = new Bundle();
                bundle2.putString("launch_from", "sdk_[" + f4629g + "]");
                bundle.putBundle("ext_params", bundle2);
                f4627e.m4133a("map.android.baidu.mainmap", a, bundle);
                return;
            }
            Log.d(f4625c, "callDispatchTakeOut com not found");
        } catch (Throwable e) {
            Log.d(f4625c, "callDispatchTakeOut exception", e);
        }
    }

    private static void m6403g() {
        try {
            Log.d(f4625c, "callDispatchTakeOutPoiDetials");
            String a = f4627e.m4132a("map.android.baidu.mainmap");
            if (a != null) {
                Bundle bundle = new Bundle();
                bundle.putString("target", "request_poi_detail_page");
                Bundle bundle2 = new Bundle();
                if (f4635m != null) {
                    bundle2.putString("uid", f4635m);
                } else {
                    bundle2.putString("uid", "");
                }
                bundle.putBundle("base_params", bundle2);
                bundle2 = new Bundle();
                bundle2.putString("launch_from", "sdk_[" + f4629g + "]");
                bundle.putBundle("ext_params", bundle2);
                f4627e.m4133a("map.android.baidu.mainmap", a, bundle);
                return;
            }
            Log.d(f4625c, "callDispatchTakeOut com not found");
        } catch (Throwable e) {
            Log.d(f4625c, "callDispatchTakeOut exception", e);
        }
    }

    private static void m6404h() {
        try {
            Log.d(f4625c, "callDispatchTakeOutPoiNearbySearch");
            String a = f4627e.m4132a("map.android.baidu.mainmap");
            if (a != null) {
                Bundle bundle = new Bundle();
                bundle.putString("target", "poi_search_page");
                Bundle bundle2 = new Bundle();
                if (f4636n != null) {
                    bundle2.putString("search_key", f4636n);
                } else {
                    bundle2.putString("search_key", "");
                }
                if (f4637o != null) {
                    bundle2.putInt("center_pt_x", C0579a.m6359a(f4637o).m6426b());
                    bundle2.putInt("center_pt_y", C0579a.m6359a(f4637o).m6424a());
                } else {
                    bundle2.putString("search_key", "");
                }
                if (f4638p != 0) {
                    bundle2.putInt("search_radius", f4638p);
                } else {
                    bundle2.putInt("search_radius", LocationClientOption.MIN_SCAN_SPAN);
                }
                bundle2.putBoolean("is_direct_search", true);
                bundle2.putBoolean("is_direct_area_search", true);
                bundle.putBundle("base_params", bundle2);
                bundle2 = new Bundle();
                bundle2.putString("launch_from", "sdk_[" + f4629g + "]");
                bundle.putBundle("ext_params", bundle2);
                f4627e.m4133a("map.android.baidu.mainmap", a, bundle);
                return;
            }
            Log.d(f4625c, "callDispatchTakeOut com not found");
        } catch (Throwable e) {
            Log.d(f4625c, "callDispatchTakeOut exception", e);
        }
    }
}
