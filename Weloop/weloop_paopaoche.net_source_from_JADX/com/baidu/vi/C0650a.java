package com.baidu.vi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.baidu.vi.a */
final class C0650a extends BroadcastReceiver {
    C0650a() {
    }

    public void onReceive(Context context, Intent intent) {
        VDeviceAPI.onNetworkStateChanged();
    }
}
