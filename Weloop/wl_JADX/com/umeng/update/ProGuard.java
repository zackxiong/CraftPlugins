package com.umeng.update;

import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.io.File;

/* renamed from: com.umeng.update.c */
public class ProGuard implements com.umeng.update.net.ProGuard {
    private final String f5496a;
    private final String f5497b;
    private UmengDownloadListener f5498c;
    private String f5499d;
    private String f5500e;
    private String f5501f;
    private String f5502g;
    private Context f5503h;
    private String f5504i;
    private com.umeng.update.net.ProGuard f5505j;
    private boolean f5506k;

    /* renamed from: com.umeng.update.c.a */
    class ProGuard extends com.umeng.update.util.ProGuard {
        final /* synthetic */ ProGuard f5493a;
        private String f5494e;
        private String f5495f;

        public ProGuard(ProGuard proGuard, Context context) {
            this.f5493a = proGuard;
            super(context);
            this.f5494e = "";
            this.f5495f = "";
        }

        public ProGuard m7191a(CharSequence charSequence) {
            if (VERSION.SDK_INT >= 14) {
                this.d.setContentText(charSequence);
            }
            this.f5495f = charSequence.toString();
            return this;
        }

        public ProGuard m7192b(CharSequence charSequence) {
            if (VERSION.SDK_INT >= 14) {
                this.d.setContentTitle(charSequence);
            }
            this.f5494e = charSequence.toString();
            return this;
        }

        public ProGuard m7193c(CharSequence charSequence) {
            if (VERSION.SDK_INT >= 16) {
                this.d.setStyle(new BigTextStyle().bigText(charSequence));
            }
            return this;
        }

        public Notification m7190a() {
            if (VERSION.SDK_INT >= 16) {
                return this.d.build();
            }
            if (VERSION.SDK_INT >= 14) {
                return this.d.getNotification();
            }
            this.c.setLatestEventInfo(this.b, this.f5494e, this.f5495f, this.c.contentIntent);
            return this.c;
        }
    }

    public ProGuard() {
        this.f5498c = null;
        this.f5499d = null;
        this.f5500e = null;
        this.f5501f = null;
        this.f5502g = null;
        this.f5503h = null;
        this.f5504i = null;
        this.f5505j = null;
        this.f5506k = false;
        this.f5496a = "delta_update";
        this.f5497b = "update_normal";
    }

    public void m7196a(Context context, String str, String str2, String str3, String str4, UmengDownloadListener umengDownloadListener) {
        this.f5503h = context;
        this.f5504i = p028c.p029a.ProGuard.m2806j(context);
        this.f5499d = str;
        this.f5500e = str2;
        this.f5501f = str3;
        this.f5502g = str4;
        this.f5498c = umengDownloadListener;
    }

    public boolean m7197a() {
        return this.f5506k;
    }

    public void m7199b() {
        this.f5505j = new com.umeng.update.net.ProGuard(this.f5503h, this.f5496a, this.f5504i, this.f5501f, this);
        this.f5505j.m7253a(this.f5502g);
        this.f5505j.m7256b(this.f5500e);
        m7194a(this.f5505j);
    }

    public void m7200c() {
        this.f5505j = new com.umeng.update.net.ProGuard(this.f5503h, this.f5497b, this.f5504i, this.f5499d, this);
        this.f5505j.m7253a(this.f5500e);
        this.f5505j.m7256b(this.f5500e);
        m7194a(this.f5505j);
    }

    private void m7194a(com.umeng.update.net.ProGuard proGuard) {
        int i = 0;
        try {
            i = this.f5503h.getPackageManager().getPackageInfo(this.f5503h.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (Exception e) {
        }
        if (VERSION.SDK_INT >= 16 && r0 >= 14 && UpdateConfig.isRichNotification() && !UpdateConfig.isSilentDownload()) {
            proGuard.m7254a(true);
        }
        proGuard.m7257b(UpdateConfig.isSilentDownload());
        proGuard.m7258c(UpdateConfig.isSilentDownload());
        proGuard.m7252a();
    }

    public void onStart() {
        this.f5506k = true;
        if (this.f5498c != null) {
            this.f5498c.OnDownloadStart();
        }
    }

    public void onProgressUpdate(int i) {
        if (this.f5498c != null) {
            this.f5498c.OnDownloadUpdate(i);
        }
    }

    public void onEnd(int i, int i2, String str) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                m7200c();
                break;
        }
        this.f5506k = false;
        if (this.f5498c != null) {
            this.f5498c.OnDownloadEnd(i, str);
        }
    }

    public void onStatus(int i) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                this.f5506k = true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                this.f5506k = false;
            default:
        }
    }

    public void m7195a(Context context, UpdateResponse updateResponse, boolean z, File file) {
        Intent intent = new Intent(context, UpdateDialogActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("response", updateResponse);
        if (z) {
            bundle.putString("file", file.getAbsolutePath());
        } else {
            bundle.putString("file", null);
        }
        bundle.putBoolean("force", UpdateConfig.isUpdateForce());
        intent.putExtras(bundle);
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    public ProGuard m7198b(Context context, UpdateResponse updateResponse, boolean z, File file) {
        CharSequence string;
        Intent intent;
        CharSequence j = p028c.p029a.ProGuard.m2806j(context);
        CharSequence a = updateResponse.m7180a(context, z);
        if (z) {
            string = context.getString(p028c.p029a.ProGuard.m2816a(context).m2820d("UMDialog_InstallAPK"));
            intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        } else {
            string = context.getString(p028c.p029a.ProGuard.m2816a(context).m2820d("UMUpdateTitle"));
            intent = new Intent(context, UpdateDialogActivity.class);
            Bundle bundle = new Bundle();
            bundle.putSerializable("response", updateResponse);
            bundle.putString("file", null);
            bundle.putBoolean("force", UpdateConfig.isUpdateForce());
            intent.putExtras(bundle);
            intent.addFlags(335544320);
        }
        CharSequence charSequence = j + string;
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 134217728);
        ProGuard proGuard = new ProGuard(this, context);
        proGuard.m7193c(a).m7192b(j).m7191a(string).m7188d(charSequence).m7184a(activity).m7182a(17301629).m7187b(true);
        return proGuard;
    }
}
