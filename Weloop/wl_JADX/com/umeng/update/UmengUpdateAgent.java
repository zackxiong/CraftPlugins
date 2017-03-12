package com.umeng.update;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import java.io.File;
import java.io.IOException;

/* compiled from: ProGuard */
public class UmengUpdateAgent {
    private static UmengUpdateListener f5432a;
    private static UmengDialogButtonListener f5433b;
    private static UmengDownloadListener f5434c;
    private static Context f5435d;
    private static ProGuard f5436e;
    private static Handler f5437f;
    private static boolean f5438g;
    private static String f5439h;

    /* renamed from: com.umeng.update.UmengUpdateAgent.1 */
    final class ProGuard extends Handler {
        final /* synthetic */ Context f5424a;

        ProGuard(Looper looper, Context context) {
            this.f5424a = context;
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0 && UpdateConfig.isUpdateAutoPopup()) {
                UmengUpdateAgent.m7176b(UmengUpdateAgent.f5435d, (UpdateResponse) message.obj, UpdateConfig.getStyle());
            }
            UmengUpdateAgent.m7175b(this.f5424a, message);
            UmengUpdateAgent.f5435d = null;
            if (UmengUpdateAgent.f5432a != null) {
                UmengUpdateAgent.f5432a.onUpdateReturned(message.what, (UpdateResponse) message.obj);
            }
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.2 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5425a;

        ProGuard(Context context) {
            this.f5425a = context;
        }

