package com.p091c.p092a.p093a;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;

/* renamed from: com.c.a.a.a */
public class ProGuard {
    public static int m6688a() {
        return Camera.getNumberOfCameras();
    }

    public static boolean m6690a(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo.facing == 0;
    }

    public static int m6689a(int i, Camera camera, int i2) {
        int i3 = 0;
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        switch (i2) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                i3 = 90;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                i3 = 180;
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                i3 = 270;
                break;
        }
        if (cameraInfo.facing == 1) {
            i3 = (360 - ((i3 + cameraInfo.orientation) % 360)) % 360;
        } else {
            i3 = ((cameraInfo.orientation - i3) + 360) % 360;
        }
        if (camera != null) {
            camera.setDisplayOrientation(i3);
        }
        return i3;
    }
}
