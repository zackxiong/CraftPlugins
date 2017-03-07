package com.baidu.android.pushservice.message;

import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.message.g */
public enum C0321g {
    TYPE_INVALUE(-1),
    MSG_ID_HANDSHAKE(1),
    MSG_ID_HEARTBEAT_SERVER(2),
    MSG_ID_HEARTBEAT_CLIENT(4),
    MSG_ID_PUSH_MSG(3),
    MSG_ID_TINY_HEARTBEAT_CLIENT(5),
    MSG_ID_TINY_HEARTBEAT_SERVER(6);
    
    private int f3383h;

    private C0321g(int i) {
        this.f3383h = i;
    }

    public static C0321g m5073a(int i) {
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                return MSG_ID_HANDSHAKE;
            case ProGuard.styleable.View_paddingStart /*2*/:
                return MSG_ID_HEARTBEAT_SERVER;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return MSG_ID_PUSH_MSG;
            case ProGuard.styleable.View_theme /*4*/:
                return MSG_ID_HEARTBEAT_CLIENT;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                return MSG_ID_TINY_HEARTBEAT_CLIENT;
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return MSG_ID_TINY_HEARTBEAT_SERVER;
            default:
                return TYPE_INVALUE;
        }
    }

    public int m5074a() {
        return this.f3383h;
    }
}
