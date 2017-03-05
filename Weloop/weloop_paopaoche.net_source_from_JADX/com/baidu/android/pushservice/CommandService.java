package com.baidu.android.pushservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.List;

public class CommandService extends Service {
    public String m4192a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Intent intent = new Intent(str2);
        intent.setPackage(str);
        List queryBroadcastReceivers = getPackageManager().queryBroadcastReceivers(intent, 544);
        return (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) ? null : ((ResolveInfo) queryBroadcastReceivers.get(0)).activityInfo.name;
    }

    public void m4193a(Intent intent) {
        String a = m4192a(getPackageName(), intent.getAction());
        if (TextUtils.isEmpty(a)) {
            Log.i("CommandService", " reflectReceiver error: receiver for: " + intent.getAction() + " not found, package: " + getPackageName());
            intent.setPackage(getPackageName());
            sendBroadcast(intent);
            return;
        }
        try {
            Class cls = Class.forName(a);
            Object newInstance = cls.getConstructor(null).newInstance(null);
            String[] strArr = new String[]{"android.content.Context", "android.content.Intent"};
            Method method = cls.getMethod("onReceive", new Class[]{Context.class, Intent.class});
            intent.setClassName(getPackageName(), a);
            method.invoke(newInstance, new Object[]{getApplicationContext(), intent});
        } catch (Exception e) {
            Log.i("CommandService", "reflect e: " + e);
        }
    }

    public IBinder onBind(Intent intent) {
        Log.d("CommandService", "onBind initSuc: ");
        return null;
    }

    public void onCreate() {
        Log.d("CommandService", "-- CommandService oncreate -- ");
        super.onCreate();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            stopSelf();
        } else {
            Object obj = null;
            if (intent.hasExtra("command_type")) {
                obj = intent.getStringExtra("command_type");
                Log.d("CommandService", "-- command_type -- " + obj);
            }
            if (!TextUtils.isEmpty(obj) && obj.equals("reflect_receiver")) {
                m4193a(intent);
            }
            stopSelf();
        }
        return 2;
    }

    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
