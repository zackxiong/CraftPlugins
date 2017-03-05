package com.yf.smart.weloopx.android.p142a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.yf.smart.weloopx.android.a.c */
public class ProGuard {
    private Method f7122a;
    private Method f7123b;
    private Method f7124c;
    private Service f7125d;

    public ProGuard(Service service) {
        this.f7125d = service;
        try {
            this.f7123b = service.getClass().getMethod("startForeground", new Class[]{Integer.TYPE, Notification.class});
            this.f7124c = service.getClass().getMethod("stopForeground", new Class[]{Boolean.TYPE});
        } catch (NoSuchMethodException e) {
            this.f7124c = null;
            this.f7123b = null;
            try {
                this.f7122a = service.getClass().getMethod("setForeground", new Class[]{Boolean.TYPE});
            } catch (NoSuchMethodException e2) {
            }
        }
    }

    private void m9030a(Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(this.f7125d, objArr);
            } catch (InvocationTargetException e) {
            } catch (IllegalAccessException e2) {
            }
        }
    }

    public void m9032a(NotificationManager notificationManager, int i, Notification notification) {
        Object[] objArr = new Object[2];
        if (this.f7123b != null) {
            objArr[0] = Integer.valueOf(i);
            objArr[1] = notification;
            m9030a(this.f7123b, objArr);
            return;
        }
        objArr[0] = Boolean.TRUE;
        m9030a(this.f7122a, objArr);
        notificationManager.notify(i, notification);
    }

    public void m9031a(NotificationManager notificationManager, int i) {
        Object[] objArr = new Object[1];
        if (this.f7124c != null) {
            objArr[0] = Boolean.TRUE;
            m9030a(this.f7124c, objArr);
            return;
        }
        notificationManager.cancel(i);
        objArr[0] = Boolean.FALSE;
        m9030a(this.f7122a, objArr);
    }
}