        public void run() {
            Toast.makeText(this.f5425a, p028c.p029a.ProGuard.m2835b(this.f5425a), 0).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.3 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5426a;

        ProGuard(Context context) {
            this.f5426a = context;
        }

        public void run() {
            Toast.makeText(this.f5426a, "Please set umeng appkey!", 1).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.4 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5427a;

        ProGuard(Context context) {
            this.f5427a = context;
        }

        public void run() {
            Toast.makeText(this.f5427a, "Please add Activity in AndroidManifest!", 1).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.5 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5428a;

        ProGuard(Context context) {
            this.f5428a = context;
        }

        public void run() {
            Toast.makeText(this.f5428a, "Please add Service in AndroidManifest!", 1).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.6 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5429a;

        ProGuard(Context context) {
            this.f5429a = context;
        }

        public void run() {
            Toast.makeText(this.f5429a, "Please add Permission in AndroidManifest!", 1).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.7 */
    final class ProGuard implements Runnable {
        final /* synthetic */ Context f5430a;

        ProGuard(Context context) {
            this.f5430a = context;
        }

        public void run() {
            Toast.makeText(this.f5430a, "Please copy all resources (res/) from SDK to your project!", 1).show();
        }
    }

    /* renamed from: com.umeng.update.UmengUpdateAgent.a */
    static class ProGuard implements Runnable {
        Context f5431a;

        public ProGuard(Context context) {
            this.f5431a = context;
        }

        public void run() {
            try {
                UpdateResponse a = new ProGuard(this.f5431a).m7181a();
                if (a == null) {
                    UmengUpdateAgent.m7173b(3, null);
                } else if (a.hasUpdate) {
                    UmengUpdateAgent.m7173b(0, a);
                } else {
                    UmengUpdateAgent.m7173b(1, a);
                }
            } catch (Exception e) {
                UmengUpdateAgent.m7173b(1, null);
                p028c.p029a.ProGuard.m2808a(UpdateConfig.f5440a, "request update error", e);
            } catch (Error e2) {
                p028c.p029a.ProGuard.m2807a(UpdateConfig.f5440a, "request update error" + e2.getMessage());
            }
        }
    }

    static {
        f5432a = null;
        f5433b = null;
        f5434c = null;
        f5436e = new ProGuard();
        f5438g = false;
        f5439h = UmengUpdateAgent.class.getName();
    }

    public static void setDefault() {
        setDeltaUpdate(true);
        setUpdateAutoPopup(true);
        setUpdateOnlyWifi(true);
        setRichNotification(true);
        setDialogListener(null);
        setDownloadListener(null);
        setUpdateListener(null);
        setAppkey(null);
        setChannel(null);
        setUpdateUIStyle(0);
    }

    private static boolean m7177c() {
        Class cls;
        try {
            cls = Class.forName("com.umeng.message.PushAgent");
        } catch (Exception e) {
            p028c.p029a.ProGuard.m2814d(f5439h, "isIncludesUmengPushSDK", e);
            cls = null;
        }
        if (cls != null) {
            return true;
        }
        return false;
    }

    public static void setUpdateFromPushMessage(boolean z) {
        f5438g = z;
    }

    public static boolean getUpdateFromPushMessage() {
        return f5438g;
    }

    public static void setUpdateCheckConfig(boolean z) {
        UpdateConfig.setUpdateCheck(z);
    }

    public static void setUpdateOnlyWifi(boolean z) {
        UpdateConfig.setUpdateOnlyWifi(z);
    }

    public static void setUpdateAutoPopup(boolean z) {
        UpdateConfig.setUpdateAutoPopup(z);
    }

    public static void setUpdateUIStyle(int i) {
        UpdateConfig.setStyle(i);
    }

    public static void setDeltaUpdate(boolean z) {
        UpdateConfig.setDeltaUpdate(z);
    }

    public static void setAppkey(String str) {
        UpdateConfig.setAppkey(str);
    }

    public static void setSlotId(String str) {
        UpdateConfig.setSlotId(str);
    }

    public static void setChannel(String str) {
        UpdateConfig.setChannel(str);
    }

    public static void setRichNotification(boolean z) {
        UpdateConfig.setRichNotification(z);
    }

    public static void setUpdateListener(UmengUpdateListener umengUpdateListener) {
        f5432a = umengUpdateListener;
    }

    public static void setDialogListener(UmengDialogButtonListener umengDialogButtonListener) {
        f5433b = umengDialogButtonListener;
    }

    public static void setDownloadListener(UmengDownloadListener umengDownloadListener) {
        f5434c = umengDownloadListener;
    }

    private static void m7173b(int i, UpdateResponse updateResponse) {
        Message message = new Message();
        message.what = i;
        message.obj = updateResponse;
        f5437f.sendMessage(message);
    }

    public static void silentUpdate(Context context) {
        UpdateConfig.setUpdateForce(false);
        UpdateConfig.setSilentDownload(true);
        m7174b(context.getApplicationContext());
    }

    public static void forceUpdate(Context context) {
        UpdateConfig.setUpdateForce(true);
        UpdateConfig.setSilentDownload(false);
        m7174b(context.getApplicationContext());
    }

    public static void update(Context context) {
        UpdateConfig.setUpdateForce(false);
        UpdateConfig.setSilentDownload(false);
        m7174b(context.getApplicationContext());
    }

    public static void update(Context context, String str, String str2) {
        UpdateConfig.setAppkey(str);
        UpdateConfig.setChannel(str2);
        update(context);
    }

    private static void m7174b(Context context) {
        if (context == null) {
            try {
                p028c.p029a.ProGuard.m2809b(UpdateConfig.f5440a, "unexpected null context in update");
                return;
            } catch (Exception e) {
                p028c.p029a.ProGuard.m2810b(UpdateConfig.f5440a, "Exception occurred in Mobclick.update(). ", e);
                return;
            }
        }
        f5437f = new ProGuard(context.getMainLooper(), context);
        m7178c(context);
        if (!p028c.p029a.ProGuard.m2800d(context)) {
            if (UpdateConfig.isSilentDownload()) {
                m7173b(2, null);
                return;
            } else if (UpdateConfig.isUpdateOnlyWifi() && !UpdateConfig.isUpdateForce()) {
                m7173b(2, null);
                return;
            }
        }
        if (f5436e.m7197a()) {
            m7173b(4, null);
            p028c.p029a.ProGuard.m2807a(UpdateConfig.f5440a, "Is updating now.");
            f5437f.post(new ProGuard(context));
            return;
        }
        f5435d = context;
        new Thread(new ProGuard(context.getApplicationContext())).start();
    }

    private static void m7176b(Context context, UpdateResponse updateResponse, int i) {
        try {
            if (!isIgnore(context, updateResponse)) {
                File downloadedFile = downloadedFile(context, updateResponse);
                boolean z = downloadedFile != null;
                if (z || !UpdateConfig.isSilentDownload()) {
                    switch (i) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                            f5436e.m7195a(context, updateResponse, z, downloadedFile);
                            return;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            ((NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION)).notify(0, f5436e.m7198b(context, updateResponse, z, downloadedFile).m7190a());
                            return;
                        default:
                            return;
                    }
                    p028c.p029a.ProGuard.m2810b(UpdateConfig.f5440a, "Fail to create update dialog box.", e);
                }
                startDownload(context, updateResponse);
            }
        } catch (Exception e) {
            p028c.p029a.ProGuard.m2810b(UpdateConfig.f5440a, "Fail to create update dialog box.", e);
        }
    }

    public static void showUpdateDialog(Context context, UpdateResponse updateResponse) {
        m7176b(context, updateResponse, 0);
    }

    public static void showUpdateNotification(Context context, UpdateResponse updateResponse) {
        m7176b(context, updateResponse, 1);
    }

    public static File downloadedFile(Context context, UpdateResponse updateResponse) {
        try {
            File file = new File(com.umeng.update.net.ProGuard.m7318a("/apk", context, new boolean[1]), updateResponse.new_md5 + ".apk");
            if (file.exists() && updateResponse.new_md5.equalsIgnoreCase(p028c.p029a.ProGuard.m2851a(file))) {
                return file;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isIgnore(Context context, UpdateResponse updateResponse) {
        return (updateResponse.new_md5 == null || !updateResponse.new_md5.equalsIgnoreCase(UpdateConfig.getIgnoreMd5(context)) || UpdateConfig.isUpdateForce()) ? false : true;
    }

    public static void ignoreUpdate(Context context, UpdateResponse updateResponse) {
        UpdateConfig.saveIgnoreMd5(context, updateResponse.new_md5);
    }

    static void m7167a(int i, Context context, UpdateResponse updateResponse, File file) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                m7171a(context, updateResponse, file);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                ignoreUpdate(context, updateResponse);
                break;
        }
        if (f5433b != null) {
            f5433b.onClick(i);
        }
    }

    private static void m7171a(Context context, UpdateResponse updateResponse, File file) {
        if (file == null) {
            startDownload(context, updateResponse);
        } else {
            startInstall(context, file);
        }
    }

    public static void startInstall(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public static void startDownload(Context context, UpdateResponse updateResponse) {
        if (updateResponse.delta && UpdateConfig.isDeltaUpdate()) {
            f5436e.m7196a(context, updateResponse.origin, updateResponse.new_md5, updateResponse.path, updateResponse.patch_md5, f5434c);
            f5436e.m7199b();
            return;
        }
        f5436e.m7196a(context, updateResponse.path, updateResponse.new_md5, null, null, f5434c);
        f5436e.m7200c();
    }

    private static boolean m7178c(Context context) {
        if (!UpdateConfig.isUpdateCheck()) {
            return true;
        }
        try {
            if (!Class.forName(context.getPackageName() + ".BuildConfig").getField("DEBUG").getBoolean(null)) {
                return true;
            }
            boolean z;
            try {
                if (UpdateConfig.getAppkey(context) == null) {
                    f5437f.post(new ProGuard(context));
                    return false;
                }
                int i;
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4101);
                if (packageInfo.activities != null) {
                    i = 0;
                    z = false;
                    while (i < packageInfo.activities.length) {
                        try {
                            if (UpdateConfig.f5444e.equals(packageInfo.activities[i].name)) {
                                z = true;
                            }
                            i++;
                        } catch (Exception e) {
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    if (packageInfo.services != null) {
                        z = false;
                        for (ServiceInfo serviceInfo : packageInfo.services) {
                            if (UpdateConfig.f5443d.equals(serviceInfo.name)) {
                                z = true;
                            }
                        }
                    } else {
                        z = false;
                    }
                    if (z) {
                        boolean z2;
                        boolean z3;
                        if (packageInfo.requestedPermissions != null) {
                            z = false;
                            z2 = false;
                            z3 = false;
                            for (int i2 = 0; i2 < packageInfo.requestedPermissions.length; i2++) {
                                if (UpdateConfig.f5445f.equals(packageInfo.requestedPermissions[i2])) {
                                    z3 = true;
                                } else if (UpdateConfig.f5446g.equals(packageInfo.requestedPermissions[i2])) {
                                    z2 = true;
                                } else if (UpdateConfig.f5447h.equals(packageInfo.requestedPermissions[i2])) {
                                    z = true;
                                }
                            }
                        } else {
                            z = false;
                            z2 = false;
                            z3 = false;
                        }
                        z = z3 && z2 && z;
                        if (z) {
                            try {
                                if (UpdateConfig.f5441b.equals(context.getString(Class.forName(context.getPackageName() + ".R$string").getField(UpdateConfig.f5448i).getInt(null)))) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    return true;
                                }
                            } catch (Exception e2) {
                                z = false;
                            }
                            f5437f.post(new ProGuard(context));
                            return z;
                        }
                        f5437f.post(new ProGuard(context));
                        return false;
                    }
                    f5437f.post(new ProGuard(context));
                    return false;
                }
                f5437f.post(new ProGuard(context));
                return false;
            } catch (Exception e3) {
                z = false;
            }
        } catch (Exception e4) {
            return true;
        }
    }

    private static void m7175b(Context context, Message message) {
        if (m7177c() && getUpdateFromPushMessage()) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putInt("UpdateStatus", message.what);
            bundle.putSerializable("UpdateResponse", (UpdateResponse) message.obj);
            intent.putExtra("UpdateListener", bundle);
            intent.setAction("com.umeng.message.action.autoupdate");
            android.support.v4.p008a.ProGuard.m99a(context).m104a(intent);
            setUpdateFromPushMessage(false);
            p028c.p029a.ProGuard.m2811c("UmengUpdateAgent", "UpdateFromPushMessage");
        }
    }
}
