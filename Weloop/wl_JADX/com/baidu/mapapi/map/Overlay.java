package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import com.umeng.update.ProGuard;
import java.util.List;

public abstract class Overlay {
    protected C0562a listener;
    String f4207n;
    C0617e f4208o;
    int f4209p;
    boolean f4210q;
    Bundle f4211r;

    /* renamed from: com.baidu.mapapi.map.Overlay.a */
    interface C0562a {
        void m6269a(Overlay overlay);

        void m6270b(Overlay overlay);
    }

    protected Overlay() {
        this.f4207n = System.currentTimeMillis() + "_" + hashCode();
    }

    static void m6166a(int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        int i2 = i >>> 24;
        int i3 = (i >> 8) & 255;
        int i4 = i & 255;
        bundle2.putFloat("red", ((float) ((i >> 16) & 255)) / 255.0f);
        bundle2.putFloat("green", ((float) i3) / 255.0f);
        bundle2.putFloat("blue", ((float) i4) / 255.0f);
        bundle2.putFloat("alpha", ((float) i2) / 255.0f);
        bundle.putBundle("color", bundle2);
    }

    static void m6167a(List<LatLng> list, Bundle bundle) {
        int size = list.size();
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        for (int i = 0; i < size; i++) {
            C0596b a = C0579a.m6359a((LatLng) list.get(i));
            iArr[i] = a.m6426b();
            iArr2[i] = a.m6424a();
        }
        bundle.putIntArray("x_array", iArr);
        bundle.putIntArray("y_array", iArr2);
    }

    Bundle m6168a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f4207n);
        bundle.putInt(ProGuard.f5475c, this.f4208o.ordinal());
        return bundle;
    }

    Bundle m6169a(Bundle bundle) {
        bundle.putString("id", this.f4207n);
        bundle.putInt(ProGuard.f5475c, this.f4208o.ordinal());
        bundle.putInt("visibility", this.f4210q ? 1 : 0);
        bundle.putInt("z_index", this.f4209p);
        return bundle;
    }

    public Bundle getExtraInfo() {
        return this.f4211r;
    }

    public int getZIndex() {
        return this.f4209p;
    }

    public boolean isVisible() {
        return this.f4210q;
    }

    public void remove() {
        this.listener.m6269a(this);
    }

    public void setExtraInfo(Bundle bundle) {
        this.f4211r = bundle;
    }

    public void setVisible(boolean z) {
        this.f4210q = z;
        this.listener.m6270b(this);
    }

    public void setZIndex(int i) {
        this.f4209p = i;
        this.listener.m6270b(this);
    }
}
