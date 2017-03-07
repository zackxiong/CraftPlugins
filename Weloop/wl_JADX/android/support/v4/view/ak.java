package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import java.util.WeakHashMap;

/* compiled from: ProGuard */
public class ak {
    static final ProGuard f500a;

    /* renamed from: android.support.v4.view.ak.j */
    interface ProGuard {
        int m899a(int i, int i2, int i3);

        int m900a(View view);

        bo m901a(View view, bo boVar);

        void m902a(View view, float f);

        void m903a(View view, int i, int i2, int i3, int i4);

        void m904a(View view, int i, Paint paint);

        void m905a(View view, Paint paint);

        void m906a(View view, ProGuard proGuard);

        void m907a(View view, af afVar);

        void m908a(View view, Runnable runnable);

        void m909a(View view, Runnable runnable, long j);

        void m910a(View view, boolean z);

        boolean m911a(View view, int i);

        void m912b(View view);

        void m913b(View view, float f);

        void m914b(View view, boolean z);

        boolean m915b(View view, int i);

        int m916c(View view);

        void m917c(View view, float f);

        void m918c(View view, int i);

        int m919d(View view);

        void m920d(View view, float f);

        int m921e(View view);

        void m922e(View view, float f);

        boolean m923f(View view);

        int m924g(View view);

        float m925h(View view);

        int m926i(View view);

        be m927j(View view);

        int m928k(View view);

        void m929l(View view);

        boolean m930m(View view);

        void m931n(View view);

        void m932o(View view);

        boolean m933p(View view);
    }

    /* renamed from: android.support.v4.view.ak.a */
    static class ProGuard implements ProGuard {
        WeakHashMap<View, be> f498a;

        ProGuard() {
            this.f498a = null;
        }

        public boolean m949a(View view, int i) {
            return (view instanceof ah) && m934a((ah) view, i);
        }

        public boolean m953b(View view, int i) {
            return (view instanceof ah) && m935b((ah) view, i);
        }

        public int m937a(View view) {
            return 2;
        }

        public void m944a(View view, ProGuard proGuard) {
        }

        public void m950b(View view) {
            view.invalidate();
        }

        public void m941a(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        public void m946a(View view, Runnable runnable) {
            view.postDelayed(runnable, m938a());
        }

        public void m947a(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, m938a() + j);
        }

        long m938a() {
            return 10;
        }

        public int m954c(View view) {
            return 0;
        }

        public void m956c(View view, int i) {
        }

        public void m942a(View view, int i, Paint paint) {
        }

        public int m957d(View view) {
            return 0;
        }

        public void m943a(View view, Paint paint) {
        }

        public int m959e(View view) {
            return 0;
        }

        public boolean m961f(View view) {
            Drawable background = view.getBackground();
            if (background == null || background.getOpacity() != -1) {
                return false;
            }
            return true;
        }

