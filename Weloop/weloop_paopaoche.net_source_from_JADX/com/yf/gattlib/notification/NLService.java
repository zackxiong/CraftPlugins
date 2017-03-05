package com.yf.gattlib.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import java.util.Arrays;

/* compiled from: ProGuard */
public class NLService extends NotificationListenerService {
    private static final String f6275a;
    private ProGuard f6276b;
    private ProGuard f6277c;

    /* renamed from: com.yf.gattlib.notification.NLService.a */
    private class ProGuard extends BroadcastReceiver {
        final /* synthetic */ NLService f6274a;

        private ProGuard(NLService nLService) {
            this.f6274a = nLService;
        }

        public void onReceive(Context context, Intent intent) {
            if ("com.yf.gattlib.intent.action.NLSERVICE_COMMAND".equals(intent.getAction())) {
                try {
                    this.f6274a.m8146a(context, intent);
                } catch (Exception e) {
                    com.yf.gattlib.p117p.ProGuard.m8301c(NLService.f6275a, "error in nlservice 1");
                }
            }
        }
    }

    static {
        f6275a = NLService.class.getSimpleName();
    }

    public void onCreate() {
        super.onCreate();
        com.yf.gattlib.p117p.ProGuard.m8298b(f6275a, "NLService running...");
        m8150b();
        m8151c();
    }

    private void m8150b() {
        this.f6277c = ProGuard.m8187a();
        this.f6277c.m8194a("NLService");
    }

    private void m8151c() {
        this.f6276b = new ProGuard();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yf.gattlib.intent.action.NLSERVICE_COMMAND");
        com.yf.gattlib.p108a.ProGuard.m7347a().m7359b(this.f6276b, intentFilter);
    }

    public void onDestroy() {
        com.yf.gattlib.p117p.ProGuard.m8293a(f6275a, "onDestroy");
        this.f6277c.m8195b();
        com.yf.gattlib.p108a.ProGuard.m7347a().m7358b(this.f6276b);
        super.onDestroy();
    }

    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        if (this.f6277c.m8194a("NLService")) {
            ProGuard.m8154a(this.f6277c, new ProGuard(statusBarNotification), "posted");
        }
    }

    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
    }

    private void m8147a(Intent intent) {
        com.yf.gattlib.p108a.ProGuard.m7347a().m7360b(intent);
    }

    private void m8148a(Intent intent, Intent intent2) {
        intent2.putExtra("user data 1", intent.getStringExtra("user data 1"));
        intent2.putExtra("user data 2", intent.getByteArrayExtra("user data 2"));
    }

    private void m8146a(Context context, Intent intent) {
        int i = 0;
        CharSequence stringExtra = intent.getStringExtra("callback action");
        if (TextUtils.isEmpty(stringExtra)) {
            String str = "com.yf.gattlib.intent.action.NLSERVICE_RESULT";
        } else {
            CharSequence charSequence = stringExtra;
        }
        String stringExtra2 = intent.getStringExtra("command");
        int intExtra;
        StatusBarNotification[] activeNotifications;
        if ("get notification".equalsIgnoreCase(stringExtra2)) {
            intExtra = intent.getIntExtra("notification uuid", 0);
            com.yf.gattlib.p117p.ProGuard.m8293a(f6275a, "get notification " + intExtra);
            if (intExtra != 0) {
                activeNotifications = getActiveNotifications();
                int length = activeNotifications.length;
                while (i < length) {
                    ProGuard a = this.f6277c.m8190a(new ProGuard(activeNotifications[i]), intExtra);
                    if (ProGuard.m8185a(a)) {
                        i++;
                    } else {
                        com.yf.gattlib.p117p.ProGuard.m8293a(f6275a, "get notification 2: " + intExtra);
                        Intent intent2 = new Intent(str);
                        intent2.putExtra("command", "get notification");
                        intent2.putExtra(LightAppTableDefine.DB_TABLE_NOTIFICATION, a.f6301c);
                        m8148a(intent, intent2);
                        m8147a(intent2);
                        return;
                    }
                }
            }
        } else if ("get all notification".equalsIgnoreCase(stringExtra2)) {
            activeNotifications = getActiveNotifications();
            NotificationContent[] notificationContentArr = new NotificationContent[activeNotifications.length];
            for (StatusBarNotification proGuard : activeNotifications) {
                ProGuard a2 = this.f6277c.m8189a(new ProGuard(proGuard));
                if (!ProGuard.m8185a(a2)) {
                    notificationContentArr[0] = a2.f6301c;
                }
            }
            NotificationContent[] notificationContentArr2 = (NotificationContent[]) Arrays.copyOf(notificationContentArr, 0);
            Intent intent3 = new Intent(str);
            intent3.putExtra("command", "get all notification");
            m8148a(intent, intent3);
            intent3.putExtra("all notification", notificationContentArr2);
            m8147a(intent3);
        } else {
            com.yf.gattlib.p117p.ProGuard.m8298b(f6275a, "Unknown command: " + stringExtra2);
        }
    }
}
