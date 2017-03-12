package pl.gatti.dgcam;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;

/* compiled from: ProGuard */
class af implements PictureCallback {
    final /* synthetic */ ad f9754a;

    af(ad adVar) {
        this.f9754a = adVar;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (this.f9754a.f9752a.f9750j != null) {
            this.f9754a.f9752a.f9750j.m12253a(bArr);
        }
    }
}
