package com.yf.lib.bt.client;

import android.bluetooth.BluetoothDevice;
import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class GattClientConnectEvent extends ProGuard {
    public final BluetoothDevice device;
    public final int state;

    public GattClientConnectEvent(BluetoothDevice bluetoothDevice, int i) {
        this.device = bluetoothDevice;
        this.state = i;
    }
}
