package com.baidu.location;

import android.location.Location;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import com.umeng.update.util.ProGuard;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.location.Z */
class C0491Z implements C0452e {
    private static ArrayList f3974Y;
    private static ArrayList f3975Z;
    private static Location aA;
    private static Location aB;
    private static C0451b aC;
    private static C0491Z aE;
    private static ArrayList aa;
    private static ArrayList ab;
    private static ArrayList ac;
    private static ArrayList ad;
    private static String ae;
    private static final String af;
    private static final String ag;
    private static final String ah;
    private static final String ai;
    private static File aj;
    private static int ak;
    private static int al;
    private static int am;
    private static int an;
    private static int ao;
    private static int ap;
    private static int aq;
    private static int ar;
    private static double as;
    private static double at;
    private static double au;
    private static double av;
    private static int aw;
    private static int ax;
    private static int ay;
    private static Location az;
    long f3976a;
    private C0490b aD;
    private int aF;

    /* renamed from: com.baidu.location.Z.a */
    private class C0489a extends ac {
        private String f3969Y;
        final /* synthetic */ C0491Z f3970a;

        public C0489a(C0491Z c0491z, String str) {
            this.f3970a = c0491z;
            this.f3969Y = str;
            this.c0 = new ArrayList();
        }

        void m5774X() {
            this.cY = C0465K.m5635for();
            this.c0.add(new BasicNameValuePair("cldc[0]", this.f3969Y));
        }

        public void aj() {
            m5570R();
        }

        void m5775do(boolean z) {
            if (!z || this.cZ != null) {
            }
        }
    }

    /* renamed from: com.baidu.location.Z.b */
    private class C0490b extends ac {
        int f3971Y;
        int f3972Z;
        boolean f3973a;
        final /* synthetic */ C0491Z aa;
        private ArrayList ab;

        public C0490b(C0491Z c0491z) {
            this.aa = c0491z;
            this.f3973a = false;
            this.f3971Y = 0;
            this.f3972Z = 0;
            this.ab = null;
            this.c0 = new ArrayList();
        }

        void m5776X() {
            this.cY = C0465K.m5635for();
            this.c9 = 2;
            if (this.ab != null) {
                for (int i = 0; i < this.ab.size(); i++) {
                    if (this.f3971Y == 1) {
                        this.c0.add(new BasicNameValuePair("cldc[" + i + "]", (String) this.ab.get(i)));
                    } else {
                        this.c0.add(new BasicNameValuePair("cltr[" + i + "]", (String) this.ab.get(i)));
                    }
                }
                this.c0.add(new BasicNameValuePair("trtm", String.format(Locale.CHINA, "%d", new Object[]{Long.valueOf(System.currentTimeMillis())})));
            }
        }

        public void ak() {
            if (!this.f3973a) {
                if (ad <= 4 || this.f3972Z >= ad) {
                    this.f3972Z = 0;
                    this.f3973a = true;
                    this.f3971Y = 0;
                    if (this.ab == null || this.ab.size() < 1) {
                        if (this.ab == null) {
                            this.ab = new ArrayList();
                        }
                        this.f3971Y = 0;
                        int i = 0;
                        do {
                            String C = this.f3971Y < 2 ? C0491Z.m5778C() : null;
                            if (C != null || this.f3971Y == 1) {
                                this.f3971Y = 1;
                            } else {
                                this.f3971Y = 2;
                                try {
                                    if (C0465K.bb == 0) {
                                        C = C0483U.m5757t();
                                        if (C == null) {
                                            C = am.aW();
                                        }
                                    } else if (C0465K.bb == 1) {
                                        C = am.aW();
                                        if (C == null) {
                                            C = C0483U.m5757t();
                                        }
                                    }
                                } catch (Exception e) {
                                    C = null;
                                }
                            }
                            if (C == null) {
                                break;
                            }
                            this.ab.add(C);
                            i += C.length();
                        } while (i < C0452e.f3827V);
                    }
                    if (this.ab == null || this.ab.size() < 1) {
                        this.ab = null;
                        this.f3973a = false;
                        return;
                    }
                    m5570R();
                    return;
                }
                this.f3972Z++;
            }
        }

