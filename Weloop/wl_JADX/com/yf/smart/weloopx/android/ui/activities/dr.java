package com.yf.smart.weloopx.android.ui.activities;

import android.util.Log;
import android.widget.Toast;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class dr implements Runnable {
    final /* synthetic */ int f7923a;
    final /* synthetic */ MainActivity f7924b;

    dr(MainActivity mainActivity, int i) {
        this.f7924b = mainActivity;
        this.f7923a = i;
    }

    public void run() {
        try {
            Toast makeText = Toast.makeText(this.f7924b, this.f7924b.getString(this.f7923a), 0);
            makeText.setGravity(17, 0, 0);
            makeText.show();
        } catch (Throwable th) {
            ProGuard.m8245a(Log.getStackTraceString(th));
        }
    }
}
