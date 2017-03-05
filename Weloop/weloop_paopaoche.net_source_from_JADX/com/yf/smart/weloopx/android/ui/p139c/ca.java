package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import com.yf.gattlib.client.p113b.ag;
import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ca */
public class ca extends ProGuard {
    private ProGuard f8328b;
    private boolean f8329c;
    private ProGuard f8330d;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.ca.a */
    public interface ProGuard {
        void m9520a(boolean z, boolean z2);
    }

    public ca() {
        this.f8330d = new cb(this);
    }

    public static void m10346a(FragmentManager fragmentManager, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("recovery", z);
        DialogFragment caVar = new ca();
        caVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(caVar, fragmentManager, "restart");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8328b = (ProGuard) m10171c();
        this.f8329c = getArguments().getBoolean("recovery", false);
        if (this.f8329c) {
            m10350f();
        } else {
            m10349e();
        }
    }

    private void m10349e() {
        m10201d(getString(R.string.restart_device));
        new ag((byte) 0).m7492b(this.f8330d);
    }

    private void m10350f() {
        m10201d(getString(R.string.recover_device));
        new ag((byte) 1).m7492b(this.f8330d);
    }
}