        void m5777do(boolean z) {
            if (!(!z || this.cZ == null || this.ab == null)) {
                this.ab.clear();
            }
            if (this.c0 != null) {
                this.c0.clear();
            }
            this.f3973a = false;
        }
    }

    static {
        f3974Y = new ArrayList();
        f3975Z = new ArrayList();
        aa = new ArrayList();
        ab = new ArrayList();
        ac = new ArrayList();
        ad = new ArrayList();
        ae = P + "/yo.dat";
        af = P + "/yoh.dat";
        ag = P + "/yom.dat";
        ah = P + "/yol.dat";
        ai = P + "/yor.dat";
        aj = null;
        ak = 1024;
        al = 512;
        am = 8;
        an = 5;
        ao = 8;
        ap = 16;
        aq = 1024;
        ar = ProGuard.f5669b;
        as = 0.0d;
        at = 0.1d;
        au = 30.0d;
        av = 100.0d;
        aw = 0;
        ax = 64;
        ay = ProGuard.f5670c;
        az = null;
        aA = null;
        aB = null;
        aC = null;
        aE = null;
    }

    private C0491Z() {
        this.aD = null;
        this.aF = 0;
        this.f3976a = 0;
        this.aD = new C0490b(this);
        this.aF = 0;
    }

    public static String m5778C() {
        return C0491Z.m5780E();
    }

    public static void m5779D() {
    }

    public static String m5780E() {
        String str = null;
        for (int i = 1; i < 5; i++) {
            str = C0491Z.m5792if(i);
            if (str != null) {
                return str;
            }
        }
        C0491Z.m5782a(ad, ax);
        if (ad.size() > 0) {
            str = (String) ad.get(0);
            ad.remove(0);
        }
        if (str != null) {
            return str;
        }
        C0491Z.m5782a(ad, aw);
        if (ad.size() > 0) {
            str = (String) ad.get(0);
            ad.remove(0);
        }
        if (str != null) {
            return str;
        }
        C0491Z.m5782a(ad, ay);
        if (ad.size() <= 0) {
            return str;
        }
        str = (String) ad.get(0);
        ad.remove(0);
        return str;
    }

    public static void m5781G() {
    }

