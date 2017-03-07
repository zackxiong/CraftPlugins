package com.yf.smart.weloopx.app;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.baidu.android.pushservice.PushConstants;
import com.yf.smart.weloopx.dist.R;
import org.acra.ACRA;
import org.acra.ReportingInteractionMode;
import org.acra.p158a.ProGuard;

@ProGuard(C = 2131165344, j = "", p = "weizongshang@yftech.com;yuzaixin@yftech.com;yuyonghong@yftech.com;huangxiaojie@yftech.com;503319102@qq.com", r = ReportingInteractionMode.DIALOG, s = 2131165340, u = 17301659, v = 2131165341, w = 2131165342, x = 2131165343)
/* compiled from: ProGuard */
public class WeLoopApplication extends Application {
    public static String f8662a;
    public static String f8663b;

    public void onCreate() {
        super.onCreate();
        com.yf.gattlib.p108a.ProGuard.m7368a().m7369a((Application) this);
        com.yf.smart.weloopx.p149d.ProGuard.m11005a();
        m10649a();
        if (m10651c()) {
            m10650b();
            com.yf.gattlib.p108a.ProGuard.m7368a().m7383m();
        }
    }

    private void m10649a() {
        try {
            Bundle bundle = getPackageManager().getApplicationInfo(getPackageName(), com.umeng.update.util.ProGuard.f5670c).metaData;
            f8662a = bundle.getString("wechat_app_id");
            f8663b = bundle.getString("wechat_app_secret");
        } catch (Throwable e) {
            com.yf.gattlib.p117p.ProGuard.m8294a(PushConstants.EXTRA_APP, e);
        } catch (Throwable e2) {
            com.yf.gattlib.p117p.ProGuard.m8294a(PushConstants.EXTRA_APP, e2);
        }
    }

    private void m10650b() {
        m10653e();
        m10652d();
        m10655g();
        m10654f();
        m10656h();
        com.yf.smart.weloopx.android.p142a.ProGuard.m9026a().m9028b();
    }

    private boolean m10651c() {
        String str = "";
        int myPid = Process.myPid();
        for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                str = runningAppProcessInfo.processName;
                Log.d("WeLoopApplication", "currentProcName: " + str);
                if (str.contains(":")) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private void m10652d() {
        com.yf.smart.weloopx.p143f.ProGuard.m11270a(getCacheDir().getAbsolutePath(), 10485760);
        com.yf.smart.weloopx.p143f.ProGuard.m11185a(this);
    }

    private void m10653e() {
        ACRA.init(this);
        com.yf.gattlib.p117p.ProGuard.m8291a(com.yf.gattlib.p117p.ProGuard.m8226b(this) == 1 ? 6 : 2);
        com.yf.gattlib.p117p.ProGuard.m8244a(new com.yf.smart.weloopx.p150e.ProGuard());
        com.yf.gattlib.p117p.ProGuard.m8246a("weloopx.txt");
        com.yf.gattlib.p117p.ProGuard.m8249c();
    }

    private void m10654f() {
        com.yf.gattlib.p108a.ProGuard.m7368a().m7370a(new com.yf.smart.weloopx.p138a.ProGuard(this));
        com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8065a(new com.yf.smart.weloopx.p146c.ProGuard());
        com.yf.smart.weloopx.p146c.ProGuard.m10879a();
    }

    private void m10655g() {
        uk.co.chrisjenx.calligraphy.ProGuard.m12352a(new uk.co.chrisjenx.calligraphy.ProGuard.ProGuard().m12349a("fonts/diy.otf").m12348a((int) R.attr.fontPath).m12350a());
    }

    private void m10656h() {
        com.yf.smart.weloopx.p140b.p148a.ProGuard proGuard = new com.yf.smart.weloopx.p140b.p148a.ProGuard(this);
        com.yf.smart.weloopx.p140b.p148a.ProGuard proGuard2 = new com.yf.smart.weloopx.p140b.p148a.ProGuard(this);
        com.yf.smart.weloopx.p140b.p148a.ProGuard proGuard3 = new com.yf.smart.weloopx.p140b.p148a.ProGuard();
        com.yf.smart.weloopx.p143f.ProGuard proGuard4 = new com.yf.smart.weloopx.p143f.ProGuard();
        com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11009a(com.yf.smart.weloopx.p149d.ProGuard.on_app_create, 0, this);
    }
}
