package com.baidu.android.pushservice.richmedia;

import android.widget.Toast;

/* renamed from: com.baidu.android.pushservice.richmedia.i */
class C0341i implements Runnable {
    final /* synthetic */ C0340h f3451a;

    C0341i(C0340h c0340h) {
        this.f3451a = c0340h;
    }

    public void run() {
        Toast makeText = Toast.makeText(this.f3451a.f3450a, "\u4e0b\u8f7d\u5bcc\u5a92\u4f53\u5931\u8d25", 1);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }
}
