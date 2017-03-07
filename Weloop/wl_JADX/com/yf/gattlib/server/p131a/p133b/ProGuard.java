package com.yf.gattlib.server.p131a.p133b;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothGattService;
import android.content.Intent;
import com.yf.gattlib.db.Relationship;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;

/* renamed from: com.yf.gattlib.server.a.b.c */
public class ProGuard {
    private BluetoothGattService f6394a;
    private BluetoothGattServer f6395b;
    private Map<BluetoothDevice, Set<UUID>> f6396c;
    private Map<UUID, com.yf.gattlib.server.p131a.ProGuard> f6397d;

    /* renamed from: com.yf.gattlib.server.a.b.c.a */
    private class ProGuard extends BluetoothGattServerCallback implements com.yf.gattlib.server.p131a.ProGuard {
        final /* synthetic */ ProGuard f6393a;

        private ProGuard(ProGuard proGuard) {
            this.f6393a = proGuard;
        }

        public void onConnectionStateChange(BluetoothDevice bluetoothDevice, int i, int i2) {
            switch (i2) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController MyBluetoothGattServerCallback -9");
                    this.f6393a.f6396c.remove(bluetoothDevice);
                    Relationship.getRelationship(bluetoothDevice.getAddress(), ProGuard.f6401a.toString());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController MyBluetoothGattServerCallback -10");
                    this.f6393a.m8379a(bluetoothDevice, ProGuard.f6399b);
                    this.f6393a.m8379a(bluetoothDevice, ProGuard.f6400c);
                    this.f6393a.m8379a(bluetoothDevice, ProGuard.f6398a);
                    Relationship.createRelationship(bluetoothDevice.getAddress(), ProGuard.f6401a.toString());
                default:
            }
        }

        public void onServiceAdded(int i, BluetoothGattService bluetoothGattService) {
        }

