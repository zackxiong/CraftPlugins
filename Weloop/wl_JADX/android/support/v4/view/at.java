package android.support.v4.view;

import android.view.View;
import android.view.WindowInsets;

/* compiled from: ProGuard */
class at {
    public static void m1079a(View view) {
        view.requestApplyInsets();
    }

    public static void m1080a(View view, float f) {
        view.setElevation(f);
    }

    public static void m1081a(View view, af afVar) {
        view.setOnApplyWindowInsetsListener(new au(afVar));
    }

    public static bo m1078a(View view, bo boVar) {
        if (!(boVar instanceof bp)) {
            return boVar;
        }
        WindowInsets e = ((bp) boVar).m1223e();
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(e);
        if (onApplyWindowInsets != e) {
            return new bp(onApplyWindowInsets);
        }
        return boVar;
    }

    public static void m1082b(View view) {
        view.stopNestedScroll();
    }
}
