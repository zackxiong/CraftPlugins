package com.yf.smart.weloopx.android.ui.activities;

import android.widget.Toast;

/* compiled from: ProGuard */
class hf implements Runnable {
    final /* synthetic */ int f8095a;
    final /* synthetic */ UploadLogActivity f8096b;

    hf(UploadLogActivity uploadLogActivity, int i) {
        this.f8096b = uploadLogActivity;
        this.f8095a = i;
    }

    public void run() {
        Toast.makeText(this.f8096b, this.f8096b.getResources().getString(this.f8095a), 1).show();
    }
}
