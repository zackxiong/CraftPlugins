package com.baidu.location;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.GpsStatus.NmeaListener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.baidu.location.aj.C0502a;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import uk.co.chrisjenx.calligraphy.ProGuard;

class ao implements C0452e {
    private static ao f4034Y;
    private static StringBuilder aB;
    private static String aC;
    private static final byte[] aG;
    private static int ag;
    private static String ap;
    private static String aq;
    private static File ar;
    private Context f4035Z;
    private final long f4036a;
    private long aA;
    private int aD;
    private int aE;
    private HashMap aF;
    private LocationManager aa;
    private Location ab;
    private C0507b ac;
    private C0508c ad;
    private GpsStatus ae;
    private C0506a af;
    private long ah;
    private long ai;
    private boolean aj;
    private boolean ak;
    private String al;
    private boolean am;
    private long an;
    private long ao;
    private Handler as;
    private final int at;
    private final int au;
    private final int av;
    private final int aw;
    private Location ax;
    private Location ay;
    private long az;

    /* renamed from: com.baidu.location.ao.a */
    private class C0506a implements Listener, NmeaListener {
        long f4021a;
        final /* synthetic */ ao f4022b;
        private long f4023c;
        private final int f4024d;
        private boolean f4025e;
        private boolean f4026f;
        private List f4027g;
        private String f4028h;
        private String f4029i;
        private String f4030j;

        private C0506a(ao aoVar) {
            this.f4022b = aoVar;
            this.f4021a = 0;
            this.f4023c = 0;
            this.f4024d = 400;
            this.f4025e = true;
            this.f4026f = false;
            this.f4027g = new ArrayList();
            this.f4028h = null;
            this.f4029i = null;
            this.f4030j = null;
        }

        public void m5898a(String str) {
            if (System.currentTimeMillis() - this.f4023c > 400 && this.f4026f && this.f4027g.size() > 0) {
                try {
                    C0455F c0455f = new C0455F(this.f4027g, this.f4028h, this.f4029i, this.f4030j);
                    if (c0455f.cG()) {
                        C0465K.ar = this.f4022b.m5900a(c0455f, this.f4022b.aE);
                        if (C0465K.ar > 0) {
                            ao.ap = String.format(Locale.CHINA, "&nmea=%.1f|%.1f&g_tp=%d", new Object[]{Double.valueOf(c0455f.cE()), Double.valueOf(c0455f.cH()), Integer.valueOf(C0465K.ar)});
                        }
                    } else {
                        C0465K.ar = 0;
                    }
                } catch (Exception e) {
                    C0465K.ar = 0;
                }
                this.f4027g.clear();
                this.f4030j = null;
                this.f4029i = null;
                this.f4028h = null;
                this.f4026f = false;
            }
            if (str.startsWith("$GPGGA")) {
                this.f4026f = true;
                this.f4028h = str.trim();
            } else if (str.startsWith("$GPGSV")) {
                this.f4027g.add(str.trim());
            } else if (str.startsWith("$GPGSA")) {
                this.f4030j = str.trim();
            }
            this.f4023c = System.currentTimeMillis();
        }

