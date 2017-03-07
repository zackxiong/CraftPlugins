package com.baidu.location;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.BDLocation.C0447a;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.C0504u.C0539a;
import com.baidu.location.C0504u.C0540b;
import com.baidu.location.aj.C0502a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.v */
class C0543v extends C0504u implements C0452e {
    private static C0543v ab;
    final int f4111Z;
    final int f4112a;
    final Handler aa;
    private boolean ac;
    private C0454E ad;
    private String ae;
    private BDLocation af;
    private BDLocation ag;
    private C0451b ah;
    private C0502a ai;
    private boolean aj;
    private volatile boolean ak;
    private boolean al;
    private long am;
    private long an;
    private int ao;
    private C0447a ap;
    private double aq;
    private double ar;
    private boolean as;
    public C0539a eC;

    /* renamed from: com.baidu.location.v.a */
    private class C0542a implements Runnable {
        final /* synthetic */ C0543v f4110a;

        private C0542a(C0543v c0543v) {
            this.f4110a = c0543v;
        }

        public void run() {
            if (this.f4110a.al) {
                this.f4110a.al = false;
                this.f4110a.m6094f();
            }
        }
    }

    static {
        ab = null;
    }

    private C0543v() {
        this.f4112a = LightAppTableDefine.Msg_Need_Clean_COUNT;
        this.f4111Z = LocationClientOption.MIN_SCAN_SPAN;
        this.ac = true;
        this.ad = null;
        this.eC = null;
        this.ae = null;
        this.af = null;
        this.ag = null;
        this.ah = null;
        this.ai = null;
        this.aj = true;
        this.ak = false;
        this.al = false;
        this.am = 0;
        this.an = 0;
        this.aa = new C0540b(this);
        this.ap = null;
        this.as = false;
        this.ad = new C0454E();
        this.eC = new C0539a(this);
    }

    private boolean m6085a(C0451b c0451b) {
        this.eA = C0453D.cs().cx();
        return c0451b == this.eA ? false : this.eA == null || c0451b == null || !c0451b.m5532a(this.eA);
    }

    private boolean m6086a(C0502a c0502a) {
        this.ex = aj.at().aw();
        return this.ex == c0502a ? false : this.ex == null || c0502a == null || !c0502a.m5840a(this.ex);
    }

    public static C0543v aI() {
        if (ab == null) {
            ab = new C0543v();
        }
        return ab;
    }

