package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.at.ProGuard;

/* compiled from: ProGuard */
class au {
    static Bundle m204a(ProGuard proGuard) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", proGuard.m193a());
        bundle.putCharSequence("label", proGuard.m194b());
        bundle.putCharSequenceArray("choices", proGuard.m195c());
        bundle.putBoolean("allowFreeFormInput", proGuard.m196d());
        bundle.putBundle("extras", proGuard.m197e());
        return bundle;
    }

    static Bundle[] m205a(ProGuard[] proGuardArr) {
        if (proGuardArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[proGuardArr.length];
        for (int i = 0; i < proGuardArr.length; i++) {
            bundleArr[i] = m204a(proGuardArr[i]);
        }
        return bundleArr;
    }
}
