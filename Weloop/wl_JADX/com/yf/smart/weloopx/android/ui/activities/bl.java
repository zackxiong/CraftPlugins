package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.android.ui.p139c.ak;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bl implements OnItemClickListener {
    final /* synthetic */ ProGuard f7836a;

    bl(ProGuard proGuard) {
        this.f7836a = proGuard;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ProGuard.m8293a(this.f7836a.f8153e, "you click on item number: " + j);
        this.f7836a.f8145U = (com.yf.gattlib.p127m.p128a.ProGuard) view.getTag();
        this.f7836a.f8146V = this.f7836a.f8145U.f6258a.getAddress();
        this.f7836a.f8147W = this.f7836a.m10004a(this.f7836a.f8145U);
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
        if (this.f7836a.m10025b(this.f7836a.f8145U)) {
            com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10721b();
        } else if (!TextUtils.isEmpty(this.f7836a.f8147W)) {
            if (TextUtils.isEmpty(com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10713a(this.f7836a.f8146V))) {
                String[] split = this.f7836a.f8147W.split(" ");
                Object obj = split[split.length - 1];
                ah.m10188a(this.f7836a.getChildFragmentManager(), "onConnect", this.f7836a.m9820a(R.string.connect_device_confirm_msg, obj), R.layout.confirm_alert_dialog);
                return;
            }
            ProGuard.m8245a("connect device name " + this.f7836a.f8147W);
            com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10720a(this.f7836a.f8146V, this.f7836a.f8147W, "");
            ak.m10203a(this.f7836a.getActivity(), this.f7836a.f8145U.f6258a);
        }
    }
}