        public void onCharacteristicReadRequest(BluetoothDevice bluetoothDevice, int i, int i2, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onCharacteristicWriteRequest 0");
            com.yf.gattlib.server.p131a.ProGuard proGuard = (com.yf.gattlib.server.p131a.ProGuard) this.f6393a.f6397d.get(bluetoothGattCharacteristic.getUuid());
            if (proGuard != null) {
                com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onCharacteristicWriteRequest 0.1");
                proGuard.m8327a(bluetoothDevice, i, i2, bluetoothGattCharacteristic);
                return;
            }
            com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onCharacteristicWriteRequest 0.2");
            this.f6393a.f6395b.sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattCharacteristic.getValue());
        }

        public void onCharacteristicWriteRequest(BluetoothDevice bluetoothDevice, int i, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, int i2, byte[] bArr) {
            com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onCharacteristicWriteRequest 1");
            com.yf.gattlib.server.p131a.ProGuard proGuard = (com.yf.gattlib.server.p131a.ProGuard) this.f6393a.f6397d.get(bluetoothGattCharacteristic.getUuid());
            if (proGuard != null) {
                com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController onCharacteristicWriteRequest 1.1");
                proGuard.m8328a(bluetoothDevice, i, bluetoothGattCharacteristic, z, z2, i2, bArr);
                com.yf.gattlib.p108a.ProGuard.m7368a().m7375e().m7362c(new Intent("com.yf.smart.push.msg"));
                return;
            }
            com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onCharacteristicWriteRequest 2");
            bluetoothGattCharacteristic.setValue(bArr);
            this.f6393a.f6395b.sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattCharacteristic.getValue());
        }

        public void onDescriptorReadRequest(BluetoothDevice bluetoothDevice, int i, int i2, BluetoothGattDescriptor bluetoothGattDescriptor) {
            com.yf.gattlib.p117p.ProGuard.m8297b("AncsServiceController onDescriptorReadRequest 3");
            this.f6393a.f6395b.sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattDescriptor.getValue());
        }

        public void onDescriptorWriteRequest(BluetoothDevice bluetoothDevice, int i, BluetoothGattDescriptor bluetoothGattDescriptor, boolean z, boolean z2, int i2, byte[] bArr) {
            com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController onDescriptorWriteRequest 4");
            bluetoothGattDescriptor.setValue(bArr);
            if (Arrays.equals(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE, bArr) || Arrays.equals(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE, bArr)) {
                com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController onDescriptorWriteRequest 4.1");
                this.f6393a.m8379a(bluetoothDevice, bluetoothGattDescriptor.getCharacteristic().getUuid());
            } else if (Arrays.equals(BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE, bArr)) {
                com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController onDescriptorWriteRequest 4.2");
                this.f6393a.m8378a(bluetoothDevice, bluetoothGattDescriptor.getCharacteristic());
            }
            this.f6393a.f6395b.sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattDescriptor.getValue());
            com.yf.gattlib.p117p.ProGuard.m8292a("AncsServiceController onDescriptorWriteRequest device = " + bluetoothDevice.getName() + " requestId = " + i + " descriptor = " + com.yf.gattlib.p117p.ProGuard.m8289a(bluetoothGattDescriptor.getValue()));
        }

        public void onExecuteWrite(BluetoothDevice bluetoothDevice, int i, boolean z) {
        }

        public BluetoothGattServerCallback m8376a() {
            return this;
        }
    }

    ProGuard(BluetoothGattServer bluetoothGattServer, BluetoothGattService bluetoothGattService) {
        this.f6394a = bluetoothGattService;
        this.f6395b = bluetoothGattServer;
        this.f6396c = new HashMap();
        this.f6397d = new HashMap();
    }

    public BluetoothGattServer m8387a() {
        return this.f6395b;
    }

    public void m8389a(UUID uuid, com.yf.gattlib.server.p131a.ProGuard proGuard) {
        this.f6397d.put(uuid, proGuard);
    }

    public void m8390a(UUID uuid, byte[] bArr, boolean z) {
        m8388a(null, uuid, bArr, z);
    }

    public void m8388a(String str, UUID uuid, byte[] bArr, boolean z) {
        int length;
        BluetoothGattCharacteristic a = m8386a(uuid);
        int length2 = bArr.length % 18;
        if (length2 != 0) {
            length = bArr.length - 18;
        } else {
            length = bArr.length;
        }
        int i = 0;
        while (i + 18 <= length) {
            m8381a(a, str, z, bArr, i, i + 18);
            i += 18;
        }
        if (length2 != 0) {
            if (length2 == 1) {
                length = ((bArr.length - i) / 2) + 1;
            } else {
                length = 18;
            }
            while (i + length <= bArr.length) {
                m8381a(a, str, z, bArr, i, i + length);
                i += length;
            }
            if (i != bArr.length) {
                m8381a(a, str, z, bArr, i, bArr.length);
            }
        }
    }

    private void m8381a(BluetoothGattCharacteristic bluetoothGattCharacteristic, String str, boolean z, byte[] bArr, int i, int i2) {
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
        com.yf.gattlib.p117p.ProGuard.m8296b().m8267a("notification:" + com.yf.gattlib.p117p.ProGuard.m8289a(copyOfRange));
        bluetoothGattCharacteristic.setValue(copyOfRange);
        m8380a(bluetoothGattCharacteristic, str, z);
    }

    private void m8380a(BluetoothGattCharacteristic bluetoothGattCharacteristic, String str, boolean z) {
        for (Entry entry : this.f6396c.entrySet()) {
            if ((str == null && ((Set) entry.getValue()).contains(bluetoothGattCharacteristic.getUuid())) || ((BluetoothDevice) entry.getKey()).getAddress().equals(str)) {
                this.f6395b.notifyCharacteristicChanged((BluetoothDevice) entry.getKey(), bluetoothGattCharacteristic, z);
            }
        }
    }

    public BluetoothGattCharacteristic m8386a(UUID uuid) {
        return this.f6394a.getCharacteristic(uuid);
    }

    private void m8379a(BluetoothDevice bluetoothDevice, UUID uuid) {
        Set set = (Set) this.f6396c.get(bluetoothDevice);
        if (set == null) {
            set = new TreeSet();
            this.f6396c.put(bluetoothDevice, set);
        }
        set.add(uuid);
    }

    private void m8378a(BluetoothDevice bluetoothDevice, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        Set set = (Set) this.f6396c.get(bluetoothDevice);
        if (set != null) {
            set.remove(bluetoothGattCharacteristic.getUuid());
        }
    }

    public com.yf.gattlib.server.p131a.ProGuard m8391b() {
        return new ProGuard();
    }
}
