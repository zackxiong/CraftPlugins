package com.yf.gattlib.client.p113b;

import android.bluetooth.BluetoothAdapter;
import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.az */
public class az extends aw {
    protected byte[] m7575c() {
        return ProGuard.m7994a("H2DR", 146, 16, 0);
    }

    protected byte[] m7576q() {
        Object obj = new byte[16];
        int length = obj.length - 1;
        Object bytes = com.yf.gattlib.p117p.ProGuard.m8262a(BluetoothAdapter.getDefaultAdapter().getName(), length, com.yf.gattlib.p129n.ProGuard.f6271a).getBytes(com.yf.gattlib.p129n.ProGuard.f6271a);
        if (bytes.length < length) {
            length = bytes.length;
        }
        System.arraycopy(bytes, 0, obj, 0, length);
        com.yf.gattlib.p117p.ProGuard.m8319a(obj);
        return obj;
    }
}
