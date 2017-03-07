package com.baidu.mapapi.map;

import android.os.Bundle;

/* renamed from: com.baidu.mapapi.map.j */
class C0575j {
    public final byte[] f4507a;
    public final int f4508b;
    public final int f4509c;

    public C0575j(int i, int i2, byte[] bArr) {
        this.f4509c = i;
        this.f4508b = i2;
        this.f4507a = bArr;
    }

    Bundle m6350a() {
        Bundle bundle = new Bundle();
        bundle.putInt("image_width", this.f4509c);
        bundle.putInt("image_height", this.f4508b);
        bundle.putByteArray("image_data", this.f4507a);
        return bundle;
    }
}
