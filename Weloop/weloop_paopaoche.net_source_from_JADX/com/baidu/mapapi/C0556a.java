package com.baidu.mapapi;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.mapapi.utils.PermissionCheck;
import com.baidu.mapapi.utils.PermissionCheck.C0555c;
import com.baidu.mapapi.utils.PermissionCheck.C0584b;
import com.baidu.platform.comapi.C0598a;
import com.baidu.platform.comapi.p088c.C0606b;
import com.baidu.platform.comapi.p088c.C0607c;
import com.baidu.platform.comjni.engine.AppEngine;
import com.baidu.platform.comjni.engine.C0642a;
import com.baidu.vi.C0651b;
import com.baidu.vi.VMsg;

/* renamed from: com.baidu.mapapi.a */
public class C0556a implements C0555c {
    private static final String f4191a;
    private static C0556a f4192f;
    private Context f4193b;
    private Handler f4194c;
    private C0598a f4195d;
    private int f4196e;

    static {
        f4191a = C0556a.class.getSimpleName();
        try {
            System.loadLibrary("BaiduMapSDK_v3_4_0_9");
            AppEngine.InitClass();
        } catch (Error e) {
            System.out.println("so Failed to load.");
        }
    }

    private C0556a() {
    }

    public static C0556a m6153a() {
        if (f4192f == null) {
            f4192f = new C0556a();
        }
        return f4192f;
    }

    private void m6154f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        if (this.f4193b != null && this.f4195d != null) {
            this.f4193b.registerReceiver(this.f4195d, intentFilter);
        }
    }

    private void m6155g() {
        if (this.f4195d != null && this.f4193b != null) {
            this.f4193b.unregisterReceiver(this.f4195d);
        }
    }

    public void m6156a(Context context) {
        this.f4193b = context;
    }

    public void m6157a(Message message) {
        if (message.what == 2012) {
            Intent intent = new Intent(SDKInitializer.SDK_BROADTCAST_ACTION_STRING_PERMISSION_CHECK_ERROR);
            intent.putExtra(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, message.arg1);
            this.f4193b.sendBroadcast(intent);
            return;
        }
        if (message.arg2 == 3) {
            this.f4193b.sendBroadcast(new Intent(SDKInitializer.SDK_BROADCAST_ACTION_STRING_NETWORK_ERROR));
        }
        if (message.arg2 == 2 || message.arg2 == 404 || message.arg2 == 5 || message.arg2 == 8) {
            this.f4193b.sendBroadcast(new Intent(SDKInitializer.SDK_BROADCAST_ACTION_STRING_NETWORK_ERROR));
        }
    }

    public void m6158a(C0584b c0584b) {
        if (c0584b != null) {
            if (!(this.f4194c == null || c0584b.f4605a == 0)) {
                Message.obtain(this.f4194c, 2012, c0584b.f4605a, c0584b.f4605a, null).sendToTarget();
            }
            if (c0584b.f4605a == 0) {
                C0607c.f4712F = c0584b.f4609e;
                C0607c.m6471a(c0584b.f4606b, c0584b.f4607c);
                return;
            }
            Log.e("baidumapsdk", "Authentication Error " + c0584b.toString());
        }
    }

    public void m6159b() {
        if (this.f4196e == 0) {
            if (this.f4193b == null) {
                throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
            }
            C0651b.m6687a(this.f4193b);
            VMsg.init();
            AppEngine.InitEngine(this.f4193b, C0607c.m6469a());
            AppEngine.StartSocketProc();
            this.f4195d = new C0598a();
            m6154f();
            C0606b.m6465a(this.f4193b);
        }
        this.f4196e++;
    }

    boolean m6160c() {
        if (this.f4193b == null) {
            throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
        }
        C0642a.m6620a(LightAppTableDefine.Msg_Need_Clean_COUNT, this.f4194c);
        this.f4194c = new C0557b(this);
        C0607c.m6474b(this.f4193b);
        C0607c.m6476c(this.f4193b);
        C0607c.m6473b();
        C0607c.m6477d();
        PermissionCheck.init(this.f4193b);
        PermissionCheck.setPermissionCheckResultListener(this);
        PermissionCheck.permissionCheck();
        return true;
    }

    public void m6161d() {
        this.f4196e--;
        if (this.f4196e == 0) {
            m6155g();
            VMsg.destroy();
            C0642a.m6618a();
            AppEngine.UnInitEngine();
        }
    }

    public Context m6162e() {
        if (this.f4193b != null) {
            return this.f4193b;
        }
        throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
    }
}
