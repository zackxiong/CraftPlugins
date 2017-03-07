package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.support.v4.app.at.ProGuard;

/* compiled from: ProGuard */
class as {
    static RemoteInput[] m203a(ProGuard[] proGuardArr) {
        if (proGuardArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[proGuardArr.length];
        for (int i = 0; i < proGuardArr.length; i++) {
            ProGuard proGuard = proGuardArr[i];
            remoteInputArr[i] = new Builder(proGuard.m193a()).setLabel(proGuard.m194b()).setChoices(proGuard.m195c()).setAllowFreeFormInput(proGuard.m196d()).addExtras(proGuard.m197e()).build();
        }
        return remoteInputArr;
    }
}
