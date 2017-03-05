package com.baidu.platform.comapi.map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Handler;
import android.util.FloatMath;
import android.view.Display;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.map.WeightedLatLng;
import com.baidu.mapapi.utils.C0587b;
import com.baidu.platform.comapi.map.MapRenderer.C0613a;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comapi.p088c.C0605a;
import com.baidu.platform.comapi.p088c.C0607c;
import com.baidu.platform.comjni.engine.C0642a;
import com.baidu.platform.comjni.map.basemap.BaseMapCallback;
import com.baidu.platform.comjni.map.basemap.C0619b;
import com.baidu.platform.comjni.map.basemap.C0643a;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import uk.co.chrisjenx.calligraphy.ProGuard;

@SuppressLint({"NewApi"})
/* renamed from: com.baidu.platform.comapi.map.f */
public class C0620f extends GLSurfaceView implements OnDoubleTapListener, OnGestureListener, C0613a, C0619b {
    private static final String f4778e;
    private C0622i f4779A;
    private C0624k f4780B;
    private C0614a f4781C;
    private C0567l f4782D;
    private C0610B f4783E;
    private boolean f4784F;
    private int f4785G;
    private int f4786H;
    private int f4787I;
    private int f4788J;
    private C0618a f4789K;
    private VelocityTracker f4790L;
    private GestureDetector f4791M;
    private long f4792N;
    private long f4793O;
    private long f4794P;
    private long f4795Q;
    private int f4796R;
    private float f4797S;
    private float f4798T;
    private boolean f4799U;
    private long f4800V;
    private long f4801W;
    private boolean f4802Z;
    public float f4803a;
    private boolean aa;
    private boolean ab;
    public float f4804b;
    List<C0565h> f4805c;
    C0643a f4806d;
    private boolean f4807f;
    private boolean f4808g;
    private boolean f4809h;
    private boolean f4810i;
    private boolean f4811j;
    private boolean f4812k;
    private boolean f4813l;
    private boolean f4814m;
    private boolean f4815n;
    private boolean f4816o;
    private boolean f4817p;
    private Context f4818q;
    private MapRenderer f4819r;
    private int f4820s;
    private Handler f4821t;
    private List<C0608b> f4822u;
    private C0634w f4823v;
    private C0616d f4824w;
    private C0623j f4825x;
    private C0612D f4826y;
    private C0627o f4827z;

    /* renamed from: com.baidu.platform.comapi.map.f.a */
    static class C0618a {
        float f4770a;
        float f4771b;
        float f4772c;
        float f4773d;
        boolean f4774e;
        float f4775f;
        float f4776g;
        double f4777h;

        C0618a() {
        }
    }

    static {
        f4778e = C0620f.class.getSimpleName();
    }

    public C0620f(Context context, C0636y c0636y) {
        super(context);
        this.f4803a = 20.0f;
        this.f4804b = 3.0f;
        this.f4809h = true;
        this.f4810i = false;
        this.f4811j = false;
        this.f4812k = false;
        this.f4813l = true;
        this.f4814m = true;
        this.f4815n = true;
        this.f4816o = true;
        this.f4817p = false;
        this.f4789K = new C0618a();
        this.f4818q = context;
        if (context == null) {
            throw new RuntimeException("when you create an mapview, the context can not be null");
        }
        this.f4791M = new GestureDetector(context, this);
        C0587b.m6379a(context);
        m6527v();
        m6528w();
        m6537a();
        BaseMapCallback.addLayerDataInterface(this.f4820s, this);
        m6543a(c0636y);
        this.f4805c = new ArrayList();
        m6529x();
        m6530y();
        m6504A();
        setBackgroundColor(0);
    }

    private void m6504A() {
        this.f4783E = new C0610B(this.f4806d);
    }

    private void m6505B() {
        this.f4787I = 0;
        this.f4789K.f4774e = false;
        this.f4789K.f4777h = 0.0d;
    }

    private void m6506C() {
        if (!this.f4802Z) {
            this.f4802Z = true;
            this.aa = false;
            for (C0565h a : this.f4805c) {
                a.m6288a(m6577p());
            }
        }
    }

