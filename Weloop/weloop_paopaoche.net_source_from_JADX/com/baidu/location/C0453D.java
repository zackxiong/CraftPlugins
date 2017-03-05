package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.mapapi.map.WeightedLatLng;
import com.umeng.update.util.ProGuard;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Pattern;

/* renamed from: com.baidu.location.D */
class C0453D implements C0452e {
    private static C0453D aa;
    private final long f3862Y;
    private final long f3863Z;
    private final long f3864a;
    private WifiManager ab;
    private C0450a ac;
    private C0451b ad;
    private long ae;
    private long af;
    private boolean ag;
    private Object ah;
    private Method ai;
    private boolean aj;
    private long ak;

    /* renamed from: com.baidu.location.D.a */
    private class C0450a extends BroadcastReceiver {
        final /* synthetic */ C0453D f3799a;

        private C0450a(C0453D c0453d) {
            this.f3799a = c0453d;
        }

        public void onReceive(Context context, Intent intent) {
            if (context != null && intent.getAction().equals("android.net.wifi.SCAN_RESULTS")) {
                this.f3799a.ak = System.currentTimeMillis() / 1000;
                this.f3799a.m5548a();
                C0532n.bv().obtainMessage(41).sendToTarget();
                if (C0536r.bO().bR()) {
                    C0536r.bO().hj.obtainMessage(41).sendToTarget();
                }
                C0465K.m5633do(C0452e.f3849o, "WifiScan finished, in callback.");
                if (System.currentTimeMillis() - an.m5896do() <= 5000) {
                    C0465K.m5633do(C0452e.f3849o, "in wifi scan callback, upload the wifilist info!");
                    C0491Z.m5791do(an.m5897if(), this.f3799a.cn(), an.m5892a(), C0479T.m5734q().m5748p());
                }
            }
        }
    }

    /* renamed from: com.baidu.location.D.b */
    protected class C0451b {
        final /* synthetic */ C0453D f3800a;
        private long f3801b;
        private long f3802c;
        private boolean f3803d;
        private boolean f3804e;
        public List f3805for;

        public C0451b(C0453D c0453d, C0451b c0451b) {
            this.f3800a = c0453d;
            this.f3805for = null;
            this.f3801b = 0;
            this.f3802c = 0;
            this.f3803d = false;
            if (c0451b != null) {
                this.f3805for = c0451b.f3805for;
                this.f3801b = c0451b.f3801b;
                this.f3802c = c0451b.f3802c;
                this.f3803d = c0451b.f3803d;
            }
        }

        public C0451b(C0453D c0453d, List list, long j) {
            this.f3800a = c0453d;
            this.f3805for = null;
            this.f3801b = 0;
            this.f3802c = 0;
            this.f3803d = false;
            this.f3801b = j;
            this.f3805for = list;
            this.f3802c = System.currentTimeMillis();
            m5530a();
            C0465K.m5640if(C0452e.f3849o, m5544int());
        }

