package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yf.gattlib.view.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ae */
public class ae extends ProGuard {
    private int f8191a;
    private int f8192b;
    private int f8193c;
    private int f8194d;
    private int f8195e;

    protected View m10185a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.cofirm_dialog, null);
        ((TextView) inflate.findViewById(R.id.tv_content)).setText(this.f8195e);
        inflate.findViewById(R.id.btn_ok).setOnClickListener(new af(this));
        inflate.findViewById(R.id.btn_cancel).setOnClickListener(new ag(this));
        return inflate;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        this.f8195e = arguments.getInt("KEY_CONTENT_ID", -1);
        this.f8191a = arguments.getInt("KEY_EVENT_SOURCE_ID", 36864);
        this.f8192b = arguments.getInt("KEY_EVENT_CANCEL", 36865);
        this.f8193c = arguments.getInt("KEY_EVENT_BTN_OK", 36866);
        this.f8194d = arguments.getInt("KEY_EVENT_CANCEL", 36867);
        return super.onCreateDialog(bundle);
    }

    public void onCancel(DialogInterface dialogInterface) {
        m8505a(new ProGuard(this.f8191a, this.f8192b));
    }

    public static ae m10182a(int i) {
        ae aeVar = new ae();
        Bundle bundle = new Bundle();
        bundle.putInt("KEY_CONTENT_ID", i);
        aeVar.setArguments(bundle);
        return aeVar;
    }
}
