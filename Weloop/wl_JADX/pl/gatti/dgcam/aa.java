package pl.gatti.dgcam;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class aa implements AutoFocusCallback {
    final /* synthetic */ ProGuard f9740a;

    aa(ProGuard proGuard) {
        this.f9740a = proGuard;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        ProGuard.m8293a("RecordVideoManager", "start record 1.1");
        this.f9740a.m12335a(this.f9740a.f9785e.m12307f(), ai.m12322a(this.f9740a.f9786f.getAbsolutePath() + this.f9740a.f9787g, "VIDEO_", ".mp4").getAbsolutePath(), null, this.f9740a.f9785e.m12308g());
        ProGuard.m8293a("RecordVideoManager", "start record 1.2");
    }
}
