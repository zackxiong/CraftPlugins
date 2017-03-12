package com.baidu.mapapi.map;

import android.graphics.Color;
import com.baidu.location.LocationClientOption;
import java.util.HashMap;

public class Gradient {
    private final int f4292a;
    private final int[] f4293b;
    private final float[] f4294c;

    /* renamed from: com.baidu.mapapi.map.Gradient.a */
    private class C0561a {
        final /* synthetic */ Gradient f4288a;
        private final int f4289b;
        private final int f4290c;
        private final float f4291d;

        private C0561a(Gradient gradient, int i, int i2, float f) {
            this.f4288a = gradient;
            this.f4289b = i;
            this.f4290c = i2;
            this.f4291d = f;
        }
    }

    public Gradient(int[] iArr, float[] fArr) {
        this(iArr, fArr, LocationClientOption.MIN_SCAN_SPAN);
    }

    private Gradient(int[] iArr, float[] fArr, int i) {
        if (iArr == null || fArr == null) {
            throw new IllegalArgumentException("colors and startPoints should not be null");
        } else if (iArr.length != fArr.length) {
            throw new IllegalArgumentException("colors and startPoints should be same length");
        } else if (iArr.length == 0) {
            throw new IllegalArgumentException("No colors have been defined");
        } else {
            for (int i2 = 1; i2 < fArr.length; i2++) {
                if (fArr[i2] <= fArr[i2 - 1]) {
                    throw new IllegalArgumentException("startPoints should be in increasing order");
                }
            }
            this.f4292a = i;
            this.f4293b = new int[iArr.length];
            this.f4294c = new float[fArr.length];
            System.arraycopy(iArr, 0, this.f4293b, 0, iArr.length);
            System.arraycopy(fArr, 0, this.f4294c, 0, fArr.length);
        }
    }

    private static int m6212a(int i, int i2, float f) {
        int i3 = 0;
        int alpha = (int) ((((float) (Color.alpha(i2) - Color.alpha(i))) * f) + ((float) Color.alpha(i)));
        float[] fArr = new float[3];
        Color.RGBToHSV(Color.red(i), Color.green(i), Color.blue(i), fArr);
        float[] fArr2 = new float[3];
        Color.RGBToHSV(Color.red(i2), Color.green(i2), Color.blue(i2), fArr2);
        if (fArr[0] - fArr2[0] > 180.0f) {
            fArr2[0] = fArr2[0] + 360.0f;
        } else if (fArr2[0] - fArr[0] > 180.0f) {
            fArr[0] = fArr[0] + 360.0f;
        }
        float[] fArr3 = new float[3];
        while (i3 < 3) {
            fArr3[i3] = ((fArr2[i3] - fArr[i3]) * f) + fArr[i3];
            i3++;
        }
        return Color.HSVToColor(alpha, fArr3);
    }

    private HashMap<Integer, C0561a> m6213a() {
        HashMap<Integer, C0561a> hashMap = new HashMap();
        if (this.f4294c[0] != 0.0f) {
            int argb = Color.argb(0, Color.red(this.f4293b[0]), Color.green(this.f4293b[0]), Color.blue(this.f4293b[0]));
            hashMap.put(Integer.valueOf(0), new C0561a(argb, this.f4293b[0], this.f4294c[0] * ((float) this.f4292a), null));
        }
        for (int i = 1; i < this.f4293b.length; i++) {
            hashMap.put(Integer.valueOf((int) (((float) this.f4292a) * this.f4294c[i - 1])), new C0561a(this.f4293b[i - 1], this.f4293b[i], (this.f4294c[i] - this.f4294c[i - 1]) * ((float) this.f4292a), null));
        }
        if (this.f4294c[this.f4294c.length - 1] != 1.0f) {
            int length = this.f4294c.length - 1;
            hashMap.put(Integer.valueOf((int) (((float) this.f4292a) * this.f4294c[length])), new C0561a(this.f4293b[length], this.f4293b[length], ((float) this.f4292a) * (1.0f - this.f4294c[length]), null));
        }
        return hashMap;
    }

    int[] m6214a(double d) {
        int i = 0;
        HashMap a = m6213a();
        int[] iArr = new int[this.f4292a];
        int i2 = 0;
        C0561a c0561a = (C0561a) a.get(Integer.valueOf(0));
        int i3 = 0;
        while (i2 < this.f4292a) {
            int i4;
            C0561a c0561a2;
            if (a.containsKey(Integer.valueOf(i2))) {
                i4 = i2;
                c0561a2 = (C0561a) a.get(Integer.valueOf(i2));
            } else {
                c0561a2 = c0561a;
                i4 = i3;
            }
            iArr[i2] = m6212a(c0561a2.f4289b, c0561a2.f4290c, ((float) (i2 - i4)) / c0561a2.f4291d);
            i2++;
            i3 = i4;
            c0561a = c0561a2;
        }
        if (d != WeightedLatLng.DEFAULT_INTENSITY) {
            while (i < this.f4292a) {
                i3 = iArr[i];
                iArr[i] = Color.argb((int) (((double) Color.alpha(i3)) * d), Color.red(i3), Color.green(i3), Color.blue(i3));
                i++;
            }
        }
        return iArr;
    }
}
