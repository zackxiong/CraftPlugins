package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.text.TextUtils;
import com.yf.gattlib.p118d.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ak */
public class ak extends ProGuard {
    private BluetoothDevice f8210b;
    private ProGuard f8211c;

    public ak() {
        this.f8211c = new al(this);
    }

    public static void m10203a(Activity activity, BluetoothDevice bluetoothDevice) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("device", bluetoothDevice);
        DialogFragment akVar = new ak();
        akVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(akVar, activity.getFragmentManager(), "connecting");
    }

    protected void m10204a(Dialog dialog) {
        super.m10199a(dialog);
        setCancelable(true);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8210b = (BluetoothDevice) getArguments().getParcelable("device");
        if (this.f8210b == null || com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10723b(this.f8210b)) {
            m10167b();
        }
        String a = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10713a(this.f8210b.getAddress());
        if (TextUtils.isEmpty(a)) {
            a = this.f8210b.getName();
        }
        com.yf.smart.weloopx.p146c.ProGuard a2 = com.yf.smart.weloopx.p146c.ProGuard.m10901a(com.yf.smart.weloopx.p146c.ProGuard.m10914e(a));
        String[] split = a.split(" ");
        m10200c(getString(R.string.connecting_to_device_detial, new Object[]{a2.m10903b() + " " + split[split.length - 1]}));
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10721b();
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10718a(this.f8211c);
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10717a(this.f8210b);
    }

    public void onDestroy() {
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10722b(this.f8211c);
        if (!com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
            com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10721b();
        }
        super.onDestroy();
    }
}
