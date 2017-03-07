package com.baidu.location;

import android.os.Handler;
import android.os.Message;
import uk.co.chrisjenx.calligraphy.ProGuard;

class aa implements C0452e {
    private static aa f3982a;
    private C0483U f3983Y;
    private Handler f3984Z;

    /* renamed from: com.baidu.location.aa.a */
    public class C0499a extends Handler {
        final /* synthetic */ aa f3981a;

        public C0499a(aa aaVar) {
            this.f3981a = aaVar;
        }

        public void handleMessage(Message message) {
            if (C0532n.gR) {
                switch (message.what) {
                    case ProGuard.styleable.Theme_textColorAlertDialogListItem /*92*/:
                        this.f3981a.m5829a();
                        break;
                }
                super.handleMessage(message);
            }
        }
    }

    static {
        f3982a = null;
    }

    private aa() {
        this.f3983Y = null;
        this.f3984Z = null;
        this.f3984Z = new C0499a(this);
    }

    public static aa m5828I() {
        if (f3982a == null) {
            f3982a = new aa();
        }
        return f3982a;
    }

    private void m5829a() {
        try {
            if (C0526k.gx && !C0465K.aL) {
            }
        } catch (Exception e) {
        }
    }

    public void m5831H() {
        if (this.f3983Y != null) {
            this.f3983Y.m5761v();
        }
        this.f3983Y = null;
    }

    public Handler m5832J() {
        return this.f3984Z;
    }

    public void m5833L() {
    }
}
