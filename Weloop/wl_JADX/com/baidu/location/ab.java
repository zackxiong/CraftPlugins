package com.baidu.location;

import android.os.Message;
import com.baidu.location.BDLocation.C0447a;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.http.util.EntityUtils;

class ab implements C0452e {
    private static SimpleDateFormat aa;
    C0451b f3986Y;
    boolean f3987Z;
    C0502a f3988a;

    /* renamed from: com.baidu.location.ab.a */
    class C0500a extends ac {
        final /* synthetic */ ab f3985a;

        public C0500a(ab abVar) {
            this.f3985a = abVar;
        }

        void m5834X() {
        }

        void m5835a(String str) {
            this.c3 = str;
            m5574Y();
        }

        void m5836do(boolean z) {
            if (!z || this.cZ == null) {
                BDLocation bDLocation = new BDLocation();
                bDLocation.setLocType(63);
                C0479T.m5734q().m5737do(bDLocation);
                return;
            }
            try {
                C0538t c0538t = new C0538t(EntityUtils.toString(this.cZ, "utf-8"));
                if (this.f3985a.f3987Z && c0538t.bY()) {
                    bDLocation = new BDLocation();
                    double[] dArr = Jni.m5620if(c0538t.b0(), c0538t.bZ(), "gps2gcj");
                    bDLocation.setRadius(c0538t.b1());
                    bDLocation.setLocType(BDLocation.TypeNetWorkLocation);
                    bDLocation.m5501i(0);
                    bDLocation.setLongitude(dArr[0]);
                    bDLocation.setLatitude(dArr[1]);
                    bDLocation.setNetworkLocationType("sky");
                    bDLocation.getClass();
                    C0447a c0447a = new C0447a(bDLocation);
                    c0447a.f3782int = c0538t.hy;
                    c0447a.f3776byte = c0538t.hD;
                    c0447a.f3780for = c0538t.hu;
                    c0447a.f3781if = c0538t.hA;
                    c0447a.f3778char = c0538t.hs;
                    c0447a.f3779do = c0538t.hv;
                    c0447a.f3774a = c0538t.hx;
                    c0447a.f3783try = c0447a.f3780for + c0447a.f3782int + c0447a.f3776byte + c0447a.f3781if + c0447a.f3778char;
                    if (C0465K.aG.equals("all")) {
                        bDLocation.m5502if(c0447a);
                    }
                    bDLocation.setTime(ab.aa.format(new Date()));
                    bDLocation.m5500h(aj.at().aB());
                    if (C0537s.bV().bX()) {
                        bDLocation.setDirection(C0537s.bV().bT());
                    }
                    Message obtainMessage = C0543v.aI().aa.obtainMessage(21);
                    obtainMessage.obj = bDLocation;
                    obtainMessage.sendToTarget();
                } else if (this.f3985a.f3987Z && !c0538t.bY()) {
                    bDLocation = new BDLocation();
                    bDLocation.setLocType(BDLocation.TypeServerError);
                    C0479T.m5734q().m5737do(bDLocation);
                }
            } catch (Exception e) {
            }
        }
    }

    static {
        aa = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    public ab() {
        this.f3988a = null;
        this.f3986Y = null;
        this.f3987Z = false;
    }

    public ab(C0502a c0502a, C0451b c0451b, boolean z) {
        this.f3988a = null;
        this.f3986Y = null;
        this.f3987Z = false;
        this.f3988a = c0502a;
        this.f3986Y = c0451b;
        this.f3987Z = z;
    }

    public void m5838N() {
        String str = null;
        StringBuffer stringBuffer = new StringBuffer(1024);
        String a = (this.f3986Y == null || this.f3986Y.m5546try() <= 1) ? null : this.f3986Y.m5531a(15);
        if (this.f3988a != null && this.f3988a.m5848if()) {
            str = this.f3988a.m5851try();
        }
        if (a != null || str != null) {
            stringBuffer.append("<LocationRQ xmlns=\"http://skyhookwireless.com/wps/2005\"\nversion=\"2.21\"\nstreet-address-lookup=\"full\">\n<authentication version=\"2.2\">\n<key key=\"" + Jni.aZ() + "\"\n" + "username=\"BAIDULOC\"/></authentication>\n");
            if (a != null) {
                stringBuffer.append(a);
            }
            if (str != null) {
                stringBuffer.append(str);
            }
            stringBuffer.append("</LocationRQ>");
            new C0500a(this).m5835a(stringBuffer.toString());
        }
    }
}
