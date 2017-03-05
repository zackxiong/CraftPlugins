package com.baidu.location;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.location.p083a.p084a.C0492a;
import com.umeng.update.util.ProGuard;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

/* renamed from: com.baidu.location.y */
public class C0550y {
    private static Method f4128f;
    private static Method f4129g;
    private static Method f4130h;
    private static Class f4131i;
    C0549d f4132a;
    private final long f4133b;
    private Context f4134c;
    private TelephonyManager f4135d;
    private C0547b f4136e;
    private WifiManager f4137j;
    private C0548c f4138k;
    private Object f4139l;
    private Method f4140m;
    private boolean f4141n;
    private long f4142o;
    private String f4143p;
    private int f4144q;
    private String f4145r;
    private LocationClientOption f4146s;
    private C0469a f4147t;
    private String f4148u;

    /* renamed from: com.baidu.location.y.a */
    public interface C0469a {
        void onReceiveLocation(BDLocation bDLocation);
    }

    /* renamed from: com.baidu.location.y.b */
    private class C0547b {
        final /* synthetic */ C0550y f4117a;
        public int f4118do;
        public int f4119for;
        public int f4120if;
        public char f4121int;
        public int f4122new;

        private C0547b(C0550y c0550y) {
            this.f4117a = c0550y;
            this.f4119for = -1;
            this.f4122new = -1;
            this.f4118do = -1;
            this.f4120if = -1;
            this.f4121int = '\u0000';
        }

        private boolean m6108b() {
            return this.f4119for > -1 && this.f4122new > 0;
        }

        public String m6109a() {
            if (!m6108b()) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append(this.f4122new + 23);
            stringBuffer.append("H");
            stringBuffer.append(this.f4119for + 45);
            stringBuffer.append("K");
            stringBuffer.append(this.f4120if + 54);
            stringBuffer.append("Q");
            stringBuffer.append(this.f4118do + C0452e.f3831byte);
            return stringBuffer.toString();
        }

        public int m6110if() {
            return (this.f4118do <= 0 || !m6108b()) ? 2 : (this.f4118do == 460 || this.f4118do == 454 || this.f4118do == 455 || this.f4118do == 466) ? 1 : 0;
        }

        public String toString() {
            if (!m6108b()) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append("&nw=");
            stringBuffer.append(this.f4121int);
            stringBuffer.append(String.format(Locale.CHINA, "&cl=%d|%d|%d|%d", new Object[]{Integer.valueOf(this.f4118do), Integer.valueOf(this.f4120if), Integer.valueOf(this.f4119for), Integer.valueOf(this.f4122new)}));
            return stringBuffer.toString();
        }
    }

    /* renamed from: com.baidu.location.y.c */
    protected class C0548c {
        final /* synthetic */ C0550y f4123a;
        private long f4124b;
        public List f4125if;

        public C0548c(C0550y c0550y, List list) {
            this.f4123a = c0550y;
            this.f4125if = null;
            this.f4124b = 0;
            this.f4125if = list;
            this.f4124b = System.currentTimeMillis();
            m6111a();
        }

        private void m6111a() {
            if (m6113if() >= 1) {
                Object obj = 1;
                for (int size = this.f4125if.size() - 1; size >= 1 && r2 != null; size--) {
                    int i = 0;
                    obj = null;
                    while (i < size) {
                        Object obj2;
                        if (((ScanResult) this.f4125if.get(i)).level < ((ScanResult) this.f4125if.get(i + 1)).level) {
                            ScanResult scanResult = (ScanResult) this.f4125if.get(i + 1);
                            this.f4125if.set(i + 1, this.f4125if.get(i));
                            this.f4125if.set(i, scanResult);
                            obj2 = 1;
                        } else {
                            obj2 = obj;
                        }
                        i++;
                        obj = obj2;
                    }
                }
            }
        }

        public String m6112a(int i) {
            if (m6113if() < 2) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer(512);
            int size = this.f4125if.size();
            int i2 = 0;
            int i3 = 0;
            int i4 = 1;
            while (i2 < size) {
                int i5;
                if (((ScanResult) this.f4125if.get(i2)).level == 0) {
                    i5 = i3;
                } else {
                    if (i4 != 0) {
                        stringBuffer.append("&wf=");
                        i4 = 0;
                    } else {
                        stringBuffer.append("|");
                    }
                    stringBuffer.append(((ScanResult) this.f4125if.get(i2)).BSSID.replace(":", ""));
                    i5 = ((ScanResult) this.f4125if.get(i2)).level;
                    if (i5 < 0) {
                        i5 = -i5;
                    }
                    stringBuffer.append(String.format(Locale.CHINA, ";%d;", new Object[]{Integer.valueOf(i5)}));
                    i5 = i3 + 1;
                    if (i5 > i) {
                        break;
                    }
                }
                i2++;
                i3 = i5;
            }
            return i4 != 0 ? null : stringBuffer.toString();
        }

