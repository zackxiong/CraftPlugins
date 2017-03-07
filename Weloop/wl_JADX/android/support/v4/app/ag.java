package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.baidu.location.C0452e;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ProGuard */
public class ag {
    private static final ProGuard f169a;

    /* renamed from: android.support.v4.app.ag.a */
    public static class ProGuard extends android.support.v4.app.ak.ProGuard {
        public static final android.support.v4.app.ak.ProGuard.ProGuard f126d;
        public int f127a;
        public CharSequence f128b;
        public PendingIntent f129c;
        private final Bundle f130e;
        private final aq[] f131f;

        public /* synthetic */ android.support.v4.app.at.ProGuard[] m149f() {
            return m148e();
        }

        protected int m144a() {
            return this.f127a;
        }

        protected CharSequence m145b() {
            return this.f128b;
        }

        protected PendingIntent m146c() {
            return this.f129c;
        }

        public Bundle m147d() {
            return this.f130e;
        }

        public aq[] m148e() {
            return this.f131f;
        }

        static {
            f126d = new ah();
        }
    }

    /* renamed from: android.support.v4.app.ag.o */
    public static abstract class ProGuard {
        CharSequence f132d;
        CharSequence f133e;
        boolean f134f;

        public ProGuard() {
            this.f134f = false;
        }
    }

    /* renamed from: android.support.v4.app.ag.b */
    public static class ProGuard extends ProGuard {
        Bitmap f135a;
        Bitmap f136b;
        boolean f137c;
    }

    /* renamed from: android.support.v4.app.ag.c */
    public static class ProGuard extends ProGuard {
        CharSequence f138a;
    }

    /* renamed from: android.support.v4.app.ag.d */
    public static class ProGuard {
        Notification f139A;
        Notification f140B;
        public ArrayList<String> f141C;
        Context f142a;
        CharSequence f143b;
        CharSequence f144c;
        PendingIntent f145d;
        PendingIntent f146e;
        RemoteViews f147f;
        Bitmap f148g;
        CharSequence f149h;
        int f150i;
        int f151j;
        boolean f152k;
        boolean f153l;
        ProGuard f154m;
        CharSequence f155n;
        int f156o;
        int f157p;
        boolean f158q;
        String f159r;
        boolean f160s;
        String f161t;
        ArrayList<ProGuard> f162u;
        boolean f163v;
        String f164w;
        Bundle f165x;
        int f166y;
        int f167z;

        public ProGuard(Context context) {
            this.f152k = true;
            this.f162u = new ArrayList();
            this.f163v = false;
            this.f166y = 0;
            this.f167z = 0;
            this.f140B = new Notification();
            this.f142a = context;
            this.f140B.when = System.currentTimeMillis();
            this.f140B.audioStreamType = -1;
            this.f151j = 0;
            this.f141C = new ArrayList();
        }

        public ProGuard m154a(long j) {
            this.f140B.when = j;
            return this;
        }

        public ProGuard m153a(int i) {
            this.f140B.icon = i;
            return this;
        }

        public ProGuard m156a(CharSequence charSequence) {
            this.f143b = ProGuard.m151c(charSequence);
            return this;
        }

        public ProGuard m159b(CharSequence charSequence) {
            this.f144c = ProGuard.m151c(charSequence);
            return this;
        }

        public ProGuard m155a(PendingIntent pendingIntent) {
            this.f145d = pendingIntent;
            return this;
        }

        public ProGuard m157a(boolean z) {
            m150a(16, z);
            return this;
        }

        public ProGuard m158b(int i) {
            this.f140B.defaults = i;
            if ((i & 4) != 0) {
                Notification notification = this.f140B;
                notification.flags |= 1;
            }
            return this;
        }

        private void m150a(int i, boolean z) {
            if (z) {
                Notification notification = this.f140B;
                notification.flags |= i;
                return;
            }
            notification = this.f140B;
            notification.flags &= i ^ -1;
        }

        public Notification m152a() {
            return ag.f169a.m160a(this);
        }

        protected static CharSequence m151c(CharSequence charSequence) {
            if (charSequence != null && charSequence.length() > C0452e.f3827V) {
                return charSequence.subSequence(0, C0452e.f3827V);
            }
            return charSequence;
        }
    }

    /* renamed from: android.support.v4.app.ag.e */
    public static class ProGuard extends ProGuard {
        ArrayList<CharSequence> f168a;

        public ProGuard() {
            this.f168a = new ArrayList();
        }
    }

    /* renamed from: android.support.v4.app.ag.f */
    interface ProGuard {
        Notification m160a(ProGuard proGuard);
    }

