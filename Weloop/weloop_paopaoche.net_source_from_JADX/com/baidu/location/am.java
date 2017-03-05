package com.baidu.location;

import android.location.Location;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;

public class am implements C0452e {
    private static String f4015Y;
    private static File f4016Z;
    private static am f4017a;
    private static StringBuffer aa;
    private static boolean ab;
    private static int ac;
    private static int ad;
    private static long ae;
    private static long af;
    private static long ag;
    private static double ah;
    private static double ai;
    private static int aj;
    private static int ak;
    private static int al;
    private String am;
    private boolean an;

    static {
        f4017a = null;
        f4015Y = "Temp_in.dat";
        f4016Z = new File(P, f4015Y);
        aa = null;
        ab = true;
        ac = 0;
        ad = 0;
        ae = 0;
        af = 0;
        ag = 0;
        ah = 0.0d;
        ai = 0.0d;
        aj = 0;
        ak = 0;
        al = 0;
    }

    private am(String str) {
        this.am = null;
        this.an = true;
        if (str == null) {
            str = "";
        } else if (str.length() > 100) {
            str = str.substring(0, 100);
        }
        this.am = str;
    }

    private String m5884a(int i) {
        if (!f4016Z.exists()) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(f4016Z, "rw");
            randomAccessFile.seek(0);
            int readInt = randomAccessFile.readInt();
            if (!m5886a(readInt, randomAccessFile.readInt(), randomAccessFile.readInt())) {
                randomAccessFile.close();
                m5890c();
                return null;
            } else if (i == 0 || i == readInt + 1) {
                randomAccessFile.close();
                return null;
            } else {
                long j = (12 + 0) + ((long) ((i - 1) * 1024));
                randomAccessFile.seek(j);
                int readInt2 = randomAccessFile.readInt();
                byte[] bArr = new byte[readInt2];
                randomAccessFile.seek(j + 4);
                for (readInt = 0; readInt < readInt2; readInt++) {
                    bArr[readInt] = randomAccessFile.readByte();
                }
                randomAccessFile.close();
                return new String(bArr);
            }
        } catch (IOException e) {
            return null;
        }
    }

    private void m5885a() {
        if (aa != null && aa.length() >= 100) {
            m5888a(aa.toString());
        }
        m5889b();
    }

    private static boolean m5886a(int i, int i2, int i3) {
        return (i < 0 || i > C0465K.aR) ? false : (i2 < 0 || i2 > i + 1) ? false : i3 >= 1 && i3 <= i + 1 && i3 <= C0465K.aR;
    }

    private boolean m5887a(Location location, int i, int i2) {
        if (location == null || !C0465K.ak || !this.an || !C0526k.gt) {
            return false;
        }
        if (C0465K.a0 < 5) {
            C0465K.a0 = 5;
        } else if (C0465K.a0 > LocationClientOption.MIN_SCAN_SPAN) {
            C0465K.a0 = LocationClientOption.MIN_SCAN_SPAN;
        }
        if (C0465K.a5 < 5) {
            C0465K.a5 = 5;
        } else if (C0465K.a5 > 3600) {
            C0465K.a5 = 3600;
        }
        double longitude = location.getLongitude();
        double latitude = location.getLatitude();
        long time = location.getTime() / 1000;
        if (ab) {
            ac = 1;
            aa = new StringBuffer("");
            aa.append(String.format(Locale.CHINA, "&nr=%s&traj=%d,%.5f,%.5f|", new Object[]{this.am, Long.valueOf(time), Double.valueOf(longitude), Double.valueOf(latitude)}));
            ad = aa.length();
            ae = time;
            ah = longitude;
            ai = latitude;
            af = (long) Math.floor((longitude * 100000.0d) + 0.5d);
            ag = (long) Math.floor((latitude * 100000.0d) + 0.5d);
            ab = false;
            return true;
        }
        float[] fArr = new float[1];
        Location.distanceBetween(latitude, longitude, ai, ah, fArr);
        long j = time - ae;
        if (fArr[0] < ((float) C0465K.a0) && j < ((long) C0465K.a5)) {
            return false;
        }
        if (aa == null) {
            ac++;
            ad = 0;
            aa = new StringBuffer("");
            aa.append(String.format(Locale.CHINA, "&nr=%s&traj=%d,%.5f,%.5f|", new Object[]{this.am, Long.valueOf(time), Double.valueOf(longitude), Double.valueOf(latitude)}));
            ad = aa.length();
            ae = time;
            ah = longitude;
            ai = latitude;
            af = (long) Math.floor((longitude * 100000.0d) + 0.5d);
            ag = (long) Math.floor((latitude * 100000.0d) + 0.5d);
        } else {
            ah = longitude;
            ai = latitude;
            long floor = (long) Math.floor((longitude * 100000.0d) + 0.5d);
            long floor2 = (long) Math.floor((latitude * 100000.0d) + 0.5d);
            aj = (int) (time - ae);
            ak = (int) (floor - af);
            al = (int) (floor2 - ag);
            aa.append(String.format(Locale.CHINA, "%d,%d,%d|", new Object[]{Integer.valueOf(aj), Integer.valueOf(ak), Integer.valueOf(al)}));
            ad = aa.length();
            ae = time;
            af = floor;
            ag = floor2;
        }
        if (ad + 15 > 750) {
            m5888a(aa.toString());
            aa = null;
        }
        if (ac >= C0465K.aR) {
            this.an = false;
        }
        return true;
    }

    private boolean m5888a(String str) {
        if (str == null || !str.startsWith("&nr")) {
            return false;
        }
        if (!f4016Z.exists() && !m5890c()) {
            return false;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(f4016Z, "rw");
            randomAccessFile.seek(0);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            if (m5886a(readInt, readInt2, readInt3)) {
                if (C0465K.ad) {
                    if (readInt == C0465K.aR) {
                        if (str.equals(m5884a(readInt3 == 1 ? C0465K.aR : readInt3 - 1))) {
                            randomAccessFile.close();
                            return false;
                        }
                    } else if (readInt3 > 1 && str.equals(m5884a(readInt3 - 1))) {
                        randomAccessFile.close();
                        return false;
                    }
                }
                randomAccessFile.seek(((long) (((readInt3 - 1) * 1024) + 12)) + 0);
                if (str.length() > 750) {
                    randomAccessFile.close();
                    return false;
                }
                String k = Jni.m5622k(str);
                int length = k.length();
                if (length > 1020) {
                    randomAccessFile.close();
                    return false;
                }
                randomAccessFile.writeInt(length);
                randomAccessFile.writeBytes(k);
                if (readInt == 0) {
                    randomAccessFile.seek(0);
                    randomAccessFile.writeInt(1);
                    randomAccessFile.writeInt(1);
                    randomAccessFile.writeInt(2);
                } else if (readInt < C0465K.aR - 1) {
                    randomAccessFile.seek(0);
                    randomAccessFile.writeInt(readInt + 1);
                    randomAccessFile.seek(8);
                    randomAccessFile.writeInt(readInt + 2);
                } else if (readInt == C0465K.aR - 1) {
                    randomAccessFile.seek(0);
                    randomAccessFile.writeInt(C0465K.aR);
                    if (readInt2 == 0 || readInt2 == 1) {
                        randomAccessFile.writeInt(2);
                    }
                    randomAccessFile.seek(8);
                    randomAccessFile.writeInt(1);
                } else if (readInt3 == readInt2) {
                    readInt = readInt3 == C0465K.aR ? 1 : readInt3 + 1;
                    r2 = readInt == C0465K.aR ? 1 : readInt + 1;
                    randomAccessFile.seek(4);
                    randomAccessFile.writeInt(r2);
                    randomAccessFile.writeInt(readInt);
                } else {
                    readInt = readInt3 == C0465K.aR ? 1 : readInt3 + 1;
                    if (readInt == readInt2) {
                        r2 = readInt == C0465K.aR ? 1 : readInt + 1;
                        randomAccessFile.seek(4);
                        randomAccessFile.writeInt(r2);
                    }
                    randomAccessFile.seek(8);
                    randomAccessFile.writeInt(readInt);
                }
                randomAccessFile.close();
                return true;
            }
            randomAccessFile.close();
            m5890c();
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    public static am aU() {
        if (f4017a == null) {
            f4017a = new am(C0518i.cY().cV());
        }
        return f4017a;
    }

    public static String aW() {
        if (f4016Z == null) {
            return null;
        }
        if (!f4016Z.exists()) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(f4016Z, "rw");
            randomAccessFile.seek(0);
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            if (!m5886a(readInt, readInt2, readInt3)) {
                randomAccessFile.close();
                m5890c();
                return null;
            } else if (readInt2 == 0 || readInt2 == readInt3) {
                randomAccessFile.close();
                return null;
            } else {
                long j = 0 + ((long) (((readInt2 - 1) * 1024) + 12));
                randomAccessFile.seek(j);
                int readInt4 = randomAccessFile.readInt();
                byte[] bArr = new byte[readInt4];
                randomAccessFile.seek(j + 4);
                for (readInt3 = 0; readInt3 < readInt4; readInt3++) {
                    bArr[readInt3] = randomAccessFile.readByte();
                }
                String str = new String(bArr);
                readInt3 = readInt < C0465K.aR ? readInt2 + 1 : readInt2 == C0465K.aR ? 1 : readInt2 + 1;
                randomAccessFile.seek(4);
                randomAccessFile.writeInt(readInt3);
                randomAccessFile.close();
                return str;
            }
        } catch (IOException e) {
            return null;
        }
    }

    private static void m5889b() {
        ab = true;
        aa = null;
        ac = 0;
        ad = 0;
        ae = 0;
        af = 0;
        ag = 0;
        ah = 0.0d;
        ai = 0.0d;
        aj = 0;
        ak = 0;
        al = 0;
    }

    private static boolean m5890c() {
        if (f4016Z.exists()) {
            f4016Z.delete();
        }
        if (!f4016Z.getParentFile().exists()) {
            f4016Z.getParentFile().mkdirs();
        }
        try {
            f4016Z.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(f4016Z, "rw");
            randomAccessFile.seek(0);
            randomAccessFile.writeInt(0);
            randomAccessFile.writeInt(0);
            randomAccessFile.writeInt(1);
            randomAccessFile.close();
            m5889b();
            return f4016Z.exists();
        } catch (IOException e) {
            return false;
        }
    }

    public void aY() {
        m5885a();
    }

    public boolean m5891do(Location location) {
        return m5887a(location, C0465K.a0, C0465K.a5);
    }
}