        public void onGpsStatusChanged(int i) {
            int i2 = 0;
            try {
                if (this.f4022b.aa != null) {
                    switch (i) {
                        case ProGuard.styleable.View_paddingStart /*2*/:
                            this.f4022b.m5914a(null);
                            this.f4022b.m5919a(false);
                            ao.ag = 0;
                        case ProGuard.styleable.View_theme /*4*/:
                            if (this.f4022b.ak || System.currentTimeMillis() - this.f4021a >= 10000) {
                                if (this.f4022b.ae == null) {
                                    this.f4022b.ae = this.f4022b.aa.getGpsStatus(null);
                                } else {
                                    this.f4022b.aa.getGpsStatus(this.f4022b.ae);
                                }
                                ao.aB = new StringBuilder();
                                this.f4022b.aD = 0;
                                this.f4022b.aE = 0;
                                this.f4022b.aF = new HashMap();
                                int i3 = 0;
                                int i4 = 0;
                                for (GpsSatellite gpsSatellite : this.f4022b.ae.getSatellites()) {
                                    i3++;
                                    if (gpsSatellite.usedInFix()) {
                                        i4++;
                                        if (gpsSatellite.getSnr() > 0.0f) {
                                            i2++;
                                        }
                                        if (gpsSatellite.getSnr() >= ((float) C0465K.aa)) {
                                            this.f4022b.aE = this.f4022b.aE + 1;
                                        }
                                        ao.aB.append(this.f4022b.m5907a(gpsSatellite, this.f4022b.aF));
                                    }
                                }
                                ao.ag = i2;
                                this.f4022b.m5903a(this.f4022b.aF);
                                if (!this.f4022b.ak && System.currentTimeMillis() - this.f4022b.ao >= 60000) {
                                    if (i4 > 3 || i3 > 15) {
                                        Location lastKnownLocation = this.f4022b.aa.getLastKnownLocation("gps");
                                        if (lastKnownLocation != null) {
                                            this.f4021a = System.currentTimeMillis();
                                            long currentTimeMillis = (System.currentTimeMillis() + C0475Q.m5711h().bs) - lastKnownLocation.getTime();
                                            if (currentTimeMillis < 3500 && currentTimeMillis > -200 && C0491Z.m5800if(lastKnownLocation, false)) {
                                                this.f4022b.as.sendMessage(this.f4022b.as.obtainMessage(3, lastKnownLocation));
                                            }
                                        }
                                    }
                                }
                            }
                        default:
                    }
                }
            } catch (Exception e) {
            }
        }

        public void onNmeaReceived(long j, String str) {
            if (!this.f4022b.ak) {
                return;
            }
            if (!C0526k.gq) {
                C0465K.ar = 0;
            } else if (str != null && !str.equals("") && str.length() >= 9 && str.length() <= 150 && this.f4022b.a2()) {
                this.f4022b.as.sendMessage(this.f4022b.as.obtainMessage(2, str));
            }
        }
    }

    /* renamed from: com.baidu.location.ao.b */
    private class C0507b implements LocationListener {
        final /* synthetic */ ao f4031a;

        private C0507b(ao aoVar) {
            this.f4031a = aoVar;
        }

        public void onLocationChanged(Location location) {
            this.f4031a.an = System.currentTimeMillis();
            this.f4031a.m5919a(true);
            this.f4031a.m5914a(location);
            this.f4031a.aj = false;
        }

