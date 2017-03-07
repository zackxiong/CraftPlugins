package com.baidu.mapapi.model;

import android.os.Bundle;
import com.baidu.location.BDGeofence;
import com.baidu.platform.comapi.p086a.C0595a;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comapi.p086a.C0597c;
import com.baidu.platform.comjni.tools.C0647a;
import com.baidu.platform.comjni.tools.JNITools;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.baidu.mapapi.model.a */
public class C0579a {
    static Bundle f4522a;
    static double[] f4523b;
    static double[] f4524c;
    static double[][] f4525d;
    static double[][] f4526e;

    /* renamed from: com.baidu.mapapi.model.a.a */
    static class C0578a {
        double f4520a;
        double f4521b;

        C0578a() {
        }
    }

    static {
        f4522a = new Bundle();
        f4523b = new double[]{1.289059486E7d, 8362377.87d, 5591021.0d, 3481989.83d, 1678043.12d, 0.0d};
        f4524c = new double[]{7.5E7d, 6.0E7d, 4.5E7d, 3.0E7d, 1.5E7d, 0.0d};
        f4525d = new double[][]{new double[]{1.410526172116255E-8d, 8.98305509648872E-6d, -1.9939833816331d, 200.9824383106796d, -187.2403703815547d, 91.6087516669843d, -23.38765649603339d, 2.57121317296198d, -0.03801003308653d, 1.73379812E7d}, new double[]{-7.435856389565537E-9d, 8.983055097726239E-6d, -0.78625201886289d, 96.32687599759846d, -1.85204757529826d, -59.36935905485877d, 47.40033549296737d, -16.50741931063887d, 2.28786674699375d, 1.026014486E7d}, new double[]{-3.030883460898826E-8d, 8.98305509983578E-6d, 0.30071316287616d, 59.74293618442277d, 7.357984074871d, -25.38371002664745d, 13.45380521110908d, -3.29883767235584d, 0.32710905363475d, 6856817.37d}, new double[]{-1.981981304930552E-8d, 8.983055099779535E-6d, 0.03278182852591d, 40.31678527705744d, 0.65659298677277d, -4.44255534477492d, 0.85341911805263d, 0.12923347998204d, -0.04625736007561d, 4482777.06d}, new double[]{3.09191371068437E-9d, 8.983055096812155E-6d, 6.995724062E-5d, 23.10934304144901d, -2.3663490511E-4d, -0.6321817810242d, -0.00663494467273d, 0.03430082397953d, -0.00466043876332d, 2555164.4d}, new double[]{2.890871144776878E-9d, 8.983055095805407E-6d, -3.068298E-8d, 7.47137025468032d, -3.53937994E-6d, -0.02145144861037d, -1.234426596E-5d, 1.0322952773E-4d, -3.23890364E-6d, 826088.5d}};
        f4526e = new double[][]{new double[]{-0.0015702102444d, 111320.7020616939d, 1.704480524535203E15d, -1.033898737604234E16d, 2.611266785660388E16d, -3.51496691766537E16d, 2.659570071840392E16d, -1.072501245418824E16d, 1.800819912950474E15d, 82.5d}, new double[]{8.277824516172526E-4d, 111320.7020463578d, 6.477955746671607E8d, -4.082003173641316E9d, 1.077490566351142E10d, -1.517187553151559E10d, 1.205306533862167E10d, -5.124939663577472E9d, 9.133119359512032E8d, 67.5d}, new double[]{0.00337398766765d, 111320.7020202162d, 4481351.045890365d, -2.339375119931662E7d, 7.968221547186455E7d, -1.159649932797253E8d, 9.723671115602145E7d, -4.366194633752821E7d, 8477230.501135234d, 52.5d}, new double[]{0.00220636496208d, 111320.7020209128d, 51751.86112841131d, 3796837.749470245d, 992013.7397791013d, -1221952.21711287d, 1340652.697009075d, -620943.6990984312d, 144416.9293806241d, 37.5d}, new double[]{-3.441963504368392E-4d, 111320.7020576856d, 278.2353980772752d, 2485758.690035394d, 6070.750963243378d, 54821.18345352118d, 9540.606633304236d, -2710.55326746645d, 1405.483844121726d, 22.5d}, new double[]{-3.218135878613132E-4d, 111320.7020701615d, 0.00369383431289d, 823725.6402795718d, 0.46104986909093d, 2351.343141331292d, 1.58060784298199d, 8.77738589078284d, 0.37238884252424d, 7.45d}};
    }

    public static int m6355a(LatLng latLng, int i) {
        LatLng latLng2 = new LatLng((((double) i) / 111000.0d) + latLng.latitude, latLng.longitude);
        C0596b a = C0579a.m6359a(latLng);
        C0596b a2 = C0579a.m6359a(latLng2);
        return (int) Math.sqrt(Math.pow((double) (a.m6426b() - a2.m6426b()), 2.0d) + Math.pow((double) (a.m6424a() - a2.m6424a()), 2.0d));
    }

