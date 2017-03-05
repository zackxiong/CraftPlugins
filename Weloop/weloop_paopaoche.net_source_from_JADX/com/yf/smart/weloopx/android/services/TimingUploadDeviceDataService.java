package com.yf.smart.weloopx.android.services;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.yf.smart.weloopx.data.models.BongDownloadParams;
import com.yf.smart.weloopx.data.models.BongUploadParams;
import com.yf.smart.weloopx.data.models.OriginalData;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p145g.ProGuard;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Timer;

/* compiled from: ProGuard */
public class TimingUploadDeviceDataService extends Service {
    private final String f7176a;
    private boolean f7177b;
    private ProGuard f7178c;
    private com.yf.smart.weloopx.data.ProGuard f7179d;
    private String f7180e;
    private String f7181f;
    private int f7182g;
    private final Timer f7183h;
    private Handler f7184i;
    private Runnable f7185j;

    public TimingUploadDeviceDataService() {
        this.f7176a = "TimingUploadDeviceDataService";
        this.f7177b = false;
        this.f7181f = "";
        this.f7182g = 3600000;
        this.f7183h = new Timer();
        this.f7184i = new Handler();
        this.f7185j = new ProGuard(this);
    }

    public void onCreate() {
        super.onCreate();
    }

    private void m9103a() {
        if (!com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("KEY_AUTO_SYNC_DATA", false)) {
            com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u7ed3\u675f\u540c\u6b65\u7684service");
            stopSelf();
        } else if (this.f7178c.m11320g(this)) {
            int i = Calendar.getInstance().get(11);
            com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u73b0\u5728\u7684\u65f6\u95f4 = " + i);
            if (i < 23 && i > 7) {
                if (!com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
                    com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u8bbe\u5907\u6ca1\u6709\u8fde\u63a5\uff0c\u4e0d\u540c\u6b65");
                } else if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
                    com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService 1. \u5f00\u59cb\u540c\u6b65\u6570\u636esyncData");
                    this.f7181f = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10781c(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
                    String k = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10707k();
                    this.f7177b = com.yf.smart.weloopx.p146c.ProGuard.m10913d();
                    this.f7180e = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10726e();
                    if (TextUtils.isEmpty(this.f7180e)) {
                        this.f7180e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10787f();
                    }
                    com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService 2. deviceName = " + k + "\u662f\u5426\u662ftomy2 " + this.f7177b + ", mac = " + this.f7180e);
                    i = com.umeng.update.util.ProGuard.f5670c;
                    if (this.f7177b) {
                        if ("V 4.02".compareTo(com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10709m()) > 0) {
                            i = 64;
                        } else {
                            i = Integer.MAX_VALUE;
                        }
                    }
                    com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10715a(i, new ProGuard(this), true);
                } else {
                    com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u8bbe\u5907\u6ca1\u6709\u521d\u59cb\u5316\uff0c\u4e0d\u540c\u6b65");
                }
            }
        } else {
            com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u5904\u4e8e\u524d\u53f0\uff0c\u4e0d\u6267\u884c\u540c\u6b65\u6570\u636e");
        }
    }