    private void m6507D() {
        this.f4802Z = false;
        if (!this.aa) {
            for (C0565h c : this.f4805c) {
                c.m6297c(m6577p());
            }
        }
    }

    private void m6508E() {
        if (!this.f4802Z && !this.aa) {
            this.aa = true;
            for (C0565h a : this.f4805c) {
                a.m6288a(m6577p());
            }
        }
    }

    private void m6509F() {
        this.aa = false;
        this.f4802Z = false;
        for (C0565h c : this.f4805c) {
            c.m6297c(m6577p());
        }
    }

    private int m6510a(int i, int i2, int i3) {
        return C0643a.m6622b(this.f4820s, i, i2, i3);
    }

    private boolean m6512a(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        if (pointerCount == 2 && !(m6516b((int) motionEvent.getX(0), (int) motionEvent.getY(0)) && m6516b((int) motionEvent.getX(1), (int) motionEvent.getY(1)))) {
            pointerCount = 1;
        }
        if (pointerCount == 2) {
            float y = ((float) this.f4786H) - motionEvent.getY(0);
            float y2 = ((float) this.f4786H) - motionEvent.getY(1);
            float x = motionEvent.getX(0);
            float x2 = motionEvent.getX(1);
            switch (motionEvent.getAction()) {
                case ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f4793O = motionEvent.getEventTime();
                    this.f4796R--;
                    break;
                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f4795Q = motionEvent.getEventTime();
                    this.f4796R++;
                    break;
                case 261:
                    this.f4792N = motionEvent.getEventTime();
                    this.f4796R--;
                    break;
                case 262:
                    this.f4794P = motionEvent.getEventTime();
                    this.f4796R++;
                    break;
            }
            if (this.f4790L == null) {
                this.f4790L = VelocityTracker.obtain();
            }
            this.f4790L.addMovement(motionEvent);
            int minimumFlingVelocity = ViewConfiguration.getMinimumFlingVelocity();
            this.f4790L.computeCurrentVelocity(LocationClientOption.MIN_SCAN_SPAN, (float) ViewConfiguration.getMaximumFlingVelocity());
            float xVelocity = this.f4790L.getXVelocity(1);
            float yVelocity = this.f4790L.getYVelocity(1);
            float xVelocity2 = this.f4790L.getXVelocity(2);
            float yVelocity2 = this.f4790L.getYVelocity(2);
            if (Math.abs(xVelocity) > ((float) minimumFlingVelocity) || Math.abs(yVelocity) > ((float) minimumFlingVelocity) || Math.abs(xVelocity2) > ((float) minimumFlingVelocity) || Math.abs(yVelocity2) > ((float) minimumFlingVelocity)) {
                if (this.f4789K.f4774e) {
                    double sqrt;
                    int log;
                    if (this.f4787I == 0) {
                        if ((this.f4789K.f4772c - y <= 0.0f || this.f4789K.f4773d - y2 <= 0.0f) && (this.f4789K.f4772c - y >= 0.0f || this.f4789K.f4773d - y2 >= 0.0f)) {
                            this.f4787I = 2;
                        } else {
                            sqrt = ((double) FloatMath.sqrt(((x2 - x) * (x2 - x)) + ((y2 - y) * (y2 - y)))) / this.f4789K.f4777h;
                            log = (int) ((Math.log(sqrt) / Math.log(2.0d)) * 10000.0d);
                            minimumFlingVelocity = (int) (((Math.atan2((double) (y2 - y), (double) (x2 - x)) - Math.atan2((double) (this.f4789K.f4773d - this.f4789K.f4772c), (double) (this.f4789K.f4771b - this.f4789K.f4770a))) * 180.0d) / 3.1416d);
                            if ((sqrt <= 0.0d || (log <= LocationClientOption.MIN_SCAN_SPAN_NETWORK && log >= -3000)) && Math.abs(minimumFlingVelocity) < 10) {
                                this.f4787I = 1;
                            } else {
                                this.f4787I = 2;
                            }
                        }
                        if (this.f4787I == 0) {
                            return true;
                        }
                    }
                    if (this.f4787I == 1 && this.f4813l) {
                        if (this.f4789K.f4772c - y > 0.0f && this.f4789K.f4773d - y2 > 0.0f) {
                            m6506C();
                            m6510a(1, 83, 0);
                        } else if (this.f4789K.f4772c - y < 0.0f && this.f4789K.f4773d - y2 < 0.0f) {
                            m6506C();
                            m6510a(1, 87, 0);
                        }
                    } else if (this.f4787I == 2 || this.f4787I == 4 || this.f4787I == 3) {
                        double atan2 = Math.atan2((double) (y2 - y), (double) (x2 - x)) - Math.atan2((double) (this.f4789K.f4773d - this.f4789K.f4772c), (double) (this.f4789K.f4771b - this.f4789K.f4770a));
                        sqrt = ((double) FloatMath.sqrt(((x2 - x) * (x2 - x)) + ((y2 - y) * (y2 - y)))) / this.f4789K.f4777h;
                        log = (int) ((Math.log(sqrt) / Math.log(2.0d)) * 10000.0d);
                        double atan22 = Math.atan2((double) (this.f4789K.f4776g - this.f4789K.f4772c), (double) (this.f4789K.f4775f - this.f4789K.f4770a));
                        double sqrt2 = (double) FloatMath.sqrt(((this.f4789K.f4775f - this.f4789K.f4770a) * (this.f4789K.f4775f - this.f4789K.f4770a)) + ((this.f4789K.f4776g - this.f4789K.f4772c) * (this.f4789K.f4776g - this.f4789K.f4772c)));
                        float cos = (float) (((Math.cos(atan22 + atan2) * sqrt2) * sqrt) + ((double) x));
                        float sin = (float) (((Math.sin(atan22 + atan2) * sqrt2) * sqrt) + ((double) y));
                        minimumFlingVelocity = (int) ((atan2 * 180.0d) / 3.1416d);
                        if (sqrt > 0.0d && (3 == this.f4787I || (Math.abs(log) > LightAppTableDefine.Msg_Need_Clean_COUNT && 2 == this.f4787I))) {
                            this.f4787I = 3;
                            float f = m6577p().f4882a;
                            if (this.f4815n) {
                                if (sqrt > WeightedLatLng.DEFAULT_INTENSITY) {
                                    if (f >= this.f4803a) {
                                        return false;
                                    }
                                    m6506C();
                                    m6510a(8193, 3, log);
                                } else if (f <= this.f4804b) {
                                    return false;
                                } else {
                                    m6506C();
                                    m6510a(8193, 3, log);
                                }
                            }
                        } else if (minimumFlingVelocity != 0 && (4 == this.f4787I || (Math.abs(minimumFlingVelocity) > 10 && 2 == this.f4787I))) {
                            this.f4787I = 4;
                            if (this.f4816o) {
                                m6506C();
                                m6510a(8193, 1, minimumFlingVelocity);
                            }
                        }
                        this.f4789K.f4775f = cos;
                        this.f4789K.f4776g = sin;
                    }
                }
            } else if (this.f4787I == 0 && this.f4796R == 0) {
                this.f4794P = this.f4794P > this.f4795Q ? this.f4794P : this.f4795Q;
                this.f4792N = this.f4792N < this.f4793O ? this.f4793O : this.f4792N;
                if (this.f4794P - this.f4792N < 200 && this.f4815n) {
                    C0639z p = m6577p();
                    p.f4882a -= 1.0f;
                    m6545a(p, 300);
                }
            }
            if (2 != this.f4787I) {
                this.f4789K.f4772c = y;
                this.f4789K.f4773d = y2;
                this.f4789K.f4770a = x;
                this.f4789K.f4771b = x2;
            }
            if (!this.f4789K.f4774e) {
                this.f4789K.f4775f = (float) (this.f4785G / 2);
                this.f4789K.f4776g = (float) (this.f4786H / 2);
                this.f4789K.f4774e = true;
                if (0.0d == this.f4789K.f4777h) {
                    this.f4789K.f4777h = (double) FloatMath.sqrt(((this.f4789K.f4771b - this.f4789K.f4770a) * (this.f4789K.f4771b - this.f4789K.f4770a)) + ((this.f4789K.f4773d - this.f4789K.f4772c) * (this.f4789K.f4773d - this.f4789K.f4772c)));
                }
            }
            return true;
        }
        switch (motionEvent.getAction()) {
            case ProGuard.styleable.View_android_theme /*0*/:
                m6515b(motionEvent);
                return true;
            case ProGuard.styleable.View_android_focusable /*1*/:
                return m6522d(motionEvent);
            case ProGuard.styleable.View_paddingStart /*2*/:
                m6519c(motionEvent);
                return true;
            default:
                return false;
        }
    }

