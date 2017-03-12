package com.yf.gattlib.client.p113b;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import com.yf.gattlib.client.ProGuard;
import java.util.List;
import java.util.UUID;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ai */
public class ai extends ProGuard {
    private be f5748a;
    private com.yf.gattlib.p110c.ProGuard f5749b;
    private UUID f5750c;
    private String f5751d;
    private BluetoothGattCharacteristic f5752e;

    ai(be beVar) {
        this.f5748a = beVar;
        this.f5749b = com.yf.gattlib.p108a.ProGuard.m7368a().m7382l().m7408c();
        this.f5750c = this.f5749b.m7461a();
    }

    public boolean m7527a(BluetoothGattService bluetoothGattService) {
        return bluetoothGattService.getUuid().equals(this.f5750c);
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        com.yf.gattlib.p117p.ProGuard.m8292a("RxBleCallback onServicesDiscovered() ");
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) "RxBleCallback onServicesDiscovered() ");
        BluetoothGattService service = bluetoothGatt.getService(this.f5750c);
        if (service != null) {
            this.f5751d = bluetoothGatt.getDevice().getAddress();
            this.f5752e = service.getCharacteristic(this.f5749b.m7462b());
            this.f5752e.setWriteType(1);
            BluetoothGattCharacteristic characteristic = service.getCharacteristic(this.f5749b.m7463c());
            bluetoothGatt.setCharacteristicNotification(characteristic, true);
            BluetoothGattDescriptor descriptor = characteristic.getDescriptor(ProGuard.f6117a);
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            bluetoothGatt.writeDescriptor(descriptor);
            com.yf.gattlib.p117p.ProGuard.m8311a(2000);
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "RxBleCallback BroadcastProxy notifyChanged : rx_service_uuid");
            com.yf.gattlib.p108a.ProGuard.m7347a().m7357a("rx_service_uuid", new Object[0]);
        }
    }

    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.f5748a.m7613a(bluetoothGattCharacteristic.getValue(), this.f5751d);
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
    }

    public void m7526a(byte[] bArr, int i, int i2) {
        if (this.f5752e == null) {
            throw new com.yf.gattlib.p120e.ProGuard("No rx characteristic");
        } else if (ProGuard.m7965a().m7985c()) {
            List<byte[]> a = com.yf.gattlib.p117p.ProGuard.m8264a(bArr, i);
            BluetoothGatt g = ProGuard.m7965a().m7989g();
            for (byte[] bArr2 : a) {
                com.yf.gattlib.p117p.ProGuard.m8311a((long) i2);
                this.f5752e.setValue(bArr2);
                if (g == null) {
                    throw new com.yf.gattlib.p120e.ProGuard("gatt is null");
                }
                boolean z;
                boolean writeCharacteristic = g.writeCharacteristic(this.f5752e);
                if (writeCharacteristic) {
                    z = writeCharacteristic;
                } else {
                    int i3 = 0;
                    z = writeCharacteristic;
                    int i4 = i2 > 30 ? i2 : 30;
                    while (!z && i3 < 5) {
                        int i5 = i4 * 2;
                        com.yf.gattlib.p117p.ProGuard.m8311a((long) i5);
                        boolean writeCharacteristic2 = g.writeCharacteristic(this.f5752e);
                        com.yf.gattlib.p117p.ProGuard.m8292a("RxBleCallback" + (" retry " + i3 + " write TXchar - status= " + writeCharacteristic2 + " , value= " + com.yf.gattlib.p117p.ProGuard.m8289a(bArr2)));
                        i3++;
                        i4 = i5;
                        z = writeCharacteristic2;
                    }
                }
                Object obj = " write TXchar - status= " + z + " , value= " + com.yf.gattlib.p117p.ProGuard.m8289a(bArr2);
                com.yf.gattlib.p117p.ProGuard.m8292a("RxBleCallback" + obj);
                if (!z) {
                    com.yf.gattlib.p117p.ProGuard.m8245a(obj);
                }
            }
        } else {
            throw new com.yf.gattlib.p120e.ProGuard("Disconnected!!!");
        }
    }
}
