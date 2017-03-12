package com.yf.gattlib.client.p113b;

import android.util.SparseArray;
import com.yf.gattlib.p117p.ProGuard;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.be */
public class be {
    private static final ProGuard f5840a;
    private static final ExecutorService f5841b;
    private static final ExecutorService f5842c;
    private ProGuard f5843d;
    private SparseArray<ProGuard> f5844e;
    private ai f5845f;
    private final ProGuard f5846g;

    /* renamed from: com.yf.gattlib.client.b.be.a */
    private static class ProGuard {
        static final be f5837a;

        static {
            f5837a = new be();
        }
    }

    /* renamed from: com.yf.gattlib.client.b.be.b */
    public static abstract class ProGuard implements Runnable {
        private String f5838a;
        private long f5839b;

        protected abstract void m7599a(String str, long j);

        public ProGuard(String str, long j) {
            this.f5838a = str;
            this.f5839b = j;
        }

        public void m7600b(String str, long j) {
            this.f5838a = str;
            this.f5839b = j;
        }

        public long m7598a() {
            return this.f5839b;
        }

        public final void run() {
            be.f5841b.execute(new bj(this));
        }
    }

    public static be m7601a() {
        return ProGuard.f5837a;
    }

    private be() {
        this.f5844e = new SparseArray();
        this.f5845f = new ai(this);
        this.f5846g = new bf(this, "", 0);
    }

    static {
        f5840a = ProGuard.m8310a("time");
        f5841b = Executors.newScheduledThreadPool(2);
        f5842c = Executors.newSingleThreadExecutor();
    }

    public final void m7614b() {
        m7609a(new ProGuard());
        m7609a(new ProGuard());
        m7609a(new ae());
        m7609a(new ProGuard());
        m7609a(new ac());
        com.yf.gattlib.client.ProGuard.m7965a().m7978a(this.f5845f);
    }

    public final void m7617c() {
        m7610a(null, 4);
    }

    public final void m7608a(ProGuard proGuard) {
        f5840a.postDelayed(proGuard, proGuard.m7598a());
    }

    public final void m7615b(ProGuard proGuard) {
        f5840a.removeCallbacks(proGuard);
    }

    public final void m7609a(ProGuard proGuard) {
        int[] a = proGuard.m7491a();
        if (a != null || a.length > 0) {
            for (int append : a) {
                this.f5844e.append(append, proGuard);
            }
        }
    }

    public final void m7616b(ProGuard proGuard) {
        m7611a(proGuard, true);
    }

    public final void m7611a(ProGuard proGuard, boolean z) {
        f5842c.execute(new bg(this, proGuard, z));
    }

    public final void m7610a(ProGuard proGuard, int i) {
        ProGuard proGuard2 = null;
        m7615b(this.f5846g);
        if (proGuard == null || proGuard == this.f5843d) {
            ProGuard proGuard3 = this.f5843d;
            this.f5843d = null;
            proGuard2 = proGuard3;
        }
        f5842c.execute(new bh(this, proGuard, proGuard2, i));
    }

    public final synchronized void m7613a(byte[] bArr, Object... objArr) {
        synchronized (f5842c) {
            ProGuard proGuard;
            if (this.f5843d == null) {
                int a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                if (a < 0) {
                } else {
                    proGuard = (ProGuard) this.f5844e.get(a);
                    if (proGuard == null) {
                    } else {
                        m7605b(proGuard, true);
                    }
                }
            }
            if (this.f5843d != null) {
                proGuard = this.f5843d;
                try {
                    proGuard.m7490a(bArr, objArr);
                } catch (com.yf.gattlib.p120e.ProGuard e) {
                    m7610a(proGuard, -1);
                }
            }
        }
    }

    private void m7605b(ProGuard proGuard, boolean z) {
        try {
            ProGuard.m8293a("TransactionContext", "start " + proGuard.getClass().getName());
            com.yf.gattlib.p121f.ProGuard f = com.yf.gattlib.p108a.ProGuard.m7368a().m7376f();
            if (f == null) {
                proGuard.m7483a(-5);
            } else if (f.m8082l()) {
                proGuard.m7483a(-16);
            } else {
                if (z) {
                    if (!f.m8087q()) {
                        proGuard.m7483a(-15);
                        return;
                    }
                }
                proGuard.m7484a(1, 0, 0, new Object[0]);
                m7615b(this.f5846g);
                this.f5846g.m7600b("TransactionContext" + proGuard.hashCode(), proGuard.m7497d());
                m7608a(this.f5846g);
                proGuard.m7493b();
                this.f5843d = proGuard;
            }
        } catch (com.yf.gattlib.p120e.ProGuard e) {
            m7610a(proGuard, -1);
        }
    }

    public void m7612a(ProGuard proGuard, byte[] bArr, int i, int i2) {
        f5842c.execute(new bi(this, bArr, i, i2, proGuard));
    }
}
