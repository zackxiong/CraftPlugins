package com.yf.lib.bt.server.ancs;

import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class AncsEvent extends ProGuard {
    public final NotificationContent content;
    public final byte flag;

    public AncsEvent(NotificationContent notificationContent, byte b) {
        this.content = notificationContent;
        this.flag = b;
    }
}
