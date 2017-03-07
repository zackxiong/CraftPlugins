package android.support.v4.view;

import android.view.View;

/* compiled from: ProGuard */
class bh {
    public static void m1207a(View view, bl blVar) {
        if (blVar != null) {
            view.animate().setListener(new bi(blVar, view));
        } else {
            view.animate().setListener(null);
        }
    }
}