        public int m936a(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        public int m962g(View view) {
            return 0;
        }

        public float m963h(View view) {
            return 0.0f;
        }

        public int m964i(View view) {
            return 0;
        }

        public be m965j(View view) {
            return new be(view);
        }

        public void m940a(View view, float f) {
        }

        public void m951b(View view, float f) {
        }

        public void m955c(View view, float f) {
        }

        public void m958d(View view, float f) {
        }

        public int m966k(View view) {
            return 0;
        }

        public void m967l(View view) {
        }

        public void m960e(View view, float f) {
        }

        public boolean m968m(View view) {
            return false;
        }

        public void m969n(View view) {
        }

        public void m945a(View view, af afVar) {
        }

        public bo m939a(View view, bo boVar) {
            return boVar;
        }

        public void m948a(View view, boolean z) {
        }

        public void m952b(View view, boolean z) {
        }

        private boolean m934a(ah ahVar, int i) {
            int b = ahVar.m884b();
            int a = ahVar.m883a() - ahVar.m885c();
            if (a == 0) {
                return false;
            }
            if (i < 0) {
                if (b <= 0) {
                    return false;
                }
                return true;
            } else if (b >= a - 1) {
                return false;
            } else {
                return true;
            }
        }

        private boolean m935b(ah ahVar, int i) {
            int e = ahVar.m887e();
            int d = ahVar.m886d() - ahVar.m888f();
            if (d == 0) {
                return false;
            }
            if (i < 0) {
                if (e <= 0) {
                    return false;
                }
                return true;
            } else if (e >= d - 1) {
                return false;
            } else {
                return true;
            }
        }

        public void m970o(View view) {
            if (view instanceof ab) {
                ((ab) view).stopNestedScroll();
            }
        }

        public boolean m971p(View view) {
            return al.m1046a(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.b */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public boolean m972f(View view) {
            return am.m1047a(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public int m973a(View view) {
            return an.m1048a(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.d */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        long m975a() {
            return ao.m1051a();
        }

        public void m977a(View view, int i, Paint paint) {
            ao.m1053a(view, i, paint);
        }

        public int m983d(View view) {
            return ao.m1050a(view);
        }

        public void m978a(View view, Paint paint) {
            m977a(view, m983d(view), paint);
            view.invalidate();
        }

        public int m974a(int i, int i2, int i3) {
            return ao.m1049a(i, i2, i3);
        }

        public int m985g(View view) {
            return ao.m1055b(view);
        }

        public float m986h(View view) {
            return ao.m1058c(view);
        }

        public void m976a(View view, float f) {
            ao.m1052a(view, f);
        }

        public void m980b(View view, float f) {
            ao.m1056b(view, f);
        }

        public void m982c(View view, float f) {
            ao.m1059c(view, f);
        }

        public void m984d(View view, float f) {
            ao.m1061d(view, f);
        }

        public void m987n(View view) {
            ao.m1060d(view);
        }

        public void m979a(View view, boolean z) {
            ao.m1054a(view, z);
        }

        public void m981b(View view, boolean z) {
            ao.m1057b(view, z);
        }
    }

    /* renamed from: android.support.v4.view.ak.e */
    static class ProGuard extends ProGuard {
        static boolean f499b;

        ProGuard() {
        }

        static {
            f499b = false;
        }

        public boolean m989a(View view, int i) {
            return ap.m1063a(view, i);
        }

        public boolean m990b(View view, int i) {
            return ap.m1064b(view, i);
        }

        public void m988a(View view, ProGuard proGuard) {
            ap.m1062a(view, proGuard == null ? null : proGuard.m580a());
        }

        public be m991j(View view) {
            if (this.a == null) {
                this.a = new WeakHashMap();
            }
            be beVar = (be) this.a.get(view);
            if (beVar != null) {
                return beVar;
            }
            beVar = new be(view);
            this.a.put(view, beVar);
            return beVar;
        }
    }

    /* renamed from: android.support.v4.view.ak.f */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m995b(View view) {
            aq.m1065a(view);
        }

        public void m992a(View view, int i, int i2, int i3, int i4) {
            aq.m1067a(view, i, i2, i3, i4);
        }

        public void m993a(View view, Runnable runnable) {
            aq.m1068a(view, runnable);
        }

        public void m994a(View view, Runnable runnable, long j) {
            aq.m1069a(view, runnable, j);
        }

        public int m996c(View view) {
            return aq.m1070b(view);
        }

        public void m997c(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            aq.m1066a(view, i);
        }

        public int m998i(View view) {
            return aq.m1071c(view);
        }

        public void m999l(View view) {
            aq.m1072d(view);
        }

        public boolean m1000m(View view) {
            return aq.m1073e(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.g */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1001a(View view, Paint paint) {
            ar.m1075a(view, paint);
        }

        public int m1002e(View view) {
            return ar.m1074a(view);
        }

        public int m1003k(View view) {
            return ar.m1076b(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.h */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1004c(View view, int i) {
            aq.m1066a(view, i);
        }

        public boolean m1005p(View view) {
            return as.m1077a(view);
        }
    }

    /* renamed from: android.support.v4.view.ak.i */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m1009l(View view) {
            at.m1079a(view);
        }

        public void m1008e(View view, float f) {
            at.m1080a(view, f);
        }

        public void m1007a(View view, af afVar) {
            at.m1081a(view, afVar);
        }

        public void m1010o(View view) {
            at.m1082b(view);
        }

        public bo m1006a(View view, bo boVar) {
            return at.m1078a(view, boVar);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            f500a = new ProGuard();
        } else if (i >= 19) {
            f500a = new ProGuard();
        } else if (i >= 17) {
            f500a = new ProGuard();
        } else if (i >= 16) {
            f500a = new ProGuard();
        } else if (i >= 14) {
            f500a = new ProGuard();
        } else if (i >= 11) {
            f500a = new ProGuard();
        } else if (i >= 9) {
            f500a = new ProGuard();
        } else if (i >= 7) {
            f500a = new ProGuard();
        } else {
            f500a = new ProGuard();
        }
    }

    public static boolean m1023a(View view, int i) {
        return f500a.m911a(view, i);
    }

    public static boolean m1027b(View view, int i) {
        return f500a.m915b(view, i);
    }

    public static int m1012a(View view) {
        return f500a.m900a(view);
    }

    public static void m1018a(View view, ProGuard proGuard) {
        f500a.m906a(view, proGuard);
    }

    public static void m1024b(View view) {
        f500a.m912b(view);
    }

    public static void m1015a(View view, int i, int i2, int i3, int i4) {
        f500a.m903a(view, i, i2, i3, i4);
    }

    public static void m1020a(View view, Runnable runnable) {
        f500a.m908a(view, runnable);
    }

    public static void m1021a(View view, Runnable runnable, long j) {
        f500a.m909a(view, runnable, j);
    }

    public static int m1028c(View view) {
        return f500a.m916c(view);
    }

    public static void m1030c(View view, int i) {
        f500a.m918c(view, i);
    }

    public static void m1016a(View view, int i, Paint paint) {
        f500a.m904a(view, i, paint);
    }

    public static int m1031d(View view) {
        return f500a.m919d(view);
    }

    public static void m1017a(View view, Paint paint) {
        f500a.m905a(view, paint);
    }

    public static int m1033e(View view) {
        return f500a.m921e(view);
    }

    public static boolean m1035f(View view) {
        return f500a.m923f(view);
    }

    public static int m1011a(int i, int i2, int i3) {
        return f500a.m899a(i, i2, i3);
    }

    public static int m1036g(View view) {
        return f500a.m924g(view);
    }

    public static float m1037h(View view) {
        return f500a.m925h(view);
    }

    public static int m1038i(View view) {
        return f500a.m926i(view);
    }

    public static be m1039j(View view) {
        return f500a.m927j(view);
    }

    public static void m1014a(View view, float f) {
        f500a.m902a(view, f);
    }

    public static void m1025b(View view, float f) {
        f500a.m913b(view, f);
    }

    public static void m1029c(View view, float f) {
        f500a.m917c(view, f);
    }

    public static void m1032d(View view, float f) {
        f500a.m920d(view, f);
    }

    public static void m1034e(View view, float f) {
        f500a.m922e(view, f);
    }

    public static int m1040k(View view) {
        return f500a.m928k(view);
    }

    public static void m1041l(View view) {
        f500a.m929l(view);
    }

    public static boolean m1042m(View view) {
        return f500a.m930m(view);
    }

    public static void m1043n(View view) {
        f500a.m931n(view);
    }

    public static void m1019a(View view, af afVar) {
        f500a.m907a(view, afVar);
    }

    public static bo m1013a(View view, bo boVar) {
        return f500a.m901a(view, boVar);
    }

    public static void m1022a(View view, boolean z) {
        f500a.m910a(view, z);
    }

    public static void m1026b(View view, boolean z) {
        f500a.m914b(view, z);
    }

    public static void m1044o(View view) {
        f500a.m932o(view);
    }

    public static boolean m1045p(View view) {
        return f500a.m933p(view);
    }
}
