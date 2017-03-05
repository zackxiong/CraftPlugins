package com.baidu.location;

import android.location.Location;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.u */
abstract class C0504u implements C0452e {
    public static String eu;
    final Handler f4010Y;
    private boolean f4011Z;
    private boolean f4012a;
    private boolean aa;
    private boolean ab;
    public C0451b eA;
    public C0502a ex;

    /* renamed from: com.baidu.location.u.a */
    class C0539a extends ac {
        String f4106Y;
        final /* synthetic */ C0504u f4107Z;
        String f4108a;

        public C0539a(C0504u c0504u) {
            this.f4107Z = c0504u;
            this.f4108a = null;
            this.f4106Y = null;
            this.c0 = new ArrayList();
        }

        void m6082X() {
            this.cY = C0465K.m5635for();
            String k = Jni.m5622k(this.f4106Y);
            if (C0532n.g0) {
                Log.i(C0452e.f3849o, k);
            }
            C0552z.m6126a().m6134a(k);
            this.f4106Y = null;
            if (this.f4108a == null) {
                this.f4108a = C0491Z.m5778C();
            }
            this.c0.add(new BasicNameValuePair("bloc", k));
            if (this.f4108a != null) {
                this.c0.add(new BasicNameValuePair("up", this.f4108a));
            }
            StringBuffer stringBuffer = new StringBuffer(512);
            stringBuffer.append(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{al.m5879a(C0513f.getServiceContext()), al.m5883if(C0513f.getServiceContext())}));
            if (stringBuffer.length() > 0) {
                this.c0.add(new BasicNameValuePair("ext", Jni.m5622k(stringBuffer.toString())));
            }
            this.c0.add(new BasicNameValuePair("trtm", String.format(Locale.CHINA, "%d", new Object[]{Long.valueOf(System.currentTimeMillis())})));
            C0475Q.m5711h().m5712i();
        }

        void m6083do(boolean z) {
            Message obtainMessage;
            Object bDLocation;
            if (this.f4107Z.ex == null || this.f4107Z.ex.m5844do() != 0) {
                if (!z || this.cZ == null) {
                    C0552z.m6126a().m6137if("network exception");
                    obtainMessage = this.f4107Z.f4010Y.obtainMessage(63);
                    obtainMessage.obj = "HttpStatus error";
                    obtainMessage.sendToTarget();
                } else {
                    try {
                        String entityUtils = EntityUtils.toString(this.cZ, "utf-8");
                        C0504u.eu = entityUtils;
                        C0552z.m6126a().m6137if(entityUtils);
                        try {
                            bDLocation = new BDLocation(entityUtils);
                            if (bDLocation.getLocType() == BDLocation.TypeNetWorkLocation) {
                                C0475Q.m5711h().m5714try(bDLocation.getTime());
                                bDLocation.m5500h(aj.at().aB());
                                if (C0537s.bV().bX()) {
                                    bDLocation.setDirection(C0537s.bV().bT());
                                }
                            }
                        } catch (Exception e) {
                            bDLocation = new BDLocation();
                            bDLocation.setLocType(63);
                        }
                        Message obtainMessage2 = this.f4107Z.f4010Y.obtainMessage(21);
                        obtainMessage2.obj = bDLocation;
                        obtainMessage2.sendToTarget();
                        this.f4108a = null;
                    } catch (Exception e2) {
                        obtainMessage = this.f4107Z.f4010Y.obtainMessage(63);
                        obtainMessage.obj = "HttpStatus error";
                        obtainMessage.sendToTarget();
                    }
                }
                if (this.c0 != null) {
                    this.c0.clear();
                }
            }
        }

        public void m6084e(String str) {
            this.f4106Y = str;
            m5570R();
        }
    }

    /* renamed from: com.baidu.location.u.b */
    public class C0540b extends Handler {
        final /* synthetic */ C0504u f4109a;

        public C0540b(C0504u c0504u) {
            this.f4109a = c0504u;
        }

        public void handleMessage(Message message) {
            if (C0532n.gR) {
                switch (message.what) {
                    case ProGuard.styleable.Theme_actionBarWidgetTheme /*21*/:
                        this.f4109a.m5871a(message);
                    case ProGuard.styleable.Theme_editTextBackground /*62*/:
                    case ProGuard.styleable.Theme_textAppearanceSearchResultTitle /*63*/:
                        this.f4109a.m5870a();
                    default:
                }
            }
        }
    }

    static {
        eu = null;
    }

    C0504u() {
        this.eA = null;
        this.ex = null;
        this.f4012a = true;
        this.f4011Z = false;
        this.aa = false;
        this.ab = false;
        this.f4010Y = new C0540b(this);
    }

    abstract void m5870a();

    abstract void m5871a(Message message);

    public String m5872i(String str) {
        if (this.ex == null || !this.ex.m5846for()) {
            this.ex = aj.at().aw();
        }
        if (this.ex != null) {
            C0465K.m5640if(C0452e.f3849o, this.ex.m5843char());
        } else {
            C0465K.m5640if(C0452e.f3849o, "cellInfo null...");
        }
        if (this.eA == null || !this.eA.m5540for()) {
            this.eA = C0453D.cs().cx();
        }
        if (this.eA != null) {
            C0465K.m5640if(C0452e.f3849o, this.eA.m5539else());
        } else {
            C0465K.m5640if(C0452e.f3849o, "wifi list null");
        }
        Location a3 = ao.bg().a2() ? ao.bg().a3() : null;
        if ((this.ex == null || this.ex.m5850new()) && ((this.eA == null || this.eA.m5546try() == 0) && a3 == null)) {
            return null;
        }
        String p = C0479T.m5734q().m5748p();
        String format = C0453D.cq() ? "&cn=32" : String.format(Locale.CHINA, "&cn=%d", new Object[]{Integer.valueOf(aj.at().aq())});
        String replace;
        if (this.f4012a) {
            this.f4012a = false;
            Object cw = C0453D.cs().cw();
            if (!TextUtils.isEmpty(cw)) {
                replace = cw.replace(":", "");
                format = String.format(Locale.CHINA, "%s&mac=%s", new Object[]{format, replace});
            }
            if (VERSION.SDK_INT > 17) {
                format = C0453D.cs().cp() ? String.format(Locale.CHINA, "%s&wfal=1", new Object[]{format}) : String.format(Locale.CHINA, "%s&wfal=0", new Object[]{format});
            }
        } else if (!this.ab) {
            replace = C0491Z.m5804z();
            if (replace != null) {
                format = format + replace;
            }
            this.ab = true;
        }
        format = format + p;
        if (str != null) {
            format = str + format;
        }
        return C0465K.m5638if(this.ex, this.eA, a3, format, 0);
    }
}
