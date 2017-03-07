package com.baidu.location;

import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.baidu.location.p083a.p084a.C0492a;
import com.umeng.update.util.ProGuard;

/* renamed from: com.baidu.location.i */
class C0518i implements C0452e {
    private static C0518i ac;
    public static String ju;
    public static String jy;
    String f4051Y;
    String f4052Z;
    String f4053a;
    int aa;
    int ab;

    static {
        ac = null;
        ju = null;
        jy = null;
    }

    private C0518i() {
        this.f4053a = null;
        this.f4051Y = null;
        this.f4052Z = null;
        this.aa = -1;
        this.ab = -1;
        try {
            this.f4053a = ((TelephonyManager) C0513f.getServiceContext().getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            this.f4053a = "NULL";
        }
        try {
            this.f4051Y = C0492a.m5809a(C0513f.getServiceContext());
        } catch (Exception e2) {
            this.f4051Y = null;
        }
        try {
            ju = C0513f.getServiceContext().getPackageName();
        } catch (Exception e3) {
            ju = null;
        }
    }

    public static C0518i cY() {
        if (ac == null) {
            ac = new C0518i();
        }
        return ac;
    }

    public String cV() {
        return ju != null ? cW() + "|" + ju : cW();
    }

    public String cW() {
        return this.f4051Y != null ? "v5.21|" + this.f4051Y + "|" + Build.MODEL : "v5.21" + this.f4053a + "|" + Build.MODEL;
    }

    public String cX() {
        return "&sdk=5.21" + cZ();
    }

    public String cZ() {
        StringBuffer stringBuffer = new StringBuffer(200);
        if (this.f4051Y != null) {
            stringBuffer.append("&cu=");
            stringBuffer.append(this.f4051Y);
        } else {
            stringBuffer.append("&im=");
            stringBuffer.append(this.f4053a);
        }
        try {
            stringBuffer.append("&mb=");
            stringBuffer.append(Build.MODEL);
        } catch (Exception e) {
        }
        stringBuffer.append("&pack=");
        try {
            stringBuffer.append(ju);
        } catch (Exception e2) {
        }
        stringBuffer.append("&sdk=");
        stringBuffer.append(5.21f);
        return stringBuffer.toString();
    }

    public String m5972char(boolean z) {
        return m5973if(z, null);
    }

    public String m5973if(boolean z, String str) {
        StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
        stringBuffer.append("&sdk=");
        stringBuffer.append(5.21f);
        if (z && C0465K.aG.equals("all")) {
            stringBuffer.append("&addr=all");
        }
        if (z) {
            if (str == null) {
                stringBuffer.append("&coor=gcj02");
            } else {
                stringBuffer.append("&coor=");
                stringBuffer.append(str);
            }
        }
        if (this.f4051Y == null) {
            stringBuffer.append("&im=");
            stringBuffer.append(this.f4053a);
        } else {
            stringBuffer.append("&cu=");
            stringBuffer.append(this.f4051Y);
        }
        stringBuffer.append("&fw=");
        stringBuffer.append(C0513f.getFrameVersion());
        stringBuffer.append("&lt=1");
        stringBuffer.append("&mb=");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("&resid=");
        stringBuffer.append("12");
        stringBuffer.append("&os=A");
        stringBuffer.append(VERSION.SDK);
        if (z) {
            stringBuffer.append("&sv=");
            String str2 = VERSION.RELEASE;
            if (str2 != null && str2.length() > 6) {
                str2 = str2.substring(0, 6);
            }
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }

    public void m5974try(String str, String str2) {
        jy = str;
        ju = str2;
    }

    public String m5975u(String str) {
        return m5973if(true, str);
    }
}
