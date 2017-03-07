package android.support.v4.view;

import android.os.Build.VERSION;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

/* renamed from: android.support.v4.view.u */
public class ProGuard {
    static final ProGuard f539a;

    /* renamed from: android.support.v4.view.u.d */
    interface ProGuard {
        MenuItem m1309a(MenuItem menuItem, View view);

        View m1310a(MenuItem menuItem);

        void m1311a(MenuItem menuItem, int i);

        MenuItem m1312b(MenuItem menuItem, int i);

        boolean m1313b(MenuItem menuItem);

        boolean m1314c(MenuItem menuItem);
    }

    /* renamed from: android.support.v4.view.u.a */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m1317a(MenuItem menuItem, int i) {
        }

        public MenuItem m1315a(MenuItem menuItem, View view) {
            return menuItem;
        }

        public MenuItem m1318b(MenuItem menuItem, int i) {
            return menuItem;
        }

        public View m1316a(MenuItem menuItem) {
            return null;
        }

        public boolean m1319b(MenuItem menuItem) {
            return false;
        }

        public boolean m1320c(MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: android.support.v4.view.u.b */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m1323a(MenuItem menuItem, int i) {
            ProGuard.m1340a(menuItem, i);
        }

        public MenuItem m1321a(MenuItem menuItem, View view) {
            return ProGuard.m1338a(menuItem, view);
        }

        public MenuItem m1324b(MenuItem menuItem, int i) {
            return ProGuard.m1341b(menuItem, i);
        }

        public View m1322a(MenuItem menuItem) {
            return ProGuard.m1339a(menuItem);
        }

        public boolean m1325b(MenuItem menuItem) {
            return false;
        }

        public boolean m1326c(MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: android.support.v4.view.u.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public boolean m1327b(MenuItem menuItem) {
            return ProGuard.m1342a(menuItem);
        }

        public boolean m1328c(MenuItem menuItem) {
            return ProGuard.m1343b(menuItem);
        }
    }

    /* renamed from: android.support.v4.view.u.e */
    public interface ProGuard {
        boolean m1329a(MenuItem menuItem);

        boolean m1330b(MenuItem menuItem);
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            f539a = new ProGuard();
        } else if (i >= 11) {
            f539a = new ProGuard();
        } else {
            f539a = new ProGuard();
        }
    }

    public static void m1334a(MenuItem menuItem, int i) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            ((android.support.v4.p011c.p012a.ProGuard) menuItem).setShowAsAction(i);
        } else {
            f539a.m1311a(menuItem, i);
        }
    }

    public static MenuItem m1332a(MenuItem menuItem, View view) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).setActionView(view);
        }
        return f539a.m1309a(menuItem, view);
    }

    public static MenuItem m1335b(MenuItem menuItem, int i) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).setActionView(i);
        }
        return f539a.m1312b(menuItem, i);
    }

    public static View m1333a(MenuItem menuItem) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).getActionView();
        }
        return f539a.m1310a(menuItem);
    }

    public static MenuItem m1331a(MenuItem menuItem, ProGuard proGuard) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).m434a(proGuard);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static boolean m1336b(MenuItem menuItem) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).expandActionView();
        }
        return f539a.m1313b(menuItem);
    }

    public static boolean m1337c(MenuItem menuItem) {
        if (menuItem instanceof android.support.v4.p011c.p012a.ProGuard) {
            return ((android.support.v4.p011c.p012a.ProGuard) menuItem).isActionViewExpanded();
        }
        return f539a.m1314c(menuItem);
    }
}
