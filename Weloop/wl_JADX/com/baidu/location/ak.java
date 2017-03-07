package com.baidu.location;

import android.os.Message;
import com.baidu.location.C0504u.C0539a;

class ak extends C0504u implements C0452e {
    private static ak f4013a;
    private BDLocation f4014Z;
    private long aa;
    public C0539a e1;

    static {
        f4013a = null;
    }

    private ak() {
        this.f4014Z = null;
        this.aa = 0;
        this.e1 = null;
        this.e1 = new C0539a(this);
    }

    public static ak aQ() {
        if (f4013a == null) {
            f4013a = new ak();
        }
        return f4013a;
    }

    private void m5873b() {
        C0491Z.m5803y().m5807F();
    }

    private void m5874b(Message message) {
        if (System.currentTimeMillis() - this.aa >= 3000 || this.f4014Z == null) {
            this.e1.m6084e(m5872i(C0479T.m5734q().m5739if(message)));
            this.aa = System.currentTimeMillis();
            return;
        }
        C0479T.m5734q().m5740if(this.f4014Z, 26);
    }

    void m5875a() {
        C0465K.m5640if(C0452e.f3849o, "on network exception");
        this.f4014Z = null;
        C0479T.m5734q().m5740if(C0516g.cP().m5968case(false), 26);
        m5873b();
    }

    void m5876a(Message message) {
        C0465K.m5640if(C0452e.f3849o, "on network success");
        BDLocation bDLocation = (BDLocation) message.obj;
        C0479T.m5734q().m5740if(bDLocation, 26);
        if (C0465K.m5641if(bDLocation)) {
            this.f4014Z = bDLocation;
        } else {
            this.f4014Z = null;
        }
        m5873b();
    }

    public void m5877long(Message message) {
        m5874b(message);
    }
}
