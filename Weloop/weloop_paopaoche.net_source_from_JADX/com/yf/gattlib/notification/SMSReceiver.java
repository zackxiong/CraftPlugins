package com.yf.gattlib.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.util.Log;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
public class SMSReceiver extends BroadcastReceiver {
    private static final String f6283a;

    static {
        f6283a = SMSReceiver.class.getSimpleName();
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED")) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                Object[] objArr = (Object[]) extras.get("pdus");
                if (objArr == null) {
                    ProGuard.m8293a(f6283a, "pdus is null and size = " + extras.size());
                    return;
                }
                SmsMessage[] smsMessageArr = new SmsMessage[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i]);
                }
                for (SmsMessage smsMessage : smsMessageArr) {
                    Log.d(f6283a, smsMessage.getDisplayOriginatingAddress() + "<888>" + smsMessage.getDisplayMessageBody());
                }
                if (smsMessageArr.length > 0 && smsMessageArr[0] != null) {
                    m8152a(context, smsMessageArr[0].getDisplayOriginatingAddress(), smsMessageArr[0].getDisplayMessageBody());
                }
            }
        }
    }

    private void m8152a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            NotificationContent notificationContent = new NotificationContent();
            Object a = com.yf.gattlib.p126k.ProGuard.m8134a(context, str);
            if (TextUtils.isEmpty(a)) {
                notificationContent.f6280c = str;
            } else {
                notificationContent.f6280c = a;
            }
            notificationContent.f6281d = str2;
            notificationContent.f6279b = (byte) 4;
            notificationContent.f6278a = 100002;
            notificationContent.f6282e = "com.yf.sms.dummy";
            ProGuard.m8153a(notificationContent, "posted");
        }
    }
}
