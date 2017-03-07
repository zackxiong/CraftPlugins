package com.yf.gattlib.client.p111a.p112a;

import com.yf.gattlib.db.MessageConfig;

/* renamed from: com.yf.gattlib.client.a.a.a */
public class ProGuard implements ProGuard {
    public byte[] m7467a() {
        byte[] bArr = new byte[]{com.yf.gattlib.client.p111a.ProGuard.f5719a, com.yf.gattlib.client.p111a.ProGuard.f5719a, com.yf.gattlib.client.p111a.ProGuard.f5719a, com.yf.gattlib.client.p111a.ProGuard.f5719a, com.yf.gattlib.client.p111a.ProGuard.f5719a, com.yf.gattlib.client.p111a.ProGuard.f5719a};
        int i = 0;
        for (MessageConfig messageConfig : MessageConfig.getAllMessageConfig()) {
            int i2;
            if (messageConfig.state != 1 || i >= bArr.length) {
                i2 = i;
            } else {
                bArr[i] = messageConfig.msgId;
                i2 = i + 1;
            }
            i = i2;
        }
        return bArr;
    }
}
