package com.baidu.location;

class Jni implements C0452e {
    private static int f3894Y;
    private static int f3895Z;
    private static int f3896a;
    private static int aa;
    private static int ab;
    private static int ac;
    private static int ad;
    private static int ae;
    private static boolean af;

    static {
        f3896a = 0;
        f3894Y = 1;
        f3895Z = 2;
        aa = 11;
        ab = 12;
        ac = 13;
        ad = 14;
        ae = 1024;
        af = false;
        try {
            System.loadLibrary("locSDK5");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            af = true;
            throw new IllegalStateException("no found the liblocSDK4d.so file, please correct settings");
        }
    }

    private static native String m5615a(byte[] bArr, int i);

    public static String aZ() {
        return sky();
    }

    private static native String m5616b(double d, double d2, int i, int i2);

    private static native String m5617c(byte[] bArr, int i);

    private static native void m5618f(byte[] bArr, byte[] bArr2);

    private static native String m5619g(byte[] bArr);

    public static double[] m5620if(double d, double d2, String str) {
        double[] dArr = new double[]{0.0d, 0.0d};
        if (af) {
            return dArr;
        }
        int i = -1;
        if (str.equals(BDGeofence.COORD_TYPE_BD09)) {
            i = f3896a;
        } else if (str.equals(BDGeofence.COORD_TYPE_BD09LL)) {
            i = f3894Y;
        } else if (str.equals(BDGeofence.COORD_TYPE_GCJ)) {
            i = f3895Z;
        } else if (str.equals("gps2gcj")) {
            i = aa;
        } else if (str.equals("bd092gcj")) {
            i = ab;
        } else if (str.equals("bd09ll2gcj")) {
            i = ac;
        }
        try {
            String[] split = m5616b(d, d2, i, 132456).split(":");
            dArr[0] = Double.parseDouble(split[0]);
            dArr[1] = Double.parseDouble(split[1]);
        } catch (Exception e) {
        }
        return dArr;
    }

    public static void m5621int(String str, String str2) {
        try {
            m5618f(str.getBytes(), str2.getBytes());
        } catch (Exception e) {
        }
    }

    public static String m5622k(String str) {
        return af ? "err!" : m5625n(str) + "|tp=3";
    }

    public static String m5623l(String str) {
        return af ? "err!" : str == null ? "null" : m5617c(str.getBytes(), 132456);
    }

    public static String m5624m(String str) {
        try {
            String g = m5619g(str.getBytes());
            return (g == null || g.length() < 2 || "no".equals(g)) ? null : g;
        } catch (Exception e) {
            return null;
        }
    }

    public static String m5625n(String str) {
        int i = 740;
        int i2 = 0;
        if (af) {
            return "err!";
        }
        if (str == null) {
            return "null";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[ae];
        int length = bytes.length;
        if (length <= 740) {
            i = length;
        }
        length = 0;
        while (i2 < i) {
            if (bytes[i2] != null) {
                bArr[length] = bytes[i2];
                length++;
            }
            i2++;
        }
        return m5615a(bArr, 132456);
    }

    private static native String sky();
}
