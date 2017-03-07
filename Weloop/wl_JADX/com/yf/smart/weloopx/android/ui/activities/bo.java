package com.yf.smart.weloopx.android.ui.activities;

import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import com.yf.gattlib.p127m.p128a.ProGuard;

/* compiled from: ProGuard */
class bo implements LeScanCallback {
    final /* synthetic */ ProGuard f7839a;

    bo(ProGuard proGuard) {
        this.f7839a = proGuard;
    }

    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        BluetoothDevice bluetoothDevice2 = bluetoothDevice;
        int i2 = i;
        ProGuard proGuard = new ProGuard(bluetoothDevice2, i2, System.currentTimeMillis(), com.yf.gattlib.p109b.ProGuard.m7392a(bArr));
        com.yf.gattlib.p117p.ProGuard.m8293a(this.f7839a.f8153e, "onLeScan " + this.f7839a.m10004a(proGuard));
        if (this.f7839a.m10031c(proGuard)) {
            this.f7839a.m10036d(proGuard);
            if (this.f7839a.f8141Q.getVisibility() == 0) {
                this.f7839a.m9821a(new bp(this));
            }
            this.f7839a.ah.removeCallbacks(this.f7839a.aF);
        }
    }
}
