package com.yf.smart.weloopx.android.ui.p139c;

import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yf.gattlib.p108a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.as */
public class as extends ProGuard {
    public static boolean f8223b;

    static {
        f8223b = true;
    }

    public static boolean m10228a(FragmentManager fragmentManager, boolean z) {
        boolean z2;
        boolean z3;
        String str;
        f8223b = z;
        String f = ProGuard.m7368a().m7376f().m8081k().m7823f();
        boolean z4 = "WN02B01".equalsIgnoreCase(f) || "WeLoop".equalsIgnoreCase(f) || "Tommy".equalsIgnoreCase(f);
        if ("BN01L02".equalsIgnoreCase(f) || "Now".equalsIgnoreCase(f)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ("BN01SH02".equalsIgnoreCase(f) || "NowC".equalsIgnoreCase(f) || "Now Classic".equalsIgnoreCase(f)) {
            z3 = true;
        } else {
            z3 = false;
        }
        String str2 = "";
        String str3;
        if (z4) {
            str3 = "V3.38";
            str = "WN02B01";
        } else if (z2) {
            str3 = "V2.00";
            str = "BN01L02";
        } else if (z3) {
            str3 = "V2.00";
            str = "BN01SH02";
        } else {
            str3 = str2;
            str = f;
        }
        Object e = ProGuard.m7368a().m7376f().m8081k().m7822e();
        if (TextUtils.isEmpty(e) || e.replace(" ", "").toUpperCase().compareTo(r0) > 0) {
            return false;
        }
        DialogFragment asVar = new as();
        Bundle bundle = new Bundle();
        bundle.putString("1", str);
        asVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(asVar, fragmentManager, "upgrade_tip");
        return true;
    }

    protected View m10229a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.firmware_is_old_tip, null);
        TextView textView = (TextView) inflate.findViewById(R.id.ad_tv_title);
        CharSequence string = getArguments().getString("1");
        if (!TextUtils.isEmpty(string)) {
            if ("WN02B01".equals(string)) {
                textView.setText(getString(R.string.watch) + getString(R.string.firmware_is_old));
            } else if ("WN02B01".equals(string) || "WN02B01".equals(string)) {
                textView.setText(getString(R.string.loop) + getString(R.string.firmware_is_old));
            }
        }
        inflate.findViewById(R.id.ad_tv_ok).setOnClickListener(new at(this));
        return inflate;
    }

    public void onResume() {
        super.onResume();
        try {
            getDialog().setOnKeyListener(new au(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
