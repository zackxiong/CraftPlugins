package com.baidu.location;

import android.location.Location;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import java.io.File;
import java.util.Calendar;
import java.util.Locale;

/* renamed from: com.baidu.location.K */
class C0465K implements C0452e {
    public static float f3897Y = 0.0f;
    public static double f3898Z = 0.0d;
    private static String f3899a = null;
    public static int a0 = 0;
    public static float a1 = 0.0f;
    public static int a2 = 0;
    public static int a3 = 0;
    public static double a4 = 0.0d;
    public static int a5 = 0;
    public static boolean a6 = false;
    public static long a7 = 0;
    public static int a8 = 0;
    public static long a9 = 0;
    public static int aA = 0;
    public static float aB = 0.0f;
    public static float aC = 0.0f;
    public static int aD = 0;
    public static float aE = 0.0f;
    public static final boolean aF = true;
    public static String aG;
    public static float aH;
    public static float aI;
    private static Process aJ;
    public static float aK;
    public static boolean aL;
    public static boolean aM;
    public static float aN;
    public static int aO;
    public static double aP;
    public static int aQ;
    public static int aR;
    public static long aS;
    public static long aT;
    public static long aU;
    public static String aV;
    public static int aW;
    public static float aX;
    public static int aY;
    public static float aZ;
    public static int aa;
    public static int ab;
    public static int ac;
    public static boolean ad;
    public static float ae;
    public static int af;
    private static String ag;
    private static String ah;
    public static int ai;
    public static int aj;
    public static boolean ak;
    public static int al;
    private static String am;
    public static float an;
    public static boolean ao;
    private static String ap;
    public static int aq;
    public static int ar;
    public static byte[] as;
    private static boolean at;
    public static int au;
    public static double av;
    private static boolean aw;
    private static String ax;
    public static int ay;
    public static int az;
    public static int ba;
    public static int bb;
    public static boolean bc;
    public static String bd;
    public static float be;
    public static long bg;
    public static float bh;

    static {
        aM = false;
        a6 = false;
        ao = false;
        ar = 0;
        f3899a = "http://loc.map.baidu.com/sdk.php";
        aV = "http://loc.map.baidu.com/sdk_ep.php";
        ag = "http://loc.map.baidu.com/user_err.php";
        ah = "http://loc.map.baidu.com/oqur.php";
        am = "http://loc.map.baidu.com/tcu.php";
        ap = "https://sapi.skyhookwireless.com/wps2/location";
        at = false;
        aw = false;
        ax = "[baidu_location_service]";
        aJ = null;
        aG = "no";
        bd = BDGeofence.COORD_TYPE_GCJ;
        aL = aF;
        au = 3;
        aP = 0.0d;
        a4 = 0.0d;
        f3898Z = 0.0d;
        av = 0.0d;
        aO = 0;
        as = null;
        bc = false;
        aq = 0;
        bh = 1.1f;
        an = 2.2f;
        aK = 2.3f;
        aZ = 3.8f;
        ay = 3;
        aQ = 10;
        a2 = 2;
        ac = 7;
        aa = 20;
        a8 = 70;
        aj = 120;
        aI = 2.0f;
        aH = 10.0f;
        be = 50.0f;
        aX = 200.0f;
        a3 = 16;
        ae = 0.9f;
        aY = 10000;
        f3897Y = 0.5f;
        aC = 0.0f;
        aB = 0.1f;
        aA = 30;
        az = 100;
        aW = 420000;
        ak = aF;
        ad = aF;
        a0 = 20;
        a5 = 300;
        aR = LocationClientOption.MIN_SCAN_SPAN;
        aS = 900000;
        a9 = 420000;
        aU = 180000;
        aT = 180000;
        a7 = 15;
        bg = 300000;
        al = 100;
        bb = 0;
        ab = 30000;
        af = 30000;
        aN = 10.0f;
        aE = 6.0f;
        a1 = 10.0f;
        aD = 60;
        ba = 70;
        ai = 6;
    }

    static int m5626a(String str, String str2, String str3) {
        int i = Integer.MIN_VALUE;
        if (!(str == null || str.equals(""))) {
            int indexOf = str.indexOf(str2);
            if (indexOf != -1) {
                indexOf += str2.length();
                int indexOf2 = str.indexOf(str3, indexOf);
                if (indexOf2 != -1) {
                    String substring = str.substring(indexOf, indexOf2);
                    if (!(substring == null || substring.equals(""))) {
                        try {
                            i = Integer.parseInt(substring);
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            }
        }
        return i;
    }

    static String m5627a() {
        Calendar instance = Calendar.getInstance();
        int i = instance.get(5);
        int i2 = instance.get(1);
        int i3 = instance.get(2) + 1;
        int i4 = instance.get(11);
        int i5 = instance.get(12);
        int i6 = instance.get(13);
        return String.format(Locale.CHINA, "%d-%d-%d %d:%d:%d", new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6)});
    }

    public static String m5628byte() {
        return ag;
    }

    public static String m5629case() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        try {
            String path = Environment.getExternalStorageDirectory().getPath();
            File file = new File(path + "/baidu/tempdata");
            if (file.exists()) {
                return path;
            }
            file.mkdirs();
            return path;
        } catch (Exception e) {
            return null;
        }
    }