        public int m6113if() {
            return this.f4125if == null ? 0 : this.f4125if.size();
        }
    }

    /* renamed from: com.baidu.location.y.d */
    class C0549d extends ac {
        final /* synthetic */ C0550y f4126Y;
        String f4127a;

        C0549d(C0550y c0550y) {
            this.f4126Y = c0550y;
            this.f4127a = null;
            this.c0 = new ArrayList();
        }

        void m6114X() {
            this.cY = C0465K.m5635for();
            String k = Jni.m5622k(this.f4127a);
            this.f4127a = null;
            this.c0.add(new BasicNameValuePair("bloc", k));
            StringBuffer stringBuffer = new StringBuffer(512);
            stringBuffer.append(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{al.m5879a(this.f4126Y.f4134c), al.m5883if(this.f4126Y.f4134c)}));
            if (stringBuffer.length() > 0) {
                this.c0.add(new BasicNameValuePair("ext", Jni.m5622k(stringBuffer.toString())));
            }
            this.c0.add(new BasicNameValuePair("trtm", String.format(Locale.CHINA, "%d", new Object[]{Long.valueOf(System.currentTimeMillis())})));
        }

        void m6115do(boolean z) {
            BDLocation bDLocation;
            if (z && this.cZ != null) {
                try {
                    try {
                        bDLocation = new BDLocation(EntityUtils.toString(this.cZ, "utf-8"));
                    } catch (Exception e) {
                        bDLocation = new BDLocation();
                        bDLocation.setLocType(63);
                    }
                    this.f4126Y.f4147t.onReceiveLocation(bDLocation);
                } catch (Exception e2) {
                }
            }
            if (this.c0 != null) {
                this.c0.clear();
            }
        }

