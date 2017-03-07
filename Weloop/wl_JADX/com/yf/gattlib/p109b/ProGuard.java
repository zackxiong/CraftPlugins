package com.yf.gattlib.p109b;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import java.lang.reflect.Method;

/* renamed from: com.yf.gattlib.b.b */
public final class ProGuard {
    private static final String f5703a;

    static {
        f5703a = ProGuard.class.getSimpleName();
    }

    public static boolean m7394a(BluetoothDevice bluetoothDevice) {
        try {
            return ((Boolean) bluetoothDevice.getClass().getMethod("removeBond", new Class[0]).invoke(bluetoothDevice, new Object[0])).booleanValue();
        } catch (Throwable e) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e);
            return false;
        } catch (Throwable e2) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e2);
            return false;
        } catch (Throwable e22) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e22);
            return false;
        } catch (Throwable e222) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e222);
            return false;
        }
    }

    public static boolean m7396a(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    public static boolean m7398b(Context context) {
        BluetoothAdapter adapter = ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter();
        if (adapter == null || !adapter.isEnabled()) {
            return false;
        }
        return true;
    }

    public static boolean m7395a(BluetoothGatt bluetoothGatt) {
        try {
            Method method = bluetoothGatt.getClass().getMethod("refresh", new Class[0]);
            if (method != null) {
                return ((Boolean) method.invoke(bluetoothGatt, new Object[0])).booleanValue();
            }
        } catch (Throwable e) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e);
        }
        return false;
    }

    public static void m7397b(BluetoothGatt bluetoothGatt) {
        new ProGuard(bluetoothGatt).start();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.yf.gattlib.p109b.ProGuard m7392a(byte[] r10) {
        /*
        r9 = 2;
        r2 = new java.util.ArrayList;
        r2.<init>();
        r1 = 0;
        if (r10 != 0) goto L_0x000f;
    L_0x0009:
        r0 = new com.yf.gattlib.b.a;
        r0.<init>(r2, r1);
    L_0x000e:
        return r0;
    L_0x000f:
        r0 = java.nio.ByteBuffer.wrap(r10);
        r3 = java.nio.ByteOrder.LITTLE_ENDIAN;
        r3 = r0.order(r3);
    L_0x0019:
        r0 = r3.remaining();
        if (r0 <= r9) goto L_0x0025;
    L_0x001f:
        r0 = r3.get();
        if (r0 != 0) goto L_0x002b;
    L_0x0025:
        r0 = new com.yf.gattlib.b.a;
        r0.<init>(r2, r1);
        goto L_0x000e;
    L_0x002b:
        r4 = r3.get();
        switch(r4) {
            case 2: goto L_0x003f;
            case 3: goto L_0x003f;
            case 4: goto L_0x0032;
            case 5: goto L_0x0032;
            case 6: goto L_0x0060;
            case 7: goto L_0x0060;
            case 8: goto L_0x0032;
            case 9: goto L_0x0078;
            default: goto L_0x0032;
        };
    L_0x0032:
        r4 = r3.position();
        r0 = r0 + r4;
        r0 = r0 + -1;
        r3.position(r0);
    L_0x003c:
        r0 = r1;
    L_0x003d:
        r1 = r0;
        goto L_0x0019;
    L_0x003f:
        if (r0 < r9) goto L_0x003c;
    L_0x0041:
        r4 = "%08x-0000-1000-8000-00805f9b34fb";
        r5 = 1;
        r5 = new java.lang.Object[r5];
        r6 = 0;
        r7 = r3.getShort();
        r7 = java.lang.Short.valueOf(r7);
        r5[r6] = r7;
        r4 = java.lang.String.format(r4, r5);
        r4 = java.util.UUID.fromString(r4);
        r2.add(r4);
        r0 = r0 + -2;
        r0 = (byte) r0;
        goto L_0x003f;
    L_0x0060:
        r4 = 16;
        if (r0 < r4) goto L_0x003c;
    L_0x0064:
        r4 = r3.getLong();
        r6 = r3.getLong();
        r8 = new java.util.UUID;
        r8.<init>(r6, r4);
        r2.add(r8);
        r0 = r0 + -16;
        r0 = (byte) r0;
        goto L_0x0060;
    L_0x0078:
        r0 = r0 + -1;
        r4 = new byte[r0];
        r3.get(r4);
        r0 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x0087 }
        r5 = "utf-8";
        r0.<init>(r4, r5);	 Catch:{ UnsupportedEncodingException -> 0x0087 }
        goto L_0x003d;
    L_0x0087:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = r1;
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yf.gattlib.b.b.a(byte[]):com.yf.gattlib.b.a");
    }
}
