package com.baidu.location;

import com.umeng.update.util.ProGuard;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* renamed from: com.baidu.location.k */
class C0526k implements C0452e {
    private static C0526k f4081Y;
    static boolean f4082a;
    private static final String ab;
    public static int gA;
    public static boolean gl;
    public static boolean gm;
    public static int gp;
    public static boolean gq;
    public static boolean gr;
    public static boolean gt;
    public static boolean gx;
    public static int gy;
    public static boolean gz;
    private C0525a f4083Z;
    private long aa;

    /* renamed from: com.baidu.location.k.a */
    class C0525a extends ac {
        boolean f4078Y;
        boolean f4079Z;
        String f4080a;
        final /* synthetic */ C0526k aa;

        public C0525a(C0526k c0526k) {
            this.aa = c0526k;
            this.f4080a = null;
            this.f4078Y = false;
            this.f4079Z = false;
            this.c0 = new ArrayList();
        }

        void m6018X() {
            this.cY = C0465K.m5635for();
            this.c9 = 2;
            String k = Jni.m5622k(this.f4080a);
            this.f4080a = null;
            if (this.f4078Y) {
                this.c0.add(new BasicNameValuePair("qt", "grid"));
            } else {
                this.c0.add(new BasicNameValuePair("qt", "conf"));
            }
            this.c0.add(new BasicNameValuePair("req", k));
        }

        void m6019do(boolean z) {
            if (!z || this.cZ == null) {
                this.aa.m6025b(null);
            } else if (this.f4078Y) {
                this.aa.m6023a(this.cZ);
            } else {
                this.aa.m6025b(this.cZ);
            }
            if (this.c0 != null) {
                this.c0.clear();
            }
            this.f4079Z = false;
        }

        public void m6020if(String str, boolean z) {
            if (!this.f4079Z) {
                this.f4079Z = true;
                this.f4080a = str;
                this.f4078Y = z;
                m5570R();
            }
        }
    }

    static {
        f4081Y = null;
        gr = true;
        gt = true;
        gx = false;
        gl = true;
        gz = true;
        gm = true;
        gq = true;
        f4082a = false;
        ab = P + "/conlts.dat";
        gy = -1;
        gp = -1;
        gA = 0;
    }

    private C0526k() {
        this.f4083Z = null;
        this.aa = 0;
        this.f4083Z = new C0525a(this);
    }

    private void m6021a() {
        this.f4083Z.m6020if("&ver=" + C0465K.aq + "&usr=" + C0518i.cY().cW() + "&app=" + C0518i.ju + "&prod=" + C0518i.jy, false);
    }

    private void m6023a(HttpEntity httpEntity) {
        int i = 0;
        try {
            byte[] toByteArray = EntityUtils.toByteArray(httpEntity);
            if (toByteArray != null) {
                if (toByteArray.length < 640) {
                    C0465K.bc = false;
                    C0465K.av = C0465K.a4 + 0.025d;
                    C0465K.f3898Z = C0465K.aP - 0.025d;
                    i = 1;
                } else {
                    C0465K.bc = true;
                    C0465K.f3898Z = Double.longBitsToDouble(Long.valueOf(((((((((((long) toByteArray[7]) & 255) << 56) | ((((long) toByteArray[6]) & 255) << 48)) | ((((long) toByteArray[5]) & 255) << 40)) | ((((long) toByteArray[4]) & 255) << 32)) | ((((long) toByteArray[3]) & 255) << 24)) | ((((long) toByteArray[2]) & 255) << 16)) | ((((long) toByteArray[1]) & 255) << 8)) | (((long) toByteArray[0]) & 255)).longValue());
                    C0465K.av = Double.longBitsToDouble(Long.valueOf(((((((((((long) toByteArray[15]) & 255) << 56) | ((((long) toByteArray[14]) & 255) << 48)) | ((((long) toByteArray[13]) & 255) << 40)) | ((((long) toByteArray[12]) & 255) << 32)) | ((((long) toByteArray[11]) & 255) << 24)) | ((((long) toByteArray[10]) & 255) << 16)) | ((((long) toByteArray[9]) & 255) << 8)) | (((long) toByteArray[8]) & 255)).longValue());
                    C0465K.as = new byte[625];
                    while (i < 625) {
                        C0465K.as[i] = toByteArray[i + 16];
                        i++;
                    }
                    i = 1;
                }
            }
            if (i != 0) {
                C0526k.bn();
            }
        } catch (Exception e) {
        }
    }

