package pl.gatti.dgcam;

import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.os.Environment;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.gattlib.p117p.ProGuard;
import java.io.File;

/* compiled from: ProGuard */
public class ac {
    private static final String f9741c;
    AutoFocusCallback f9742a;
    AutoFocusCallback f9743b;
    private Activity f9744d;
    private ProGuard f9745e;
    private boolean f9746f;
    private File f9747g;
    private String f9748h;
    private ProGuard f9749i;
    private ab f9750j;
    private PictureCallback f9751k;

    static {
        f9741c = ac.class.getSimpleName();
    }

    public ac(Activity activity, ProGuard proGuard) {
        this.f9746f = false;
        this.f9742a = new ad(this);
        this.f9743b = new ag(this);
        this.f9751k = new ah(this);
        this.f9744d = activity;
        this.f9745e = proGuard;
        this.f9749i = new ProGuard();
        this.f9747g = Environment.getExternalStorageDirectory();
        this.f9748h = this.f9749i.m12332a();
        File file = new File(this.f9747g, this.f9748h);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public void m12319a(ab abVar) {
        this.f9750j = abVar;
    }

    public void m12318a(int i, boolean z) {
        Camera f = this.f9745e.m12307f();
        if (z) {
            Parameters parameters = f.getParameters();
            if (i == BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES) {
                parameters.setFlashMode("on");
            } else if (i == BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE) {
                parameters.setFlashMode("off");
            } else {
                parameters.setFlashMode("auto");
            }
            f.setParameters(parameters);
        }
        if (!this.f9746f && f != null && this.f9751k != null) {
            this.f9746f = true;
            f.autoFocus(this.f9742a);
        }
    }

    public void m12317a() {
        try {
            this.f9745e.m12307f().autoFocus(this.f9743b);
        } catch (Throwable e) {
            ProGuard.m8295a(e);
        }
    }

    public boolean m12320b() {
        return this.f9746f;
    }
}
