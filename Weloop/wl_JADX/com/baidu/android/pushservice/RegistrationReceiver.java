package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0207g;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p069c.C0210j;
import com.baidu.android.pushservice.p069c.C0212l;

@SuppressLint({"WorldReadableFiles"})
public class RegistrationReceiver extends BroadcastReceiver {
    private static final String TAG = "RegistrationReceiver";

    private static void handleRegisterLappSync(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("r_sync_from"))) {
            C0207g.m4472a(context).m4470b();
        }
    }

    private static void handleRegisterSDKSync(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("r_sync_sdk_from"))) {
            C0210j.m4473a(context).m4470b();
        }
    }

    private static void handleRegisterSync(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("r_sync_from");
        if (!context.getPackageName().equals(stringExtra)) {
            String stringExtra2 = intent.getStringExtra("r_sync_rdata");
            if (stringExtra2 != null) {
                if (C0192a.m4341b()) {
                    Log.i(TAG, "handleRegisterSync rdatav1: " + stringExtra2 + " from: " + stringExtra);
                }
                C0201b.m4446a(context).m4455a(context, "r", stringExtra2);
            }
            String stringExtra3 = intent.getStringExtra("r_sync_rdata_v2");
            if (stringExtra3 != null) {
                if (C0192a.m4341b()) {
                    Log.i(TAG, "handleRegisterSync rdataV2: " + stringExtra2 + " from: " + stringExtra);
                }
                C0201b.m4446a(context).m4455a(context, "r_v2", stringExtra3);
            }
        }
    }

    private static void handleRegisterWebSync(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("r_sync_from"))) {
            C0212l.m4479a(context).m4470b();
        }
    }

    static void packageUninstalled(Context context, C0208h c0208h) {
        Intent intent = new Intent();
        intent.setAction(PushConstants.ACTION_METHOD);
        intent.putExtra(PushConstants.EXTRA_METHOD, "com.baidu.android.pushservice.action.UNBINDAPP");
        intent.putExtra("package_name", c0208h.m4444c());
        intent.putExtra(PushConstants.EXTRA_APP_ID, c0208h.m4439a());
        intent.putExtra(PushConstants.EXTRA_USER_ID, c0208h.f2984e);
        C0192a.m4337a(context, intent);
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
            action = intent.getData().getSchemeSpecificPart();
            boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            Log.i(TAG, "start for ACTION_PACKAGE_REMOVED\uff0creplacing\uff1a" + booleanExtra + " ,packageName: " + action);
            if (!booleanExtra) {
                PushSettings.m4208a(context, action);
            }
            C0208h a = C0201b.m4446a(context).m4452a(action);
            if (booleanExtra || a == null || context.getPackageName().equals(a.m4444c())) {
                if (C0192a.m4341b()) {
                    Log.i(TAG, "replacing or not registered push client : " + action);
                }
                C0192a.m4337a(context, intent);
                return;
            }
            if (C0192a.m4341b()) {
                Log.i(TAG, "unregister registered push client : " + action);
            }
            packageUninstalled(context, a);
        } else if (PushLightapp.ACTION_REGISTER_SYNC.equals(action)) {
            new Thread(new ab(this, intent, context)).start();
        } else {
            C0192a.m4337a(context, intent);
        }
    }
}
