package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import cn.sharesdk.framework.C0028l;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.statistics.p031b.C0055c;
import cn.sharesdk.framework.statistics.p031b.C0059e;
import cn.sharesdk.framework.statistics.p031b.C0062g;
import cn.sharesdk.framework.utils.C0066b;
import cn.sharesdk.framework.utils.C0071e;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.statistics.b */
public class C0063b extends C0028l {
    private static C0063b f2082b;
    private Context f2083c;
    private C0066b f2084d;
    private C0054a f2085e;
    private String f2086f;
    private Handler f2087g;
    private boolean f2088h;
    private int f2089i;
    private boolean f2090j;
    private long f2091k;
    private boolean f2092l;

    private C0063b(Context context) {
        super("Thread-" + Math.abs(32159));
        this.f2083c = context;
        this.f2084d = C0066b.m3214a(context);
        this.f2085e = C0054a.m3106a(context);
    }

    public static synchronized C0063b m3186a(Context context) {
        C0063b c0063b;
        synchronized (C0063b.class) {
            if (f2082b == null) {
                if (context == null) {
                    c0063b = null;
                } else {
                    f2082b = new C0063b(context.getApplicationContext());
                }
            }
            c0063b = f2082b;
        }
        return c0063b;
    }

    private void m3187b(C0055c c0055c) {
        c0055c.f2039f = this.f2084d.m3238q();
        c0055c.f2040g = this.f2086f;
        c0055c.f2041h = this.f2084d.m3239r();
        c0055c.f2042i = this.f2084d.m3241t();
        c0055c.f2043j = String.valueOf(this.f2089i + 20000);
        c0055c.f2044k = this.f2084d.m3236o();
        c0055c.f2045l = this.f2084d.m3235n();
        if (!"cn.sharesdk.demo".equals(c0055c.f2041h) && "api20".equals(this.f2086f) && ShareSDK.isDebug()) {
            System.err.println("Your application is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
        }
        c0055c.f2046m = this.f2084d.m3228g();
    }

    private void m3188c() {
        boolean d = m3190d();
        if (d) {
            if (!this.f2092l) {
                this.f2092l = d;
                this.f2091k = System.currentTimeMillis();
                m3195a(new C0062g());
            }
        } else if (this.f2092l) {
            this.f2092l = d;
            long currentTimeMillis = System.currentTimeMillis() - this.f2091k;
            C0055c c0059e = new C0059e();
            c0059e.f2064a = currentTimeMillis;
            m3195a(c0059e);
        }
    }

    private void m3189c(C0055c c0055c) {
        try {
            this.f2085e.m3121a(c0055c);
            c0055c.m3135b(this.f2083c);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            C0071e.m3268c(c0055c.toString(), new Object[0]);
        }
    }

    private boolean m3190d() {
        C0066b a = C0066b.m3214a(this.f2083c);
        String w = a.m3244w();
        String r = a.m3239r();
        return r != null && r.equals(w);
    }

    private void m3191e() {
        try {
            C0054a.m3106a(this.f2083c).m3127b();
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
    }

    public void m3192a(int i) {
        this.f2089i = i;
    }

    public void m3193a(Handler handler) {
        this.f2087g = handler;
    }

    protected void m3194a(Message message) {
        if (!this.f2090j) {
            this.f2090j = true;
            this.f2085e.m3117a(this.f2086f);
            this.f2085e.m3124a(this.f2088h);
            this.a.sendEmptyMessage(1);
            this.a.sendEmptyMessage(2);
            NewAppReceiver.m3079a(this.f2083c);
            Intent intent = new Intent("cn.sharesdk.START_UP");
            intent.putExtra("packageName", C0066b.m3214a(this.f2083c).m3239r());
            this.f2083c.sendBroadcast(intent);
        }
    }

    public void m3195a(C0055c c0055c) {
        if (this.f2090j) {
            m3187b(c0055c);
            if (c0055c.m3133a(this.f2083c)) {
                Message message = new Message();
                message.what = 3;
                message.obj = c0055c;
                try {
                    this.a.sendMessage(message);
                    return;
                } catch (Throwable th) {
                    C0071e.m3269c(th);
                    return;
                }
            }
            C0071e.m3260a("Drop event: " + c0055c.toString(), new Object[0]);
        }
    }

    public void m3196a(String str) {
        this.f2086f = str;
    }

    public void m3197a(boolean z) {
        this.f2088h = z;
    }

    protected void m3198b(Message message) {
        if (this.f2090j) {
            long currentTimeMillis = System.currentTimeMillis() - this.f2091k;
            C0055c c0059e = new C0059e();
            c0059e.f2064a = currentTimeMillis;
            m3195a(c0059e);
            this.f2090j = false;
            try {
                this.f2087g.sendEmptyMessage(1);
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
            f2082b = null;
            this.a.getLooper().quit();
        }
    }

    protected void m3199c(Message message) {
        switch (message.what) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                m3188c();
                try {
                    this.a.sendEmptyMessageDelayed(1, 100);
                } catch (Throwable th) {
                    C0071e.m3269c(th);
                }
            case ProGuard.styleable.View_paddingStart /*2*/:
                m3191e();
                try {
                    this.a.sendEmptyMessageDelayed(2, 10000);
                } catch (Throwable th2) {
                    C0071e.m3269c(th2);
                }
            case ProGuard.styleable.View_paddingEnd /*3*/:
                if (message.obj != null) {
                    m3189c((C0055c) message.obj);
                }
            default:
        }
    }
}