        public void onProviderDisabled(String str) {
            this.f4031a.m5914a(null);
            this.f4031a.m5919a(false);
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    this.f4031a.m5914a(null);
                    this.f4031a.m5919a(false);
                case ProGuard.styleable.View_android_focusable /*1*/:
                    this.f4031a.ai = System.currentTimeMillis();
                    this.f4031a.aj = true;
                    this.f4031a.m5919a(false);
                case ProGuard.styleable.View_paddingStart /*2*/:
                    this.f4031a.aj = false;
                default:
            }
        }
    }

    /* renamed from: com.baidu.location.ao.c */
    private class C0508c implements LocationListener {
        final /* synthetic */ ao f4032a;
        private long f4033b;

        private C0508c(ao aoVar) {
            this.f4032a = aoVar;
            this.f4033b = 0;
        }

        public void onLocationChanged(Location location) {
            if (!this.f4032a.ak && location != null && location.getProvider() == "gps") {
                this.f4032a.ao = System.currentTimeMillis();
                if (System.currentTimeMillis() - this.f4033b >= 10000 && C0491Z.m5800if(location, false)) {
                    this.f4033b = System.currentTimeMillis();
                    this.f4032a.as.sendMessage(this.f4032a.as.obtainMessage(4, location));
                }
            }
        }

        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    static {
        f4034Y = null;
        ag = 0;
        ap = null;
        aq = "Temp_in.dat";
        ar = new File(P, aq);
        aG = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
    }

    private ao() {
        this.f4036a = 1000;
        this.aa = null;
        this.ac = null;
        this.ad = null;
        this.af = null;
        this.ah = 0;
        this.ai = 0;
        this.aj = false;
        this.ak = false;
        this.al = null;
        this.am = false;
        this.an = 0;
        this.ao = 0;
        this.as = null;
        this.at = 1;
        this.au = 2;
        this.av = 3;
        this.aw = 4;
    }

    private int m5900a(C0455F c0455f, int i) {
        if (ag >= C0465K.aQ) {
            return 1;
        }
        if (ag <= C0465K.ay) {
            return 4;
        }
        double cE = c0455f.cE();
        if (cE <= ((double) C0465K.bh)) {
            return 1;
        }
        if (cE >= ((double) C0465K.an)) {
            return 4;
        }
        cE = c0455f.cH();
        return cE > ((double) C0465K.aK) ? cE >= ((double) C0465K.aZ) ? 4 : i < C0465K.ac ? i <= C0465K.a2 ? 4 : this.aF != null ? m5903a(this.aF) : 3 : 1 : 1;
    }

    private int m5903a(HashMap hashMap) {
        if (this.aD > 4) {
            List arrayList = new ArrayList();
            List arrayList2 = new ArrayList();
            int i = 0;
            for (Entry value : hashMap.entrySet()) {
                int i2;
                List list = (List) value.getValue();
                if (list != null) {
                    Object a = m5921a(list);
                    if (a != null) {
                        arrayList.add(a);
                        i2 = i + 1;
                        arrayList2.add(Integer.valueOf(i));
                        i = i2;
                    }
                }
                i2 = i;
                i = i2;
            }
            if (!arrayList.isEmpty()) {
                double[] dArr;
                double[] dArr2 = new double[2];
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    dArr = (double[]) arrayList.get(i3);
                    i = ((Integer) arrayList2.get(i3)).intValue();
                    dArr[0] = dArr[0] * ((double) i);
                    dArr[1] = dArr[1] * ((double) i);
                    dArr2[0] = dArr2[0] + dArr[0];
                    dArr2[1] = dArr2[1] + dArr[1];
                }
                dArr2[0] = dArr2[0] / ((double) size);
                dArr2[1] = dArr2[1] / ((double) size);
                dArr = m5930b(dArr2[0], dArr2[1]);
                aC = String.format(Locale.CHINA, "%d,%d,%d,%d", new Object[]{Long.valueOf(Math.round(dArr2[0] * 100.0d)), Long.valueOf(Math.round(dArr2[1] * 100.0d)), Long.valueOf(Math.round(dArr[0] * 100.0d)), Long.valueOf(Math.round(dArr[1] * 100.0d))});
                if (dArr[0] <= ((double) C0465K.a8)) {
                    return 1;
                }
                if (dArr[0] >= ((double) C0465K.aj)) {
                    return 4;
                }
            }
        }
        return 3;
    }

    private String m5907a(GpsSatellite gpsSatellite, HashMap hashMap) {
        int i = 63;
        int floor = (int) Math.floor((double) (gpsSatellite.getAzimuth() / 6.0f));
        float elevation = gpsSatellite.getElevation();
        int floor2 = (int) Math.floor(((double) elevation) / 1.5d);
        float snr = gpsSatellite.getSnr();
        int round = Math.round(snr / 5.0f);
        int prn = gpsSatellite.getPrn();
        if (prn >= 65) {
            prn -= 32;
        }
        if (snr >= 10.0f && elevation >= 1.0f) {
            List list = (List) hashMap.get(Integer.valueOf(round));
            if (list == null) {
                list = new ArrayList();
            }
            list.add(gpsSatellite);
            hashMap.put(Integer.valueOf(round), list);
            this.aD++;
        }
        if (floor >= 64) {
            floor = 63;
        }
        if (floor2 < 64) {
            i = floor2;
        }
        int i2 = prn >= 65 ? 64 : prn;
        return String.format(Locale.CHINA, "%c%c%c%d", new Object[]{Byte.valueOf(aG[i2 - 1]), Byte.valueOf(aG[floor]), Byte.valueOf(aG[i]), Integer.valueOf(round)});
    }

    private void m5913a(double d, double d2, float f) {
        int i = 0;
        if (C0526k.gm) {
            if (d >= 73.146973d && d <= 135.252686d && d2 <= 54.258807d && d2 >= 14.604847d && f <= 18.0f) {
                int i2 = (int) ((d - C0465K.f3898Z) * 1000.0d);
                int i3 = (int) ((C0465K.av - d2) * 1000.0d);
                if (i2 <= 0 || i2 >= 50 || i3 <= 0 || i3 >= 50) {
                    String str = String.format(Locale.CHINA, "&ll=%.5f|%.5f", new Object[]{Double.valueOf(d), Double.valueOf(d2)}) + "&im=" + C0518i.cY().cW();
                    C0465K.aP = d;
                    C0465K.a4 = d2;
                    C0526k.bj().m6028p(str);
                } else {
                    i2 += i3 * 50;
                    i3 = i2 >> 2;
                    i2 &= 3;
                    if (C0465K.bc) {
                        i = (C0465K.as[i3] >> (i2 * 2)) & 3;
                    }
                }
            }
            if (C0465K.aO != i) {
                C0465K.aO = i;
            }
        }
    }

    private void m5914a(Location location) {
        this.as.sendMessage(this.as.obtainMessage(1, location));
    }

    private void m5918a(String str, Location location) {
        C0491Z.m5791do(aj.at().aw(), C0453D.cs().cn(), location, str + C0479T.m5734q().m5748p());
    }

    private void m5919a(boolean z) {
        this.am = z;
        if (!z || !a2()) {
        }
    }

    private double[] m5920a(double d, double d2) {
        return new double[]{Math.sin(Math.toRadians(d2)) * d, Math.cos(Math.toRadians(d2)) * d};
    }

    private double[] m5921a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        double[] dArr = new double[2];
        for (GpsSatellite gpsSatellite : list) {
            if (gpsSatellite != null) {
                double[] a = m5920a((double) (90.0f - gpsSatellite.getElevation()), (double) gpsSatellite.getAzimuth());
                dArr[0] = dArr[0] + a[0];
                dArr[1] = dArr[1] + a[1];
            }
        }
        int size = list.size();
        dArr[0] = dArr[0] / ((double) size);
        dArr[1] = dArr[1] / ((double) size);
        return dArr;
    }

    private static String m5925b() {
        if (aB == null) {
            return null;
        }
        if (!TextUtils.isEmpty(aB.toString())) {
            aB.insert(0, "&snlf=");
        }
        if (!TextUtils.isEmpty(aC)) {
            aB.append("&pogr=").append(aC);
        }
        return aB.toString();
    }

    private void m5926b(Location location) {
        if (location != null) {
            int i = ag;
            if (i == 0) {
                try {
                    i = location.getExtras().getInt("satellites");
                } catch (Exception e) {
                }
            }
            if (i != 0) {
                this.ab = location;
                if (this.ab == null) {
                    this.al = null;
                } else {
                    this.ab.setTime(System.currentTimeMillis());
                    float speed = (float) (((double) this.ab.getSpeed()) * 3.6d);
                    if (!this.ab.hasSpeed()) {
                        speed = -1.0f;
                    }
                    i = ag;
                    if (i == 0) {
                        try {
                            i = this.ab.getExtras().getInt("satellites");
                            ag = i;
                        } catch (Exception e2) {
                        }
                    }
                    this.al = String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d", new Object[]{Double.valueOf(this.ab.getLongitude()), Double.valueOf(this.ab.getLatitude()), Float.valueOf(speed), Float.valueOf(this.ab.getBearing()), Integer.valueOf(i), Long.valueOf(r2)});
                    m5913a(this.ab.getLongitude(), this.ab.getLatitude(), speed);
                }
                try {
                    am.aU().m5891do(this.ab);
                } catch (Exception e3) {
                }
                if (a2()) {
                    C0479T.m5734q().m5735byte(a0());
                    if (ag > 2 && C0491Z.m5800if(this.ab, true)) {
                        boolean cz = C0453D.cs().cz();
                        C0502a aw = aj.at().aw();
                        aj at = aj.at();
                        at.getClass();
                        an.m5895a(new C0502a(at, aw));
                        an.m5893a(System.currentTimeMillis());
                        an.m5894a(new Location(this.ab));
                        if (!cz) {
                            C0465K.m5633do(C0452e.f3849o, "wifi is disabled, only upload gps and cell info!");
                            C0491Z.m5791do(an.m5897if(), null, an.m5892a(), C0479T.m5734q().m5748p());
                        }
                    }
                }
            }
        }
    }

    private double[] m5930b(double d, double d2) {
        double d3 = 0.0d;
        if (d2 != 0.0d) {
            d3 = Math.toDegrees(Math.atan(d / d2));
        } else if (d > 0.0d) {
            d3 = 90.0d;
        } else if (d < 0.0d) {
            d3 = 270.0d;
        }
        return new double[]{Math.sqrt((d * d) + (d2 * d2)), d3};
    }

    public static ao bg() {
        if (f4034Y == null) {
            f4034Y = new ao();
        }
        return f4034Y;
    }

    public static String m5931byte(Location location) {
        String str = m5934case(location);
        return str != null ? str + "&g_tp=0" : str;
    }

    public static String m5934case(Location location) {
        float f = -1.0f;
        if (location == null) {
            return null;
        }
        float speed = (float) (((double) location.getSpeed()) * 3.6d);
        if (!location.hasSpeed()) {
            speed = -1.0f;
        }
        int accuracy = (int) (location.hasAccuracy() ? location.getAccuracy() : -1.0f);
        double altitude = location.hasAltitude() ? location.getAltitude() : 555.0d;
        if (location.hasBearing()) {
            f = location.getBearing();
        }
        return String.format(Locale.CHINA, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d", new Object[]{Double.valueOf(location.getLongitude()), Double.valueOf(location.getLatitude()), Float.valueOf(speed), Float.valueOf(f), Integer.valueOf(accuracy), Integer.valueOf(ag), Double.valueOf(altitude), Long.valueOf(location.getTime() / 1000)});
    }

    public static boolean m5941if(Location location, Location location2, boolean z) {
        if (location == location2) {
            return false;
        }
        if (location == null || location2 == null) {
            return true;
        }
        float speed = location2.getSpeed();
        if (z && C0465K.aO == 3 && speed < 5.0f) {
            return true;
        }
        float distanceTo = location2.distanceTo(location);
        return speed > C0465K.aH ? distanceTo > C0465K.aX : speed > C0465K.aI ? distanceTo > C0465K.be : distanceTo > 5.0f;
    }

    public static String m5942new(Location location) {
        String str = m5934case(location);
        if (str != null) {
            str = str + ap;
        }
        Object b = m5925b();
        return !TextUtils.isEmpty(b) ? str + b : str;
    }

    public String a0() {
        if (this.ab == null) {
            return null;
        }
        String str = "{\"result\":{\"time\":\"" + C0465K.m5627a() + "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":" + "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\"," + "\"s\":\"%f\",\"n\":\"%d\"";
        int accuracy = (int) (this.ab.hasAccuracy() ? this.ab.getAccuracy() : 10.0f);
        float speed = (float) (((double) this.ab.getSpeed()) * 3.6d);
        if (!this.ab.hasSpeed()) {
            speed = -1.0f;
        }
        double[] dArr = Jni.m5620if(this.ab.getLongitude(), this.ab.getLatitude(), "gps2gcj");
        if (dArr[0] <= 0.0d && dArr[1] <= 0.0d) {
            dArr[0] = this.ab.getLongitude();
            dArr[1] = this.ab.getLatitude();
        }
        String format = String.format(Locale.CHINA, str, new Object[]{Double.valueOf(dArr[0]), Double.valueOf(dArr[1]), Integer.valueOf(accuracy), Float.valueOf(this.ab.getBearing()), Float.valueOf(speed), Integer.valueOf(ag)});
        if (!this.ab.hasAltitude()) {
            return format + "}}";
        }
        return format + String.format(Locale.CHINA, ",\"h\":%.2f}}", new Object[]{Double.valueOf(this.ab.getAltitude())});
    }

    public boolean a2() {
        if (!a4() || System.currentTimeMillis() - this.an > 10000) {
            return false;
        }
        return (!this.aj || System.currentTimeMillis() - this.ai >= 3000) ? this.am : true;
    }

    public Location a3() {
        return this.ab;
    }

    public boolean a4() {
        return (this.ab == null || this.ab.getLatitude() == 0.0d || this.ab.getLongitude() == 0.0d) ? false : true;
    }

    public synchronized void a5() {
        if (C0532n.gR) {
            this.f4035Z = C0513f.getServiceContext();
            try {
                this.aa = (LocationManager) this.f4035Z.getSystemService("location");
                this.af = new C0506a();
                this.aa.addGpsStatusListener(this.af);
                this.ad = new C0508c();
                this.aa.requestLocationUpdates("passive", 1000, 0.0f, this.ad);
            } catch (Exception e) {
            }
            this.as = new ap(this);
        }
    }

    public String a6() {
        return this.al;
    }

    public synchronized void a7() {
        bf();
        if (this.aa != null) {
            try {
                if (this.af != null) {
                    this.aa.removeGpsStatusListener(this.af);
                }
                this.aa.removeUpdates(this.ad);
            } catch (Exception e) {
            }
            this.af = null;
            this.aa = null;
        }
    }

    public boolean a9() {
        return this.ak;
    }

    public String ba() {
        return (!a2() || this.ab == null) ? null : m5934case(this.ab);
    }

    public void bc() {
        try {
            if (this.ay != null || this.ax != null) {
                Object obj = C0491Z.m5793if(aj.at().aw(), C0453D.cs().cn(), this.ay, C0479T.m5734q().m5748p(), String.format(Locale.CHINA, "&dt=%.6f|%.6f|%s|%s|%s", new Object[]{Double.valueOf(this.ay.getLongitude() - this.ax.getLongitude()), Double.valueOf(this.ay.getLatitude() - this.ax.getLatitude()), Float.valueOf(this.ay.getSpeed()), Float.valueOf(this.ay.getBearing()), Long.valueOf(this.aA - this.az)}));
                if (!TextUtils.isEmpty(obj)) {
                    C0491Z.m5803y().m5808long(Jni.m5622k(obj));
                }
            }
        } catch (Exception e) {
        }
    }

    public boolean bd() {
        return this.aa != null ? this.aa.isProviderEnabled("gps") : false;
    }

    public void be() {
        if (!this.ak) {
            try {
                this.ac = new C0507b();
                this.aa.requestLocationUpdates("gps", 1000, 0.0f, this.ac);
                this.aa.addNmeaListener(this.af);
                this.ak = true;
            } catch (Exception e) {
            }
        }
    }

    public void bf() {
        if (this.ak) {
            if (this.aa != null) {
                try {
                    if (this.ac != null) {
                        this.aa.removeUpdates(this.ac);
                    }
                    if (this.af != null) {
                        this.aa.removeNmeaListener(this.af);
                    }
                } catch (Exception e) {
                }
            }
            C0465K.ar = 0;
            C0465K.aO = 0;
            this.ac = null;
            this.ak = false;
            m5919a(false);
        }
    }

    public void m5943int(boolean z) {
        if (z) {
            be();
        } else {
            bf();
        }
    }
}
