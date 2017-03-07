package com.yf.smart.weloopx.p145g;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.location.BDLocation;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.utils.DistanceUtil;
import com.yf.smart.weloopx.data.models.LocationModel;
import com.yf.smart.weloopx.data.models.TrajectoryModel;
import com.yf.smart.weloopx.data.models.TrajectoryResponse;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.yf.smart.weloopx.g.j */
public class ProGuard {
    public static boolean f8961a;
    public static int f8962b;
    public static int f8963c;
    private String f8964d;
    private int f8965e;
    private int f8966f;
    private double f8967g;
    private double f8968h;
    private com.yf.smart.weloopx.data.ProGuard f8969i;
    private long f8970j;

    static {
        f8961a = true;
        f8962b = 10000;
        f8963c = 10000000;
    }

    public ProGuard(Context context) {
        this.f8964d = "TrajectoryUtil";
        this.f8965e = 1;
        this.f8966f = 10;
        this.f8967g = 0.0d;
        this.f8968h = 0.0d;
        this.f8970j = 31536000;
        this.f8969i = new com.yf.smart.weloopx.data.ProGuard(context);
    }

    public void m11360a(TrajectoryResponse trajectoryResponse) {
        List<TrajectoryModel> days = trajectoryResponse.getDays();
        if (days != null) {
            for (TrajectoryModel a : days) {
                m11353a(a);
            }
        }
    }

    public static boolean m11354a(double d) {
        return Math.abs(d / ((double) f8962b)) > 180.0d;
    }

    private void m11353a(TrajectoryModel trajectoryModel) {
        Object data = trajectoryModel.getData();
        if (!TextUtils.isEmpty(data)) {
            String[] split = data.split(",");
            List arrayList = new ArrayList();
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    LocationModel a = m11357a(str, trajectoryModel.getHappenDate());
                    if (!(TextUtils.isEmpty(a.getLOCATION_LOCATION_INFO()) || TextUtils.isEmpty(a.getLOCATION_TIME()))) {
                        arrayList.add(a);
                    }
                }
            }
            this.f8969i.m11087a(arrayList);
        }
    }

    public LocationModel m11357a(String str, String str2) {
        return LocationModel.decode(str, str2);
    }

    public String m11358a(double d, double d2, double d3, float f, float f2) {
        return LocationModel.encodeLocationInfo((int) com.yf.gattlib.p117p.ProGuard.m8240g(), d, d2, d3, f, f2);
    }

    public void m11359a(Context context, BDLocation bDLocation, boolean z, int i) {
        String b = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b();
        if (TextUtils.isEmpty(b)) {
            b = "";
        }
        String f = com.yf.gattlib.p117p.ProGuard.m8239f();
        double latitude = bDLocation.getLatitude();
        double longitude = bDLocation.getLongitude();
        double altitude = bDLocation.getAltitude();
        float direction = bDLocation.getDirection();
        float speed = bDLocation.getSpeed();
        float radius = bDLocation.getRadius();
        " \u767e\u5ea6\u5b9a\u4f4d\u7684location: time = " + f + ",latitude=" + latitude + ",longitude=" + longitude + ", sumStep = " + i + ", Is runingmode ?  = " + z;
        String str = " time = " + bDLocation.getTime() + " " + latitude + " " + longitude;
        if (m11362a(bDLocation)) {
            Object obj;
            String str2 = " isRunningMode = ";
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + r17 + z);
            if (z) {
                boolean b2 = m11355b(latitude, longitude);
                if (bDLocation.getRadius() > 80.0f || !b2) {
                    b = " \u5b9a\u4f4d\u7cbe\u5ea6 = " + bDLocation.getRadius() + " \u662f\u5426\u6709\u6548\u70b9: " + b2;
                    this.f8965e++;
                    com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + b);
                    return;
                }
                this.f8965e = 1;
                if (m11356c(latitude, longitude)) {
                    com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + " \u76f8\u540c\u7684GPS\u70b9...");
                    return;
                }
                this.f8967g = latitude;
                this.f8968h = longitude;
                obj = str;
            } else {
                this.f8967g = 0.0d;
                this.f8968h = 0.0d;
                this.f8965e = 1;
                String str3 = " \u4e0d\u662f\u8dd1\u6b65\u6a21\u5f0f";
            }
            ProGuard a = ProGuard.m11339a(latitude, longitude);
            latitude = a.m11335a();
            latitude *= (double) f8963c;
            longitude = a.m11337b() * ((double) f8963c);
            altitude *= (double) f8962b;
            direction *= (float) f8962b;
            speed *= (float) f8962b;
            LocationModel locationModel = new LocationModel();
            locationModel.setLOCATION_DEVICE_ID(com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10728g());
            locationModel.setLOCATION_USER_ID(b);
            locationModel.setLOCATION_DIRECTION(String.valueOf(direction));
            locationModel.setLOCATION_TIME(f);
            locationModel.setLOCATION_ALTITUTE(String.valueOf(altitude));
            locationModel.setLOCATION_DATE(com.yf.gattlib.p117p.ProGuard.m8238e());
            locationModel.setLOCATION_IS_SUBMIT("0");
            locationModel.setLOCATION_LAT(String.valueOf(latitude));
            locationModel.setLOCATION_LON(String.valueOf(longitude));
            locationModel.setLOCATION_SPEED(String.valueOf((int) speed));
            locationModel.setLOCATION_RADIUS(String.valueOf((int) radius));
            Object a2 = m11358a(latitude, longitude, altitude, direction, speed);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + " \u4fdd\u5b58\u7684\u65f6\u5019\u7ec4\u88c5\u7684\u4f4d\u7f6e\u4fe1\u606f =  " + a2);
            if (TextUtils.isEmpty(a2)) {
                a2 = " locationInfo \u4e3a\u7a7a...";
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + a2);
                com.yf.gattlib.p117p.ProGuard.m8245a(a2);
                return;
            }
            locationModel.setLOCATION_LOCATION_INFO(a2);
            this.f8969i.m11086a(locationModel);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8964d + " " + obj);
            com.yf.gattlib.p117p.ProGuard.m8245a(obj);
        }
    }

    private boolean m11355b(double d, double d2) {
        if (!m11361a(d, d2)) {
            return false;
        }
        if (!m11361a(this.f8967g, this.f8968h) || this.f8965e >= 5 || DistanceUtil.getDistance(new LatLng(d, d2), new LatLng(this.f8967g, this.f8968h)) <= ((double) (this.f8966f * this.f8965e))) {
            return true;
        }
        return false;
    }

    private boolean m11356c(double d, double d2) {
        return Math.abs(this.f8967g - d) < 1.0E-4d && Math.abs(this.f8968h - d2) < 1.0E-4d;
    }

    public boolean m11362a(BDLocation bDLocation) {
        return bDLocation != null && m11361a(bDLocation.getLatitude(), bDLocation.getLongitude());
    }

    public boolean m11361a(double d, double d2) {
        return d > 0.0d && d != Double.MIN_VALUE && d2 > 0.0d && d2 != Double.MIN_VALUE;
    }
}
