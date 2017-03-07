package com.yf.smart.weloopx.android.ui.activities;

import android.widget.TextView;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bg implements Runnable {
    final /* synthetic */ ProGuard f7831a;

    bg(ProGuard proGuard) {
        this.f7831a = proGuard;
    }

    public void run() {
        int i = R.drawable.option_update;
        hg hgVar = (hg) this.f7831a.m9823c();
        this.f7831a.f8151a = hgVar.m9441i();
        if (this.f7831a.f8151a == null) {
            hgVar = (hg) this.f7831a.m9823c();
            this.f7831a.f8151a = hgVar.m9441i();
        }
        if (this.f7831a.f8151a != null) {
            Object obj = this.f7831a.f8153e + " \u663e\u793a\u624b\u8868\u6709\u56fa\u4ef6\u66f4\u65b0 canUpgrade = " + this.f7831a.f8151a.m2794d();
            ProGuard.m8292a((String) obj);
            ProGuard.m8245a(obj);
        }
        try {
            TextView textView = (TextView) this.f7831a.f8154f.findViewById(R.id.option_upgrade);
            if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o() && this.f7831a.f8151a.m2794d()) {
                i = R.drawable.update_point;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(null, this.f7831a.getResources().getDrawable(i), null, null);
        } catch (Exception e) {
            obj = this.f7831a.f8153e + " \u624b\u8868\u6709\u56fa\u4ef6\u66f4\u65b0\u51fa\u9519\u4e86 = " + e.getMessage();
            ProGuard.m8292a((String) obj);
            ProGuard.m8245a(obj);
        }
    }
}
