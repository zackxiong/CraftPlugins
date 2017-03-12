package cn.sharesdk.framework.authorize;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0071e;

/* renamed from: cn.sharesdk.framework.authorize.c */
class C0012c implements OnClickListener {
    final /* synthetic */ RegisterView f1932a;

    C0012c(RegisterView registerView) {
        this.f1932a = registerView;
    }

    public void onClick(View view) {
        try {
            String str = "android.intent.action.VIEW";
            view.getContext().startActivity(new Intent(str, Uri.parse(view.getResources().getString(C0064R.getStringRes(view.getContext(), "website")))));
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
    }
}
