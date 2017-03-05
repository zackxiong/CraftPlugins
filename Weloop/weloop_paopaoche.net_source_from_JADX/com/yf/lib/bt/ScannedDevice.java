package com.yf.lib.bt;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public class ScannedDevice implements Parcelable {
    public static final Creator<ScannedDevice> CREATOR;
    public final BluetoothDevice f6519a;
    public final int f6520b;
    public final long f6521c;
    public BleAdvertisedData f6522d;

    public ScannedDevice(BluetoothDevice bluetoothDevice, int i, long j, BleAdvertisedData bleAdvertisedData) {
        this.f6519a = bluetoothDevice;
        this.f6520b = i;
        this.f6521c = j;
        this.f6522d = bleAdvertisedData;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ScannedDevice) {
            return this.f6519a.equals(((ScannedDevice) obj).f6519a);
        }
        return false;
    }

    static {
        CREATOR = new ProGuard();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f6519a, i);
        parcel.writeInt(this.f6520b);
        parcel.writeLong(this.f6521c);
        parcel.writeParcelable(this.f6522d, i);
    }
}