    private void m9107b() {
        if (this.f7177b) {
            this.f7184i.postDelayed(new ProGuard(this), 4000);
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService 5.1 \u4e0d\u662f\u5c0f\u9ed12\uff0c\u5f00\u59cb\u4e0a\u4f20\u6570\u636e");
        m9112c();
    }

    private boolean m9112c() {
        if (this.f7178c.m11306a(com.yf.gattlib.p108a.ProGuard.m7368a().m7374d())) {
            OriginalData d = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10725d();
            if (d == null || d.getData().length < 16) {
                m9116e();
                return false;
            }
            String f = m9118f();
            BongUploadParams bongUploadParams = new BongUploadParams();
            bongUploadParams.setAccessToken(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
            bongUploadParams.setDeviceId(com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10727f());
            bongUploadParams.setMac(this.f7180e);
            bongUploadParams.runinfo = f;
            bongUploadParams.setDeviceData(d.getData());
            bongUploadParams.setTimeZone((float) (Calendar.getInstance().getTimeZone().getRawOffset() / 3600000));
            com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10668a(bongUploadParams, new ProGuard(this, d, f));
            return true;
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u65e0\u7f51\u7edc\uff0c\u4e0d\u4e0a\u4f20");
        return false;
    }

    private void m9113d() {
        new com.yf.gattlib.client.p113b.ProGuard(new ProGuard(this)).m7498f();
    }

    private void m9116e() {
        BongDownloadParams bongDownloadParams = new BongDownloadParams();
        bongDownloadParams.setHappenDate(com.yf.gattlib.p117p.ProGuard.m8229a(-1));
        bongDownloadParams.setAccessToken(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        bongDownloadParams.setDeviceId(com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10727f());
        bongDownloadParams.setMac(this.f7180e);
        bongDownloadParams.setAdditionalDays(7);
        bongDownloadParams.setTimeZone((float) (Calendar.getInstance().getTimeZone().getRawOffset() / 3600000));
        com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService HappenDate, accessToken, deviceId, mac = " + bongDownloadParams.getHappenDate() + "," + bongDownloadParams.getAccessToken() + "," + bongDownloadParams.getDeviceId() + "," + bongDownloadParams.getMac() + "," + bongDownloadParams.getAdditionalDays() + "," + bongDownloadParams.getTimeZone());
        com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10667a(bongDownloadParams, new ProGuard(this));
    }

    private String m9118f() {
        if (this.f7177b) {
            ArrayList a = this.f7179d.m11105a(this.f7181f);
            if (a == null || a.size() <= 0) {
                com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u83b7\u5f97\u8dd1\u6b65\u6570\u636e\u662f\u7a7a\u7684");
                return "";
            }
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = a.iterator();
            while (it.hasNext()) {
                com.yf.gattlib.client.p113b.p115b.ProGuard proGuard = (com.yf.gattlib.client.p113b.p115b.ProGuard) it.next();
                int i = proGuard.f5793a;
                int i2 = proGuard.f5794b;
                int i3 = proGuard.f5795c;
                int i4 = proGuard.f5796d;
                int b = com.yf.gattlib.p117p.ProGuard.m8233b("2014-01-01 00:00:00");
                String b2 = com.yf.gattlib.p117p.ProGuard.m8234b(b + i);
                String b3 = com.yf.gattlib.p117p.ProGuard.m8234b((i + b) + i2);
                stringBuilder.append(b2);
                stringBuilder.append(",");
                stringBuilder.append(b3);
                stringBuilder.append(",");
                stringBuilder.append(String.valueOf(i4));
                stringBuilder.append(",");
                stringBuilder.append(String.valueOf(i3));
                stringBuilder.append(",");
                stringBuilder.append("|");
            }
            com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u7ec4\u88c5\u5c06\u8981\u4e0a\u4f20\u7684\u8dd1\u6b65\u4fe1\u606f = " + stringBuilder.toString());
            return stringBuilder.toString();
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("TimingUploadDeviceDataService \u7ec4\u88c5\u8dd1\u6b65\u6570\u636e\u7684\u65f6\u5019\uff0c\u4e0d\u662f\u5c0f\u9ed12");
        return "";
    }

    private boolean m9106a(String str) {
        return str.contains(getString(R.string.uploaded_bong_is_empty));
    }

    private boolean m9110b(String str) {
        return str.contains(getString(R.string.uploaded_bong_is_more_than_one_day));
    }

    public void onDestroy() {
        com.yf.gattlib.p117p.ProGuard.m8297b("TimingUploadDeviceDataService onDestroy");
        if (this.f7184i != null) {
            this.f7184i.removeCallbacks(this.f7185j);
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