    private void m6515b(MotionEvent motionEvent) {
        if (!this.f4789K.f4774e) {
            this.f4801W = motionEvent.getDownTime();
            if (this.f4801W - this.f4800V >= 400) {
                this.f4800V = this.f4801W;
            } else if (Math.abs(motionEvent.getX() - this.f4797S) >= 120.0f || Math.abs(motionEvent.getY() - this.f4798T) >= 120.0f) {
                this.f4800V = this.f4801W;
            } else {
                this.f4800V = 0;
            }
            this.f4797S = motionEvent.getX();
            this.f4798T = motionEvent.getY();
            m6510a(4, 0, ((int) motionEvent.getX()) | (((int) motionEvent.getY()) << 16));
            this.f4799U = true;
        }
    }

    private boolean m6516b(int i, int i2) {
        return i >= 0 && i <= getWidth() + 0 && i2 >= 0 && i2 <= getHeight() + 0;
    }

    private static boolean m6517b(int i, int i2, int i3, int i4, int i5, int i6) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(eglGetDisplay, new int[2]);
        int[] iArr = new int[1];
        return egl10.eglChooseConfig(eglGetDisplay, new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344}, new EGLConfig[100], 100, iArr) && iArr[0] > 0;
    }

    private boolean m6519c(MotionEvent motionEvent) {
        if (this.f4789K.f4774e) {
            return true;
        }
        if (this.ab) {
            C0605a.m6463a(f4778e, "handleTouchMove, if (mHasMapObjDraging)");
            for (C0565h d : this.f4805c) {
                d.m6299d(m6536a((int) motionEvent.getX(), (int) motionEvent.getY()));
            }
            return true;
        }
        float abs = Math.abs(motionEvent.getX() - this.f4797S);
        float abs2 = Math.abs(motionEvent.getY() - this.f4798T);
        float f = (float) (((double) C0607c.f4711E) > 1.5d ? ((double) C0607c.f4711E) * 1.5d : (double) C0607c.f4711E);
        if (this.f4799U && abs / f <= 3.0f && abs2 / f <= 3.0f) {
            return true;
        }
        this.f4799U = false;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (x < 0) {
            x = 0;
        }
        if (y < 0) {
            y = 0;
        }
        if (!this.f4814m) {
            return false;
        }
        m6506C();
        m6510a(3, 0, (y << 16) | x);
        return false;
    }

    private void m6520d(Bundle bundle) {
        if (bundle.get("param") != null) {
            Bundle bundle2 = (Bundle) bundle.get("param");
            int i = bundle2.getInt(com.umeng.update.ProGuard.f5475c);
            if (i == C0617e.ground.ordinal()) {
                bundle2.putInt("layer_addr", this.f4825x.a);
                return;
            } else if (i >= C0617e.arc.ordinal()) {
                bundle2.putInt("layer_addr", this.f4779A.a);
                return;
            } else if (i == C0617e.popup.ordinal()) {
                bundle2.putInt("layer_addr", this.f4827z.a);
                return;
            } else {
                bundle2.putInt("layer_addr", this.f4826y.a);
                return;
            }
        }
        int i2 = bundle.getInt(com.umeng.update.ProGuard.f5475c);
        if (i2 == C0617e.ground.ordinal()) {
            bundle.putInt("layer_addr", this.f4825x.a);
        } else if (i2 >= C0617e.arc.ordinal()) {
            bundle.putInt("layer_addr", this.f4779A.a);
        } else if (i2 == C0617e.popup.ordinal()) {
            bundle.putInt("layer_addr", this.f4827z.a);
        } else {
            bundle.putInt("layer_addr", this.f4826y.a);
        }
    }

    private boolean m6522d(MotionEvent motionEvent) {
        if (this.ab) {
            for (C0565h e : this.f4805c) {
                e.m6301e(m6536a((int) motionEvent.getX(), (int) motionEvent.getY()));
            }
            this.ab = false;
            return true;
        }
        boolean z = !this.f4789K.f4774e && motionEvent.getEventTime() - this.f4801W < 400 && Math.abs(motionEvent.getX() - this.f4797S) < 10.0f && Math.abs(motionEvent.getY() - this.f4798T) < 10.0f;
        m6505B();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (z) {
            return false;
        }
        if (x < 0) {
            x = 0;
        }
        m6510a(5, 0, ((y < 0 ? 0 : y) << 16) | x);
        return true;
    }

    private void m6527v() {
        this.f4806d = new C0643a();
        this.f4806d.m6632a();
        this.f4820s = this.f4806d.m6644c();
        if (C0607c.m6489j() < 180) {
            this.f4788J = 18;
        } else if (C0607c.m6489j() < 240) {
            this.f4788J = 25;
        } else if (C0607c.m6489j() < 320) {
            this.f4788J = 37;
        } else {
            this.f4788J = 50;
        }
        String k = C0607c.m6490k();
        String a = C0587b.m6378a();
        String b = C0587b.m6381b();
        String c = C0587b.m6382c();
        int d = C0587b.m6383d();
        int e = C0587b.m6384e();
        int f = C0587b.m6385f();
        String str = C0607c.m6489j() >= 180 ? "/h/" : "/l/";
        String str2 = k + "/cfg";
        String str3 = a + "/vmp";
        k = str2 + str;
        String str4 = str2 + "/a/";
        a = str3 + str;
        str2 = str3 + str;
        b = b + "/tmp/";
        c = c + "/tmp/";
        Display defaultDisplay = ((Activity) this.f4818q).getWindowManager().getDefaultDisplay();
        this.f4806d.m6634a(k, a, b, c, str2, str4, defaultDisplay.getWidth(), defaultDisplay.getHeight(), C0607c.m6489j(), d, e, f, 0);
        this.f4806d.m6653e();
    }

    private void m6528w() {
        try {
            if (C0620f.m6517b(5, 6, 5, 0, 24, 0)) {
                setEGLConfigChooser(5, 6, 5, 0, 24, 0);
            } else {
                setEGLConfigChooser(true);
            }
        } catch (IllegalArgumentException e) {
            setEGLConfigChooser(true);
        }
        this.f4819r = new MapRenderer(this, this);
        this.f4819r.m6501a(this.f4820s);
        setRenderer(this.f4819r);
        setRenderMode(1);
    }

    private void m6529x() {
        this.f4821t = new C0621g(this);
    }

    private void m6530y() {
        C0642a.m6620a(4000, this.f4821t);
        C0642a.m6620a(39, this.f4821t);
        C0642a.m6620a(41, this.f4821t);
        C0642a.m6620a(49, this.f4821t);
        C0642a.m6620a(65289, this.f4821t);
        C0642a.m6620a(999, this.f4821t);
    }

    private void m6531z() {
        C0642a.m6621b(4000, this.f4821t);
        C0642a.m6621b(41, this.f4821t);
        C0642a.m6621b(49, this.f4821t);
        C0642a.m6621b(39, this.f4821t);
        C0642a.m6621b(65289, this.f4821t);
        C0642a.m6621b(999, this.f4821t);
    }

    public float m6532a(int i, int i2, int i3, int i4) {
        if (!this.f4784F) {
            return 12.0f;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("left", i);
        bundle.putInt("right", i3);
        bundle.putInt("bottom", i4);
        bundle.putInt("top", i2);
        bundle.putInt("hasHW", 0);
        return this.f4806d.m6637b(bundle);
    }

    public float m6533a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (!this.f4784F) {
            return 12.0f;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("left", i);
        bundle.putInt("right", i3);
        bundle.putInt("bottom", i4);
        bundle.putInt("top", i2);
        bundle.putInt("hasHW", 1);
        bundle.putInt("width", i5);
        bundle.putInt("height", i6);
        return this.f4806d.m6637b(bundle);
    }

    public int m6534a(Bundle bundle, int i, int i2, Bundle bundle2) {
        if (i == this.f4824w.a) {
            bundle.putString("jsondata", this.f4824w.m6494a());
            bundle.putBundle("param", this.f4824w.m6497b());
            return this.f4824w.g;
        } else if (i == this.f4823v.a) {
            bundle.putString("jsondata", this.f4823v.m6494a());
            bundle.putBundle("param", this.f4823v.m6497b());
            return this.f4823v.g;
        } else if (i != this.f4780B.a) {
            return 0;
        } else {
            bundle.putBundle("param", this.f4782D.m6320a(bundle2.getInt("x"), bundle2.getInt("y"), bundle2.getInt("zoom")));
            return this.f4780B.g;
        }
    }

    public Point m6535a(C0596b c0596b) {
        return this.f4783E.m6492a(c0596b);
    }

    public C0596b m6536a(int i, int i2) {
        return this.f4783E.m6493a(i, i2);
    }

    public void m6537a() {
        this.f4822u = new ArrayList();
        m6540a(new C0615c());
        this.f4825x = new C0623j();
        m6540a(this.f4825x);
        this.f4780B = new C0624k();
        m6540a(this.f4780B);
        this.f4781C = new C0614a();
        m6540a(this.f4781C);
        m6540a(new C0626n());
        m6540a(new C0609A());
        m6540a(new C0625m());
        this.f4779A = new C0622i();
        m6540a(this.f4779A);
        this.f4826y = new C0612D();
        m6540a(this.f4826y);
        this.f4824w = new C0616d();
        m6540a(this.f4824w);
        this.f4823v = new C0634w();
        m6540a(this.f4823v);
        this.f4827z = new C0627o();
        m6540a(this.f4827z);
    }

    public void m6538a(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.f4824w.m6496a(String.format("{\"dataset\":[{\"x\":%d,\"y\":%d,\"hidetime\":1000}]}", new Object[]{Integer.valueOf(point.x), Integer.valueOf(point.y)}));
            this.f4806d.m6639b(this.f4824w.a);
        }
    }

    public void m6539a(Bundle bundle) {
        m6520d(bundle);
        this.f4806d.m6646c(bundle);
    }

    public void m6540a(C0608b c0608b) {
        c0608b.f4743a = this.f4806d.m6624a(c0608b.f4745c, c0608b.f4746d, c0608b.f4744b);
        this.f4822u.add(c0608b);
    }

    public void m6541a(C0565h c0565h) {
        this.f4805c.add(c0565h);
    }

    public void m6542a(C0567l c0567l) {
        this.f4782D = c0567l;
    }

    protected void m6543a(C0636y c0636y) {
        C0639z c0639z = new C0639z();
        if (c0636y == null) {
            c0636y = new C0636y();
        }
        c0639z = c0636y.f4860a;
        this.f4813l = c0636y.f4865f;
        this.f4816o = c0636y.f4863d;
        this.f4814m = c0636y.f4864e;
        this.f4815n = c0636y.f4866g;
        this.f4806d.m6629a(c0639z.m6616a(this));
        this.f4806d.m6623a(C0635x.DEFAULT.ordinal());
        this.f4809h = c0636y.f4861b;
        if (c0636y.f4861b) {
            this.f4824w.m6496a(String.format("{\"dataset\":[{\"x\":%d,\"y\":%d,\"hidetime\":1000}]}", new Object[]{Integer.valueOf((int) (C0607c.f4711E * 40.0f)), Integer.valueOf((int) (C0607c.f4711E * 40.0f))}));
            this.f4806d.m6628a(this.f4824w.a, true);
        } else {
            this.f4806d.m6628a(this.f4824w.a, false);
        }
        if (c0636y.f4862c == 2) {
            m6556d(true);
        }
    }

    public void m6544a(C0639z c0639z) {
        Bundle a = c0639z.m6616a(this);
        a.putInt("animation", 0);
        a.putInt("animatime", 0);
        this.f4806d.m6629a(a);
    }

    public void m6545a(C0639z c0639z, int i) {
        Bundle a = c0639z.m6616a(this);
        a.putInt("animation", 1);
        a.putInt("animatime", i);
        m6508E();
        this.f4806d.m6629a(a);
    }

    public void m6546a(String str, Rect rect) {
        if (rect != null) {
            int i = rect.left;
            int i2 = this.f4786H < rect.bottom ? 0 : this.f4786H - rect.bottom;
            int width = rect.width();
            int height = rect.height();
            if (i >= 0 && i2 >= 0 && width > 0 && height > 0) {
                if (width > this.f4785G) {
                    width = Math.abs(rect.width()) - (rect.right - this.f4785G);
                }
                if (height > this.f4786H) {
                    height = Math.abs(rect.height()) - (rect.bottom - this.f4786H);
                }
                if (i > C0607c.m6481f() || i2 > C0607c.m6485h()) {
                    this.f4806d.m6630a(str, null);
                    requestRender();
                    return;
                }
                this.f4785G = width;
                this.f4786H = height;
                Bundle bundle = new Bundle();
                bundle.putInt("x", i);
                bundle.putInt("y", i2);
                bundle.putInt("width", width);
                bundle.putInt("height", height);
                this.f4806d.m6630a(str, bundle);
                requestRender();
                return;
            }
            return;
        }
        this.f4806d.m6630a(str, null);
        requestRender();
    }

    public void m6547a(String str, Bundle bundle) {
        this.f4823v.m6496a(str);
        this.f4823v.m6495a(bundle);
    }

    public void m6548a(boolean z) {
        this.f4817p = z;
    }

    public boolean m6549a(int i) {
        for (C0608b c0608b : this.f4822u) {
            if (c0608b.f4743a == i) {
                return true;
            }
        }
        return false;
    }

    public void m6550b(Bundle bundle) {
        m6520d(bundle);
        this.f4806d.m6649d(bundle);
    }

    public void m6551b(boolean z) {
        this.f4812k = z;
        this.f4806d.m6640b(this.f4812k);
    }

    public boolean m6552b() {
        return this.f4817p;
    }

    public void m6553c(Bundle bundle) {
        m6520d(bundle);
        this.f4806d.m6654e(bundle);
    }

    public void m6554c(boolean z) {
        this.f4807f = z;
        this.f4806d.m6647c(this.f4807f);
    }

    public boolean m6555c() {
        return this.f4807f;
    }

    public void m6556d(boolean z) {
        this.f4808g = z;
        this.f4806d.m6631a(this.f4808g);
    }

    public boolean m6557d() {
        return this.f4812k;
    }

    public void m6558e(boolean z) {
        this.f4806d.m6650d(z);
    }

    public boolean m6559e() {
        return this.f4806d.m6658i();
    }

    public void m6560f(boolean z) {
        this.f4809h = z;
        this.f4806d.m6628a(this.f4824w.a, z);
    }

    public boolean m6561f() {
        return this.f4808g;
    }

    public void m6562g(boolean z) {
        this.f4810i = z;
        this.f4806d.m6628a(this.f4823v.a, z);
    }

    public boolean m6563g() {
        return this.f4806d.m6662m();
    }

    public void m6564h(boolean z) {
        this.f4811j = z;
        this.f4806d.m6628a(this.f4780B.a, z);
    }

    public boolean m6565h() {
        return this.f4809h;
    }

    public void m6566i(boolean z) {
        this.f4814m = z;
    }

    public boolean m6567i() {
        return this.f4810i;
    }

    public void m6568j() {
        this.f4806d.m6639b(this.f4780B.a);
    }

    public void m6569j(boolean z) {
        this.f4815n = z;
    }

    public void m6570k(boolean z) {
        this.f4816o = z;
    }

    public boolean m6571k() {
        return this.f4814m;
    }

    public void m6572l(boolean z) {
        this.f4813l = z;
    }

    public boolean m6573l() {
        return this.f4815n;
    }

    public boolean m6574m() {
        return this.f4816o;
    }

    public boolean m6575n() {
        return this.f4813l;
    }

    public void m6576o() {
        for (C0565h e : this.f4805c) {
            e.m6300e();
        }
        m6531z();
        BaseMapCallback.removeLayerDataInterface(this.f4820s);
        this.f4806d.m6641b();
        this.f4806d = null;
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.f4806d == null || !this.f4784F) {
            return true;
        }
        C0596b a = m6536a((int) motionEvent.getX(), (int) motionEvent.getY());
        if (a == null) {
            return false;
        }
        for (C0565h b : this.f4805c) {
            b.m6292b(a);
        }
        if (!this.f4815n) {
            return false;
        }
        C0639z p = m6577p();
        p.f4882a += 1.0f;
        p.f4885d = (double) a.m6426b();
        p.f4886e = (double) a.m6424a();
        m6545a(p, 300);
        return true;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f4806d == null || !this.f4784F) {
            return true;
        }
        if (!this.f4814m) {
            return false;
        }
        float sqrt = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        if (sqrt <= 500.0f) {
            return false;
        }
        m6508E();
        m6510a(34, (int) (sqrt * 0.6f), (((int) motionEvent2.getY()) << 16) | ((int) motionEvent2.getX()));
        m6505B();
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        if (this.f4806d != null && this.f4784F) {
            String a = this.f4806d.m6626a(-1, (int) motionEvent.getX(), (int) motionEvent.getY(), this.f4788J);
            C0605a.m6463a(f4778e, "onLongPress(), nearly objs: " + a);
            if (a == null || a.equals("")) {
                for (C0565h c : this.f4805c) {
                    c.m6296c(m6536a((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
                return;
            }
            for (C0565h c2 : this.f4805c) {
                if (c2.m6294b(a)) {
                    this.ab = true;
                } else {
                    c2.m6296c(m6536a((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
            }
        }
    }

    public void onPause() {
        super.onPause();
        this.f4806d.m6648d();
    }

    public void onResume() {
        super.onResume();
        for (C0565h c : this.f4805c) {
            c.m6295c();
        }
        this.f4806d.m6655f();
        this.f4806d.m6653e();
        this.f4806d.m6661l();
        setRenderMode(1);
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.f4806d != null && this.f4784F) {
            String a = this.f4806d.m6626a(-1, (int) motionEvent.getX(), (int) motionEvent.getY(), this.f4788J);
            if (a == null || a.equals("")) {
                for (C0565h a2 : this.f4805c) {
                    a2.m6287a(m6536a((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
            } else {
                for (C0565h a22 : this.f4805c) {
                    a22.m6289a(a);
                }
            }
        }
        return true;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f4806d == null) {
            return true;
        }
        super.onTouchEvent(motionEvent);
        for (C0565h a : this.f4805c) {
            a.m6286a(motionEvent);
        }
        return this.f4791M.onTouchEvent(motionEvent) ? true : m6512a(motionEvent);
    }

    public C0639z m6577p() {
        Bundle g = this.f4806d.m6656g();
        C0639z c0639z = new C0639z();
        c0639z.m6617a(g);
        return c0639z;
    }

    public C0639z m6578q() {
        Bundle h = this.f4806d.m6657h();
        C0639z c0639z = new C0639z();
        c0639z.m6617a(h);
        return c0639z;
    }

    public double m6579r() {
        return m6577p().f4894m;
    }

    public void m6580s() {
        this.f4806d.m6645c(this.f4825x.a);
        this.f4806d.m6645c(this.f4779A.a);
        this.f4806d.m6645c(this.f4826y.a);
        this.f4806d.m6645c(this.f4827z.a);
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        super.surfaceChanged(surfaceHolder, i, i2, i3);
        if (this.f4806d != null) {
            this.f4819r.f4753a = i2;
            this.f4819r.f4754b = i3;
            this.f4785G = i2;
            this.f4786H = i3;
            this.f4819r.f4755c = 0;
            C0639z p = m6577p();
            p.f4891j.f4876a = 0;
            p.f4891j.f4878c = 0;
            p.f4891j.f4879d = i3;
            p.f4891j.f4877b = i2;
            if (p.f4887f == 0 || p.f4887f == -1) {
                p.f4887f = -1;
            }
            if (p.f4888g == 0 || p.f4888g == -1) {
                p.f4888g = -1;
            }
            m6544a(p);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        if (surfaceHolder != null && !surfaceHolder.getSurface().isValid()) {
            surfaceDestroyed(surfaceHolder);
        }
    }

    public void m6581t() {
        this.f4806d.m6663n();
        this.f4806d.m6639b(this.f4780B.a);
    }

    public void m6582u() {
    }
}
