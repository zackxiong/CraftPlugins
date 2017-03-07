package com.yf.gattlib.p127m.p128a;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.yf.gattlib.m.a.d */
class ProGuard extends BroadcastReceiver {
    final /* synthetic */ ProGuard f6269a;

    ProGuard(ProGuard proGuard) {
        this.f6269a = proGuard;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.bluetooth.device.action.FOUND".equals(action)) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice.getType() == 2) {
                this.f6269a.f6268g.onLeScan(bluetoothDevice, intent.getShortExtra("android.bluetooth.device.extra.RSSI", (short) -60), this.f6269a.f6265d);
            }
        } else if (!"android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
        }
    }
}
