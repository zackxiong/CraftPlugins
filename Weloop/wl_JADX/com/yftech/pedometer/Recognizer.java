package com.yftech.pedometer;

/* compiled from: ProGuard */
public class Recognizer {
    public static final int CHANGE_COUNT = 1;
    public static final int CHANGE_MODE = 2;
    public static final int CHANGE_PERIOD = 3;
    public static final int MODE_CAR = 3;
    public static final int MODE_INVALID = 9;
    public static final int MODE_OTHER = 8;
    public static final int MODE_RUN = 2;
    public static final int MODE_STEP = 1;
    public static final int MODE_UNKNOWN = 0;
    private int mMode;
    private int mPeriod;
    private Reporter mReporter;

    /* compiled from: ProGuard */
    public interface Reporter {
        void onRecongnizerChanged(int i, int i2);
    }

    public native void onSensorChanged(int i, long j, float[] fArr);

    public Recognizer(Reporter reporter) {
        this.mMode = 0;
        this.mReporter = reporter;
    }

    public int getMode() {
        return this.mMode;
    }

    public int getPeriod() {
        if (this.mMode == 0 || this.mMode == MODE_CAR) {
            return 0;
        }
        return this.mPeriod;
    }

    private void onRecongnizerChanged(int i, int i2) {
        if (i == MODE_RUN) {
            this.mMode = i2;
        } else if (i == MODE_CAR) {
            this.mPeriod = i2;
        }
        if (this.mReporter != null) {
            this.mReporter.onRecongnizerChanged(i, i2);
        }
    }

    static {
        System.loadLibrary("jni_recognizer");
    }
}
