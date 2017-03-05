package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p120e.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bi */
class bi implements Runnable {
    final /* synthetic */ byte[] f5855a;
    final /* synthetic */ int f5856b;
    final /* synthetic */ int f5857c;
    final /* synthetic */ ProGuard f5858d;
    final /* synthetic */ be f5859e;

    bi(be beVar, byte[] bArr, int i, int i2, ProGuard proGuard) {
        this.f5859e = beVar;
        this.f5855a = bArr;
        this.f5856b = i;
        this.f5857c = i2;
        this.f5858d = proGuard;
    }

    public void run() {
        try {
            this.f5859e.f5845f.m7526a(this.f5855a, this.f5856b, this.f5857c);
        } catch (ProGuard e) {
            this.f5859e.m7610a(this.f5858d, -4);
        }
    }
}
