package com.yf.gattlib.client;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;

/* renamed from: com.yf.gattlib.client.h */
class ProGuard extends BluetoothGattCallback {
    final /* synthetic */ ProGuard f6116a;

    ProGuard(ProGuard proGuard) {
        this.f6116a = proGuard;
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8070b(bluetoothGatt.getDevice().getAddress())) {
            com.yf.gattlib.p117p.ProGuard.m8292a("GattClientProxy" + (" onConnectionStateChange , status= " + i + ", newState= " + i2 + ", connectionState= " + this.f6116a.f6110j + ", name = " + bluetoothGatt.getDevice().getName()));
            BluetoothDevice device = bluetoothGatt.getDevice();
            if (this.f6116a.f6112l == null || !this.f6116a.f6112l.equals(device) || this.f6116a.f6112l.getName() == null) {
                this.f6116a.f6112l = device;
            }
            com.yf.gattlib.p108a.ProGuard.m7368a().m7381k().removeCallbacks(this.f6116a.f6113m);
            this.f6116a.f6107g = i;
            if (i2 == 2) {
                if (!this.f6116a.m7981a(i, 1)) {
                    com.yf.gattlib.p109b.ProGuard.m7399a().m7403d();
                    if (this.f6116a.f6110j != 1) {
                        this.f6116a.m7986d();
                        return;
                    }
                    this.f6116a.f6108h = 0;
                    this.f6116a.f6110j = 2;
                    if (this.f6116a.f6104d == null) {
                        this.f6116a.f6104d = bluetoothGatt;
                    }
                    com.yf.gattlib.p108a.ProGuard.m7368a().m7381k().postDelayed(this.f6116a.f6113m, 7000);
                    com.yf.gattlib.p109b.ProGuard.m7397b(bluetoothGatt);
                    this.f6116a.m7966a(bluetoothGatt.getDevice(), i, i2);
                    com.yf.gattlib.p117p.ProGuard.m8292a("GattClientProxy GattClientProxy onConnectionStateChange() Connected to GATT server.");
                    com.yf.gattlib.p117p.ProGuard.m8245a((Object) "GattClientProxy GattClientProxy onConnectionStateChange() Connected to GATT server.");
                } else {
                    return;
                }
            } else if (i2 == 0) {
                com.yf.gattlib.p117p.ProGuard.m8296b().m8267a("****** Disconnet to : [" + bluetoothGatt.getDevice().getAddress() + "] ******\r\n\r\n");
                com.yf.gattlib.p117p.ProGuard.m8296b().m8269b();
                this.f6116a.f6110j = 0;
                com.yf.gattlib.p117p.ProGuard.m8298b("GattClientProxy", " GattClientProxy onConnectionStateChange() Disconnected from GATT server. ");
                com.yf.gattlib.p117p.ProGuard.m8245a((Object) "GattClientProxy GattClientProxy onConnectionStateChange() Disconnected from GATT server. ");
                this.f6116a.m7966a(bluetoothGatt.getDevice(), i, i2);
            }
            for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
                ((ProGuard) this.f6116a.f6111k.get(size)).onConnectionStateChange(bluetoothGatt, i, i2);
            }
        }
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        com.yf.gattlib.p117p.ProGuard.m8245a(this.f6116a.f6105e + " , " + bluetoothGatt.getDevice().getAddress());
        if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8070b(bluetoothGatt.getDevice().getAddress())) {
            com.yf.gattlib.p108a.ProGuard.m7368a().m7381k().removeCallbacks(this.f6116a.f6113m);
            com.yf.gattlib.p117p.ProGuard.m8292a("GattClientProxy GattClientProxy onServicesDiscovered() " + bluetoothGatt + ", status=" + i);
            com.yf.gattlib.p117p.ProGuard.m8245a("GattClientProxy GattClientProxy onServicesDiscovered() " + bluetoothGatt + ", status=" + i);
            if (!this.f6116a.m7980a(i)) {
                this.f6116a.m7979a(false);
                for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
                    ((ProGuard) this.f6116a.f6111k.get(size)).onServicesDiscovered(bluetoothGatt, i);
                }
            }
        }
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        BluetoothGattService service = bluetoothGattCharacteristic.getService();
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ProGuard proGuard = (ProGuard) this.f6116a.f6111k.get(size);
            if (proGuard.m7468a(service)) {
                proGuard.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
                return;
            }
        }
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        BluetoothGattService service = bluetoothGattCharacteristic.getService();
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ProGuard proGuard = (ProGuard) this.f6116a.f6111k.get(size);
            if (proGuard.m7468a(service)) {
                proGuard.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
                return;
            }
        }
    }

    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        BluetoothGattService service = bluetoothGattCharacteristic.getService();
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ProGuard proGuard = (ProGuard) this.f6116a.f6111k.get(size);
            if (proGuard.m7468a(service)) {
                proGuard.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
                return;
            }
        }
    }

    public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        BluetoothGattService service = bluetoothGattDescriptor.getCharacteristic().getService();
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ProGuard proGuard = (ProGuard) this.f6116a.f6111k.get(size);
            if (proGuard.m7468a(service)) {
                proGuard.onDescriptorRead(bluetoothGatt, bluetoothGattDescriptor, i);
                return;
            }
        }
    }

    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        BluetoothGattService service = bluetoothGattDescriptor.getCharacteristic().getService();
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ProGuard proGuard = (ProGuard) this.f6116a.f6111k.get(size);
            if (proGuard.m7468a(service)) {
                proGuard.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
                return;
            }
        }
    }

    public void onReliableWriteCompleted(BluetoothGatt bluetoothGatt, int i) {
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ((ProGuard) this.f6116a.f6111k.get(size)).onReliableWriteCompleted(bluetoothGatt, i);
        }
    }

    public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
        for (int size = this.f6116a.f6111k.size() - 1; size >= 0; size--) {
            ((ProGuard) this.f6116a.f6111k.get(size)).onReadRemoteRssi(bluetoothGatt, i, i2);
        }
    }
}