        public void m6116h(String str) {
            this.f4127a = str;
            m5570R();
        }
    }

    static {
        f4128f = null;
        f4129g = null;
        f4130h = null;
        f4131i = null;
    }

    public C0550y(Context context, LocationClientOption locationClientOption, C0469a c0469a) {
        String deviceId;
        String a;
        this.f4133b = 5000;
        this.f4134c = null;
        this.f4135d = null;
        this.f4136e = new C0547b();
        this.f4137j = null;
        this.f4138k = null;
        this.f4139l = null;
        this.f4140m = null;
        this.f4141n = true;
        this.f4142o = 0;
        this.f4143p = null;
        this.f4144q = 0;
        this.f4145r = null;
        this.f4148u = null;
        this.f4132a = new C0549d(this);
        this.f4134c = context.getApplicationContext();
        this.f4146s = locationClientOption;
        this.f4147t = c0469a;
        String packageName = this.f4134c.getPackageName();
        try {
            this.f4135d = (TelephonyManager) this.f4134c.getSystemService("phone");
            deviceId = this.f4135d.getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        try {
            a = C0492a.m5809a(this.f4134c);
        } catch (Exception e2) {
            a = null;
        }
        if (a != null) {
            this.f4145r = "&prod=" + packageName + "&cu=" + a + "&coor=" + locationClientOption.getCoorType();
        } else {
            this.f4145r = "&prod=" + packageName + "&im=" + deviceId + "&coor=" + locationClientOption.getCoorType();
        }
        StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
        stringBuffer.append("&fw=");
        stringBuffer.append("5.21");
        stringBuffer.append("&lt=1");
        stringBuffer.append("&mb=");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("&resid=");
        stringBuffer.append("12");
        if (locationClientOption.getAddrType() != null) {
        }
        if (locationClientOption.getAddrType() != null && locationClientOption.getAddrType().equals("all")) {
            this.f4145r += "&addr=all";
        }
        stringBuffer.append("&os=A");
        stringBuffer.append(VERSION.SDK);
        this.f4145r += stringBuffer.toString();
        this.f4137j = (WifiManager) this.f4134c.getSystemService(GetApn.APN_TYPE_WIFI);
        Object dd = dd();
        if (!TextUtils.isEmpty(dd)) {
            dd = dd.replace(":", "");
        }
        if (!TextUtils.isEmpty(dd)) {
            this.f4145r += "&mac=" + dd;
        }
        dc();
    }

    private String m6118a(int i) {
        String c0547b;
        String a;
        if (i < 3) {
            i = 3;
        }
        try {
            m6119a(this.f4135d.getCellLocation());
            c0547b = this.f4136e.toString();
        } catch (Exception e) {
            c0547b = null;
        }
        try {
            if (this.f4138k == null) {
                this.f4138k = new C0548c(this, this.f4137j.getScanResults());
            }
            a = this.f4138k.m6112a(i);
        } catch (Exception e2) {
            a = null;
        }
        if (c0547b == null && a == null) {
            this.f4148u = null;
            return null;
        }
        if (a != null) {
            c0547b = c0547b + a;
        }
        if (c0547b == null) {
            return null;
        }
        this.f4148u = c0547b + this.f4145r;
        return c0547b + this.f4145r;
    }

    private void m6119a(CellLocation cellLocation) {
        int i = 0;
        if (cellLocation != null && this.f4135d != null) {
            C0547b c0547b = new C0547b();
            String networkOperator = this.f4135d.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
                try {
                    if (networkOperator.length() >= 3) {
                        int intValue = Integer.valueOf(networkOperator.substring(0, 3)).intValue();
                        if (intValue < 0) {
                            intValue = this.f4136e.f4118do;
                        }
                        c0547b.f4118do = intValue;
                    }
                    String substring = networkOperator.substring(3);
                    if (substring != null) {
                        char[] toCharArray = substring.toCharArray();
                        while (i < toCharArray.length && Character.isDigit(toCharArray[i])) {
                            i++;
                        }
                    }
                    i = Integer.valueOf(substring.substring(0, i)).intValue();
                    if (i < 0) {
                        i = this.f4136e.f4120if;
                    }
                    c0547b.f4120if = i;
                } catch (Exception e) {
                }
            }
            if (cellLocation instanceof GsmCellLocation) {
                c0547b.f4119for = ((GsmCellLocation) cellLocation).getLac();
                c0547b.f4122new = ((GsmCellLocation) cellLocation).getCid();
                c0547b.f4121int = 'g';
            } else if (cellLocation instanceof CdmaCellLocation) {
                c0547b.f4121int = 'c';
                if (f4131i == null) {
                    try {
                        f4131i = Class.forName("android.telephony.cdma.CdmaCellLocation");
                        f4128f = f4131i.getMethod("getBaseStationId", new Class[0]);
                        f4129g = f4131i.getMethod("getNetworkId", new Class[0]);
                        f4130h = f4131i.getMethod("getSystemId", new Class[0]);
                    } catch (Exception e2) {
                        f4131i = null;
                        return;
                    }
                }
                if (f4131i != null && f4131i.isInstance(cellLocation)) {
                    try {
                        i = ((Integer) f4130h.invoke(cellLocation, new Object[0])).intValue();
                        if (i < 0) {
                            i = this.f4136e.f4120if;
                        }
                        c0547b.f4120if = i;
                        c0547b.f4122new = ((Integer) f4128f.invoke(cellLocation, new Object[0])).intValue();
                        c0547b.f4119for = ((Integer) f4129g.invoke(cellLocation, new Object[0])).intValue();
                    } catch (Exception e3) {
                        return;
                    }
                }
            }
            if (c0547b.m6108b()) {
                this.f4136e = c0547b;
            }
        }
    }

    public void db() {
        if (this.f4148u != null && this.f4136e.m6110if() != 0) {
            this.f4132a.m6116h(this.f4148u);
            if (!this.f4146s.getAddrType().equals("all")) {
                BDLocation bDLocation = C0516g.cP().m5969do(this.f4136e.m6109a(), this.f4137j.getScanResults());
                if (!this.f4146s.f3916do.equals(BDGeofence.COORD_TYPE_GCJ)) {
                    double longitude = bDLocation.getLongitude();
                    double latitude = bDLocation.getLatitude();
                    if (!(longitude == Double.MIN_VALUE || latitude == Double.MIN_VALUE)) {
                        double[] dArr = Jni.m5620if(longitude, latitude, this.f4146s.f3916do);
                        bDLocation.setLongitude(dArr[0]);
                        bDLocation.setLatitude(dArr[1]);
                    }
                }
                if (bDLocation.getLocType() == 66) {
                    this.f4147t.onReceiveLocation(bDLocation);
                }
            }
        }
    }

    public String dc() {
        try {
            return m6118a(15);
        } catch (Exception e) {
            return null;
        }
    }

    public String dd() {
        String str = null;
        try {
            WifiInfo connectionInfo = this.f4137j.getConnectionInfo();
            if (connectionInfo != null) {
                str = connectionInfo.getMacAddress();
            }
        } catch (Exception e) {
        }
        return str;
    }

    public String m6121j(int i) {
        try {
            return m6118a(i);
        } catch (Exception e) {
            return null;
        }
    }
}
