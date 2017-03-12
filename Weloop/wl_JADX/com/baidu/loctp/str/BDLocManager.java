package com.baidu.loctp.str;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import com.baidu.frontia.module.deeplink.GetApn;
import com.umeng.update.util.ProGuard;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Locale;
import java.util.Random;

public class BDLocManager {
    private static Method f4172e;
    private static Method f4173f;
    private static Method f4174g;
    private static Class<?> f4175h;
    private static char[] f4176r;
    private final long f4177a;
    private Context f4178b;
    private TelephonyManager f4179c;
    private C0554a f4180d;
    private WifiManager f4181i;
    private WifiList f4182j;
    private Object f4183k;
    private Method f4184l;
    private boolean f4185m;
    private long f4186n;
    private String f4187o;
    private int f4188p;
    private String f4189q;

    protected class WifiList {
        public List<ScanResult> _WifiList;
        final /* synthetic */ BDLocManager f4164a;
        private long f4165b;

        public WifiList(BDLocManager bDLocManager, List<ScanResult> list) {
            this.f4164a = bDLocManager;
            this._WifiList = null;
            this.f4165b = 0;
            this._WifiList = list;
            this.f4165b = System.currentTimeMillis();
            m6138a();
        }

        private void m6138a() {
            if (size() >= 1) {
                Object obj = 1;
                for (int size = this._WifiList.size() - 1; size >= 1 && r2 != null; size--) {
                    int i = 0;
                    obj = null;
                    while (i < size) {
                        Object obj2;
                        if (((ScanResult) this._WifiList.get(i)).level < ((ScanResult) this._WifiList.get(i + 1)).level) {
                            ScanResult scanResult = (ScanResult) this._WifiList.get(i + 1);
                            this._WifiList.set(i + 1, this._WifiList.get(i));
                            this._WifiList.set(i, scanResult);
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

        private boolean m6140b() {
            long currentTimeMillis = System.currentTimeMillis() - this.f4165b;
            return currentTimeMillis < 0 || currentTimeMillis > 500;
        }

        public int size() {
            return this._WifiList == null ? 0 : this._WifiList.size();
        }

        public String toString(int i) {
            if (size() < 1) {
                return null;
            }
            Object obj;
            Object obj2;
            boolean a = this.f4164a.m6148a();
            if (a) {
                i--;
                obj = null;
            } else {
                int i2 = 1;
            }
            StringBuffer stringBuffer = new StringBuffer(512);
            int size = this._WifiList.size();
            int i3 = 0;
            int i4 = 0;
            Object obj3 = 1;
            Object obj4 = obj;
            while (i3 < size) {
                if (((ScanResult) this._WifiList.get(i3)).level == 0) {
                    i2 = i4;
                    obj2 = obj3;
                    obj3 = obj4;
                } else {
                    String str = ((ScanResult) this._WifiList.get(i3)).BSSID;
                    i2 = ((ScanResult) this._WifiList.get(i3)).level;
                    str = str.replace(":", "");
                    if (this.f4164a.f4187o == null || !str.equals(this.f4164a.f4187o)) {
                        if (i4 < i) {
                            stringBuffer.append("h");
                            stringBuffer.append(str);
                            stringBuffer.append("m");
                            stringBuffer.append(StrictMath.abs(i2));
                            i2 = i4 + 1;
                            obj2 = null;
                        } else {
                            i2 = i4;
                            obj2 = obj3;
                        }
                        if (i2 > i && obj4 != null) {
                            break;
                        }
                        obj3 = obj4;
                    } else {
                        this.f4164a.f4188p = StrictMath.abs(i2);
                        i2 = i4;
                        obj2 = obj3;
                        int i5 = 1;
                    }
                }
                i3++;
                obj4 = obj3;
                obj3 = obj2;
                i4 = i2;
            }
            obj2 = obj3;
            String str2 = a ? "h" + this.f4164a.f4187o + "km" + this.f4164a.f4188p : null;
            return obj2 == null ? str2 + stringBuffer.toString() : str2;
        }
    }

    /* renamed from: com.baidu.loctp.str.BDLocManager.a */
    private class C0554a {
        public int f4166a;
        public int f4167b;
        public int f4168c;
        public int f4169d;
        public char f4170e;
        final /* synthetic */ BDLocManager f4171f;

        private C0554a(BDLocManager bDLocManager) {
            this.f4171f = bDLocManager;
            this.f4166a = -1;
            this.f4167b = -1;
            this.f4168c = -1;
            this.f4169d = -1;
            this.f4170e = '\u0000';
        }

        private boolean m6141a() {
            return this.f4166a > -1 && this.f4167b > 0;
        }

        public String toString() {
            if (!m6141a()) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append(this.f4170e);
            stringBuffer.append("h");
            if (this.f4168c != 460) {
                stringBuffer.append(this.f4168c);
            }
            stringBuffer.append(String.format(Locale.CHINA, "h%xh%xh%x", new Object[]{Integer.valueOf(this.f4169d), Integer.valueOf(this.f4166a), Integer.valueOf(this.f4167b)}));
            return stringBuffer.toString();
        }
    }

    static {
        f4172e = null;
        f4173f = null;
        f4174g = null;
        f4175h = null;
        f4176r = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.".toCharArray();
    }

    public BDLocManager(Context context) {
        String deviceId;
        this.f4177a = 5000;
        this.f4178b = null;
        this.f4179c = null;
        this.f4180d = new C0554a();
        this.f4181i = null;
        this.f4182j = null;
        this.f4183k = null;
        this.f4184l = null;
        this.f4185m = true;
        this.f4186n = 0;
        this.f4187o = null;
        this.f4188p = 0;
        this.f4189q = null;
        this.f4178b = context.getApplicationContext();
        String packageName = this.f4178b.getPackageName();
        try {
            this.f4179c = (TelephonyManager) this.f4178b.getSystemService("phone");
            deviceId = this.f4179c.getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        this.f4189q = "&" + packageName + "&" + deviceId;
        this.f4181i = (WifiManager) this.f4178b.getSystemService(GetApn.APN_TYPE_WIFI);
        try {
            Field declaredField = Class.forName("android.net.wifi.WifiManager").getDeclaredField("mService");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                this.f4183k = declaredField.get(this.f4181i);
                this.f4184l = this.f4183k.getClass().getDeclaredMethod("startScan", new Class[]{Boolean.TYPE});
                if (this.f4184l != null) {
                    this.f4184l.setAccessible(true);
                }
            }
        } catch (Exception e2) {
        }
    }

    private String m6144a(int i) {
        String c0554a;
        String wifiList;
        if (i < 3) {
            i = 3;
        }
        try {
            m6147a(this.f4179c.getCellLocation());
            c0554a = this.f4180d.toString();
        } catch (Exception e) {
            c0554a = null;
        }
        if (c0554a == null) {
            c0554a = "Z";
        }
        try {
            if (this.f4182j == null || this.f4182j.m6140b()) {
                this.f4182j = new WifiList(this, this.f4181i.getScanResults());
            }
            wifiList = this.f4182j.toString(i);
        } catch (Exception e2) {
            wifiList = null;
        }
        if (wifiList != null) {
            c0554a = c0554a + wifiList;
        }
        return c0554a.equals("Z") ? null : m6145a(c0554a + "t" + System.currentTimeMillis() + this.f4189q);
    }

    private static String m6145a(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        byte nextInt = (byte) new Random().nextInt(255);
        byte nextInt2 = (byte) new Random().nextInt(255);
        byte[] bArr = new byte[(bytes.length + 2)];
        int length = bytes.length;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) (bytes[i] ^ nextInt);
            i++;
            i2 = i3;
        }
        i = i2 + 1;
        bArr[i2] = nextInt;
        i2 = i + 1;
        bArr[i] = nextInt2;
        return m6146a(bArr);
    }

    private static String m6146a(byte[] bArr) {
        char[] cArr = new char[(((bArr.length + 2) / 3) * 4)];
        int i = 0;
        int i2 = 0;
        while (i2 < bArr.length) {
            Object obj;
            Object obj2;
            int i3 = (bArr[i2] & 255) << 8;
            if (i2 + 1 < bArr.length) {
                i3 |= bArr[i2 + 1] & 255;
                obj = 1;
            } else {
                obj = null;
            }
            i3 <<= 8;
            if (i2 + 2 < bArr.length) {
                i3 |= bArr[i2 + 2] & 255;
                obj2 = 1;
            } else {
                obj2 = null;
            }
            cArr[i + 3] = f4176r[obj2 != null ? 63 - (i3 & 63) : 64];
            int i4 = i3 >> 6;
            cArr[i + 2] = f4176r[obj != null ? 63 - (i4 & 63) : 64];
            i3 = i4 >> 6;
            cArr[i + 1] = f4176r[63 - (i3 & 63)];
            cArr[i + 0] = f4176r[63 - ((i3 >> 6) & 63)];
            i2 += 3;
            i += 4;
        }
        return new String(cArr);
    }

    private void m6147a(CellLocation cellLocation) {
        int i = 0;
        if (cellLocation != null && this.f4179c != null) {
            C0554a c0554a = new C0554a();
            String networkOperator = this.f4179c.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
                try {
                    if (networkOperator.length() >= 3) {
                        int intValue = Integer.valueOf(networkOperator.substring(0, 3)).intValue();
                        if (intValue < 0) {
                            intValue = this.f4180d.f4168c;
                        }
                        c0554a.f4168c = intValue;
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
                        i = this.f4180d.f4169d;
                    }
                    c0554a.f4169d = i;
                } catch (Exception e) {
                }
            }
            if (cellLocation instanceof GsmCellLocation) {
                c0554a.f4166a = ((GsmCellLocation) cellLocation).getLac();
                c0554a.f4167b = ((GsmCellLocation) cellLocation).getCid();
                c0554a.f4170e = 'g';
            } else if (cellLocation instanceof CdmaCellLocation) {
                c0554a.f4170e = 'w';
                if (f4175h == null) {
                    try {
                        f4175h = Class.forName("android.telephony.cdma.CdmaCellLocation");
                        f4172e = f4175h.getMethod("getBaseStationId", new Class[0]);
                        f4173f = f4175h.getMethod("getNetworkId", new Class[0]);
                        f4174g = f4175h.getMethod("getSystemId", new Class[0]);
                    } catch (Exception e2) {
                        f4175h = null;
                        return;
                    }
                }
                if (f4175h != null && f4175h.isInstance(cellLocation)) {
                    try {
                        i = ((Integer) f4174g.invoke(cellLocation, new Object[0])).intValue();
                        if (i < 0) {
                            i = this.f4180d.f4169d;
                        }
                        c0554a.f4169d = i;
                        c0554a.f4167b = ((Integer) f4172e.invoke(cellLocation, new Object[0])).intValue();
                        c0554a.f4166a = ((Integer) f4173f.invoke(cellLocation, new Object[0])).intValue();
                    } catch (Exception e3) {
                        return;
                    }
                }
            }
            if (c0554a.m6141a()) {
                this.f4180d = c0554a;
            }
        }
    }

    private boolean m6148a() {
        String str = null;
        this.f4187o = null;
        this.f4188p = 0;
        WifiInfo connectionInfo = this.f4181i.getConnectionInfo();
        if (connectionInfo == null) {
            return false;
        }
        try {
            String bssid = connectionInfo.getBSSID();
            if (bssid != null) {
                str = bssid.replace(":", "");
            }
            if (str.length() != 12) {
                return false;
            }
            this.f4187o = new String(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public String getLocString() {
        try {
            return m6144a(3);
        } catch (Exception e) {
            return null;
        }
    }

    public String getLocString(int i) {
        try {
            return m6144a(i);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean startWifiScan() {
        if (this.f4181i == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f4186n;
        if (currentTimeMillis <= 5000 && currentTimeMillis >= 0) {
            return false;
        }
        if (this.f4181i.isWifiEnabled()) {
            if (this.f4184l == null || this.f4183k == null) {
                this.f4181i.startScan();
            } else {
                try {
                    this.f4184l.invoke(this.f4183k, new Object[]{Boolean.valueOf(this.f4185m)});
                } catch (Exception e) {
                    this.f4181i.startScan();
                }
            }
            this.f4186n = System.currentTimeMillis();
            return true;
        }
        this.f4186n = 0;
        return false;
    }
}
