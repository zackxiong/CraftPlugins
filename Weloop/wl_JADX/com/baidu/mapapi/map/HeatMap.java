package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.graphics.Point;
import android.util.SparseIntArray;
import com.baidu.mapapi.map.C0574i.C0563a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.p088c.C0605a;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.umeng.update.util.ProGuard;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public class HeatMap {
    public static final Gradient DEFAULT_GRADIENT;
    public static final double DEFAULT_OPACITY = 0.6d;
    public static final int DEFAULT_RADIUS = 12;
    private static final String f4320b;
    private static final SparseIntArray f4321c;
    private static final int[] f4322d;
    private static final float[] f4323e;
    BaiduMap f4324a;
    private C0574i<WeightedLatLng> f4325f;
    private Collection<WeightedLatLng> f4326g;
    private int f4327h;
    private Gradient f4328i;
    private double f4329j;
    private C0569d f4330k;
    private int[] f4331l;
    private double[] f4332m;
    private double[] f4333n;
    private HashMap<String, C0575j> f4334o;
    private ExecutorService f4335p;
    private HashSet<String> f4336q;

    public static class Builder {
        private Collection<WeightedLatLng> f4316a;
        private int f4317b;
        private Gradient f4318c;
        private double f4319d;

        public Builder() {
            this.f4317b = HeatMap.DEFAULT_RADIUS;
            this.f4318c = HeatMap.DEFAULT_GRADIENT;
            this.f4319d = HeatMap.DEFAULT_OPACITY;
        }

        public HeatMap build() {
            if (this.f4316a != null) {
                return new HeatMap();
            }
            throw new IllegalStateException("No input data: you must use either .data or .weightedData before building");
        }

        public Builder data(Collection<LatLng> collection) {
            if (collection == null || collection.isEmpty()) {
                throw new IllegalArgumentException("No input points.");
            } else if (!collection.contains(null)) {
                return weightedData(HeatMap.m6236c((Collection) collection));
            } else {
                throw new IllegalArgumentException("input points can not contain null.");
            }
        }

        public Builder gradient(Gradient gradient) {
            if (gradient == null) {
                throw new IllegalArgumentException("gradient can not be null");
            }
            this.f4318c = gradient;
            return this;
        }

        public Builder opacity(double d) {
            this.f4319d = d;
            if (this.f4319d >= 0.0d && this.f4319d <= WeightedLatLng.DEFAULT_INTENSITY) {
                return this;
            }
            throw new IllegalArgumentException("Opacity must be in range [0, 1]");
        }

        public Builder radius(int i) {
            this.f4317b = i;
            if (this.f4317b >= 10 && this.f4317b <= 50) {
                return this;
            }
            throw new IllegalArgumentException("Radius not within bounds.");
        }

        public Builder weightedData(Collection<WeightedLatLng> collection) {
            if (collection == null || collection.isEmpty()) {
                throw new IllegalArgumentException("No input points.");
            } else if (collection.contains(null)) {
                throw new IllegalArgumentException("input points can not contain null.");
            } else {
                Collection arrayList = new ArrayList();
                for (WeightedLatLng weightedLatLng : collection) {
                    LatLng latLng = weightedLatLng.latLng;
                    if (latLng.latitude < 0.37532d || latLng.latitude > 54.562495d || latLng.longitude < 72.508319d || latLng.longitude > 135.942198d) {
                        arrayList.add(weightedLatLng);
                    }
                }
                collection.removeAll(arrayList);
                this.f4316a = collection;
                return this;
            }
        }
    }

    static {
        f4320b = HeatMap.class.getSimpleName();
        f4321c = new SparseIntArray();
        f4321c.put(3, 8388608);
        f4321c.put(4, 4194304);
        f4321c.put(5, 2097152);
        f4321c.put(6, 1048576);
        f4321c.put(7, 524288);
        f4321c.put(8, 262144);
        f4321c.put(9, 131072);
        f4321c.put(10, 65536);
        f4321c.put(11, WXMediaMessage.THUMB_LENGTH_LIMIT);
        f4321c.put(DEFAULT_RADIUS, 16384);
        f4321c.put(13, 8192);
        f4321c.put(14, 4096);
        f4321c.put(15, 2048);
        f4321c.put(16, 1024);
        f4321c.put(17, 512);
        f4321c.put(18, ProGuard.f5669b);
        f4321c.put(19, ProGuard.f5670c);
        f4321c.put(20, 64);
        f4322d = new int[]{Color.rgb(0, 0, 200), Color.rgb(0, 225, 0), Color.rgb(255, 0, 0)};
        f4323e = new float[]{0.08f, 0.4f, 1.0f};
        DEFAULT_GRADIENT = new Gradient(f4322d, f4323e);
    }

    private HeatMap(Builder builder) {
        this.f4334o = new HashMap();
        this.f4335p = Executors.newFixedThreadPool(1);
        this.f4336q = new HashSet();
        this.f4326g = builder.f4316a;
        this.f4327h = builder.f4317b;
        this.f4328i = builder.f4318c;
        this.f4329j = builder.f4319d;
        this.f4332m = m6230a(this.f4327h, ((double) this.f4327h) / 3.0d);
        m6225a(this.f4328i);
        m6234b(this.f4326g);
    }

    private static double m6221a(Collection<WeightedLatLng> collection, C0569d c0569d, int i, int i2) {
        double d = c0569d.f4490a;
        double d2 = c0569d.f4492c;
        double d3 = c0569d.f4491b;
        double d4 = c0569d.f4493d;
        double d5 = ((double) ((int) (((double) (i2 / (i * 2))) + 0.5d))) / (d2 - d > d4 - d3 ? d2 - d : d4 - d3);
        android.support.v4.p015f.ProGuard proGuard = new android.support.v4.p015f.ProGuard();
        d4 = 0.0d;
        for (WeightedLatLng weightedLatLng : collection) {
            android.support.v4.p015f.ProGuard proGuard2;
            int i3 = (int) ((((double) weightedLatLng.m6281a().x) - d) * d5);
            int i4 = (int) ((((double) weightedLatLng.m6281a().y) - d3) * d5);
            android.support.v4.p015f.ProGuard proGuard3 = (android.support.v4.p015f.ProGuard) proGuard.m506a((long) i3);
            if (proGuard3 == null) {
                proGuard3 = new android.support.v4.p015f.ProGuard();
                proGuard.m512b((long) i3, proGuard3);
                proGuard2 = proGuard3;
            } else {
                proGuard2 = proGuard3;
            }
            Double d6 = (Double) proGuard2.m506a((long) i4);
            if (d6 == null) {
                d6 = Double.valueOf(0.0d);
            }
            Double valueOf = Double.valueOf(weightedLatLng.intensity + d6.doubleValue());
            proGuard2.m512b((long) i4, valueOf);
            d4 = valueOf.doubleValue() > d4 ? valueOf.doubleValue() : d4;
        }
        return d4;
    }

    private static Bitmap m6222a(double[][] dArr, int[] iArr, double d) {
        int i = iArr[iArr.length - 1];
        double length = ((double) (iArr.length - 1)) / d;
        int length2 = dArr.length;
        int[] iArr2 = new int[(length2 * length2)];
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length2; i3++) {
                double d2 = dArr[i3][i2];
                int i4 = (i2 * length2) + i3;
                int i5 = (int) (d2 * length);
                if (d2 == 0.0d) {
                    iArr2[i4] = 0;
                } else if (i5 < iArr.length) {
                    iArr2[i4] = iArr[i5];
                } else {
                    iArr2[i4] = i;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(length2, length2, Config.ARGB_8888);
        createBitmap.setPixels(iArr2, 0, length2, 0, 0, length2, length2);
        return createBitmap;
    }

    private static C0575j m6223a(Bitmap bitmap) {
        Buffer allocate = ByteBuffer.allocate((bitmap.getWidth() * bitmap.getHeight()) * 4);
        bitmap.copyPixelsToBuffer(allocate);
        return new C0575j(ProGuard.f5669b, ProGuard.f5669b, allocate.array());
    }

    private void m6225a(Gradient gradient) {
        this.f4328i = gradient;
        this.f4331l = gradient.m6214a(this.f4329j);
    }

    private synchronized void m6227a(String str, C0575j c0575j) {
        this.f4334o.put(str, c0575j);
    }

    private synchronized boolean m6228a(String str) {
        return this.f4336q.contains(str);
    }

    private double[] m6229a(int i) {
        int i2 = 11;
        double[] dArr = new double[20];
        for (int i3 = 5; i3 < 11; i3++) {
            dArr[i3] = m6221a(this.f4326g, this.f4330k, i, (int) (1280.0d * Math.pow(2.0d, (double) (i3 - 3))));
            if (i3 == 5) {
                for (int i4 = 0; i4 < i3; i4++) {
                    dArr[i4] = dArr[i3];
                }
            }
        }
        while (i2 < 20) {
            dArr[i2] = dArr[10];
            i2++;
        }
        return dArr;
    }

    private static double[] m6230a(int i, double d) {
        double[] dArr = new double[((i * 2) + 1)];
        for (int i2 = -i; i2 <= i; i2++) {
            dArr[i2 + i] = Math.exp(((double) ((-i2) * i2)) / ((2.0d * d) * d));
        }
        return dArr;
    }

    private static double[][] m6231a(double[][] dArr, double[] dArr2) {
        int floor = (int) Math.floor(((double) dArr2.length) / 2.0d);
        int length = dArr.length;
        int i = length - (floor * 2);
        int i2 = (floor + i) - 1;
        double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, new int[]{length, length});
        int i3 = 0;
        while (i3 < length) {
            int i4;
            for (i4 = 0; i4 < length; i4++) {
                int i5;
                double d = dArr[i3][i4];
                if (d != 0.0d) {
                    i5 = (i2 < i3 + floor ? i2 : i3 + floor) + 1;
                    int i6 = floor > i3 - floor ? floor : i3 - floor;
                    while (i6 < i5) {
                        double[] dArr4 = dArr3[i6];
                        dArr4[i4] = dArr4[i4] + (dArr2[i6 - (i3 - floor)] * d);
                        i6++;
                    }
                }
            }
            i3++;
        }
        double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, new int[]{i, i});
        for (i = floor; i < i2 + 1; i++) {
            i3 = 0;
            while (i3 < length) {
                d = dArr3[i][i3];
                if (d != 0.0d) {
                    i5 = (i2 < i3 + floor ? i2 : i3 + floor) + 1;
                    i4 = floor > i3 - floor ? floor : i3 - floor;
                    while (i4 < i5) {
                        dArr4 = dArr5[i - floor];
                        int i7 = i4 - floor;
                        dArr4[i7] = dArr4[i7] + (dArr2[i4 - (i3 - floor)] * d);
                        i4++;
                    }
                }
                i3++;
            }
        }
        return dArr5;
    }

    private void m6232b(int i, int i2, int i3) {
        double d = (double) f4321c.get(i3);
        double d2 = (((double) this.f4327h) * d) / 256.0d;
        double d3 = ((2.0d * d2) + d) / ((double) ((this.f4327h * 2) + ProGuard.f5669b));
        if (i >= 0 && i2 >= 0) {
            double d4 = (((double) i) * d) - d2;
            double d5 = (d * ((double) (i2 + 1))) + d2;
            C0569d c0569d = new C0569d(d4, (((double) (i + 1)) * d) + d2, (((double) i2) * d) - d2, d5);
            if (c0569d.m6325a(new C0569d(this.f4330k.f4490a - d2, this.f4330k.f4492c + d2, this.f4330k.f4491b - d2, d2 + this.f4330k.f4493d))) {
                Collection<WeightedLatLng> a = this.f4325f.m6348a(c0569d);
                if (!a.isEmpty()) {
                    double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, new int[]{(this.f4327h * 2) + ProGuard.f5669b, (this.f4327h * 2) + ProGuard.f5669b});
                    for (WeightedLatLng weightedLatLng : a) {
                        Point a2 = weightedLatLng.m6281a();
                        int i4 = (int) ((((double) a2.x) - d4) / d3);
                        int i5 = (int) ((d5 - ((double) a2.y)) / d3);
                        if (i4 >= (this.f4327h * 2) + ProGuard.f5669b) {
                            i4 = ((this.f4327h * 2) + ProGuard.f5669b) - 1;
                        }
                        if (i5 >= (this.f4327h * 2) + ProGuard.f5669b) {
                            i5 = ((this.f4327h * 2) + ProGuard.f5669b) - 1;
                        }
                        double[] dArr2 = dArr[i4];
                        dArr2[i5] = dArr2[i5] + weightedLatLng.intensity;
                    }
                    Bitmap a3 = m6222a(m6231a(dArr, this.f4332m), this.f4331l, this.f4333n[i3 - 1]);
                    C0575j a4 = m6223a(a3);
                    a3.recycle();
                    m6227a(i + "_" + i2 + "_" + i3, a4);
                    if (this.f4324a != null) {
                        this.f4324a.m6199a();
                    }
                }
            }
        }
    }

    private synchronized void m6233b(String str) {
        this.f4336q.add(str);
    }

    private void m6234b(Collection<WeightedLatLng> collection) {
        this.f4326g = collection;
        if (this.f4326g.isEmpty()) {
            throw new IllegalArgumentException("No input points.");
        }
        this.f4330k = m6237d(this.f4326g);
        this.f4325f = new C0574i(this.f4330k);
        for (C0563a a : this.f4326g) {
            this.f4325f.m6349a(a);
        }
        this.f4333n = m6229a(this.f4327h);
    }

    private synchronized C0575j m6235c(String str) {
        C0575j c0575j;
        if (this.f4334o.containsKey(str)) {
            c0575j = (C0575j) this.f4334o.get(str);
            this.f4334o.remove(str);
        } else {
            c0575j = null;
        }
        return c0575j;
    }

    private static Collection<WeightedLatLng> m6236c(Collection<LatLng> collection) {
        Collection arrayList = new ArrayList();
        for (LatLng weightedLatLng : collection) {
            arrayList.add(new WeightedLatLng(weightedLatLng));
        }
        return arrayList;
    }

    private static C0569d m6237d(Collection<WeightedLatLng> collection) {
        Iterator it = collection.iterator();
        WeightedLatLng weightedLatLng = (WeightedLatLng) it.next();
        double d = (double) weightedLatLng.m6281a().x;
        double d2 = (double) weightedLatLng.m6281a().x;
        double d3 = (double) weightedLatLng.m6281a().y;
        double d4 = (double) weightedLatLng.m6281a().y;
        while (it.hasNext()) {
            weightedLatLng = (WeightedLatLng) it.next();
            double d5 = (double) weightedLatLng.m6281a().x;
            double d6 = (double) weightedLatLng.m6281a().y;
            if (d5 < d) {
                d = d5;
            }
            if (d5 > d2) {
                d2 = d5;
            }
            if (d6 < d3) {
                d3 = d6;
            }
            if (d6 > d4) {
                d4 = d6;
            }
        }
        return new C0569d(d, d2, d3, d4);
    }

    private synchronized void m6238d() {
        this.f4334o.clear();
    }

    C0575j m6239a(int i, int i2, int i3) {
        String str = i + "_" + i2 + "_" + i3;
        C0575j c = m6235c(str);
        if (c != null) {
            return c;
        }
        if (!(m6228a(str) || this.f4335p.isShutdown())) {
            try {
                this.f4335p.execute(new C0570e(this, i, i2, i3));
                m6233b(str);
            } catch (RejectedExecutionException e) {
                e.printStackTrace();
                C0605a.m6464b(f4320b, "tile " + i + "_" + i2 + "_" + i3 + "task rejected!");
            }
        }
        return null;
    }

    synchronized void m6240a() {
        this.f4336q.clear();
    }

    void m6241b() {
        m6238d();
    }

    void m6242c() {
        this.f4335p.shutdownNow();
    }

    public void removeHeatMap() {
        if (this.f4324a != null) {
            this.f4324a.m6200a(this);
        }
    }
}
