package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.az */
public class az extends ProGuard {
    public static DialogFragment m10242a(FragmentManager fragmentManager, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("msg", str);
        DialogFragment azVar = new az();
        azVar.setArguments(bundle);
        ProGuard.m10544a(azVar, fragmentManager, "no_action");
        return azVar;
    }

    public static DialogFragment m10243a(FragmentManager fragmentManager, String str, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("msg", str);
        bundle.putBoolean("cancelable", z);
        DialogFragment azVar = new az();
        azVar.setArguments(bundle);
        ProGuard.m10544a(azVar, fragmentManager, "no_action");
        return azVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10200c(getArguments().getString("msg"));
    }
}