        private void m5530a() {
            if (m5546try() >= 1) {
                Object obj = 1;
                for (int size = this.f3805for.size() - 1; size >= 1 && r2 != null; size--) {
                    int i = 0;
                    obj = null;
                    while (i < size) {
                        Object obj2;
                        if (((ScanResult) this.f3805for.get(i)).level < ((ScanResult) this.f3805for.get(i + 1)).level) {
                            ScanResult scanResult = (ScanResult) this.f3805for.get(i + 1);
                            this.f3805for.set(i + 1, this.f3805for.get(i));
                            this.f3805for.set(i, scanResult);
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

        public String m5531a(int i) {
            int i2 = 0;
            try {
                if (m5546try() < 1) {
                    return null;
                }
                StringBuffer stringBuffer = new StringBuffer(512);
                int size = this.f3805for.size();
                if (size <= i) {
                    i = size;
                }
                while (i2 < i) {
                    if (((ScanResult) this.f3805for.get(i2)).level != 0) {
                        stringBuffer.append(String.format(Locale.CHINA, "<access-point>\n<mac>%s</mac>\n<signal-strength>%d</signal-strength>\n</access-point>\n", new Object[]{((ScanResult) this.f3805for.get(i2)).BSSID.replace(":", ""), Integer.valueOf(((ScanResult) this.f3805for.get(i2)).level)}));
                    }
                    i2++;
                }
                return stringBuffer.toString();
            } catch (Exception e) {
                return null;
            }
        }

        public boolean m5532a(C0451b c0451b) {
            return C0453D.m5554if(c0451b, this, C0465K.f3897Y);
        }

        public String m5533byte() {
            try {
                return m5541if(15);
            } catch (Exception e) {
                return null;
            }
        }

        public boolean m5534case() {
            return this.f3803d;
        }

        public String m5535char() {
            try {
                return m5541if(C0465K.a3);
            } catch (Exception e) {
                return null;
            }
        }

        public int m5536do() {
            for (int i = 0; i < m5546try(); i++) {
                int i2 = -((ScanResult) this.f3805for.get(i)).level;
                if (i2 > 0) {
                    return i2;
                }
            }
            return 0;
        }

        public String m5537do(int i) {
            if (i == 0 || m5546try() < 1) {
                return null;
            }
            int i2;
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
            if (this.f3805for.size() > C0465K.a3) {
                i2 = C0465K.a3;
            }
            i2 = 0;
            int i3 = 1;
            for (int i4 = 0; i4 < C0465K.a3; i4++) {
                if ((i3 & i) != 0) {
                    if (i2 == 0) {
                        stringBuffer.append("&ssid=");
                    } else {
                        stringBuffer.append("|");
                    }
                    stringBuffer.append(((ScanResult) this.f3805for.get(i4)).BSSID);
                    stringBuffer.append(";");
                    stringBuffer.append(((ScanResult) this.f3805for.get(i4)).SSID);
                    i2++;
                }
                i3 <<= 1;
            }
            return stringBuffer.toString();
        }

        public boolean m5538do(C0451b c0451b) {
            if (this.f3805for == null || c0451b == null || c0451b.f3805for == null) {
                return false;
            }
            int size = this.f3805for.size() < c0451b.f3805for.size() ? this.f3805for.size() : c0451b.f3805for.size();
            for (int i = 0; i < size; i++) {
                String str = ((ScanResult) this.f3805for.get(i)).BSSID;
                int i2 = ((ScanResult) this.f3805for.get(i)).level;
                String str2 = ((ScanResult) c0451b.f3805for.get(i)).BSSID;
                int i3 = ((ScanResult) c0451b.f3805for.get(i)).level;
                if (!str.equals(str2) || i2 != i3) {
                    return false;
                }
            }
            return true;
        }

        public String m5539else() {
            StringBuffer stringBuffer = new StringBuffer(512);
            stringBuffer.append("wifi info:");
            if (m5546try() < 1) {
                return stringBuffer.toString();
            }
            int size = this.f3805for.size();
            if (size > 10) {
                size = 10;
            }
            int i = 0;
            int i2 = 1;
            while (i < size) {
                int i3;
                if (((ScanResult) this.f3805for.get(i)).level == 0) {
                    i3 = i2;
                } else if (i2 != 0) {
                    stringBuffer.append("wifi=");
                    stringBuffer.append(((ScanResult) this.f3805for.get(i)).BSSID.replace(":", ""));
                    i3 = ((ScanResult) this.f3805for.get(i)).level;
                    stringBuffer.append(String.format(Locale.CHINA, ";%d;", new Object[]{Integer.valueOf(i3)}));
                    i3 = 0;
                } else {
                    stringBuffer.append(";");
                    stringBuffer.append(((ScanResult) this.f3805for.get(i)).BSSID.replace(":", ""));
                    i3 = ((ScanResult) this.f3805for.get(i)).level;
                    stringBuffer.append(String.format(Locale.CHINA, ",%d;", new Object[]{Integer.valueOf(i3)}));
                    i3 = i2;
                }
                i++;
                i2 = i3;
            }
            return stringBuffer.toString();
        }

        public boolean m5540for() {
            return System.currentTimeMillis() - this.f3802c < 3000;
        }

        public String m5541if(int i) {
            if (m5546try() < 1) {
                return null;
            }
            int i2 = 0;
            Random random = new Random();
            StringBuffer stringBuffer = new StringBuffer(512);
            String cA = this.f3800a.cA();
            int i3 = 0;
            int i4 = 0;
            int size = this.f3805for.size();
            Object obj = 1;
            if (size <= i) {
                i = size;
            }
            int i5 = 0;
            while (i5 < i) {
                Object obj2;
                int i6;
                int i7;
                if (((ScanResult) this.f3805for.get(i5)).level == 0) {
                    obj2 = obj;
                    i6 = i3;
                    i7 = i4;
                    i4 = i2;
                    i2 = i7;
                } else {
                    if (obj != null) {
                        obj = null;
                        stringBuffer.append("&wf=");
                    } else {
                        stringBuffer.append("|");
                    }
                    String replace = ((ScanResult) this.f3805for.get(i5)).BSSID.replace(":", "");
                    stringBuffer.append(replace);
                    size = ((ScanResult) this.f3805for.get(i5)).level;
                    if (size < 0) {
                        size = -size;
                    }
                    stringBuffer.append(String.format(Locale.CHINA, ";%d;", new Object[]{Integer.valueOf(size)}));
                    i3++;
                    if (cA != null && cA.equals(replace)) {
                        this.f3804e = this.f3800a.m5551a(((ScanResult) this.f3805for.get(i5)).capabilities);
                        i4 = i3;
                    }
                    if (i2 == 0) {
                        try {
                            if (random.nextInt(10) == 2 && ((ScanResult) this.f3805for.get(i5)).SSID != null && ((ScanResult) this.f3805for.get(i5)).SSID.length() < 30) {
                                stringBuffer.append(((ScanResult) this.f3805for.get(i5)).SSID);
                                size = 1;
                            }
                            size = i2;
                        } catch (Exception e) {
                            obj2 = obj;
                            i6 = i3;
                            i7 = i4;
                            i4 = i2;
                            i2 = i7;
                        }
                    } else {
                        if (i2 == 1) {
                            if (random.nextInt(20) == 1 && ((ScanResult) this.f3805for.get(i5)).SSID != null && ((ScanResult) this.f3805for.get(i5)).SSID.length() < 30) {
                                stringBuffer.append(((ScanResult) this.f3805for.get(i5)).SSID);
                                size = 2;
                            }
                        }
                        size = i2;
                    }
                    i2 = i4;
                    i4 = size;
                    obj2 = obj;
                    i6 = i3;
                }
                i5++;
                i3 = i6;
                obj = obj2;
                i7 = i2;
                i2 = i4;
                i4 = i7;
            }
            if (obj != null) {
                return null;
            }
            stringBuffer.append("&wf_n=" + i4);
            stringBuffer.append("&wf_st=");
            stringBuffer.append(this.f3801b);
            stringBuffer.append("&wf_et=");
            stringBuffer.append(this.f3802c);
            stringBuffer.append("&wf_vt=");
            stringBuffer.append(this.f3800a.ak);
            if (i4 > 0) {
                this.f3803d = true;
                stringBuffer.append("&wf_en=");
                stringBuffer.append(this.f3804e ? 1 : 0);
            }
            return stringBuffer.toString();
        }

        public boolean m5542if() {
            return System.currentTimeMillis() - this.f3801b < 3000;
        }

        public boolean m5543if(C0451b c0451b) {
            if (this.f3805for == null || c0451b == null || c0451b.f3805for == null) {
                return false;
            }
            int size = this.f3805for.size() < c0451b.f3805for.size() ? this.f3805for.size() : c0451b.f3805for.size();
            for (int i = 0; i < size; i++) {
                if (!((ScanResult) this.f3805for.get(i)).BSSID.equals(((ScanResult) c0451b.f3805for.get(i)).BSSID)) {
                    return false;
                }
            }
            return true;
        }

        public String m5544int() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("wifi=");
            if (this.f3805for == null) {
                return stringBuilder.toString();
            }
            for (int i = 0; i < this.f3805for.size(); i++) {
                int i2 = ((ScanResult) this.f3805for.get(i)).level;
                stringBuilder.append(((ScanResult) this.f3805for.get(i)).BSSID.replace(":", ""));
                stringBuilder.append(String.format(Locale.CHINA, ",%d;", new Object[]{Integer.valueOf(i2)}));
            }
            return stringBuilder.toString();
        }

        public boolean m5545new() {
            return System.currentTimeMillis() - this.f3802c < 5000;
        }

        public int m5546try() {
            return this.f3805for == null ? 0 : this.f3805for.size();
        }
    }

    static {
        aa = null;
    }

    private C0453D() {
        this.f3864a = 3000;
        this.f3862Y = 3000;
        this.f3863Z = 5000;
        this.ab = null;
        this.ac = null;
        this.ad = null;
        this.ae = 0;
        this.af = 0;
        this.ag = false;
        this.ah = null;
        this.ai = null;
        this.aj = true;
        this.ak = 0;
    }

    private void m5548a() {
        if (this.ab != null) {
            try {
                C0451b c0451b = new C0451b(this, this.ab.getScanResults(), this.ae);
                this.ae = 0;
                if (this.ad == null || !c0451b.m5543if(this.ad)) {
                    this.ad = c0451b;
                }
            } catch (Exception e) {
            }
        }
    }

    private boolean m5551a(String str) {
        return TextUtils.isEmpty(str) ? false : Pattern.compile("wpa|wep", 2).matcher(str).find();
    }

    public static boolean cq() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C0513f.getServiceContext().getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public static C0453D cs() {
        if (aa == null) {
            aa = new C0453D();
        }
        return aa;
    }

    public static double m5553if(C0451b c0451b, C0451b c0451b2) {
        if (c0451b == null || c0451b2 == null) {
            return 0.0d;
        }
        List list = c0451b.f3805for;
        List list2 = c0451b2.f3805for;
        if (list == list2) {
            return WeightedLatLng.DEFAULT_INTENSITY;
        }
        if (list == null || list2 == null) {
            return 0.0d;
        }
        int size = list.size();
        int size2 = list2.size();
        float f = (float) (size + size2);
        if (size == 0 && size2 == 0) {
            return WeightedLatLng.DEFAULT_INTENSITY;
        }
        if (size == 0 || size2 == 0) {
            return 0.0d;
        }
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3;
            String str = ((ScanResult) list.get(i)).BSSID;
            if (str == null) {
                i3 = i2;
            } else {
                for (int i4 = 0; i4 < size2; i4++) {
                    if (str.equals(((ScanResult) list2.get(i4)).BSSID)) {
                        i3 = i2 + 1;
                        break;
                    }
                }
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        return f <= 0.0f ? 0.0d : ((double) i2) / ((double) f);
    }

    public static boolean m5554if(C0451b c0451b, C0451b c0451b2, float f) {
        if (c0451b == null || c0451b2 == null) {
            return false;
        }
        List list = c0451b.f3805for;
        List list2 = c0451b2.f3805for;
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null) {
            return false;
        }
        int size = list.size();
        int size2 = list2.size();
        float f2 = (float) (size + size2);
        if (size == 0 && size2 == 0) {
            return true;
        }
        if (size == 0 || size2 == 0) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3;
            String str = ((ScanResult) list.get(i)).BSSID;
            if (str == null) {
                i3 = i2;
            } else {
                for (int i4 = 0; i4 < size2; i4++) {
                    if (str.equals(((ScanResult) list2.get(i4)).BSSID)) {
                        i3 = i2 + 1;
                        break;
                    }
                }
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        return ((float) (i2 * 2)) >= f2 * f;
    }

    public String cA() {
        WifiInfo connectionInfo = this.ab.getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        try {
            String bssid = connectionInfo.getBSSID();
            if (bssid != null) {
                bssid = bssid.replace(":", "");
                if ("000000000000".equals(bssid) || "".equals(bssid)) {
                    return null;
                }
            }
            bssid = null;
            return bssid;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean cB() {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.baidu.location.D.cB():boolean. bs: [B:12:0x0020, B:21:0x0050]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:57)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r7 = this;
        r1 = 1;
        r0 = 0;
        r2 = r7.ab;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r2 = r2.isWifiEnabled();	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        if (r2 != 0) goto L_0x0018;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x000a:
        r2 = android.os.Build.VERSION.SDK_INT;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r3 = 17;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        if (r2 <= r3) goto L_0x0058;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x0010:
        r2 = r7.ab;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r2 = r2.isScanAlwaysAvailable();	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        if (r2 == 0) goto L_0x0058;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x0018:
        r2 = r7.ai;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        if (r2 == 0) goto L_0x0050;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x001c:
        r2 = r7.ah;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        if (r2 == 0) goto L_0x0050;
    L_0x0020:
        r2 = r7.ai;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r3 = r7.ah;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r4 = 1;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r5 = 0;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r6 = r7.aj;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r6 = java.lang.Boolean.valueOf(r6);	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
        r2.invoke(r3, r4);	 Catch:{ Exception -> 0x003b, NoSuchMethodError -> 0x0042 }
    L_0x0033:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r7.ae = r2;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r0 = r1;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x003a:
        return r0;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x003b:
        r2 = move-exception;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r2 = r7.ab;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r2.startScan();	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        goto L_0x0033;
    L_0x0042:
        r0 = move-exception;
        r0 = r7.ab;
        r0.startScan();
        r2 = java.lang.System.currentTimeMillis();
        r7.ae = r2;
        r0 = r1;
        goto L_0x003a;
    L_0x0050:
        r2 = r7.ab;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r2.startScan();	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        goto L_0x0033;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x0056:
        r1 = move-exception;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        goto L_0x003a;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
    L_0x0058:
        r2 = 0;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        r7.ae = r2;	 Catch:{ NoSuchMethodError -> 0x0042, Exception -> 0x0056 }
        goto L_0x003a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.D.cB():boolean");
    }

    public C0451b cn() {
        return (this.ad == null || !this.ad.m5540for()) ? cu() : this.ad;
    }

    public synchronized void co() {
        if (this.ag) {
            try {
                C0513f.getServiceContext().unregisterReceiver(this.ac);
                this.ak = 0;
            } catch (Exception e) {
            }
            this.ac = null;
            this.ab = null;
            this.ag = false;
        }
    }

    public boolean cp() {
        boolean z = false;
        if (this.ab != null) {
            try {
                z = this.ab.isScanAlwaysAvailable();
            } catch (NoSuchMethodError e) {
            }
        }
        return z;
    }

    public boolean ct() {
        return (this.ab != null && System.currentTimeMillis() - this.ae > 3000) ? cB() : false;
    }

    public C0451b cu() {
        if (this.ab != null) {
            try {
                return new C0451b(this, this.ab.getScanResults(), 0);
            } catch (Exception e) {
            }
        }
        return new C0451b(this, null, 0);
    }

    public boolean cv() {
        return this.ab.isWifiEnabled() && 3 == this.ab.getWifiState();
    }

    public String cw() {
        String str = null;
        try {
            WifiInfo connectionInfo = this.ab.getConnectionInfo();
            if (connectionInfo != null) {
                str = connectionInfo.getMacAddress();
            }
        } catch (Exception e) {
        }
        return str;
    }

    public C0451b cx() {
        return (this.ad == null || !this.ad.m5545new()) ? cu() : this.ad;
    }

    public synchronized void cy() {
        if (!this.ag) {
            if (C0532n.gR) {
                this.ab = (WifiManager) C0513f.getServiceContext().getSystemService(GetApn.APN_TYPE_WIFI);
                this.ac = new C0450a();
                try {
                    C0513f.getServiceContext().registerReceiver(this.ac, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
                } catch (Exception e) {
                }
                this.ag = true;
                try {
                    Field declaredField = Class.forName("android.net.wifi.WifiManager").getDeclaredField("mService");
                    if (declaredField != null) {
                        declaredField.setAccessible(true);
                        this.ah = declaredField.get(this.ab);
                        this.ah.getClass();
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    public boolean cz() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.af <= 5000) {
            return false;
        }
        this.af = currentTimeMillis;
        return ct();
    }
}