    /* renamed from: android.support.v4.app.ag.i */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public Notification m161a(ProGuard proGuard) {
            Notification notification = proGuard.f140B;
            notification.setLatestEventInfo(proGuard.f142a, proGuard.f143b, proGuard.f144c, proGuard.f145d);
            if (proGuard.f151j > 0) {
                notification.flags |= com.umeng.update.util.ProGuard.f5670c;
            }
            return notification;
        }
    }

    /* renamed from: android.support.v4.app.ag.m */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m162a(ProGuard proGuard) {
            af proGuard2 = new android.support.v4.app.ao.ProGuard(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g, proGuard.f156o, proGuard.f157p, proGuard.f158q, proGuard.f153l, proGuard.f151j, proGuard.f155n, proGuard.f163v, proGuard.f165x, proGuard.f159r, proGuard.f160s, proGuard.f161t);
            ag.m172b((ae) proGuard2, proGuard.f162u);
            ag.m173b(proGuard2, proGuard.f154m);
            return proGuard2.m183b();
        }
    }

    /* renamed from: android.support.v4.app.ag.n */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m163a(ProGuard proGuard) {
            af proGuard2 = new android.support.v4.app.ap.ProGuard(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g, proGuard.f156o, proGuard.f157p, proGuard.f158q, proGuard.f152k, proGuard.f153l, proGuard.f151j, proGuard.f155n, proGuard.f163v, proGuard.f141C, proGuard.f165x, proGuard.f159r, proGuard.f160s, proGuard.f161t);
            ag.m172b((ae) proGuard2, proGuard.f162u);
            ag.m173b(proGuard2, proGuard.f154m);
            return proGuard2.m192b();
        }
    }

    /* renamed from: android.support.v4.app.ag.g */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m164a(ProGuard proGuard) {
            af proGuard2 = new android.support.v4.app.ai.ProGuard(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g, proGuard.f156o, proGuard.f157p, proGuard.f158q, proGuard.f152k, proGuard.f153l, proGuard.f151j, proGuard.f155n, proGuard.f163v, proGuard.f141C, proGuard.f165x, proGuard.f159r, proGuard.f160s, proGuard.f161t);
            ag.m172b((ae) proGuard2, proGuard.f162u);
            ag.m173b(proGuard2, proGuard.f154m);
            return proGuard2.m176b();
        }
    }

    /* renamed from: android.support.v4.app.ag.h */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m165a(ProGuard proGuard) {
            af proGuard2 = new android.support.v4.app.aj.ProGuard(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g, proGuard.f156o, proGuard.f157p, proGuard.f158q, proGuard.f152k, proGuard.f153l, proGuard.f151j, proGuard.f155n, proGuard.f163v, proGuard.f164w, proGuard.f141C, proGuard.f165x, proGuard.f166y, proGuard.f167z, proGuard.f139A, proGuard.f159r, proGuard.f160s, proGuard.f161t);
            ag.m172b((ae) proGuard2, proGuard.f162u);
            ag.m173b(proGuard2, proGuard.f154m);
            return proGuard2.m180b();
        }
    }

    /* renamed from: android.support.v4.app.ag.j */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m166a(ProGuard proGuard) {
            Notification notification = proGuard.f140B;
            notification.setLatestEventInfo(proGuard.f142a, proGuard.f143b, proGuard.f144c, proGuard.f145d);
            notification = al.add(notification, proGuard.f142a, proGuard.f143b, proGuard.f144c, proGuard.f145d, proGuard.f146e);
            if (proGuard.f151j > 0) {
                notification.flags |= com.umeng.update.util.ProGuard.f5670c;
            }
            return notification;
        }
    }

    /* renamed from: android.support.v4.app.ag.k */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m167a(ProGuard proGuard) {
            return am.add(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g);
        }
    }

    /* renamed from: android.support.v4.app.ag.l */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Notification m168a(ProGuard proGuard) {
            return an.add(proGuard.f142a, proGuard.f140B, proGuard.f143b, proGuard.f144c, proGuard.f149h, proGuard.f147f, proGuard.f150i, proGuard.f145d, proGuard.f146e, proGuard.f148g, proGuard.f156o, proGuard.f157p, proGuard.f158q);
        }
    }

    private static void m172b(ae aeVar, ArrayList<ProGuard> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            aeVar.m137a((ProGuard) it.next());
        }
    }

    private static void m173b(af afVar, ProGuard proGuard) {
        if (proGuard == null) {
            return;
        }
        if (proGuard instanceof ProGuard) {
            ProGuard proGuard2 = (ProGuard) proGuard;
            ao.m188a(afVar, proGuard2.d, proGuard2.f, proGuard2.e, proGuard2.f138a);
        } else if (proGuard instanceof ProGuard) {
            ProGuard proGuard3 = (ProGuard) proGuard;
            ao.m189a(afVar, proGuard3.d, proGuard3.f, proGuard3.e, proGuard3.f168a);
        } else if (proGuard instanceof ProGuard) {
            ProGuard proGuard4 = (ProGuard) proGuard;
            ao.m187a(afVar, proGuard4.d, proGuard4.f, proGuard4.e, proGuard4.f135a, proGuard4.f136b, proGuard4.f137c);
        }
    }

    static {
        if (VERSION.SDK_INT >= 21) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 20) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 19) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 16) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 14) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 11) {
            f169a = new ProGuard();
        } else if (VERSION.SDK_INT >= 9) {
            f169a = new ProGuard();
        } else {
            f169a = new ProGuard();
        }
    }
}
