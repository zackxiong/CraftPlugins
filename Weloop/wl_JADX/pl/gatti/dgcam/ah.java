package pl.gatti.dgcam;

import android.content.Intent;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.net.Uri;
import com.yf.gattlib.p117p.ProGuard;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: ProGuard */
class ah implements PictureCallback {
    final /* synthetic */ ac f9756a;

    ah(ac acVar) {
        this.f9756a = acVar;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        ProGuard.m8293a(ac.f9741c, "onPictureTaken");
        File a = ai.m12322a(this.f9756a.f9747g.getAbsolutePath() + this.f9756a.f9748h, "IMG_", ".jpg");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(a);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            this.f9756a.f9744d.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + a.getPath())));
        } catch (FileNotFoundException e) {
            ProGuard.m8293a(ac.f9741c, "File not found: " + e.getMessage());
        } catch (IOException e2) {
            ProGuard.m8293a(ac.f9741c, "Error accessing file: " + e2.getMessage());
        }
        camera.stopPreview();
        ProGuard.m8293a(ac.f9741c, "picture is saved, startPreview");
        camera.startPreview();
        this.f9756a.f9746f = false;
        ProGuard.m8293a(ac.f9741c, "after taking picture and startPreview");
    }
}
