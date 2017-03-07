package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.widget.OptionToggleButton;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
class av implements Runnable {
    final /* synthetic */ int f7816a;
    final /* synthetic */ au f7817b;

    av(au auVar, int i) {
        this.f7817b = auVar;
        this.f7816a = i;
    }

    public void run() {
        boolean z = true;
        switch (this.f7816a) {
            case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                this.f7817b.f7815a.f8164p.setText(com.yf.smart.weloopx.p146c.ProGuard.m10906a(this.f7817b.f7815a.getActivity(), this.f7817b.f7815a.f8130F.m7849b()));
            case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                this.f7817b.f7815a.f8163o.setText(com.yf.smart.weloopx.p146c.ProGuard.m10906a(this.f7817b.f7815a.getActivity(), this.f7817b.f7815a.f8130F.m7854c()));
            case ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                this.f7817b.f7815a.f8166r.setCheckedFromCode(this.f7817b.f7815a.f8130F.m7865h());
            case ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                this.f7817b.f7815a.f8165q.setCheckedFromCode(this.f7817b.f7815a.f8130F.m7869l());
            case ProGuard.styleable.Toolbar_collapseContentDescription /*18*/:
                this.f7817b.f7815a.f8167s.setCheckedFromCode(this.f7817b.f7815a.f8130F.m7861d());
            case ProGuard.styleable.Toolbar_navigationIcon /*19*/:
                byte c = this.f7817b.f7815a.f8130F.m7854c();
                int i = c & 15;
                int i2 = c >> 4;
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7817b.f7815a.f8153e + " \u53d1\u51fa\u901a\u77e5\u4e4b\u540e motionMode = " + c + ", \u7ffb\u8155\u4eae\u5c4f = " + i + ", \u9707\u52a8\u5f3a\u5ea6 = " + i2);
                if (this.f7817b.f7815a.m10051f()) {
                    boolean z2;
                    OptionToggleButton m = this.f7817b.f7815a.f8169u;
                    if (i2 == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    m.setCheckedFromCode(z2);
                    OptionToggleButton n = this.f7817b.f7815a.f8168t;
                    if (i != 1) {
                        z = false;
                    }
                    n.setCheckedFromCode(z);
                    return;
                }
                OptionToggleButton n2 = this.f7817b.f7815a.f8168t;
                if (c != (byte) 1) {
                    z = false;
                }
                n2.setCheckedFromCode(z);
            case ProGuard.styleable.Toolbar_navigationContentDescription /*20*/:
                this.f7817b.f7815a.f8170v.setCheckedFromCode(this.f7817b.f7815a.f8130F.m7862e());
                this.f7817b.f7815a.m10041e();
            default:
        }
    }
}
