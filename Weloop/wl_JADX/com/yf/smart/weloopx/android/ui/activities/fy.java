package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class fy implements OnClickListener {
    final /* synthetic */ RunningInfoDetailsActivity f8053a;

    fy(RunningInfoDetailsActivity runningInfoDetailsActivity) {
        this.f8053a = runningInfoDetailsActivity;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_friend:
                this.f8053a.f7589i.m11303a(this.f8053a, this.f8053a.f7587g, true, this.f8053a.getString(R.string.wehchat_msg_start) + this.f8053a.f7588h + this.f8053a.getString(R.string.wechat_msg_end), "");
                this.f8053a.f7590j.dismiss();
            case R.id.btn_circle:
                this.f8053a.f7589i.m11303a(this.f8053a, this.f8053a.f7587g, false, this.f8053a.getString(R.string.wehchat_msg_start) + this.f8053a.f7588h + this.f8053a.getString(R.string.wechat_msg_end), "");
                this.f8053a.f7590j.dismiss();
            default:
        }
    }
}