    private static int m5782a(List list, int i) {
        if (list == null || i > ProGuard.f5669b || i < 0) {
            return -1;
        }
        try {
            if (aj == null) {
                aj = new File(ae);
                if (!aj.exists()) {
                    aj = null;
                    return -2;
                }
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(aj, "rw");
            if (randomAccessFile.length() < 1) {
                randomAccessFile.close();
                return -3;
            }
            randomAccessFile.seek((long) i);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            int readInt4 = randomAccessFile.readInt();
            long readLong = randomAccessFile.readLong();
            if (!C0491Z.m5784a(readInt, readInt2, readInt3, readInt4, readLong) || readInt2 < 1) {
                randomAccessFile.close();
                return -4;
            }
            byte[] bArr = new byte[aq];
            int i2 = readInt2;
            readInt2 = am;
            while (readInt2 > 0 && i2 > 0) {
                randomAccessFile.seek(((long) ((((readInt + i2) - 1) % readInt3) * readInt4)) + readLong);
                int readInt5 = randomAccessFile.readInt();
                if (readInt5 > 0 && readInt5 < readInt4) {
                    randomAccessFile.read(bArr, 0, readInt5);
                    if (bArr[readInt5 - 1] == null) {
                        list.add(new String(bArr, 0, readInt5 - 1));
                    }
                }
                readInt2--;
                i2--;
            }
            randomAccessFile.seek((long) i);
            randomAccessFile.writeInt(readInt);
            randomAccessFile.writeInt(i2);
            randomAccessFile.writeInt(readInt3);
            randomAccessFile.writeInt(readInt4);
            randomAccessFile.writeLong(readLong);
            randomAccessFile.close();
            return am - readInt2;
        } catch (Exception e) {
            e.printStackTrace();
            return -5;
        }
    }

    private static void m5783a(String str) {
        C0491Z.m5790char(str);
    }

    private static boolean m5784a(int i, int i2, int i3, int i4, long j) {
        return i >= 0 && i < i3 && i2 >= 0 && i2 <= i3 && i3 >= 0 && i3 <= 1024 && i4 >= ProGuard.f5670c && i4 <= 1024;
    }

    private static boolean m5785a(Location location) {
        if (location == null) {
            return false;
        }
        if (aA == null || az == null) {
            aA = location;
            return true;
        }
        double distanceTo = (double) location.distanceTo(aA);
        return ((double) location.distanceTo(az)) > ((distanceTo * ((double) C0465K.aB)) + ((((double) C0465K.aC) * distanceTo) * distanceTo)) + ((double) C0465K.aA);
    }

    private static boolean m5786a(Location location, C0451b c0451b) {
        if (location == null || c0451b == null || c0451b.f3805for == null || c0451b.f3805for.isEmpty() || c0451b.m5538do(aC)) {
            return false;
        }
        if (aB != null) {
            return true;
        }
        aB = location;
        return true;
    }

    private static void m5787b(String str) {
        C0491Z.m5790char(str);
    }

    private static void m5788c(String str) {
        C0491Z.m5790char(str);
    }

    public static void m5789case(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                File file2 = new File(P);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (!file.createNewFile()) {
                    file = null;
                }
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(0);
                randomAccessFile.writeInt(32);
                randomAccessFile.writeInt(2048);
                randomAccessFile.writeInt(1040);
                randomAccessFile.writeInt(0);
                randomAccessFile.writeInt(0);
                randomAccessFile.writeInt(0);
                randomAccessFile.close();
            }
        } catch (Exception e) {
        }
    }

    public static void m5790char(String str) {
        List list;
        int i = C0465K.au;
        if (i == 1) {
            list = ab;
        } else if (i == 2) {
            list = ac;
        } else if (i == 3) {
            list = ad;
        } else {
            return;
        }
        if (list != null) {
            if (list.size() <= ap) {
                list.add(str);
            }
            if (list.size() >= ap) {
                C0491Z.m5797if(i, false);
            }
            while (list.size() > ap) {
                list.remove(0);
            }
        }
    }

    public static void m5791do(C0502a c0502a, C0451b c0451b, Location location, String str) {
        C0451b c0451b2 = null;
        if (C0526k.gr) {
            if (!C0526k.gz) {
                int i = c0502a.f3998byte;
                if (i != -1 && i != 460) {
                    return;
                }
                if (i == -1 && C0526k.f4082a) {
                    return;
                }
            }
            if (C0465K.aO == 3 && !C0491Z.m5786a(location, c0451b) && !C0491Z.m5800if(location, false)) {
                return;
            }
            String str2;
            if (c0502a != null && c0502a.m5846for()) {
                if (!C0491Z.m5786a(location, c0451b)) {
                    c0451b = null;
                }
                str2 = C0465K.m5638if(c0502a, c0451b, location, str, 1);
                if (str2 != null) {
                    C0491Z.m5783a(Jni.m5622k(str2));
                    aA = location;
                    az = location;
                    if (c0451b != null) {
                        aC = c0451b;
                    }
                }
            } else if (c0451b != null && c0451b.m5542if() && C0491Z.m5786a(location, c0451b)) {
                if (!(C0491Z.m5785a(location) || c0502a.toString().contains("&cfr"))) {
                    str = "&cfr=1" + str;
                }
                str2 = C0465K.m5638if(c0502a, c0451b, location, str, 2);
                if (str2 != null) {
                    C0491Z.m5787b(Jni.m5622k(str2));
                    aB = location;
                    az = location;
                    if (c0451b != null) {
                        aC = c0451b;
                    }
                }
            } else {
                if (!(C0491Z.m5785a(location) || c0502a.toString().contains("&cfr"))) {
                    str = "&cfr=1" + str;
                }
                if (C0491Z.m5786a(location, c0451b)) {
                    c0451b2 = c0451b;
                }
                if (c0502a != null || c0451b2 != null) {
                    String str3 = C0465K.m5638if(c0502a, c0451b2, location, str, 3);
                    if (str3 != null) {
                        C0491Z.m5788c(Jni.m5622k(str3));
                        az = location;
                        if (c0451b2 != null) {
                            aC = c0451b2;
                        }
                    }
                }
            }
        }
    }

    public static String m5792if(int i) {
        String str;
        List list;
        String str2 = null;
        if (i == 1) {
            str = af;
            list = ab;
        } else if (i == 2) {
            str = ag;
            list = ac;
        } else if (i == 3) {
            str = ah;
            list = ad;
        } else {
            if (i == 4) {
                str = ai;
                list = ad;
            }
            return str2;
        }
        if (list != null) {
            if (list.size() < 1) {
                C0491Z.m5801if(str, list);
            }
            synchronized (C0491Z.class) {
                int size = list.size();
                if (size > 0) {
                    str2 = (String) list.get(size - 1);
                    list.remove(size - 1);
                }
            }
        }
        return str2;
    }

    public static String m5793if(C0502a c0502a, C0451b c0451b, Location location, String str, String str2) {
        if (!C0526k.gr) {
            return null;
        }
        if (!C0526k.gz) {
            int i = aj.at().aw().f3998byte;
            if (i != -1 && i != 460) {
                return null;
            }
            if (i == -1 && C0526k.f4082a) {
                return null;
            }
        }
        return C0465K.m5637if(c0502a, c0451b, location, str) + str2;
    }

    public static void m5794if(double d, double d2, double d3, double d4) {
        if (d <= 0.0d) {
            d = as;
        }
        as = d;
        at = d2;
        if (d3 <= 20.0d) {
            d3 = au;
        }
        au = d3;
        av = d4;
    }

    public static void m5795if(int i, int i2) {
    }

    public static void m5796if(int i, int i2, boolean z) {
    }

    public static void m5797if(int i, boolean z) {
        String str;
        Object obj;
        String str2;
        if (i == 1) {
            str2 = af;
            if (!z) {
                str = str2;
                List list = ab;
            } else {
                return;
            }
        } else if (i == 2) {
            str2 = ag;
            if (z) {
                str = str2;
                obj = ab;
            } else {
                str = str2;
                obj = ac;
            }
        } else if (i == 3) {
            str2 = ah;
            if (z) {
                str = str2;
                obj = ac;
            } else {
                str = str2;
                obj = ad;
            }
        } else if (i == 4) {
            str2 = ai;
            if (z) {
                str = str2;
                obj = ad;
            } else {
                return;
            }
        } else {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            C0491Z.m5789case(str);
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(4);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            int readInt4 = randomAccessFile.readInt();
            int readInt5 = randomAccessFile.readInt();
            int size = list.size();
            int i2 = readInt5;
            while (size > ao) {
                readInt5 = z ? i2 + 1 : i2;
                byte[] bytes;
                if (readInt3 >= readInt) {
                    if (!z) {
                        obj = 1;
                        i2 = readInt5;
                        break;
                    }
                    randomAccessFile.seek((long) ((readInt4 * readInt2) + ProGuard.f5670c));
                    bytes = (((String) list.get(0)) + '\u0000').getBytes();
                    randomAccessFile.writeInt(bytes.length);
                    randomAccessFile.write(bytes, 0, bytes.length);
                    list.remove(0);
                    i2 = readInt4 + 1;
                    if (i2 > readInt3) {
                        i2 = 0;
                    }
                    readInt4 = readInt3;
                } else {
                    randomAccessFile.seek((long) ((readInt2 * readInt3) + ProGuard.f5670c));
                    bytes = (((String) list.get(0)) + '\u0000').getBytes();
                    randomAccessFile.writeInt(bytes.length);
                    randomAccessFile.write(bytes, 0, bytes.length);
                    list.remove(0);
                    int i3 = readInt4;
                    readInt4 = readInt3 + 1;
                    i2 = i3;
                }
                size--;
                readInt3 = readInt4;
                readInt4 = i2;
                i2 = readInt5;
            }
            obj = null;
            randomAccessFile.seek(12);
            randomAccessFile.writeInt(readInt3);
            randomAccessFile.writeInt(readInt4);
            randomAccessFile.writeInt(i2);
            randomAccessFile.close();
            if (obj != null && i < 4) {
                C0491Z.m5797if(i + 1, true);
            }
        } catch (Exception e) {
        }
    }

    public static void m5798if(String str, int i) {
    }

    public static void m5799if(String str, int i, boolean z) {
    }

    public static boolean m5800if(Location location, boolean z) {
        return ao.m5941if(az, location, z);
    }

    public static boolean m5801if(String str, List list) {
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(8);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            byte[] bArr = new byte[aq];
            int i = readInt2;
            readInt2 = ao + 1;
            boolean z = false;
            while (readInt2 > 0 && i > 0) {
                if (i < readInt3) {
                    readInt3 = 0;
                }
                try {
                    randomAccessFile.seek((long) (((i - 1) * readInt) + ProGuard.f5670c));
                    int readInt4 = randomAccessFile.readInt();
                    if (readInt4 > 0 && readInt4 < readInt) {
                        randomAccessFile.read(bArr, 0, readInt4);
                        if (bArr[readInt4 - 1] == null) {
                            list.add(0, new String(bArr, 0, readInt4 - 1));
                            z = true;
                        }
                    }
                    readInt2--;
                    i--;
                } catch (Exception e) {
                    return z;
                }
            }
            randomAccessFile.seek(12);
            randomAccessFile.writeInt(i);
            randomAccessFile.writeInt(readInt3);
            randomAccessFile.close();
            return z;
        } catch (Exception e2) {
            return false;
        }
    }

    public static void m5802x() {
        ao = 0;
        C0491Z.m5797if(1, false);
        C0491Z.m5797if(2, false);
        C0491Z.m5797if(3, false);
        ao = 8;
    }

    public static C0491Z m5803y() {
        if (aE == null) {
            aE = new C0491Z();
        }
        return aE;
    }

    public static String m5804z() {
        RandomAccessFile randomAccessFile;
        int readInt;
        File file = new File(ag);
        if (file.exists()) {
            try {
                randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(20);
                readInt = randomAccessFile.readInt();
                if (readInt > ProGuard.f5670c) {
                    String str = "&p1=" + readInt;
                    randomAccessFile.seek(20);
                    randomAccessFile.writeInt(0);
                    randomAccessFile.close();
                    return str;
                }
                randomAccessFile.close();
            } catch (Exception e) {
            }
        }
        file = new File(ah);
        if (file.exists()) {
            try {
                randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(20);
                readInt = randomAccessFile.readInt();
                if (readInt > ProGuard.f5669b) {
                    str = "&p2=" + readInt;
                    randomAccessFile.seek(20);
                    randomAccessFile.writeInt(0);
                    randomAccessFile.close();
                    return str;
                }
                randomAccessFile.close();
            } catch (Exception e2) {
            }
        }
        file = new File(ai);
        if (!file.exists()) {
            return null;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(20);
            readInt = randomAccessFile.readInt();
            if (readInt > 512) {
                str = "&p3=" + readInt;
                randomAccessFile.seek(20);
                randomAccessFile.writeInt(0);
                randomAccessFile.close();
                return str;
            }
            randomAccessFile.close();
            return null;
        } catch (Exception e3) {
            return null;
        }
    }

    public void m5805A() {
        if (C0512d.m5947do().m5951int() && this.f3976a != 0 && System.currentTimeMillis() - this.f3976a > 1200000) {
            m5806B();
        }
    }

    public void m5806B() {
        this.f3976a = System.currentTimeMillis();
        if (!C0487X.ah().ag()) {
            this.aF++;
            if (this.aF > 1) {
                this.aF = 0;
                m5807F();
            }
        }
    }

    public void m5807F() {
        if (C0453D.cq()) {
            this.aD.ak();
        }
    }

    public void m5808long(String str) {
        new C0489a(this, str).aj();
    }
}