    public static LatLng m6356a(C0596b c0596b) {
        C0578a c0578a = new C0578a();
        c0578a.f4520a = (double) c0596b.m6426b();
        c0578a.f4521b = (double) c0596b.m6424a();
        C0578a c0578a2 = new C0578a();
        c0578a2.f4520a = c0578a.f4520a;
        if (c0578a2.f4520a > 2.0037508342E7d) {
            c0578a2.f4520a = 2.0037508342E7d;
        } else if (c0578a2.f4520a < -2.0037508342E7d) {
            c0578a2.f4520a = -2.0037508342E7d;
        }
        c0578a2.f4521b = c0578a.f4521b;
        if (c0578a2.f4521b < 1.0E-6d && c0578a2.f4521b >= 0.0d) {
            c0578a2.f4521b = 1.0E-6d;
        } else if (c0578a2.f4521b < 0.0d && c0578a2.f4521b > -1.0E-6d) {
            c0578a2.f4521b = -1.0E-6d;
        } else if (c0578a2.f4521b > 2.0037508342E7d) {
            c0578a2.f4521b = 2.0037508342E7d;
        } else if (c0578a2.f4521b < -2.0037508342E7d) {
            c0578a2.f4521b = -2.0037508342E7d;
        }
        double[] dArr = null;
        for (int i = 0; i < 6; i++) {
            if (Math.abs(c0578a2.f4521b) > f4523b[i]) {
                dArr = f4525d[i];
                break;
            }
        }
        c0578a = C0579a.m6358a(c0578a2, dArr);
        return new LatLng(c0578a.f4521b, c0578a.f4520a);
    }

    public static LatLng m6357a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        f4522a.clear();
        f4522a.putString("strkey", str);
        JNITools.TransNodeStr2Pt(f4522a);
        return C0579a.m6356a(new C0596b((int) f4522a.getDouble("pty"), (int) f4522a.getDouble("ptx")));
    }

    static C0578a m6358a(C0578a c0578a, double[] dArr) {
        int i = -1;
        C0578a c0578a2 = new C0578a();
        c0578a2.f4520a = dArr[0] + (dArr[1] * Math.abs(c0578a.f4520a));
        double abs = Math.abs(c0578a.f4521b) / dArr[9];
        c0578a2.f4521b = (abs * (((((dArr[8] * abs) * abs) * abs) * abs) * abs)) + (((((dArr[2] + (dArr[3] * abs)) + ((dArr[4] * abs) * abs)) + (((dArr[5] * abs) * abs) * abs)) + ((((dArr[6] * abs) * abs) * abs) * abs)) + (((((dArr[7] * abs) * abs) * abs) * abs) * abs));
        c0578a2.f4520a *= (double) (c0578a.f4520a < 0.0d ? -1 : 1);
        abs = c0578a2.f4521b;
        if (c0578a.f4521b >= 0.0d) {
            i = 1;
        }
        c0578a2.f4521b = ((double) i) * abs;
        return c0578a2;
    }

    public static C0596b m6359a(LatLng latLng) {
        double[] dArr;
        C0578a c0578a = new C0578a();
        c0578a.f4521b = Math.abs(latLng.latitude * 1000000.0d);
        if (c0578a.f4521b < 0.1d) {
            c0578a.f4521b = 0.1d;
        }
        for (int i = 0; i < f4524c.length; i++) {
            if (c0578a.f4521b > f4524c[i]) {
                dArr = f4526e[i];
                break;
            }
        }
        dArr = null;
        c0578a.f4520a = latLng.longitude;
        c0578a.f4521b = latLng.latitude;
        C0578a a = C0579a.m6358a(c0578a, dArr);
        return new C0596b((int) a.f4521b, (int) a.f4520a);
    }

    public static C0597c m6360a(float f, float f2, String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("")) {
            str = BDGeofence.COORD_TYPE_BD09LL;
        }
        if (!str.equals(BDGeofence.COORD_TYPE_BD09LL) && !str.equals("bd09mc") && !str.equals(BDGeofence.COORD_TYPE_GCJ) && !str.equals("wgs84")) {
            return null;
        }
        if (str.equals("bd09mc")) {
            return new C0597c((int) f, (int) f2);
        }
        Bundle bundle = new Bundle();
        JNITools.CoordinateEncryptEx(f, f2, str, bundle);
        if (bundle.isEmpty()) {
            return null;
        }
        C0597c c0597c = new C0597c(0, 0);
        c0597c.m6429a((int) bundle.getDouble("x"));
        c0597c.m6431b((int) bundle.getDouble("y"));
        return c0597c;
    }

    public static C0597c m6361b(LatLng latLng) {
        return latLng == null ? null : C0579a.m6360a((float) latLng.longitude, (float) latLng.latitude, BDGeofence.COORD_TYPE_BD09LL);
    }

    public static List<LatLng> m6362b(String str) {
        C0595a a = C0647a.m6681a(str);
        List<LatLng> arrayList = new ArrayList();
        if (a == null || a.f4671d == null) {
            return null;
        }
        ArrayList arrayList2 = a.f4671d;
        if (arrayList2.size() > 0) {
            arrayList2 = (ArrayList) arrayList2.get(0);
            for (int i = 0; i < arrayList2.size(); i++) {
                C0597c c0597c = (C0597c) arrayList2.get(i);
                arrayList.add(C0579a.m6356a(new C0596b(c0597c.f4675b / 100, c0597c.f4674a / 100)));
            }
        }
        return arrayList;
    }
}
