package com.baidu.location;

import android.os.Build.VERSION;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import com.umeng.update.util.ProGuard;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

class aj implements C0452e {
    private static aj f4007a;
    private static String ac;
    private static Method af;
    private static Method ag;
    private static Method ah;
    private static Method ai;
    private static Method aj;
    private static Class ak;
    private static long al;
    private static int am;
    private static boolean an;
    private TelephonyManager f4008Y;
    private C0502a f4009Z;
    private C0502a aa;
    private List ab;
    private C0503b ad;
    private boolean ae;
    private boolean ao;
    private int ap;
    private int aq;

    /* renamed from: com.baidu.location.aj.a */
    public class C0502a {
        public int f3996a;
        final /* synthetic */ aj f3997b;
        public int f3998byte;
        public int f3999case;
        public int f4000char;
        public int f4001do;
        public int f4002for;
        public long f4003if;
        public int f4004int;
        public char f4005new;

        public C0502a(aj ajVar) {
            this.f3997b = ajVar;
            this.f3996a = -1;
            this.f4002for = -1;
            this.f3998byte = -1;
            this.f3999case = -1;
            this.f4000char = Integer.MAX_VALUE;
            this.f4001do = Integer.MAX_VALUE;
            this.f4003if = 0;
            this.f4004int = -1;
            this.f4005new = '\u0000';
            this.f4003if = System.currentTimeMillis();
        }

        public C0502a(aj ajVar, int i, int i2, int i3, int i4, int i5, char c) {
            this.f3997b = ajVar;
            this.f3996a = -1;
            this.f4002for = -1;
            this.f3998byte = -1;
            this.f3999case = -1;
            this.f4000char = Integer.MAX_VALUE;
            this.f4001do = Integer.MAX_VALUE;
            this.f4003if = 0;
            this.f4004int = -1;
            this.f4005new = '\u0000';
            this.f3996a = i;
            this.f4002for = i2;
            this.f3998byte = i3;
            this.f3999case = i4;
            this.f4004int = i5;
            this.f4005new = c;
            this.f4003if = System.currentTimeMillis();
        }

        public C0502a(aj ajVar, C0502a c0502a) {
            this(ajVar, c0502a.f3996a, c0502a.f4002for, c0502a.f3998byte, c0502a.f3999case, c0502a.f4004int, c0502a.f4005new);
        }

