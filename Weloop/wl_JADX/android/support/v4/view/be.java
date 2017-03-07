package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: ProGuard */
public class be {
    static final ProGuard f513a;
    private WeakReference<View> f514b;
    private Runnable f515c;
    private Runnable f516d;
    private int f517e;

    /* renamed from: android.support.v4.view.be.f */
    interface ProGuard {
        void m1148a(be beVar, View view);

        void m1149a(be beVar, View view, float f);

        void m1150a(be beVar, View view, long j);

        void m1151a(be beVar, View view, bl blVar);

        void m1152a(be beVar, View view, bn bnVar);

        void m1153a(be beVar, View view, Interpolator interpolator);

        void m1154b(be beVar, View view);

        void m1155b(be beVar, View view, float f);

        void m1156c(be beVar, View view, float f);
    }

    /* renamed from: android.support.v4.view.be.a */
    static class ProGuard implements ProGuard {
        WeakHashMap<View, Runnable> f510a;

        /* renamed from: android.support.v4.view.be.a.a */
        class ProGuard implements Runnable {
            WeakReference<View> f507a;
            be f508b;
            final /* synthetic */ ProGuard f509c;

            private ProGuard(ProGuard proGuard, be beVar, View view) {
                this.f509c = proGuard;
                this.f507a = new WeakReference(view);
                this.f508b = beVar;
            }

            public void run() {
                View view = (View) this.f507a.get();
                if (view != null) {
                    this.f509c.m1159c(this.f508b, view);
                }
            }
        }

        ProGuard() {
            this.f510a = null;
        }

        public void m1163a(be beVar, View view, long j) {
        }

        public void m1162a(be beVar, View view, float f) {
            m1160d(beVar, view);
        }

        public void m1168b(be beVar, View view, float f) {
            m1160d(beVar, view);
        }

        public void m1166a(be beVar, View view, Interpolator interpolator) {
        }

        public void m1169c(be beVar, View view, float f) {
            m1160d(beVar, view);
        }

        public void m1161a(be beVar, View view) {
            m1160d(beVar, view);
        }

        public void m1167b(be beVar, View view) {
            m1158a(view);
            m1159c(beVar, view);
        }

        public void m1164a(be beVar, View view, bl blVar) {
            view.setTag(2113929216, blVar);
        }

        public void m1165a(be beVar, View view, bn bnVar) {
        }

        private void m1159c(be beVar, View view) {
            bl blVar;
            Object tag = view.getTag(2113929216);
            if (tag instanceof bl) {
                blVar = (bl) tag;
            } else {
                blVar = null;
            }
            Runnable a = beVar.f515c;
            Runnable b = beVar.f516d;
            if (a != null) {
                a.run();
            }
            if (blVar != null) {
                blVar.m1170a(view);
                blVar.m1171b(view);
            }
            if (b != null) {
                b.run();
            }
            if (this.f510a != null) {
                this.f510a.remove(view);
            }
        }

        private void m1158a(View view) {
            if (this.f510a != null) {
                Runnable runnable = (Runnable) this.f510a.get(view);
                if (runnable != null) {
                    view.removeCallbacks(runnable);
                }
            }
        }

        private void m1160d(be beVar, View view) {
            Runnable runnable;
            if (this.f510a != null) {
                runnable = (Runnable) this.f510a.get(view);
            } else {
                runnable = null;
            }
            if (runnable == null) {
                runnable = new ProGuard(beVar, view, null);
                if (this.f510a == null) {
                    this.f510a = new WeakHashMap();
                }
                this.f510a.put(view, runnable);
            }
            view.removeCallbacks(runnable);
            view.post(runnable);
        }
    }

    /* renamed from: android.support.v4.view.be.b */
    static class ProGuard extends ProGuard {
        WeakHashMap<View, Integer> f512b;

        /* renamed from: android.support.v4.view.be.b.a */
        static class ProGuard implements bl {
            be f511a;

            ProGuard(be beVar) {
                this.f511a = beVar;
            }

            public void m1173a(View view) {
                bl blVar;
                if (this.f511a.f517e >= 0) {
                    ak.m1016a(view, 2, null);
                }
                if (this.f511a.f515c != null) {
                    this.f511a.f515c.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof bl) {
                    blVar = (bl) tag;
                } else {
                    blVar = null;
                }
                if (blVar != null) {
                    blVar.m1170a(view);
                }
            }

            public void m1174b(View view) {
                bl blVar;
                if (this.f511a.f517e >= 0) {
                    ak.m1016a(view, this.f511a.f517e, null);
                    this.f511a.f517e = -1;
                }
                if (this.f511a.f516d != null) {
                    this.f511a.f516d.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof bl) {
                    blVar = (bl) tag;
                } else {
                    blVar = null;
                }
                if (blVar != null) {
                    blVar.m1171b(view);
                }
            }

            public void m1175c(View view) {
                bl blVar;
                Object tag = view.getTag(2113929216);
                if (tag instanceof bl) {
                    blVar = (bl) tag;
                } else {
                    blVar = null;
                }
                if (blVar != null) {
                    blVar.m1172c(view);
                }
            }
        }

        ProGuard() {
            this.f512b = null;
        }

        public void m1178a(be beVar, View view, long j) {
            bf.m1201a(view, j);
        }

        public void m1177a(be beVar, View view, float f) {
            bf.m1200a(view, f);
        }

        public void m1182b(be beVar, View view, float f) {
            bf.m1205b(view, f);
        }

        public void m1180a(be beVar, View view, Interpolator interpolator) {
            bf.m1203a(view, interpolator);
        }

        public void m1183c(be beVar, View view, float f) {
            bf.m1206c(view, f);
        }

        public void m1176a(be beVar, View view) {
            bf.m1199a(view);
        }

        public void m1181b(be beVar, View view) {
            bf.m1204b(view);
        }

        public void m1179a(be beVar, View view, bl blVar) {
            view.setTag(2113929216, blVar);
            bf.m1202a(view, new ProGuard(beVar));
        }
    }

    /* renamed from: android.support.v4.view.be.d */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1184a(be beVar, View view, bl blVar) {
            bh.m1207a(view, blVar);
        }
    }

    /* renamed from: android.support.v4.view.be.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.view.be.e */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1185a(be beVar, View view, bn bnVar) {
            bj.m1208a(view, bnVar);
        }
    }

    be(View view) {
        this.f515c = null;
        this.f516d = null;
        this.f517e = -1;
        this.f514b = new WeakReference(view);
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            f513a = new ProGuard();
        } else if (i >= 18) {
            f513a = new ProGuard();
        } else if (i >= 16) {
            f513a = new ProGuard();
        } else if (i >= 14) {
            f513a = new ProGuard();
        } else {
            f513a = new ProGuard();
        }
    }

    public be m1191a(long j) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1150a(this, view, j);
        }
        return this;
    }

    public be m1190a(float f) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1149a(this, view, f);
        }
        return this;
    }

    public be m1196b(float f) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1155b(this, view, f);
        }
        return this;
    }

    public be m1194a(Interpolator interpolator) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1153a(this, view, interpolator);
        }
        return this;
    }

    public be m1198c(float f) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1156c(this, view, f);
        }
        return this;
    }

    public void m1195a() {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1148a(this, view);
        }
    }

    public void m1197b() {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1154b(this, view);
        }
    }

    public be m1192a(bl blVar) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1151a(this, view, blVar);
        }
        return this;
    }

    public be m1193a(bn bnVar) {
        View view = (View) this.f514b.get();
        if (view != null) {
            f513a.m1152a(this, view, bnVar);
        }
        return this;
    }
}
