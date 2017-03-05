package com.yf.lib.squareup.otto;

import android.os.Looper;

/* renamed from: com.yf.lib.squareup.otto.m */
final class ProGuard implements ProGuard {
    ProGuard() {
    }

    public void m8629a(ProGuard proGuard) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Event bus " + proGuard + " accessed from non-main thread " + Looper.myLooper());
        }
    }
}