        private String m5839a() {
            StringBuilder stringBuilder = new StringBuilder();
            if (Integer.valueOf(VERSION.SDK_INT).intValue() >= 17) {
                try {
                    List<CellInfo> allCellInfo = this.f3997b.f4008Y.getAllCellInfo();
                    if (allCellInfo == null || allCellInfo.size() <= 0) {
                        C0465K.m5633do("getAllCellInfo", "=null");
                    } else {
                        C0465K.m5633do("cellinfo", "!=null");
                        stringBuilder.append("&nc=");
                        for (CellInfo cellInfo : allCellInfo) {
                            if (!cellInfo.isRegistered()) {
                                C0502a a = this.f3997b.m5855a(cellInfo);
                                if (!(a == null || a.f3996a == -1 || a.f4002for == -1)) {
                                    if (this.f3996a != a.f3996a) {
                                        stringBuilder.append(a.f3996a + "|" + a.f4002for + "|" + a.f4004int + ";");
                                    } else {
                                        stringBuilder.append("|" + a.f4002for + "|" + a.f4004int + ";");
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                }
            }
            return stringBuilder.toString();
        }

        public boolean m5840a(C0502a c0502a) {
            return this.f3996a == c0502a.f3996a && this.f4002for == c0502a.f4002for && this.f3999case == c0502a.f3999case && this.f3998byte == c0502a.f3998byte;
        }

        public String m5841byte() {
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append("&nw=");
            stringBuffer.append(this.f3997b.f4009Z.f4005new);
            stringBuffer.append(String.format(Locale.CHINA, "&cl=%d|%d|%d|%d&cl_s=%d", new Object[]{Integer.valueOf(this.f3998byte), Integer.valueOf(this.f3999case), Integer.valueOf(this.f3996a), Integer.valueOf(this.f4002for), Integer.valueOf(this.f4004int)}));
            return stringBuffer.toString();
        }

        public boolean m5842case() {
            return this.f3996a > -1 && this.f4002for > -1 && this.f3999case > -1 && this.f3998byte > -1;
        }

        public String m5843char() {
            StringBuffer stringBuffer = new StringBuffer(64);
            stringBuffer.append(String.format(Locale.CHINA, "cell=%d|%d|%d|%d:%d", new Object[]{Integer.valueOf(this.f3998byte), Integer.valueOf(this.f3999case), Integer.valueOf(this.f3996a), Integer.valueOf(this.f4002for), Integer.valueOf(this.f4004int)}));
            return stringBuffer.toString();
        }

        public int m5844do() {
            return (this.f3998byte <= 0 || !m5848if()) ? 2 : (this.f3998byte == 460 || this.f3998byte == 454 || this.f3998byte == 455 || this.f3998byte == 466) ? 1 : 0;
        }

        public boolean m5845else() {
            return this.f3996a > -1 && this.f4002for > -1 && this.f3999case == -1 && this.f3998byte == -1;
        }

        public boolean m5846for() {
            return System.currentTimeMillis() - this.f4003if < aj.al;
        }

        public String m5847goto() {
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append(this.f4002for + 23);
            stringBuffer.append("H");
            stringBuffer.append(this.f3996a + 45);
            stringBuffer.append("K");
            stringBuffer.append(this.f3999case + 54);
            stringBuffer.append("Q");
            stringBuffer.append(this.f3998byte + C0452e.f3831byte);
            return stringBuffer.toString();
        }

        public boolean m5848if() {
            return this.f3996a > -1 && this.f4002for > 0;
        }

        public String m5849int() {
            String str = "";
            try {
                str = m5839a();
                if (str != null && !str.equals("") && !str.equals("&nc=")) {
                    return str;
                }
                List<NeighboringCellInfo> neighboringCellInfo = this.f3997b.f4008Y.getNeighboringCellInfo();
                if (!(neighboringCellInfo == null || neighboringCellInfo.isEmpty())) {
                    String str2 = "&nc=";
                    int i = 0;
                    for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                        int lac = neighboringCellInfo2.getLac();
                        str = (lac == -1 || neighboringCellInfo2.getCid() == -1) ? str2 : this.f3996a != lac ? str2 + lac + "|" + neighboringCellInfo2.getCid() + "|" + neighboringCellInfo2.getRssi() + ";" : str2 + "|" + neighboringCellInfo2.getCid() + "|" + neighboringCellInfo2.getRssi() + ";";
                        int i2 = i + 1;
                        if (i2 >= 8) {
                            break;
                        }
                        i = i2;
                        str2 = str;
                    }
                    str = str2;
                }
                return (str == null || !str.equals("&nc=")) ? str : null;
            } catch (Exception e) {
                e.printStackTrace();
                str = "";
            }
        }

        public boolean m5850new() {
            return this.f3996a == -1 && this.f4002for == -1 && this.f3999case == -1 && this.f3998byte == -1;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            stringBuffer.append("&nw=");
            stringBuffer.append(this.f3997b.f4009Z.f4005new);
            stringBuffer.append(String.format(Locale.CHINA, "&cl=%d|%d|%d|%d&cl_s=%d", new Object[]{Integer.valueOf(this.f3998byte), Integer.valueOf(this.f3999case), Integer.valueOf(this.f3996a), Integer.valueOf(this.f4002for), Integer.valueOf(this.f4004int)}));
            if (this.f4000char < Integer.MAX_VALUE && this.f4001do < Integer.MAX_VALUE) {
                stringBuffer.append(String.format(Locale.CHINA, "&cdmall=%.6f|%.6f", new Object[]{Double.valueOf(((double) this.f4001do) / 14400.0d), Double.valueOf(((double) this.f4000char) / 14400.0d)}));
            }
            stringBuffer.append("&cl_t=");
            stringBuffer.append(this.f4003if);
            if (this.f3997b.ab != null && this.f3997b.ab.size() > 0) {
                int size = this.f3997b.ab.size();
                stringBuffer.append("&clt=");
                for (int i = 0; i < size; i++) {
                    C0502a c0502a = (C0502a) this.f3997b.ab.get(i);
                    if (c0502a.f3998byte != this.f3998byte) {
                        stringBuffer.append(c0502a.f3998byte);
                    }
                    stringBuffer.append("|");
                    if (c0502a.f3999case != this.f3999case) {
                        stringBuffer.append(c0502a.f3999case);
                    }
                    stringBuffer.append("|");
                    if (c0502a.f3996a != this.f3996a) {
                        stringBuffer.append(c0502a.f3996a);
                    }
                    stringBuffer.append("|");
                    if (c0502a.f4002for != this.f4002for) {
                        stringBuffer.append(c0502a.f4002for);
                    }
                    stringBuffer.append("|");
                    stringBuffer.append((System.currentTimeMillis() - c0502a.f4003if) / 1000);
                    stringBuffer.append(";");
                }
            }
            if (this.f3997b.ap > 100) {
                this.f3997b.ap = 0;
            }
            stringBuffer.append("&cs=" + ((this.f3997b.aq << 8) + this.f3997b.ap));
            return stringBuffer.toString();
        }

        public String m5851try() {
            if (!m5848if()) {
                return null;
            }
            if (this.f4005new == 'g') {
                return String.format(Locale.CHINA, "<cell-tower>\n<mcc>%d</mcc><mnc>%d</mnc><lac>%d</lac><ci>%d</ci><rssi>%d</rssi></cell-tower>", new Object[]{Integer.valueOf(this.f3998byte), Integer.valueOf(this.f3999case), Integer.valueOf(this.f3996a), Integer.valueOf(this.f4002for), Integer.valueOf(this.f4004int)});
            } else if (this.f4005new != 'c') {
                return null;
            } else {
                return String.format(Locale.CHINA, "<cdma-tower>\n<sid>%d</sid><nid>%d</nid><bsid>%d</bsid><rssi>%d</rssi></cdma-tower>", new Object[]{Integer.valueOf(this.f3999case), Integer.valueOf(this.f3996a), Integer.valueOf(this.f4002for), Integer.valueOf(this.f4004int)});
            }
        }
    }

    /* renamed from: com.baidu.location.aj.b */
    private class C0503b extends PhoneStateListener {
        final /* synthetic */ aj f4006a;

        public C0503b(aj ajVar) {
            this.f4006a = ajVar;
        }

        public void onCellLocationChanged(CellLocation cellLocation) {
            if (cellLocation != null) {
                try {
                    this.f4006a.m5867e();
                } catch (Exception e) {
                }
            }
        }

        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (this.f4006a.f4009Z == null) {
                return;
            }
            if (this.f4006a.f4009Z.f4005new == 'g') {
                this.f4006a.f4009Z.f4004int = signalStrength.getGsmSignalStrength();
            } else if (this.f4006a.f4009Z.f4005new == 'c') {
                this.f4006a.f4009Z.f4004int = signalStrength.getCdmaDbm();
            }
        }
    }

    static {
        f4007a = null;
        ac = null;
        af = null;
        ag = null;
        ah = null;
        ai = null;
        aj = null;
        ak = null;
        al = 3000;
        am = 3;
        an = false;
    }

    private aj() {
        this.f4008Y = null;
        this.f4009Z = new C0502a(this);
        this.aa = null;
        this.ab = null;
        this.ad = null;
        this.ae = false;
        this.ao = false;
        this.ap = 0;
        this.aq = 0;
    }

    private int m5852a(int i) {
        return i == Integer.MAX_VALUE ? -1 : i;
    }

    private C0502a m5855a(CellInfo cellInfo) {
        int intValue = Integer.valueOf(VERSION.SDK_INT).intValue();
        if (intValue < 17) {
            return null;
        }
        C0502a c0502a = new C0502a(this);
        if (cellInfo.isRegistered()) {
            C0465K.m5633do("cellinfo", "isRegistered");
        }
        if (cellInfo instanceof CellInfoGsm) {
            CellIdentityGsm cellIdentity = ((CellInfoGsm) cellInfo).getCellIdentity();
            C0465K.m5633do("cellinfo", "CellInfoGsm");
            c0502a.f3998byte = m5852a(cellIdentity.getMcc());
            c0502a.f3999case = m5852a(cellIdentity.getMnc());
            c0502a.f3996a = m5852a(cellIdentity.getLac());
            c0502a.f4002for = m5852a(cellIdentity.getCid());
            c0502a.f4005new = 'g';
            c0502a.f4004int = ((CellInfoGsm) cellInfo).getCellSignalStrength().getAsuLevel();
        } else if (cellInfo instanceof CellInfoCdma) {
            CellIdentityCdma cellIdentity2 = ((CellInfoCdma) cellInfo).getCellIdentity();
            C0465K.m5633do("cellinfo", "CellInfoCdma");
            C0465K.m5633do("cellinfo", "lat = " + cellIdentity2.getLatitude());
            C0465K.m5633do("cellinfo", "lon = " + cellIdentity2.getLongitude());
            c0502a.f4000char = cellIdentity2.getLatitude();
            c0502a.f4001do = cellIdentity2.getLongitude();
            c0502a.f3999case = m5852a(cellIdentity2.getSystemId());
            c0502a.f3996a = m5852a(cellIdentity2.getNetworkId());
            c0502a.f4002for = m5852a(cellIdentity2.getBasestationId());
            c0502a.f4005new = 'c';
            c0502a.f4004int = ((CellInfoCdma) cellInfo).getCellSignalStrength().getCdmaDbm();
        } else if (cellInfo instanceof CellInfoLte) {
            CellIdentityLte cellIdentity3 = ((CellInfoLte) cellInfo).getCellIdentity();
            C0465K.m5633do("cellinfo", "CellInfoLte");
            c0502a.f3998byte = m5852a(cellIdentity3.getMcc());
            c0502a.f3999case = m5852a(cellIdentity3.getMnc());
            c0502a.f3996a = m5852a(cellIdentity3.getTac());
            c0502a.f4002for = m5852a(cellIdentity3.getCi());
            c0502a.f4005new = 'g';
            c0502a.f4004int = ((CellInfoLte) cellInfo).getCellSignalStrength().getAsuLevel();
        }
        if (intValue >= 18 && (cellInfo instanceof CellInfoWcdma)) {
            CellIdentityWcdma cellIdentity4 = ((CellInfoWcdma) cellInfo).getCellIdentity();
            C0465K.m5633do("cellinfo", "CellInfoWcdma");
            c0502a.f3998byte = m5852a(cellIdentity4.getMcc());
            c0502a.f3999case = m5852a(cellIdentity4.getMnc());
            c0502a.f3996a = m5852a(cellIdentity4.getLac());
            c0502a.f4002for = m5852a(cellIdentity4.getCid());
            c0502a.f4005new = 'g';
            c0502a.f4004int = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getAsuLevel();
        }
        c0502a.f4003if = System.currentTimeMillis();
        C0465K.m5633do("cellinfo", "mcc = " + c0502a.f3998byte);
        C0465K.m5633do("cellinfo", "mnc = " + c0502a.f3999case);
        C0465K.m5633do("cellinfo", "lac = " + c0502a.f3996a);
        C0465K.m5633do("cellinfo", "cid = " + c0502a.f4002for);
        return c0502a;
    }

    private C0502a m5856a(CellLocation cellLocation) {
        int i = 0;
        if (cellLocation == null || this.f4008Y == null) {
            return null;
        }
        if (!an) {
            ac = this.f4008Y.getDeviceId();
            an = m5865d();
        }
        C0502a c0502a = new C0502a(this);
        c0502a.f4003if = System.currentTimeMillis();
        try {
            String networkOperator = this.f4008Y.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
                if (networkOperator.length() >= 3) {
                    int intValue = Integer.valueOf(networkOperator.substring(0, 3)).intValue();
                    if (intValue < 0) {
                        intValue = this.f4009Z.f3998byte;
                    }
                    c0502a.f3998byte = intValue;
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
                    i = this.f4009Z.f3999case;
                }
                c0502a.f3999case = i;
            }
            this.ap = this.f4008Y.getSimState();
        } catch (Exception e) {
            this.aq = 1;
        }
        if (cellLocation instanceof GsmCellLocation) {
            c0502a.f3996a = ((GsmCellLocation) cellLocation).getLac();
            c0502a.f4002for = ((GsmCellLocation) cellLocation).getCid();
            c0502a.f4005new = 'g';
        } else if (cellLocation instanceof CdmaCellLocation) {
            c0502a.f4005new = 'c';
            if (Integer.valueOf(VERSION.SDK_INT).intValue() < 5) {
                return c0502a;
            }
            if (ak == null) {
                try {
                    ak = Class.forName("android.telephony.cdma.CdmaCellLocation");
                    af = ak.getMethod("getBaseStationId", new Class[0]);
                    ag = ak.getMethod("getNetworkId", new Class[0]);
                    ah = ak.getMethod("getSystemId", new Class[0]);
                    ai = ak.getMethod("getBaseStationLatitude", new Class[0]);
                    aj = ak.getMethod("getBaseStationLongitude", new Class[0]);
                } catch (Exception e2) {
                    ak = null;
                    this.aq = 2;
                    return c0502a;
                }
            }
            if (ak != null && ak.isInstance(cellLocation)) {
                try {
                    int intValue2 = ((Integer) ah.invoke(cellLocation, new Object[0])).intValue();
                    if (intValue2 < 0) {
                        intValue2 = this.f4009Z.f3999case;
                    }
                    c0502a.f3999case = intValue2;
                    c0502a.f4002for = ((Integer) af.invoke(cellLocation, new Object[0])).intValue();
                    c0502a.f3996a = ((Integer) ag.invoke(cellLocation, new Object[0])).intValue();
                    Object invoke = ai.invoke(cellLocation, new Object[0]);
                    if (((Integer) invoke).intValue() < Integer.MAX_VALUE) {
                        c0502a.f4000char = ((Integer) invoke).intValue();
                    }
                    invoke = aj.invoke(cellLocation, new Object[0]);
                    if (((Integer) invoke).intValue() < Integer.MAX_VALUE) {
                        c0502a.f4001do = ((Integer) invoke).intValue();
                    }
                } catch (Exception e3) {
                    this.aq = 3;
                    return c0502a;
                }
            }
        }
        m5859a(c0502a);
        return c0502a;
    }

    private void m5859a(C0502a c0502a) {
        if (!c0502a.m5848if()) {
            return;
        }
        if (this.f4009Z == null || !this.f4009Z.m5840a(c0502a)) {
            this.f4009Z = c0502a;
            if (c0502a.m5848if()) {
                int size = this.ab.size();
                C0502a c0502a2 = size == 0 ? null : (C0502a) this.ab.get(size - 1);
                if (c0502a2 == null || c0502a2.f4002for != this.f4009Z.f4002for || c0502a2.f3996a != this.f4009Z.f3996a) {
                    this.ab.add(this.f4009Z);
                    if (this.ab.size() > am) {
                        this.ab.remove(0);
                    }
                    m5863c();
                    this.ao = false;
                }
            } else if (this.ab != null) {
                this.ab.clear();
            }
        }
    }

    public static aj at() {
        if (f4007a == null) {
            f4007a = new aj();
        }
        return f4007a;
    }

    private void m5861b() {
        String str = C0465K.m5636goto();
        if (str != null) {
            File file = new File(str + File.separator + "lcvif.dat");
            if (file.exists()) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    if (System.currentTimeMillis() - randomAccessFile.readLong() > 60000) {
                        randomAccessFile.close();
                        file.delete();
                        return;
                    }
                    randomAccessFile.readInt();
                    for (int i = 0; i < 3; i++) {
                        long readLong = randomAccessFile.readLong();
                        int readInt = randomAccessFile.readInt();
                        int readInt2 = randomAccessFile.readInt();
                        int readInt3 = randomAccessFile.readInt();
                        int readInt4 = randomAccessFile.readInt();
                        int readInt5 = randomAccessFile.readInt();
                        char c = '\u0000';
                        if (readInt5 == 1) {
                            c = 'g';
                        }
                        if (readInt5 == 2) {
                            c = 'c';
                        }
                        if (readLong != 0) {
                            C0502a c0502a = new C0502a(this, readInt3, readInt4, readInt, readInt2, 0, c);
                            c0502a.f4003if = readLong;
                            if (c0502a.m5848if()) {
                                this.ao = true;
                                this.ab.add(c0502a);
                            }
                        }
                    }
                    randomAccessFile.close();
                } catch (Exception e) {
                    file.delete();
                }
            }
        }
    }

