package com.baidu.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.s */
class C0537s implements SensorEventListener, C0452e {
    private static C0537s ab;
    private static float ac;
    float[] f4100Y;
    float[] f4101Z;
    float[] f4102a;
    SensorManager aa;
    private boolean ad;

    C0537s() {
        this.f4101Z = new float[9];
    }

    public static C0537s bV() {
        if (ab == null) {
            ab = new C0537s();
        }
        return ab;
    }

    public float bT() {
        return ac;
    }

    public synchronized void bU() {
        if (this.aa != null) {
            this.aa.unregisterListener(this);
            this.aa = null;
        }
    }

    public synchronized void bW() {
        if (this.aa == null) {
            this.aa = (SensorManager) C0513f.getServiceContext().getSystemService("sensor");
        }
        this.aa.registerListener(this, this.aa.getDefaultSensor(1), 3);
        this.aa.registerListener(this, this.aa.getDefaultSensor(2), 3);
    }

    public boolean bX() {
        return this.ad;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        switch (sensorEvent.sensor.getType()) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                this.f4102a = sensorEvent.values;
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                this.f4100Y = sensorEvent.values;
                break;
        }
        if (this.f4102a != null && this.f4100Y != null) {
            float[] fArr = new float[9];
            if (SensorManager.getRotationMatrix(fArr, null, this.f4102a, this.f4100Y)) {
                float[] fArr2 = new float[3];
                SensorManager.getOrientation(fArr, fArr2);
                ac = (float) Math.toDegrees((double) fArr2[0]);
                ac = (float) Math.floor(ac >= 0.0f ? (double) ac : (double) (ac + 360.0f));
            }
        }
    }

    public void m6081try(boolean z) {
        this.ad = z;
    }
}