    private void m6025b(HttpEntity httpEntity) {
        String str = null;
        gp = -1;
        if (httpEntity != null) {
            try {
                str = EntityUtils.toString(httpEntity, "utf-8");
                if (m6029q(str)) {
                    C0526k.bh();
                }
            } catch (Exception e) {
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("ctr")) {
                    gp = Integer.parseInt(jSONObject.getString("ctr"));
                }
            } catch (Exception e2) {
            }
        }
        try {
            int i;
            C0526k.bo();
            if (gp != -1) {
                i = gp;
                C0526k.m6027try(gp);
            } else {
                i = gy != -1 ? gy : -1;
            }
            if (i != -1) {
                C0526k.m6026byte(i);
            }
            aa.m5828I().m5832J().obtainMessage(92).sendToTarget();
        } catch (Exception e3) {
        }
    }

    public static void bh() {
        String str = P + "/config.dat";
        int i = C0465K.ak ? 1 : 0;
        int i2 = C0465K.ad ? 1 : 0;
        byte[] bytes = String.format(Locale.CHINA, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\",\"dmx\":%d}", new Object[]{Integer.valueOf(C0465K.aq), Float.valueOf(C0465K.bh), Float.valueOf(C0465K.an), Float.valueOf(C0465K.aK), Float.valueOf(C0465K.aZ), Integer.valueOf(C0465K.ay), Integer.valueOf(C0465K.aQ), Integer.valueOf(C0465K.a2), Integer.valueOf(C0465K.ac), Integer.valueOf(C0465K.aa), Integer.valueOf(C0465K.a8), Integer.valueOf(C0465K.aj), Float.valueOf(C0465K.aI), Float.valueOf(C0465K.aH), Float.valueOf(C0465K.be), Float.valueOf(C0465K.aX), Integer.valueOf(C0465K.a3), Float.valueOf(C0465K.ae), Integer.valueOf(C0465K.aY), Float.valueOf(C0465K.f3897Y), Float.valueOf(C0465K.aC), Float.valueOf(C0465K.aB), Integer.valueOf(C0465K.aA), Integer.valueOf(C0465K.az), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(C0465K.a0), Integer.valueOf(C0465K.aR), Long.valueOf(C0465K.a7), Integer.valueOf(C0465K.bb), Float.valueOf(C0465K.aE), Float.valueOf(C0465K.a1), Integer.valueOf(C0465K.aD), Integer.valueOf(C0465K.ba), Integer.valueOf(C0465K.ai), Integer.valueOf(C0465K.ab), Integer.valueOf(C0465K.af), Float.valueOf(C0465K.aN), Integer.valueOf(C0465K.al)}).getBytes();
        try {
            RandomAccessFile randomAccessFile;
            File file = new File(str);
            if (!file.exists()) {
                File file2 = new File(P);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (file.createNewFile()) {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    randomAccessFile.writeBoolean(false);
                    randomAccessFile.writeBoolean(false);
                    randomAccessFile.close();
                } else {
                    return;
                }
            }
            randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(0);
            randomAccessFile.writeBoolean(true);
            randomAccessFile.seek(2);
            randomAccessFile.writeInt(bytes.length);
            randomAccessFile.write(bytes);
            randomAccessFile.close();
        } catch (Exception e) {
        }
    }

    public static void bi() {
        try {
            File file = new File(ab);
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
                randomAccessFile.writeInt(0);
                randomAccessFile.writeInt(ProGuard.f5670c);
                randomAccessFile.writeInt(0);
                randomAccessFile.close();
            }
        } catch (Exception e) {
        }
    }

    public static C0526k bj() {
        if (f4081Y == null) {
            f4081Y = new C0526k();
        }
        return f4081Y;
    }

    public static void bn() {
        try {
            RandomAccessFile randomAccessFile;
            File file = new File(P + "/config.dat");
            if (!file.exists()) {
                File file2 = new File(P);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (file.createNewFile()) {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    randomAccessFile.writeBoolean(false);
                    randomAccessFile.writeBoolean(false);
                    randomAccessFile.close();
                } else {
                    return;
                }
            }
            randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(1);
            randomAccessFile.writeBoolean(true);
            randomAccessFile.seek(1024);
            randomAccessFile.writeDouble(C0465K.f3898Z);
            randomAccessFile.writeDouble(C0465K.av);
            randomAccessFile.writeBoolean(C0465K.bc);
            if (C0465K.bc && C0465K.as != null) {
                randomAccessFile.write(C0465K.as);
            }
            randomAccessFile.close();
        } catch (Exception e) {
        }
    }

    public static void bo() {
        int i = 0;
        try {
            File file = new File(ab);
            if (file.exists()) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(4);
                int readInt = randomAccessFile.readInt();
                if (readInt > LocationClientOption.MIN_SCAN_SPAN_NETWORK) {
                    randomAccessFile.close();
                    gA = 0;
                    C0526k.bi();
                    return;
                }
                int readInt2 = randomAccessFile.readInt();
                randomAccessFile.seek(128);
                byte[] bArr = new byte[readInt];
                while (i < readInt2) {
                    randomAccessFile.seek((long) ((readInt * i) + ProGuard.f5670c));
                    int readInt3 = randomAccessFile.readInt();
                    if (readInt3 > 0 && readInt3 < readInt) {
                        randomAccessFile.read(bArr, 0, readInt3);
                        if (bArr[readInt3 - 1] == null) {
                            String str = new String(bArr, 0, readInt3 - 1);
                            C0518i.cY();
                            if (str.equals(C0518i.ju)) {
                                gy = randomAccessFile.readInt();
                                gA = i;
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
                if (i == readInt2) {
                    gA = readInt2;
                }
                randomAccessFile.close();
            }
        } catch (Exception e) {
        }
    }

    public static void m6026byte(int i) {
        boolean z = true;
        gr = (i & 1) == 1;
        gt = (i & 2) == 2;
        gx = (i & 4) == 4;
        gl = (i & 8) == 8;
        gm = (i & 65536) == 65536;
        if ((i & 131072) != 131072) {
            z = false;
        }
        gq = z;
        if ((i & 16) == 16) {
            gz = false;
        }
    }

    public static void m6027try(int i) {
        File file = new File(ab);
        if (!file.exists()) {
            C0526k.bi();
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(4);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            randomAccessFile.seek((long) ((readInt * gA) + ProGuard.f5670c));
            byte[] bytes = (C0518i.ju + '\u0000').getBytes();
            randomAccessFile.writeInt(bytes.length);
            randomAccessFile.write(bytes, 0, bytes.length);
            randomAccessFile.writeInt(i);
            if (readInt2 == gA) {
                randomAccessFile.seek(8);
                randomAccessFile.writeInt(readInt2 + 1);
            }
            randomAccessFile.close();
        } catch (Exception e) {
        }
    }

    public void bk() {
        try {
            File file = new File(P + "/config.dat");
            if (file.exists()) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                if (randomAccessFile.readBoolean()) {
                    randomAccessFile.seek(2);
                    int readInt = randomAccessFile.readInt();
                    byte[] bArr = new byte[readInt];
                    randomAccessFile.read(bArr, 0, readInt);
                    m6029q(new String(bArr));
                }
                randomAccessFile.seek(1);
                if (randomAccessFile.readBoolean()) {
                    randomAccessFile.seek(1024);
                    C0465K.f3898Z = randomAccessFile.readDouble();
                    C0465K.av = randomAccessFile.readDouble();
                    C0465K.bc = randomAccessFile.readBoolean();
                    if (C0465K.bc) {
                        C0465K.as = new byte[625];
                        randomAccessFile.read(C0465K.as, 0, 625);
                    }
                }
                randomAccessFile.close();
            }
        } catch (Exception e) {
        }
        m6025b(null);
    }

    public void bl() {
        if (System.currentTimeMillis() - C0474P.m5704if().m5709for() > 86400000) {
            C0474P.m5704if().m5706a(System.currentTimeMillis());
            m6021a();
        }
    }

    public void m6028p(String str) {
        this.f4083Z.m6020if(str, true);
    }

    public boolean m6029q(String str) {
        boolean z = true;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int parseInt = Integer.parseInt(jSONObject.getString("ver"));
                if (parseInt > C0465K.aq) {
                    String[] split;
                    C0465K.aq = parseInt;
                    if (jSONObject.has("gps")) {
                        split = jSONObject.getString("gps").split("\\|");
                        if (split.length > 10) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.bh = Float.parseFloat(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.an = Float.parseFloat(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.aK = Float.parseFloat(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.aZ = Float.parseFloat(split[3]);
                            }
                            if (!(split[4] == null || split[4].equals(""))) {
                                C0465K.ay = Integer.parseInt(split[4]);
                            }
                            if (!(split[5] == null || split[5].equals(""))) {
                                C0465K.aQ = Integer.parseInt(split[5]);
                            }
                            if (!(split[6] == null || split[6].equals(""))) {
                                C0465K.a2 = Integer.parseInt(split[6]);
                            }
                            if (!(split[7] == null || split[7].equals(""))) {
                                C0465K.ac = Integer.parseInt(split[7]);
                            }
                            if (!(split[8] == null || split[8].equals(""))) {
                                C0465K.aa = Integer.parseInt(split[8]);
                            }
                            if (!(split[9] == null || split[9].equals(""))) {
                                C0465K.a8 = Integer.parseInt(split[9]);
                            }
                            if (!(split[10] == null || split[10].equals(""))) {
                                C0465K.aj = Integer.parseInt(split[10]);
                            }
                        }
                    }
                    if (jSONObject.has("up")) {
                        split = jSONObject.getString("up").split("\\|");
                        if (split.length > 3) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.aI = Float.parseFloat(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.aH = Float.parseFloat(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.be = Float.parseFloat(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.aX = Float.parseFloat(split[3]);
                            }
                        }
                    }
                    if (jSONObject.has("wf")) {
                        split = jSONObject.getString("wf").split("\\|");
                        if (split.length > 3) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.a3 = Integer.parseInt(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.ae = Float.parseFloat(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.aY = Integer.parseInt(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.f3897Y = Float.parseFloat(split[3]);
                            }
                        }
                    }
                    if (jSONObject.has("ab")) {
                        split = jSONObject.getString("ab").split("\\|");
                        if (split.length > 3) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.aC = Float.parseFloat(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.aB = Float.parseFloat(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.aA = Integer.parseInt(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.az = Integer.parseInt(split[3]);
                            }
                        }
                    }
                    if (jSONObject.has("zxd")) {
                        split = jSONObject.getString("zxd").split("\\|");
                        if (split.length > 4) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.aE = Float.parseFloat(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.a1 = Float.parseFloat(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.aD = Integer.parseInt(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.ba = Integer.parseInt(split[3]);
                            }
                            if (!(split[4] == null || split[4].equals(""))) {
                                C0465K.ai = Integer.parseInt(split[4]);
                            }
                        }
                    }
                    if (jSONObject.has("gpc")) {
                        split = jSONObject.getString("gpc").split("\\|");
                        if (split.length > 5) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                if (Integer.parseInt(split[0]) > 0) {
                                    C0465K.ak = true;
                                } else {
                                    C0465K.ak = false;
                                }
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                if (Integer.parseInt(split[1]) > 0) {
                                    C0465K.ad = true;
                                } else {
                                    C0465K.ad = false;
                                }
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.a0 = Integer.parseInt(split[2]);
                            }
                            if (!(split[3] == null || split[3].equals(""))) {
                                C0465K.aR = Integer.parseInt(split[3]);
                            }
                            if (!(split[4] == null || split[4].equals(""))) {
                                int parseInt2 = Integer.parseInt(split[4]);
                                if (parseInt2 > 0) {
                                    C0465K.a7 = (long) parseInt2;
                                    C0465K.aS = (C0465K.a7 * 1000) * 60;
                                    C0465K.bg = C0465K.aS >> 2;
                                } else {
                                    C0465K.aL = false;
                                }
                            }
                            if (!(split[5] == null || split[5].equals(""))) {
                                C0465K.bb = Integer.parseInt(split[5]);
                            }
                        }
                    }
                    if (jSONObject.has("shak")) {
                        split = jSONObject.getString("shak").split("\\|");
                        if (split.length > 2) {
                            if (!(split[0] == null || split[0].equals(""))) {
                                C0465K.ab = Integer.parseInt(split[0]);
                            }
                            if (!(split[1] == null || split[1].equals(""))) {
                                C0465K.af = Integer.parseInt(split[1]);
                            }
                            if (!(split[2] == null || split[2].equals(""))) {
                                C0465K.aN = Float.parseFloat(split[2]);
                            }
                        }
                    }
                    if (jSONObject.has("dmx")) {
                        C0465K.al = jSONObject.getInt("dmx");
                    }
                    return z;
                }
            } catch (Exception e) {
                return false;
            }
        }
        z = false;
        return z;
    }
}
