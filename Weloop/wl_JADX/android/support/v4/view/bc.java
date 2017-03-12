package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewParent;

/* compiled from: ProGuard */
public class bc {
    static final ProGuard f506a;

    /* renamed from: android.support.v4.view.bc.b */
    interface ProGuard {
        void m1113a(ViewParent viewParent, View view);

        void m1114a(ViewParent viewParent, View view, int i, int i2, int i3, int i4);

        void m1115a(ViewParent viewParent, View view, int i, int i2, int[] iArr);

        boolean m1116a(ViewParent viewParent, View view, float f, float f2);

        boolean m1117a(ViewParent viewParent, View view, float f, float f2, boolean z);

        boolean m1118a(ViewParent viewParent, View view, View view2, int i);

        void m1119b(ViewParent viewParent, View view, View view2, int i);
    }

    /* renamed from: android.support.v4.view.bc.e */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public boolean m1125a(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof ad) {
                return ((ad) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }

        public void m1126b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof ad) {
                ((ad) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }

        public void m1120a(ViewParent viewParent, View view) {
            if (viewParent instanceof ad) {
                ((ad) viewParent).onStopNestedScroll(view);
            }
        }

        public void m1121a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof ad) {
                ((ad) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        public void m1122a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof ad) {
                ((ad) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        public boolean m1124a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            if (viewParent instanceof ad) {
                return ((ad) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }

        public boolean m1123a(ViewParent viewParent, View view, float f, float f2) {
            if (viewParent instanceof ad) {
                return ((ad) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }
    }

    /* renamed from: android.support.v4.view.bc.a */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.view.bc.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }
    }

    /* renamed from: android.support.v4.view.bc.d */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public boolean m1132a(ViewParent viewParent, View view, View view2, int i) {
            return bd.m1146a(viewParent, view, view2, i);
        }

        public void m1133b(ViewParent viewParent, View view, View view2, int i) {
            bd.m1147b(viewParent, view, view2, i);
        }

        public void m1127a(ViewParent viewParent, View view) {
            bd.m1141a(viewParent, view);
        }

        public void m1128a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            bd.m1142a(viewParent, view, i, i2, i3, i4);
        }

        public void m1129a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            bd.m1143a(viewParent, view, i, i2, iArr);
        }

        public boolean m1131a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return bd.m1145a(viewParent, view, f, f2, z);
        }

        public boolean m1130a(ViewParent viewParent, View view, float f, float f2) {
            return bd.m1144a(viewParent, view, f, f2);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            f506a = new ProGuard();
        } else if (i >= 19) {
            f506a = new ProGuard();
        } else if (i >= 14) {
            f506a = new ProGuard();
        } else {
            f506a = new ProGuard();
        }
    }

    public static boolean m1139a(ViewParent viewParent, View view, View view2, int i) {
        return f506a.m1118a(viewParent, view, view2, i);
    }

    public static void m1140b(ViewParent viewParent, View view, View view2, int i) {
        f506a.m1119b(viewParent, view, view2, i);
    }

    public static void m1134a(ViewParent viewParent, View view) {
        f506a.m1113a(viewParent, view);
    }

    public static void m1135a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        f506a.m1114a(viewParent, view, i, i2, i3, i4);
    }

    public static void m1136a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        f506a.m1115a(viewParent, view, i, i2, iArr);
    }

    public static boolean m1138a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return f506a.m1117a(viewParent, view, f, f2, z);
    }

    public static boolean m1137a(ViewParent viewParent, View view, float f, float f2) {
        return f506a.m1116a(viewParent, view, f, f2);
    }
}
