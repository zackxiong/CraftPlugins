package com.yf.lib.bt.server;

import android.bluetooth.BluetoothDevice;
import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class GattServerConnectEvent extends ProGuard {
    public final BluetoothDevice device;
    public final int state;

    public GattServerConnectEvent(BluetoothDevice bluetoothDevice, int i) {
        this.device = bluetoothDevice;
        this.state = i;
    }
}
