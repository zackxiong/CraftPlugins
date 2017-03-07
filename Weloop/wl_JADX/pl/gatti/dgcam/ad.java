package pl.gatti.dgcam;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class ad implements AutoFocusCallback {
    final /* synthetic */ ac f9752a;

    ad(ac acVar) {
        this.f9752a = acVar;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        ProGuard.m8292a(ac.f9741c + " onAutoFocus");
        try {
            camera.takePicture(new ae(this), new af(this), this.f9752a.f9751k);
        } catch (Exception e) {
            ProGuard.m8297b(ac.f9741c + "\u62cd\u7167\u51fa\u9519 e" + e.getMessage());
        }
    }
}
