package com.yf.smart.weloopx.android.ui.p139c;

import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ah */
public class ah extends ProGuard {
    private boolean f8198b;
    private boolean f8199c;
    private TextView f8200d;
    private String f8201e;
    private String f8202f;
    private String f8203g;
    private String f8204h;
    private ProGuard f8205i;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.ah.a */
    public interface ProGuard {
        void m9302a(String str, boolean z);
    }

    public ah() {
        this.f8198b = false;
        this.f8199c = false;
    }

    public static void m10187a(FragmentManager fragmentManager, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("ConfirmFragment", str);
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str2);
        DialogFragment ahVar = new ah();
        ahVar.setArguments(bundle);
        ProGuard.m10544a(ahVar, fragmentManager, "ConfirmFragment");
    }

    public static void m10188a(FragmentManager fragmentManager, String str, String str2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("ConfirmFragment", str);
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str2);
        bundle.putInt("1", i);
        DialogFragment ahVar = new ah();
        ahVar.setArguments(bundle);
        ProGuard.m10544a(ahVar, fragmentManager, "ConfirmFragment");
    }

    public static void m10190a(FragmentManager fragmentManager, String str, String str2, String str3, String str4, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("ConfirmFragment", str);
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str2);
        bundle.putInt("1", i);
        bundle.putString(com.umeng.update.net.ProGuard.f5634c, str3);
        bundle.putString("ok", str4);
        DialogFragment ahVar = new ah();
        ahVar.setArguments(bundle);
        ProGuard.m10544a(ahVar, fragmentManager, "ConfirmFragment");
    }

    public static void m10191a(FragmentManager fragmentManager, String str, String str2, String str3, String str4, int i, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("ConfirmFragment", str);
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str2);
        bundle.putInt("1", i);
        bundle.putString(com.umeng.update.net.ProGuard.f5634c, str3);
        bundle.putString("ok", str4);
        bundle.putBoolean("4", z);
        DialogFragment ahVar = new ah();
        ahVar.setArguments(bundle);
        ProGuard.m10544a(ahVar, fragmentManager, "ConfirmFragment");
    }

    public static void m10189a(FragmentManager fragmentManager, String str, String str2, int i, boolean z, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putString("ConfirmFragment", str);
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str2);
        bundle.putInt("1", i);
        bundle.putBoolean("2", z);
        bundle.putBoolean("3", z2);
        DialogFragment ahVar = new ah();
        ahVar.setArguments(bundle);
        ProGuard.m10544a(ahVar, fragmentManager, "ConfirmFragment");
    }

    protected View m10196a() {
        int i;
        Bundle arguments = getArguments();
        this.f8204h = arguments.getString("ConfirmFragment");
        this.f8201e = arguments.getString(LightAppTableDefine.DB_TABLE_MESSAGE);
        int i2 = arguments.getInt("1", 0);
        if (i2 == 0) {
            i = R.layout.confirm_dialog;
        } else {
            i = i2;
        }
        boolean z = arguments.getBoolean("2", true);
        boolean z2 = arguments.getBoolean("3", true);
        this.f8199c = arguments.getBoolean("4", false);
        com.yf.gattlib.p117p.ProGuard.m8292a("ConfirmFragment  isChangeSwitch = " + this.f8199c);
        if (z || z2) {
            this.f8205i = (ProGuard) m10171c();
        }
        View inflate = getActivity().getLayoutInflater().inflate(i, null);
        TextView textView = (TextView) inflate.findViewById(R.id.rv_tv_sure);
        View findViewById = inflate.findViewById(R.id.cdv_tv_device_name);
        if (textView != null) {
            if (z) {
                this.f8203g = arguments.getString("ok", "\u786e\u8ba4");
                textView.setText(this.f8203g);
                textView.setOnClickListener(new ai(this));
            } else {
                textView.setVisibility(8);
            }
        }
        textView = (TextView) inflate.findViewById(R.id.rv_tv_cancel);
        if (textView != null) {
            if (z2) {
                this.f8202f = arguments.getString(com.umeng.update.net.ProGuard.f5634c, "\u8fd4\u56de");
                textView.setText(this.f8202f);
                textView.setOnClickListener(new aj(this));
            } else if (!z2) {
                textView.setVisibility(8);
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
            }
        }
        if (!(z2 && z)) {
            View findViewById2 = inflate.findViewById(R.id.ad_view_ver_line);
            if (findViewById2 != null) {
                findViewById2.setVisibility(8);
            }
        }
        this.f8200d = (TextView) inflate.findViewById(R.id.rv_tv_msg);
        this.f8200d.setMovementMethod(new ScrollingMovementMethod());
        m10195e();
        return inflate;
    }

    private void m10195e() {
        if (this.f8200d != null) {
            if (this.f8201e == null) {
                this.f8200d.setVisibility(8);
            } else {
                this.f8200d.setText(this.f8201e);
            }
        }
    }

    public void dismiss() {
        super.dismiss();
    }

    public void onStop() {
        super.onStop();
    }

    public void onDetach() {
        super.onDetach();
        if (!this.f8198b && this.f8205i != null) {
            this.f8205i.m9302a(this.f8204h, false);
        }
    }
}