    private void m5863c() {
        int i = 0;
        if (this.ab != null || this.aa != null) {
            if (this.ab == null && this.aa != null) {
                this.ab = new LinkedList();
                this.ab.add(this.aa);
            }
            String str = C0465K.m5636goto();
            if (str != null) {
                File file = new File(str + File.separator + "lcvif.dat");
                int size = this.ab.size();
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    randomAccessFile.writeLong(((C0502a) this.ab.get(size - 1)).f4003if);
                    randomAccessFile.writeInt(size);
                    for (int i2 = 0; i2 < 3 - size; i2++) {
                        randomAccessFile.writeLong(0);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(-1);
                        randomAccessFile.writeInt(2);
                    }
                    while (i < size) {
                        randomAccessFile.writeLong(((C0502a) this.ab.get(i)).f4003if);
                        randomAccessFile.writeInt(((C0502a) this.ab.get(i)).f3998byte);
                        randomAccessFile.writeInt(((C0502a) this.ab.get(i)).f3999case);
                        randomAccessFile.writeInt(((C0502a) this.ab.get(i)).f3996a);
                        randomAccessFile.writeInt(((C0502a) this.ab.get(i)).f4002for);
                        if (((C0502a) this.ab.get(i)).f4005new == 'g') {
                            randomAccessFile.writeInt(1);
                        } else if (((C0502a) this.ab.get(i)).f4005new == 'c') {
                            randomAccessFile.writeInt(2);
                        } else {
                            randomAccessFile.writeInt(3);
                        }
                        i++;
                    }
                    randomAccessFile.close();
                } catch (Exception e) {
                }
            }
        }
    }

    private boolean m5865d() {
        if (ac == null || ac.length() < 10) {
            return false;
        }
        try {
            char[] toCharArray = ac.toCharArray();
            int i = 0;
            while (i < 10) {
                if (toCharArray[i] > '9' || toCharArray[i] < '0') {
                    return false;
                }
                i++;
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void m5867e() {
        C0502a a = m5856a(this.f4008Y.getCellLocation());
        if (a == null || !a.m5848if()) {
            a = m5868f();
            if (a != null) {
                m5859a(a);
            }
        }
    }

    private C0502a m5868f() {
        if (Integer.valueOf(VERSION.SDK_INT).intValue() < 17) {
            return null;
        }
        try {
            List<CellInfo> allCellInfo = this.f4008Y.getAllCellInfo();
            if (allCellInfo == null || allCellInfo.size() <= 0) {
                C0465K.m5633do("getAllCellInfo", "=null");
                return null;
            }
            C0465K.m5633do("cellinfo", "!=null");
            C0502a c0502a = null;
            for (CellInfo cellInfo : allCellInfo) {
                try {
                    if (cellInfo.isRegistered()) {
                        C0502a a = m5855a(cellInfo);
                        if (a != null) {
                            return a;
                        }
                        c0502a = a;
                    }
                } catch (Exception e) {
                    return c0502a;
                }
            }
            return c0502a;
        } catch (Exception e2) {
            return null;
        }
    }

    public int aB() {
        String subscriberId = ((TelephonyManager) C0513f.getServiceContext().getSystemService("phone")).getSubscriberId();
        if (subscriberId != null) {
            if (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) {
                return 1;
            }
            if (subscriberId.startsWith("46001")) {
                return 2;
            }
            if (subscriberId.startsWith("46003")) {
                return 3;
            }
        }
        return 0;
    }

    public int aq() {
        return this.f4008Y == null ? 0 : this.f4008Y.getNetworkType();
    }

    public synchronized void as() {
        if (this.ae) {
            if (!(this.ad == null || this.f4008Y == null)) {
                this.f4008Y.listen(this.ad, 0);
            }
            this.ad = null;
            this.f4008Y = null;
            this.ab.clear();
            this.ab = null;
            m5863c();
            this.ae = false;
        }
    }

    public C0502a aw() {
        if (!((this.f4009Z != null && this.f4009Z.m5846for() && this.f4009Z.m5848if()) || this.f4008Y == null)) {
            try {
                m5867e();
            } catch (Exception e) {
            }
        }
        if (this.f4009Z.m5842case()) {
            this.aa = null;
            this.aa = new C0502a(this, this.f4009Z.f3996a, this.f4009Z.f4002for, this.f4009Z.f3998byte, this.f4009Z.f3999case, this.f4009Z.f4004int, this.f4009Z.f4005new);
        }
        if (this.f4009Z.m5845else() && this.aa != null && System.currentTimeMillis() - this.aa.f4003if < 60000 && this.f4009Z.f4005new == 'c') {
            this.f4009Z.f3999case = this.aa.f3999case;
            this.f4009Z.f3998byte = this.aa.f3998byte;
        }
        return this.f4009Z;
    }

    public String ax() {
        return ac;
    }

    public synchronized void ay() {
        if (!this.ae) {
            if (C0532n.gR) {
                this.f4008Y = (TelephonyManager) C0513f.getServiceContext().getSystemService("phone");
                this.ab = new LinkedList();
                this.ad = new C0503b(this);
                m5861b();
                if (!(this.f4008Y == null || this.ad == null)) {
                    try {
                        this.f4008Y.listen(this.ad, 272);
                    } catch (Exception e) {
                    }
                    an = m5865d();
                    this.ae = true;
                }
            }
        }
    }

    public boolean az() {
        return this.ao;
    }
}