    private void m6089b(Message message) {
        C0465K.m5640if(C0452e.f3849o, "on request location ...");
        if (!C0536r.bO().bP()) {
            int i = C0479T.m5734q().m5738for(message);
            this.ao = message.arg1;
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    m6091c(message);
                case ProGuard.styleable.View_paddingStart /*2*/:
                    m6093e();
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    if (ao.bg().a2()) {
                        m6092d(message);
                    }
                default:
                    throw new IllegalArgumentException(String.format("this type %d is illegal", new Object[]{Integer.valueOf(i)}));
            }
        }
    }

    private void m6091c(Message message) {
        if (ao.bg().a2()) {
            m6092d(message);
        } else {
            m6093e();
        }
    }

    private void m6092d(Message message) {
        String a0 = ao.bg().a0();
        BDLocation bDLocation = new BDLocation(a0);
        if (C0465K.aG.equals("all")) {
            float[] fArr = new float[2];
            Location.distanceBetween(this.ar, this.aq, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
            if (fArr[0] >= 100.0f) {
                this.as = true;
                m6093e();
            } else if (this.ap != null) {
                bDLocation.m5502if(this.ap);
            }
        }
        C0479T.m5734q().m5741if(bDLocation, message);
        C0552z.m6126a().m6134a(null);
        C0552z.m6126a().m6137if(a0);
    }

    private void m6093e() {
        if (this.aj) {
            m6094f();
        } else if (!this.ak) {
            if (C0453D.cs().ct()) {
                this.al = true;
                this.aa.postDelayed(new C0542a(), 2000);
                return;
            }
            m6094f();
        }
    }

    private void m6094f() {
        if (!this.ak) {
            if (System.currentTimeMillis() - this.am >= 1000 || this.af == null) {
                C0465K.m5640if(C0452e.f3849o, "start network locating ...");
                this.ak = true;
                this.ac = m6086a(this.ai);
                if (m6085a(this.ah) || this.ac || this.af == null || this.ao != 0 || this.as) {
                    String i = m5872i(null);
                    if (i != null) {
                        if (this.ae != null) {
                            i = i + this.ae;
                            this.ae = null;
                        }
                        this.eC.m6084e(i);
                        this.ai = this.ex;
                        this.ah = this.eA;
                        if (this.ai != null && this.ai.m5844do() == 0) {
                            new ab(this.ai, this.ah, true).m5838N();
                            m6095g();
                        }
                        if (this.aj) {
                            this.aj = false;
                        }
                        this.am = System.currentTimeMillis();
                        return;
                    } else if (this.af != null) {
                        C0479T.m5734q().m5737do(this.af);
                        m6095g();
                        return;
                    } else {
                        BDLocation bDLocation = new BDLocation();
                        bDLocation.setLocType(62);
                        C0479T.m5734q().m5737do(bDLocation);
                        m6095g();
                        return;
                    }
                }
                if (this.ag != null && System.currentTimeMillis() - this.an > 30000) {
                    this.af = this.ag;
                    this.ag = null;
                }
                C0479T.m5734q().m5737do(this.af);
                m6095g();
                return;
            }
            C0479T.m5734q().m5737do(this.af);
            m6095g();
        }
    }

    private void m6095g() {
        this.ak = false;
        this.as = false;
        m6096h();
    }

    private void m6096h() {
        if (this.af != null) {
            C0491Z.m5803y().m5807F();
        }
    }

    void m6097a() {
        if (ao.bg().a2()) {
            BDLocation bDLocation = new BDLocation(ao.bg().a0());
            if (C0465K.aG.equals("all")) {
                float[] fArr = new float[2];
                Location.distanceBetween(this.ar, this.aq, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
                if (fArr[0] < 100.0f && this.ap != null) {
                    bDLocation.m5502if(this.ap);
                }
            }
            C0479T.m5734q().m5740if(bDLocation, 21);
            m6095g();
            return;
        }
        if (this.ac || this.af == null) {
            C0479T.m5734q().m5740if(C0516g.cP().m5968case(false), 21);
        } else {
            C0479T.m5734q().m5740if(this.af, 21);
        }
        this.af = null;
        this.ag = null;
        this.ad.cC();
        m6095g();
    }

    void m6098a(Message message) {
        boolean z = true;
        C0465K.m5640if(C0452e.f3849o, "on network success");
        BDLocation bDLocation = (BDLocation) message.obj;
        BDLocation bDLocation2 = new BDLocation(bDLocation);
        if (bDLocation.hasAddr()) {
            this.ap = bDLocation.c9();
            this.aq = bDLocation.getLongitude();
            this.ar = bDLocation.getLatitude();
        }
        if (ao.bg().a2()) {
            BDLocation bDLocation3 = new BDLocation(ao.bg().a0());
            if (C0465K.aG.equals("all")) {
                float[] fArr = new float[2];
                Location.distanceBetween(this.ar, this.aq, bDLocation3.getLatitude(), bDLocation3.getLongitude(), fArr);
                if (fArr[0] < 100.0f && this.ap != null) {
                    bDLocation3.m5502if(this.ap);
                }
            }
            C0479T.m5734q().m5740if(bDLocation3, 21);
            m6095g();
        } else if (bDLocation.getNetworkLocationType() == null || !bDLocation.getNetworkLocationType().equals("sky")) {
            if (bDLocation.c7() == 0) {
                C0526k.f4082a = true;
            } else {
                C0526k.f4082a = false;
            }
            this.ag = null;
            if (this.ai != null && this.ai.m5844do() != 0 && bDLocation.c7() == 2 && bDLocation.getLocType() == BDLocation.TypeServerError) {
                new ab(this.ai, this.ah, true).m5838N();
            }
            if (bDLocation.getLocType() == BDLocation.TypeNetWorkLocation && "cl".equals(bDLocation.getNetworkLocationType()) && this.af != null && this.af.getLocType() == BDLocation.TypeNetWorkLocation && "wf".equals(this.af.getNetworkLocationType()) && System.currentTimeMillis() - this.an < 30000) {
                this.ag = bDLocation;
            } else {
                z = false;
            }
            if (!ao.bg().a2()) {
                if (z) {
                    C0479T.m5734q().m5740if(this.af, 21);
                } else {
                    C0479T.m5734q().m5740if(bDLocation, 21);
                    this.an = System.currentTimeMillis();
                }
            }
            if (!C0465K.m5641if(bDLocation)) {
                this.af = null;
                this.ad.cC();
            } else if (!z) {
                this.af = bDLocation;
            }
            int a = C0465K.m5626a(eu, "ssid\":\"", "\"");
            if (a == Integer.MIN_VALUE || this.ah == null) {
                this.ae = null;
            } else {
                this.ae = this.ah.m5537do(a);
            }
            C0516g.cP().m5970if(eu, this.ai, this.ah, bDLocation2);
            m6095g();
        } else {
            bDLocation.setNetworkLocationType("wf");
            C0479T.m5734q().m5740if(bDLocation, 21);
            this.an = System.currentTimeMillis();
            this.af = bDLocation;
        }
    }

    public void aG() {
        if (this.al) {
            m6094f();
            this.al = false;
        }
    }

    public boolean aK() {
        return this.ac;
    }

    void m6099b() {
        this.aj = true;
        this.ak = false;
    }

    void m6100c() {
        this.ak = false;
        m6102d();
    }

    public void m6101case(Message message) {
        m6089b(message);
    }

    void m6102d() {
        this.af = null;
        this.ad.cC();
    }

    public void m6103for(BDLocation bDLocation) {
        m6102d();
        this.af = bDLocation;
    }

    public C0447a m6104int(BDLocation bDLocation) {
        if (C0465K.aG.equals("all")) {
            float[] fArr = new float[2];
            Location.distanceBetween(this.ar, this.aq, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
            if (fArr[0] >= 100.0f) {
                this.as = true;
                m6093e();
            } else if (this.ap != null) {
                return this.ap;
            }
        }
        return null;
    }
}
