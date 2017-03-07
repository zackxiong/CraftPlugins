package com.baidu.location;

import android.app.AlarmManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.os.Handler;
import android.text.TextUtils;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import com.baidu.mapapi.map.WeightedLatLng;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

/* renamed from: com.baidu.location.U */
class C0483U implements C0452e {
    private static String ad = null;
    private static File ae = null;
    private static File af = null;
    public static final String bP = "com.baidu.locTest.LocationServer5.2.1";
    ArrayList f3957Y;
    ArrayList f3958Z;
    C0482c f3959a;
    private long aA;
    private long aB;
    private long aC;
    private String aD;
    private boolean aE;
    long aa;
    String ab;
    private String ac;
    private final long ag;
    private final int ah;
    private AlarmManager ai;
    private C0480a aj;
    private PendingIntent ak;
    private Context al;
    private long am;
    private long[] an;
    private int ao;
    private C0502a ap;
    private String aq;
    private int ar;
    private boolean as;
    private boolean at;
    private boolean au;
    private Handler av;
    private final int aw;
    private boolean ax;
    private long ay;
    private int az;

    /* renamed from: com.baidu.location.U.a */
    public class C0480a extends BroadcastReceiver {
        final /* synthetic */ C0483U f3949a;

        public C0480a(C0483U c0483u) {
            this.f3949a = c0483u;
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(C0483U.bP)) {
                this.f3949a.av.sendEmptyMessage(1);
            }
        }
    }

    /* renamed from: com.baidu.location.U.b */
    class C0481b {
        public static final double f3950do = 0.8d;
        public static final double f3951if = 0.7d;
        final /* synthetic */ C0483U f3952a;
        private HashMap f3953b;
        private double f3954c;

        public C0481b(C0483U c0483u, C0451b c0451b) {
            this.f3952a = c0483u;
            this.f3953b = new HashMap();
            this.f3954c = WeightedLatLng.DEFAULT_INTENSITY;
            if (c0451b.f3805for != null) {
                int i = 0;
                for (ScanResult scanResult : c0451b.f3805for) {
                    int abs = Math.abs(scanResult.level);
                    this.f3953b.put(scanResult.BSSID, Integer.valueOf(abs));
                    this.f3954c += (double) ((100 - abs) * (100 - abs));
                    int i2 = i + 1;
                    if (i2 > 16) {
                        break;
                    }
                    i = i2;
                }
                this.f3954c = Math.sqrt(this.f3954c);
            }
        }

        public double m5749a() {
            return this.f3954c;
        }

        double m5750a(C0481b c0481b) {
            double d = 0.0d;
            for (String str : this.f3953b.keySet()) {
                int intValue = ((Integer) this.f3953b.get(str)).intValue();
                Integer num = (Integer) c0481b.m5751if().get(str);
                if (num != null) {
                    d = ((double) ((100 - num.intValue()) * (100 - intValue))) + d;
                }
            }
            return d / (this.f3954c * c0481b.m5749a());
        }

        public HashMap m5751if() {
            return this.f3953b;
        }
    }

    /* renamed from: com.baidu.location.U.c */
    class C0482c extends BroadcastReceiver {
        boolean f3955a;
        final /* synthetic */ C0483U f3956b;

        public C0482c(C0483U c0483u) {
            this.f3956b = c0483u;
            this.f3955a = false;
            m5752a(C0513f.getServiceContext());
        }

        public void m5752a(Context context) {
            if (!this.f3955a) {
                this.f3955a = true;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                context.registerReceiver(this, intentFilter);
            }
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!action.equals("android.intent.action.SCREEN_ON") && action.equals("android.intent.action.SCREEN_OFF")) {
                C0533o.bI().bG();
            }
        }
    }

    static {
        ad = P + "/glb.dat";
        ae = null;
        af = null;
    }

    public C0483U(Context context) {
        this.ac = P + "/vm.dat";
        this.ag = 86100000;
        this.ah = 200;
        this.ai = null;
        this.aj = null;
        this.ak = null;
        this.al = null;
        this.am = 0;
        this.an = new long[20];
        this.ao = 0;
        this.ap = null;
        this.aq = null;
        this.ar = 1;
        this.as = false;
        this.at = false;
        this.au = false;
        this.av = null;
        this.aw = 1;
        this.ax = false;
        this.ay = C0465K.aU;
        this.az = 0;
        this.aA = 0;
        this.aB = 0;
        this.aC = 0;
        this.aD = "";
        this.aE = false;
        this.f3959a = null;
        this.f3957Y = null;
        this.f3958Z = null;
        this.aa = 0;
        this.ab = "dlcu.dat";
        this.al = context;
        this.aa = 0;
        try {
            this.f3959a = new C0482c(this);
        } catch (Exception e) {
            this.f3959a = null;
        }
        synchronized (this) {
            this.av = new C0484V(this);
            this.am = System.currentTimeMillis();
            this.ai = (AlarmManager) context.getSystemService("alarm");
            this.aj = new C0480a(this);
            context.registerReceiver(this.aj, new IntentFilter(bP));
            this.ak = PendingIntent.getBroadcast(context, 0, new Intent(bP), 134217728);
            this.ai.set(0, System.currentTimeMillis() + 1000, this.ak);
            this.ay = C0465K.aU;
            this.f3957Y = new ArrayList();
            this.f3958Z = new ArrayList();
            m5755b();
            this.ax = true;
        }
    }

    private void m5754a(boolean z) {
        String str = C0465K.m5629case();
        if (str != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str + File.separator + "baidu/tempdata/" + this.ab, "rw");
                if (z) {
                    randomAccessFile.seek(0);
                    randomAccessFile.writeLong(System.currentTimeMillis());
                    randomAccessFile.writeInt(2125);
                    this.az = 0;
                    this.aA = System.currentTimeMillis();
                } else {
                    randomAccessFile.seek(12);
                }
                randomAccessFile.writeInt(this.az);
                randomAccessFile.writeInt(2125);
                randomAccessFile.close();
            } catch (Exception e) {
            }
        }
    }

    private void m5755b() {
        String str = C0465K.m5629case();
        if (str != null) {
            long readLong;
            int readInt;
            int i;
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str + File.separator + "baidu/tempdata/" + this.ab, "r");
                randomAccessFile.seek(0);
                readLong = randomAccessFile.readLong();
                try {
                    if (randomAccessFile.readInt() == 2125) {
                        readInt = randomAccessFile.readInt();
                        try {
                            i = randomAccessFile.readInt() == 2125 ? 1 : 0;
                        } catch (Exception e) {
                            i = 0;
                        }
                    } else {
                        readInt = 0;
                        i = 0;
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Exception e2) {
                    }
                } catch (Exception e3) {
                    readInt = 0;
                    i = 0;
                }
            } catch (Exception e4) {
                readLong = 0;
                readInt = 0;
                i = 0;
            }
            if (i != 0) {
                this.az = readInt;
                this.aA = readLong;
                return;
            }
            this.az = 0;
            this.aA = 0;
        }
    }

    public static void m5756r() {
        try {
            if (ad != null) {
                af = new File(ad);
                if (!af.exists()) {
                    File file = new File(P);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    af.createNewFile();
                    RandomAccessFile randomAccessFile = new RandomAccessFile(af, "rw");
                    randomAccessFile.seek(0);
                    randomAccessFile.writeInt(-1);
                    randomAccessFile.writeInt(-1);
                    randomAccessFile.writeInt(0);
                    randomAccessFile.writeLong(0);
                    randomAccessFile.writeInt(0);
                    randomAccessFile.writeInt(0);
                    randomAccessFile.close();
                    return;
                }
                return;
            }
            af = null;
        } catch (Exception e) {
            af = null;
        }
    }

    public static String m5757t() {
        return null;
    }

    void m5758a() {
        if (this.ax) {
            long currentTimeMillis = this.aC != 0 ? (System.currentTimeMillis() - this.aC) + 30000 : 0;
            this.aC = System.currentTimeMillis();
            String str = C0465K.m5629case();
            if (str == null) {
                this.ai.set(0, System.currentTimeMillis() + C0465K.aS, this.ak);
                return;
            }
            C0502a aw = aj.at().aw();
            if (aw == null) {
                this.ai.set(0, System.currentTimeMillis() + C0465K.aS, this.ak);
                return;
            }
            int size;
            C0451b cx = C0453D.cs().cx();
            Object obj = null;
            if (this.aa == 0) {
                obj = 1;
                this.f3957Y.clear();
                this.f3958Z.clear();
            }
            Object obj2 = obj;
            int i = 0;
            if (obj2 == null) {
                size = this.f3958Z.size();
                if (size > 0 && aw.m5840a((C0502a) this.f3958Z.get(size - 1)) && this.f3957Y.size() >= size) {
                    C0451b c0451b = (C0451b) this.f3957Y.get(size - 1);
                    if (!m5759a(C0453D.m5553if(cx, c0451b), new C0481b(this, c0451b).m5750a(new C0481b(this, cx)))) {
                        i = -1;
                    }
                }
            }
            obj = null;
            if (i < 0) {
                obj = 1;
            }
            if (obj == null) {
                if (System.currentTimeMillis() - this.aA > 86400000 || System.currentTimeMillis() - this.aA < 0) {
                    this.az = 0;
                    m5754a(true);
                } else {
                    this.az++;
                    m5754a(false);
                }
                if (this.az > C0465K.al) {
                    this.aB = (this.aA + 86400000) - System.currentTimeMillis();
                }
            }
            if (this.aB > 900000) {
                this.ay = this.aB;
                this.ai.set(0, System.currentTimeMillis() + this.ay, this.ak);
                this.aB = 0;
            } else if (i < 0) {
                this.ay += C0465K.aT;
                if (cx == null || cx.f3805for == null || cx.f3805for.size() == 0) {
                    if (this.ay > C0465K.a9) {
                        this.ay = C0465K.a9;
                    }
                } else if (this.ay > C0465K.aS) {
                    this.ay = C0465K.aS;
                }
                this.ai.set(0, System.currentTimeMillis() + this.ay, this.ak);
                this.aE = true;
            } else {
                this.ay = C0465K.aU;
                this.ai.set(0, System.currentTimeMillis() + this.ay, this.ak);
                if (System.currentTimeMillis() - this.aa > 840000) {
                    this.f3957Y.clear();
                    this.f3958Z.clear();
                }
            }
            this.aa = System.currentTimeMillis();
            if (obj != null) {
                C0491Z.m5803y().m5805A();
                return;
            }
            String str2;
            StringBuffer stringBuffer = new StringBuffer(200);
            if (obj2 != null) {
                stringBuffer.append("s");
            }
            stringBuffer.append("v");
            stringBuffer.append(5);
            int currentTimeMillis2 = (int) (System.currentTimeMillis() >> 15);
            stringBuffer.append("t");
            stringBuffer.append(currentTimeMillis2);
            if (aw.m5848if()) {
                if (aw.f3998byte == 460) {
                    stringBuffer.append("x,");
                } else {
                    stringBuffer.append("x");
                    stringBuffer.append(aw.f3998byte);
                    stringBuffer.append(",");
                }
                stringBuffer.append(aw.f3999case);
                stringBuffer.append(",");
                stringBuffer.append(aw.f3996a);
                stringBuffer.append(",");
                stringBuffer.append(aw.f4002for);
            }
            String cA = C0453D.cs().cA();
            int i2 = 0;
            obj2 = null;
            String str3 = null;
            if (!(cx == null || cx.f3805for == null)) {
                int i3;
                size = 0;
                while (size < cx.f3805for.size()) {
                    Object obj3;
                    String replace = ((ScanResult) cx.f3805for.get(size)).BSSID.replace(":", "");
                    int i4 = ((ScanResult) cx.f3805for.get(size)).level;
                    int i5 = i4 < 0 ? -i4 : i4;
                    String str4;
                    if (i2 >= 3) {
                        obj = obj2;
                        i3 = i2;
                        if (i3 > 2) {
                            break;
                        }
                        str4 = str3;
                        obj3 = obj;
                        str2 = str4;
                    } else if (size < 2 || obj2 != null || cA == null || cA.equals(replace)) {
                        if (size == 0) {
                            stringBuffer.append("w");
                        } else {
                            stringBuffer.append(",");
                        }
                        stringBuffer.append(replace);
                        if (cA != null && cA.equals(replace)) {
                            obj = ((ScanResult) cx.f3805for.get(size)).capabilities;
                            if (TextUtils.isEmpty(obj)) {
                                stringBuffer.append("j");
                            } else {
                                str2 = obj.toUpperCase(Locale.CHINA);
                                if (str2.contains("WEP") || str2.contains("WPA")) {
                                    stringBuffer.append("l");
                                } else {
                                    stringBuffer.append("j");
                                }
                            }
                            obj2 = 1;
                        }
                        stringBuffer.append(";" + i5);
                        obj = obj2;
                        i3 = i2 + 1;
                        if (i3 > 2) {
                            break;
                        }
                        str4 = str3;
                        obj3 = obj;
                        str2 = str4;
                    } else if (str3 == null) {
                        str2 = "," + replace + ";" + i5;
                        obj3 = obj2;
                        i3 = i2;
                    } else {
                        str2 = str3;
                        obj3 = obj2;
                        i3 = i2;
                    }
                    size++;
                    i2 = i3;
                    obj2 = obj3;
                    str3 = str2;
                }
                i3 = i2;
                if (i3 < 3 && str3 != null) {
                    stringBuffer.append(str3);
                }
            }
            try {
                if (m5760s()) {
                    str2 = "y2";
                } else {
                    str2 = "y1";
                    C0533o.bI().m6080case(currentTimeMillis2);
                }
            } catch (Exception e) {
                str2 = "y";
            }
            if (C0512d.m5947do().m5948a() != null) {
                str2 = str2 + C0512d.m5947do().m5948a();
            }
            stringBuffer.append(str2);
            if (this.aE) {
                if (currentTimeMillis > 0) {
                    this.aD = "r" + (currentTimeMillis / 60000);
                    stringBuffer.append(this.aD);
                    this.aD = "";
                }
                this.aE = false;
            }
            System.currentTimeMillis();
            Jni.m5621int(str, stringBuffer.toString());
            this.f3957Y.add(cx);
            while (this.f3957Y.size() > 3) {
                this.f3957Y.remove(0);
            }
            this.f3958Z.add(aw);
            while (this.f3958Z.size() > 3) {
                this.f3958Z.remove(0);
            }
            C0491Z.m5803y().m5805A();
        }
    }

    boolean m5759a(double d, double d2) {
        return ((-2.1971522d * d) + (-0.70587059d * d2)) + 0.8428018d > 0.0d;
    }

    public boolean m5760s() {
        return ((KeyguardManager) this.al.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public synchronized void m5761v() {
        this.ax = false;
        if (this.aj != null) {
            this.al.unregisterReceiver(this.aj);
        }
        this.aj = null;
        if (!(this.ai == null || this.ak == null)) {
            this.ai.cancel(this.ak);
        }
        this.ai = null;
        this.ak = null;
        ae = null;
        this.f3957Y.clear();
        this.f3958Z.clear();
        this.f3957Y = null;
        this.f3958Z = null;
        this.aa = 0;
        this.aC = 0;
        this.aD = "";
        this.aE = false;
    }
}
