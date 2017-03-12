package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

/* compiled from: ProGuard */
class ap {
    public static boolean m1063a(View view, int i) {
        return view.canScrollHorizontally(i);
    }

    public static boolean m1064b(View view, int i) {
        return view.canScrollVertically(i);
    }

    public static void m1062a(View view, Object obj) {
        view.setAccessibilityDelegate((AccessibilityDelegate) obj);
    }
}
