package android.support.v7.internal.widget;

import android.support.v7.internal.view.menu.ProGuard;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class ae implements OnClickListener {
    final ProGuard f1278a;
    final /* synthetic */ ad f1279b;

    ae(ad adVar) {
        this.f1279b = adVar;
        this.f1278a = new ProGuard(this.f1279b.f1260a.getContext(), 0, 16908332, 0, 0, this.f1279b.f1268i);
    }

    public void onClick(View view) {
        if (this.f1279b.f1271l != null && this.f1279b.f1272m) {
            this.f1279b.f1271l.onMenuItemSelected(0, this.f1278a);
        }
    }
}
