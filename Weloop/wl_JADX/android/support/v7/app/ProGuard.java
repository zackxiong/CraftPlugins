package android.support.v7.app;

import android.support.v4.view.af;
import android.support.v4.view.ak;
import android.support.v4.view.bo;
import android.view.View;

/* renamed from: android.support.v7.app.e */
class ProGuard implements af {
    final /* synthetic */ AppCompatDelegateImplV7 f773a;

    ProGuard(AppCompatDelegateImplV7 appCompatDelegateImplV7) {
        this.f773a = appCompatDelegateImplV7;
    }

    public bo m1813a(View view, bo boVar) {
        int b = boVar.m1215b();
        int c = this.f773a.m1782d(b);
        if (b != c) {
            boVar = boVar.m1214a(boVar.m1213a(), c, boVar.m1216c(), boVar.m1217d());
        }
        return ak.m1013a(view, boVar);
    }
}
