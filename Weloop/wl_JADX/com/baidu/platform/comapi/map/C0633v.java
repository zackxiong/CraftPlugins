package com.baidu.platform.comapi.map;

import android.os.Message;
import com.tencent.mm.sdk.modelpay.PayReq.Options;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.platform.comapi.map.v */
class C0633v {
    private static final String f4853a;
    private C0576u f4854b;

    static {
        f4853a = C0633v.class.getSimpleName();
    }

    C0633v() {
    }

    void m6606a(Message message) {
        if (message.what == 65289) {
            switch (message.arg1) {
                case Options.INVALID_FLAGS /*-1*/:
                case ProGuard.styleable.View_android_theme /*0*/:
                case ProGuard.styleable.View_android_focusable /*1*/:
                case ProGuard.styleable.View_paddingStart /*2*/:
                case ProGuard.styleable.View_paddingEnd /*3*/:
                case ProGuard.styleable.View_theme /*4*/:
                case ProGuard.styleable.View_backgroundTint /*5*/:
                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                case ProGuard.styleable.Theme_editTextStyle /*101*/:
                case ProGuard.styleable.Theme_radioButtonStyle /*102*/:
                    if (this.f4854b != null) {
                        this.f4854b.m6353a(message.arg1, message.arg2);
                    }
                default:
            }
        }
    }

    void m6607a(C0576u c0576u) {
        this.f4854b = c0576u;
    }

    void m6608b(C0576u c0576u) {
        this.f4854b = null;
    }
}
