package android.support.v4.app;

import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: ProGuard */
final class aa implements OnPreDrawListener {
    final /* synthetic */ View f93a;
    final /* synthetic */ Transition f94b;
    final /* synthetic */ View f95c;
    final /* synthetic */ ArrayList f96d;
    final /* synthetic */ Transition f97e;
    final /* synthetic */ ArrayList f98f;
    final /* synthetic */ Transition f99g;
    final /* synthetic */ ArrayList f100h;
    final /* synthetic */ Map f101i;
    final /* synthetic */ ArrayList f102j;
    final /* synthetic */ Transition f103k;

    aa(View view, Transition transition, View view2, ArrayList arrayList, Transition transition2, ArrayList arrayList2, Transition transition3, ArrayList arrayList3, Map map, ArrayList arrayList4, Transition transition4) {
        this.f93a = view;
        this.f94b = transition;
        this.f95c = view2;
        this.f96d = arrayList;
        this.f97e = transition2;
        this.f98f = arrayList2;
        this.f99g = transition3;
        this.f100h = arrayList3;
        this.f101i = map;
        this.f102j = arrayList4;
        this.f103k = transition4;
    }

    public boolean onPreDraw() {
        this.f93a.getViewTreeObserver().removeOnPreDrawListener(this);
        if (this.f94b != null) {
            this.f94b.removeTarget(this.f95c);
            ProGuard.m361a(this.f94b, this.f96d);
        }
        if (this.f97e != null) {
            ProGuard.m361a(this.f97e, this.f98f);
        }
        if (this.f99g != null) {
            ProGuard.m361a(this.f99g, this.f100h);
        }
        for (Entry entry : this.f101i.entrySet()) {
            ((View) entry.getValue()).setTransitionName((String) entry.getKey());
        }
        int size = this.f102j.size();
        for (int i = 0; i < size; i++) {
            this.f103k.excludeTarget((View) this.f102j.get(i), false);
        }
        this.f103k.excludeTarget(this.f95c, false);
        return true;
    }
}
