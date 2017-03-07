package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.util.Log;
import com.yf.gattlib.client.p113b.ah;
import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cc */
public class cc extends ProGuard {
    private byte f8332b;
    private ProGuard f8333c;
    private ProGuard f8334d;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.cc.a */
    public interface ProGuard {
        void m9956a(boolean z, byte b);
    }

    public cc() {
        this.f8334d = new cd(this);
    }

    public static void m10353a(FragmentManager fragmentManager, byte b) {
        Bundle bundle = new Bundle();
        bundle.putByte("reversal", b);
        DialogFragment ccVar = new cc();
        ccVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(ccVar, fragmentManager, "reversal");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8333c = (ProGuard) m10171c();
        this.f8332b = getArguments().getByte("reversal", (byte) 0).byteValue();
        Log.e("BaseDialogFragment", "onAttach");
        m10355e();
    }

    private void m10355e() {
        m10201d(getString(R.string.synchronizing));
        new ah(this.f8332b).m7492b(this.f8334d);
    }
}