    public static void m5630char() {
    }

    public static String m5631do() {
        return ah;
    }

    public static void m5632do(String str) {
        if (str != null) {
            f3899a = str;
        }
    }

    public static void m5633do(String str, String str2) {
    }

    public static void m5634else() {
        try {
            if (aJ != null) {
                aJ.destroy();
                aJ = null;
            }
        } catch (Exception e) {
        }
    }

    public static String m5635for() {
        return f3899a;
    }

    public static String m5636goto() {
        String str = C0465K.m5629case();
        return str == null ? null : str + "/baidu/tempdata";
    }

    public static String m5637if(C0502a c0502a, C0451b c0451b, Location location, String str) {
        String c0502a2;
        StringBuffer stringBuffer = new StringBuffer();
        if (c0502a != null) {
            c0502a2 = c0502a.toString();
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        if (c0451b != null) {
            try {
                c0502a2 = c0451b.m5541if(5);
            } catch (Exception e) {
                c0502a2 = null;
            }
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        if (location != null) {
            c0502a2 = ar != 0 ? ao.m5942new(location) : ao.m5931byte(location);
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        c0502a2 = C0518i.cY().m5972char(false);
        if (c0502a2 != null) {
            stringBuffer.append(c0502a2);
        }
        if (str != null) {
            stringBuffer.append(str);
        }
        if (c0502a != null) {
            c0502a2 = c0502a.m5849int();
            if (c0502a2 != null && c0502a2.length() + stringBuffer.length() < 750) {
                stringBuffer.append(c0502a2);
            }
        }
        return stringBuffer.toString();
    }

    public static String m5638if(C0502a c0502a, C0451b c0451b, Location location, String str, int i) {
        String c0502a2;
        StringBuffer stringBuffer = new StringBuffer();
        if (c0502a != null) {
            c0502a2 = c0502a.toString();
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        if (c0451b != null) {
            c0502a2 = i == 0 ? c0451b.m5535char() : c0451b.m5533byte();
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        if (location != null) {
            c0502a2 = (ar == 0 || i == 0) ? ao.m5931byte(location) : ao.m5942new(location);
            if (c0502a2 != null) {
                stringBuffer.append(c0502a2);
            }
        }
        boolean z = false;
        if (i == 0) {
            z = aF;
        }
        c0502a2 = C0518i.cY().m5972char(z);
        if (c0502a2 != null) {
            stringBuffer.append(c0502a2);
        }
        if (str != null) {
            stringBuffer.append(str);
        }
        Object a = C0512d.m5947do().m5948a();
        if (!TextUtils.isEmpty(a)) {
            stringBuffer.append("&bc=").append(a);
        }
        if (c0502a != null) {
            c0502a2 = c0502a.m5849int();
            if (c0502a2 != null && c0502a2.length() + stringBuffer.length() < 750) {
                stringBuffer.append(c0502a2);
            }
        }
        c0502a2 = stringBuffer.toString();
        if (location == null || c0451b == null) {
            au = 3;
        } else {
            try {
                float speed = location.getSpeed();
                int i2 = ar;
                int i3 = c0451b.m5536do();
                int i4 = c0451b.m5546try();
                boolean z2 = c0451b.m5534case();
                if (speed < aE && ((i2 == 1 || i2 == 0) && (i3 < aD || z2 == aF))) {
                    au = 1;
                } else if (speed >= a1 || (!(i2 == 1 || i2 == 0 || i2 == 3) || (i3 >= ba && i4 <= ai))) {
                    au = 3;
                } else {
                    au = 2;
                }
            } catch (Exception e) {
                au = 3;
            }
        }
        return c0502a2;
    }

    public static void m5639if(String str) {
        if (aw) {
            Log.d(ax, str);
        }
    }

    public static void m5640if(String str, String str2) {
        if (at) {
            Log.d(str, str2);
        }
    }

    public static boolean m5641if(BDLocation bDLocation) {
        int locType = bDLocation.getLocType();
        return (locType <= 100 || locType >= 200) ? false : aF;
    }

    public static String m5642int() {
        return ap;
    }

    public static String m5643long() {
        try {
            File file = new File(C0513f.getServiceContext().getFilesDir() + File.separator + "lldt");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file.getAbsolutePath();
        } catch (Exception e) {
            return null;
        }
    }

    public static String m5644new() {
        return am;
    }
}
