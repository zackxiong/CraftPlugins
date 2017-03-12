package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p127m.p128a.ProGuard;
import java.util.Comparator;

/* compiled from: ProGuard */
class cd implements Comparator<ProGuard> {
    final /* synthetic */ ProGuard.ProGuard f7864a;

    cd(ProGuard.ProGuard proGuard) {
        this.f7864a = proGuard;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return m9807a((ProGuard) obj, (ProGuard) obj2);
    }

    public int m9807a(ProGuard proGuard, ProGuard proGuard2) {
        if (this.f7864a.f8122b.m10025b(proGuard)) {
            return -1;
        }
        if (this.f7864a.f8122b.m10025b(proGuard2)) {
            return 1;
        }
        return 0;
    }
}
