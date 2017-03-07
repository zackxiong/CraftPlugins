package com.baidu.mapapi.navi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.utils.poi.IllegalPoiSearchArgumentException;
import com.baidu.platform.comapi.p086a.C0596b;
import java.net.URISyntaxException;

public class BaiduMapNavigation {
    private static int m6363a(Context context) {
        int i = 0;
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo("com.baidu.BaiduMap", 0).versionName;
            if (str != null && str.length() > 0) {
                i = Integer.valueOf(str.trim().replace(".", "").trim()).intValue();
            }
        } catch (Exception e) {
        }
        return i;
    }

    private static String m6364a(NaviParaOption naviParaOption) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("intent://map/direction?");
        stringBuffer.append("origin=");
        if (naviParaOption.f4528b != null) {
            stringBuffer.append("name:" + naviParaOption.f4528b + "|");
        }
        stringBuffer.append(String.format("latlng:%f,%f", new Object[]{Double.valueOf(naviParaOption.f4527a.latitude), Double.valueOf(naviParaOption.f4527a.longitude)}));
        stringBuffer.append("&destination=");
        if (naviParaOption.f4530d != null) {
            stringBuffer.append("name:" + naviParaOption.f4530d + "|");
        }
        stringBuffer.append(String.format("latlng:%f,%f", new Object[]{Double.valueOf(naviParaOption.f4529c.latitude), Double.valueOf(naviParaOption.f4529c.longitude)}));
        stringBuffer.append("&coord_type=bd09ll");
        stringBuffer.append("&mode=navigation");
        stringBuffer.append("#Intent;scheme=bdapp;");
        stringBuffer.append("package=com.baidu.BaiduMap;");
        stringBuffer.append("end");
        return stringBuffer.toString();
    }

    private static String m6365b(Context context) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = context.getApplicationContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            } catch (NameNotFoundException e) {
            }
        } catch (NameNotFoundException e2) {
            Object obj = applicationInfo;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    public static void openBaiduMapNavi(NaviParaOption naviParaOption, Context context) {
        if (naviParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (naviParaOption.f4529c == null || naviParaOption.f4527a == null) {
            throw new IllegalNaviArgumentException("start point or end point can not be null.");
        } else {
            int a = m6363a(context);
            if (a == 0) {
                throw new BaiduMapAppNotSupportNaviException("BaiduMap app is not installed");
            } else if (a < 500) {
                throw new BaiduMapAppNotSupportNaviException("current baidumap app version not support navigation.Version is greater than 5.0");
            } else {
                try {
                    Intent parseUri = Intent.parseUri(m6364a(naviParaOption), 0);
                    parseUri.setFlags(268435456);
                    context.startActivity(parseUri);
                } catch (URISyntaxException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void openWebBaiduMapNavi(NaviParaOption naviParaOption, Context context) {
        if (naviParaOption == null || context == null) {
            throw new IllegalPoiSearchArgumentException("para or context can not be null.");
        } else if (naviParaOption.f4527a != null && naviParaOption.f4529c != null) {
            C0596b a = C0579a.m6359a(naviParaOption.f4527a);
            C0596b a2 = C0579a.m6359a(naviParaOption.f4529c);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("http://daohang.map.baidu.com/mobile/#navi/naving/start=");
            stringBuilder.append(a.m6426b());
            stringBuilder.append(",");
            stringBuilder.append(a.m6424a());
            stringBuilder.append("&endp=");
            stringBuilder.append(a2.m6426b());
            stringBuilder.append(",");
            stringBuilder.append(a2.m6424a());
            stringBuilder.append("&fromprod=");
            stringBuilder.append(m6365b(context));
            stringBuilder.append("/vt=map&state=entry");
            r0 = Uri.parse(stringBuilder.toString());
            r1 = new Intent();
            r1.setAction("android.intent.action.VIEW");
            r1.setFlags(268435456);
            r1.setData(r0);
            context.startActivity(r1);
        } else if (naviParaOption.f4528b == null || naviParaOption.f4528b.equals("") || naviParaOption.f4530d == null || naviParaOption.f4530d.equals("")) {
            throw new IllegalNaviArgumentException("you must set start and end point or set the start and end name.");
        } else {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("http://daohang.map.baidu.com/mobile/#search/search/qt=nav&sn=2$$$$$$");
            stringBuilder2.append(naviParaOption.f4528b);
            stringBuilder2.append("$$$$$$&en=2$$$$$$");
            stringBuilder2.append(naviParaOption.f4530d);
            stringBuilder2.append("$$$$$$&fromprod=");
            stringBuilder2.append(m6365b(context));
            r0 = Uri.parse(stringBuilder2.toString());
            r1 = new Intent();
            r1.setAction("android.intent.action.VIEW");
            r1.setData(r0);
            context.startActivity(r1);
        }
    }
}
