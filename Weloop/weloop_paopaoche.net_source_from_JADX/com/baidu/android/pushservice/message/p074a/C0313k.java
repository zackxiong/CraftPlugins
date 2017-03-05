package com.baidu.android.pushservice.message.p074a;

import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.a.k */
public enum C0313k {
    MSG_TYPE_INVALUD(-1),
    MSG_TYPE_SINGLE_PRIVATE(0),
    MSG_TYPE_MULTI_PRIVATE(1),
    MSG_TYPE_SINGLE_PUBLIC(2),
    MSG_TYPE_MULTI_PUBLIC(3),
    MSG_TYPE_MULTI_PRIVATE_NOTIFICATION(5),
    MSG_TYPE_PRIVATE_MESSAGE(6),
    MSG_TYPE_RICH_MEDIA(7),
    MSG_TYPE_BAIDU_SUPPER(10),
    MSG_TYPE_ADVERTISE(11);
    
    private int f3358k;

    private C0313k(int i) {
        this.f3358k = i;
    }

    public static C0313k m5044a(int i) {
        switch (i) {
            case ProGuard.styleable.View_android_theme /*0*/:
                return MSG_TYPE_SINGLE_PRIVATE;
            case ProGuard.styleable.View_android_focusable /*1*/:
                return MSG_TYPE_MULTI_PRIVATE;
            case ProGuard.styleable.View_paddingStart /*2*/:
                return MSG_TYPE_SINGLE_PUBLIC;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return MSG_TYPE_MULTI_PUBLIC;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                return MSG_TYPE_MULTI_PRIVATE_NOTIFICATION;
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return MSG_TYPE_PRIVATE_MESSAGE;
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return MSG_TYPE_RICH_MEDIA;
            case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                return MSG_TYPE_BAIDU_SUPPER;
            case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                return MSG_TYPE_ADVERTISE;
            default:
                return MSG_TYPE_INVALUD;
        }
    }

    public int m5045a() {
        return this.f3358k;
    }
}
