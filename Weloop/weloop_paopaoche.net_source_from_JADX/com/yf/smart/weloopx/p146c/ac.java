package com.yf.smart.weloopx.p146c;

import com.yf.gattlib.client.p113b.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Calendar;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.ac */
class ac implements ProGuard {
    final /* synthetic */ ProGuard f8699a;

    ac(ProGuard proGuard) {
        this.f8699a = proGuard;
    }

    public void m10828b() {
        this.f8699a.m10942c("SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataStart");
        this.f8699a.m10925a(this.f8699a.f8764j, this.f8699a.f8765k + 1);
    }

    public void m10826a(long j, long j2) {
    }

    public void m10827a(byte[] bArr, long j, Calendar calendar, String str) {
        this.f8699a.m10925a(this.f8699a.f8764j, this.f8699a.f8765k + 1);
        this.f8699a.m10942c("SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataSuccees");
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        wrap.position(0);
        while (wrap.remaining() >= 16) {
            com.yf.gattlib.client.p113b.p115b.ProGuard proGuard = new com.yf.gattlib.client.p113b.p115b.ProGuard();
            proGuard.f5793a = wrap.getInt();
            proGuard.f5794b = wrap.getInt();
            proGuard.f5795c = wrap.getInt();
            proGuard.f5796d = wrap.getInt();
            ProGuard.f8756f.m11106a(proGuard, this.f8699a.f8762h);
        }
        this.f8699a.m10964c();
    }

    public void m10825a() {
        this.f8699a.m10942c("SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataTimeout");
        this.f8699a.m10926a(-1, (int) R.string.sync_status_run_data_timeout, "");
        this.f8699a.m10925a(this.f8699a.f8764j, this.f8699a.f8764j);
    }

    public void m10829c() {
        this.f8699a.m10942c("SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataFail");
        this.f8699a.m10926a(-1, (int) R.string.sync_status_run_data_fail, "");
        this.f8699a.m10925a(this.f8699a.f8764j, this.f8699a.f8764j);
    }

    public void m10830d() {
        this.f8699a.m10942c("SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onNoData");
        this.f8699a.m10925a(this.f8699a.f8764j, this.f8699a.f8765k + 1);
        this.f8699a.m10964c();
    }

    public void m10831e() {
        m10829c();
    }
}
