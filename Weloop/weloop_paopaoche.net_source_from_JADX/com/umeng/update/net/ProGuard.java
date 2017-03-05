package com.umeng.update.net;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.LocationClientOption;
import com.umeng.update.UpdateConfig;
import com.umeng.update.util.DeltaUpdate;
import java.io.File;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* renamed from: com.umeng.update.net.c */
class ProGuard {
    static final int f5621a = 0;
    static final int f5622b = 1;
    static final int f5623c = 1;
    static final int f5624d = 2;
    private static final String f5625e;
    private SparseArray<ProGuard> f5626f;
    private Map<ProGuard, Messenger> f5627g;
    private ProGuard f5628h;

    /* renamed from: com.umeng.update.net.c.1 */
    class ProGuard implements Runnable {
        final /* synthetic */ String[] f5605a;
        final /* synthetic */ boolean f5606b;
        final /* synthetic */ Map f5607c;
        final /* synthetic */ ProGuard f5608d;

        ProGuard(ProGuard proGuard, String[] strArr, boolean z, Map map) {
            this.f5608d = proGuard;
            this.f5605a = strArr;
            this.f5606b = z;
            this.f5607c = map;
        }

        public void run() {
            int nextInt = new Random().nextInt(LocationClientOption.MIN_SCAN_SPAN);
            if (this.f5605a == null) {
                p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, nextInt + "service report: urls is null");
                return;
            }
            String[] strArr = this.f5605a;
            int length = strArr.length;
            int i = ProGuard.f5621a;
            while (i < length) {
                String str = strArr[i];
                String a = p028c.p029a.ProGuard.m2850a();
                String str2 = a.split(" ")[ProGuard.f5621a];
                a = a.split(" ")[ProGuard.f5623c];
                long currentTimeMillis = System.currentTimeMillis();
                StringBuilder stringBuilder = new StringBuilder(str);
                stringBuilder.append("&data=").append(str2);
                stringBuilder.append("&time=").append(a);
                stringBuilder.append("&ts=").append(currentTimeMillis);
                if (this.f5606b) {
                    stringBuilder.append("&action_type=").append(ProGuard.f5623c);
                } else {
                    stringBuilder.append("&action_type=").append(-2);
                }
                if (this.f5607c != null) {
                    for (String a2 : this.f5607c.keySet()) {
                        stringBuilder.append("&").append(a2).append("=").append((String) this.f5607c.get(a2));
                    }
                }
                try {
                    p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, nextInt + ": service report:\tget: " + stringBuilder.toString());
                    HttpUriRequest httpGet = new HttpGet(stringBuilder.toString());
                    HttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
                    HttpResponse execute = new DefaultHttpClient(basicHttpParams).execute(httpGet);
                    p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, nextInt + ": service report:status code:  " + execute.getStatusLine().getStatusCode());
                    if (execute.getStatusLine().getStatusCode() != 200) {
                        i += ProGuard.f5623c;
                    } else {
                        return;
                    }
                } catch (Exception e) {
                    p028c.p029a.ProGuard.m2812c(ProGuard.f5625e, nextInt + ": service report:\tClientProtocolException,Failed to send message." + str, e);
                } catch (Exception e2) {
                    p028c.p029a.ProGuard.m2812c(ProGuard.f5625e, nextInt + ": service report:\tIOException,Failed to send message." + str, e2);
                }
            }
        }
    }

    /* renamed from: com.umeng.update.net.c.a */
    static class ProGuard extends com.umeng.update.util.ProGuard {
        public ProGuard(Context context) {
            super(context);
        }

        public ProGuard m7273a(RemoteViews remoteViews) {
            this.c.contentView = remoteViews;
            return this;
        }

        public ProGuard m7274a(CharSequence charSequence) {
            if (VERSION.SDK_INT >= 14) {
                this.d.setContentText(charSequence);
            }
            this.c.contentView.setTextViewText(p028c.p029a.ProGuard.m2827a(this.b), charSequence);
            return this;
        }

        public ProGuard m7277b(CharSequence charSequence) {
            if (VERSION.SDK_INT >= 14) {
                this.d.setContentTitle(charSequence);
            }
            this.c.contentView.setTextViewText(p028c.p029a.ProGuard.m2830d(this.b), charSequence);
            return this;
        }

        public ProGuard m7271a(int i, int i2, boolean z) {
            if (VERSION.SDK_INT >= 14) {
                this.d.setProgress(i, i2, z);
            }
            this.c.contentView.setProgressBar(p028c.p029a.ProGuard.m2829c(this.b), 100, i2, false);
            return this;
        }

        public ProGuard m7270a() {
            this.c.contentView.setViewVisibility(p028c.p029a.ProGuard.m2831e(this.b), 8);
            this.c.contentView.setViewVisibility(p028c.p029a.ProGuard.m2832f(this.b), 8);
            return this;
        }

        public ProGuard m7272a(PendingIntent pendingIntent, PendingIntent pendingIntent2) {
            this.c.contentView.setOnClickPendingIntent(p028c.p029a.ProGuard.m2831e(this.b), pendingIntent);
            this.c.contentView.setViewVisibility(p028c.p029a.ProGuard.m2831e(this.b), ProGuard.f5621a);
            this.c.contentView.setViewVisibility(p028c.p029a.ProGuard.m2832f(this.b), ProGuard.f5621a);
            this.c.contentView.setOnClickPendingIntent(p028c.p029a.ProGuard.m2832f(this.b), pendingIntent2);
            return this;
        }

        public ProGuard m7276b() {
            int e = p028c.p029a.ProGuard.m2831e(this.b);
            this.c.contentView.setTextViewText(e, this.b.getResources().getString(p028c.p029a.ProGuard.m2838e(this.b.getApplicationContext())));
            this.c.contentView.setInt(e, "setBackgroundResource", p028c.p029a.ProGuard.m2816a(this.b).m2818b("umeng_common_gradient_green"));
            return this;
        }

        public ProGuard m7278c() {
            int e = p028c.p029a.ProGuard.m2831e(this.b);
            this.c.contentView.setTextViewText(e, this.b.getResources().getString(p028c.p029a.ProGuard.m2837d(this.b.getApplicationContext())));
            this.c.contentView.setInt(e, "setBackgroundResource", p028c.p029a.ProGuard.m2816a(this.b).m2818b("umeng_common_gradient_orange"));
            return this;
        }

        public Notification m7279d() {
            if (VERSION.SDK_INT >= 16) {
                return this.d.build();
            }
            if (VERSION.SDK_INT >= 14) {
                return this.d.getNotification();
            }
            return this.c;
        }

        public void m7275a(int i, String str, PendingIntent pendingIntent) {
            if (VERSION.SDK_INT >= 16) {
                this.d.addAction(i, str, pendingIntent);
            }
        }
    }

    /* renamed from: com.umeng.update.net.c.b */
    static class ProGuard {
        com.umeng.update.net.DownloadingService.ProGuard f5609a;
        ProGuard f5610b;
        int f5611c;
        int f5612d;
        ProGuard f5613e;
        long[] f5614f;

        public ProGuard(ProGuard proGuard, int i) {
            this.f5614f = new long[3];
            this.f5611c = i;
            this.f5613e = proGuard;
        }

        public void m7280a(SparseArray<ProGuard> sparseArray) {
            sparseArray.put(this.f5611c, this);
        }

        public void m7281b(SparseArray<ProGuard> sparseArray) {
            if (sparseArray.indexOfKey(this.f5611c) >= 0) {
                sparseArray.remove(this.f5611c);
            }
        }
    }

    /* renamed from: com.umeng.update.net.c.c */
    class ProGuard extends AsyncTask<String, Void, Integer> {
        public int f5615a;
        public String f5616b;
        final /* synthetic */ ProGuard f5617c;
        private ProGuard f5618d;
        private Context f5619e;
        private NotificationManager f5620f;

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m7282a((String[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            m7283a((Integer) obj);
        }

        public ProGuard(ProGuard proGuard, Context context, int i, ProGuard proGuard2, String str) {
            this.f5617c = proGuard;
            this.f5619e = context.getApplicationContext();
            this.f5620f = (NotificationManager) this.f5619e.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
            this.f5615a = i;
            this.f5618d = proGuard2;
            this.f5616b = str;
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }

        protected Integer m7282a(String... strArr) {
            int a = DeltaUpdate.m7337a(strArr[ProGuard.f5621a], strArr[ProGuard.f5623c], strArr[ProGuard.f5624d]) + ProGuard.f5623c;
            new File(strArr[ProGuard.f5624d]).delete();
            if (a != ProGuard.f5623c) {
                p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, "file patch error");
            } else if (p028c.p029a.ProGuard.m2851a(new File(strArr[ProGuard.f5623c])).equalsIgnoreCase(this.f5618d.f5569e)) {
                p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, "file patch success");
            } else {
                p028c.p029a.ProGuard.m2807a(ProGuard.f5625e, "file patch error");
                return Integer.valueOf(ProGuard.f5621a);
            }
            return Integer.valueOf(a);
        }

        protected void m7283a(Integer num) {
            Message obtain;
            if (num.intValue() == ProGuard.f5623c) {
                ProGuard.m7331a(this.f5616b, 39, -1, -1);
                Notification notification = new Notification(17301634, this.f5619e.getString(p028c.p029a.ProGuard.m2845l(this.f5619e)), System.currentTimeMillis());
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setDataAndType(Uri.fromFile(new File(this.f5616b)), "application/vnd.android.package-archive");
                notification.setLatestEventInfo(this.f5619e, p028c.p029a.ProGuard.m2806j(this.f5619e), this.f5619e.getString(p028c.p029a.ProGuard.m2845l(this.f5619e)), PendingIntent.getActivity(this.f5619e, ProGuard.f5621a, intent, 134217728));
                notification.flags = 16;
                this.f5620f.notify(this.f5615a + ProGuard.f5623c, notification);
                if (this.f5617c.m7292a(this.f5619e) && !this.f5618d.f5572h) {
                    this.f5620f.cancel(this.f5615a + ProGuard.f5623c);
                    this.f5619e.startActivity(intent);
                }
                Bundle bundle = new Bundle();
                bundle.putString("filename", this.f5616b);
                obtain = Message.obtain();
                obtain.what = 5;
                obtain.arg1 = ProGuard.f5623c;
                obtain.arg2 = this.f5615a;
                obtain.setData(bundle);
                try {
                    if (this.f5617c.f5627g.get(this.f5618d) != null) {
                        ((Messenger) this.f5617c.f5627g.get(this.f5618d)).send(obtain);
                    }
                    this.f5617c.m7296b(this.f5619e, this.f5615a);
                    return;
                } catch (RemoteException e) {
                    this.f5617c.m7296b(this.f5619e, this.f5615a);
                    return;
                }
            }
            this.f5620f.cancel(this.f5615a + ProGuard.f5623c);
            bundle = new Bundle();
            bundle.putString("filename", this.f5616b);
            obtain = Message.obtain();
            obtain.what = 5;
            obtain.arg1 = 3;
            obtain.arg2 = this.f5615a;
            obtain.setData(bundle);
            try {
                if (this.f5617c.f5627g.get(this.f5618d) != null) {
                    ((Messenger) this.f5617c.f5627g.get(this.f5618d)).send(obtain);
                }
                this.f5617c.m7296b(this.f5619e, this.f5615a);
            } catch (RemoteException e2) {
                this.f5617c.m7296b(this.f5619e, this.f5615a);
            }
        }
    }

    static {
        f5625e = ProGuard.class.getName();
    }

    public ProGuard(SparseArray<ProGuard> sparseArray, Map<ProGuard, Messenger> map, ProGuard proGuard) {
        this.f5626f = sparseArray;
        this.f5627g = map;
        this.f5628h = proGuard;
    }

    int m7286a(ProGuard proGuard) {
        return Math.abs((int) (((long) ((proGuard.f5566b.hashCode() >> f5624d) + (proGuard.f5567c.hashCode() >> 3))) + System.currentTimeMillis()));
    }

    ProGuard m7287a(Context context, ProGuard proGuard, int i, int i2) {
        Field declaredField;
        Context applicationContext = context.getApplicationContext();
        ProGuard proGuard2 = new ProGuard(applicationContext);
        proGuard2.m7188d(applicationContext.getString(p028c.p029a.ProGuard.m2843j(applicationContext))).m7182a(17301633).m7184a(PendingIntent.getActivity(applicationContext, f5621a, new Intent(), 134217728)).m7183a(System.currentTimeMillis());
        RemoteViews remoteViews = new RemoteViews(applicationContext.getPackageName(), p028c.p029a.ProGuard.m2833a(applicationContext));
        int dimensionPixelSize;
        int dimensionPixelSize2;
        if (VERSION.SDK_INT >= 14) {
            dimensionPixelSize = applicationContext.getResources().getDimensionPixelSize(17104901);
            dimensionPixelSize2 = applicationContext.getResources().getDimensionPixelSize(17104902);
            remoteViews.setInt(p028c.p029a.ProGuard.m2828b(applicationContext), "setWidth", dimensionPixelSize);
            remoteViews.setInt(p028c.p029a.ProGuard.m2828b(applicationContext), "setHeight", dimensionPixelSize2);
            try {
                declaredField = Class.forName("com.android.internal.R$drawable").getDeclaredField("notify_panel_notification_icon_bg_tile");
                declaredField.setAccessible(true);
                remoteViews.setInt(p028c.p029a.ProGuard.m2828b(applicationContext), "setBackgroundResource", declaredField.getInt(null));
            } catch (Exception e) {
                p028c.p029a.ProGuard.m2808a(f5625e, "No notification icon background found:", e);
            }
        } else {
            try {
                declaredField = Class.forName("com.android.internal.R$drawable").getDeclaredField("status_bar_notification_icon_bg");
                declaredField.setAccessible(true);
                remoteViews.setInt(p028c.p029a.ProGuard.m2828b(applicationContext), "setBackgroundResource", declaredField.getInt(null));
            } catch (Exception e2) {
                try {
                    Class cls = Class.forName("com.android.internal.R$dimen");
                    Field declaredField2 = cls.getDeclaredField("status_bar_edge_ignore");
                    declaredField2.setAccessible(true);
                    dimensionPixelSize2 = applicationContext.getResources().getDimensionPixelSize(declaredField2.getInt(null)) + f5621a;
                    declaredField = cls.getDeclaredField("status_bar_height");
                    declaredField.setAccessible(true);
                    dimensionPixelSize = declaredField.getInt(null);
                    remoteViews.setInt(p028c.p029a.ProGuard.m2828b(applicationContext), "setWidth", applicationContext.getResources().getDimensionPixelSize(dimensionPixelSize) + (dimensionPixelSize2 + applicationContext.getResources().getDimensionPixelSize(dimensionPixelSize)));
                } catch (Exception e3) {
                    p028c.p029a.ProGuard.m2808a(f5625e, "No notification size found:", e3);
                }
            }
        }
        proGuard2.m7273a(remoteViews);
        proGuard2.m7277b(applicationContext.getResources().getString(p028c.p029a.ProGuard.m2840g(applicationContext)) + proGuard.f5566b).m7274a(i2 + "%").m7271a(100, i2, false);
        if (proGuard.f5571g) {
            proGuard2.m7186b(remoteViews);
            proGuard2.m7189e();
            PendingIntent b = ProGuard.m7304b(applicationContext, ProGuard.m7303a(i, ProGuard.f5633b));
            PendingIntent b2 = ProGuard.m7304b(applicationContext, ProGuard.m7303a(i, ProGuard.f5634c));
            m7289a(applicationContext, proGuard2, i, (int) f5624d);
            proGuard2.m7272a(b, b2).m7278c().m7185a(true).m7187b(false);
        } else {
            proGuard2.m7270a().m7185a(true).m7187b(false);
        }
        return proGuard2;
    }

    void m7289a(Context context, ProGuard proGuard, int i, int i2) {
        if (VERSION.SDK_INT >= 16) {
            PendingIntent b = ProGuard.m7304b(context, ProGuard.m7303a(i, ProGuard.f5633b));
            PendingIntent b2 = ProGuard.m7304b(context, ProGuard.m7303a(i, ProGuard.f5634c));
            switch (i2) {
                case f5623c /*1*/:
                    proGuard.m7275a(17301540, context.getResources().getString(p028c.p029a.ProGuard.m2838e(context)), b);
                    break;
                case f5624d /*2*/:
                    proGuard.m7275a(17301539, context.getResources().getString(p028c.p029a.ProGuard.m2837d(context)), b);
                    break;
            }
            proGuard.m7275a(17301560, context.getResources().getString(p028c.p029a.ProGuard.m2839f(context)), b2);
        }
    }

    boolean m7292a(Context context) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    boolean m7294a(ProGuard proGuard, boolean z, Messenger messenger) {
        if (z) {
            int nextInt = new Random().nextInt(LocationClientOption.MIN_SCAN_SPAN);
            if (this.f5627g != null) {
                for (ProGuard proGuard2 : this.f5627g.keySet()) {
                    p028c.p029a.ProGuard.m2811c(f5625e, "_" + nextInt + " downling  " + proGuard2.f5566b + "   " + proGuard2.f5567c);
                }
            } else {
                p028c.p029a.ProGuard.m2811c(f5625e, "_" + nextInt + "downling  null");
            }
        }
        if (this.f5627g == null) {
            return false;
        }
        for (ProGuard proGuard22 : this.f5627g.keySet()) {
            if (proGuard.f5569e != null && proGuard.f5569e.equals(proGuard22.f5569e)) {
                this.f5627g.put(proGuard22, messenger);
                return true;
            } else if (proGuard22.f5567c.equals(proGuard.f5567c)) {
                this.f5627g.put(proGuard22, messenger);
                return true;
            }
        }
        return false;
    }

    int m7295b(ProGuard proGuard) {
        for (int i = f5621a; i < this.f5626f.size(); i += f5623c) {
            int keyAt = this.f5626f.keyAt(i);
            if (proGuard.f5569e != null && proGuard.f5569e.equals(((ProGuard) this.f5626f.get(keyAt)).f5613e.f5569e)) {
                return ((ProGuard) this.f5626f.get(keyAt)).f5611c;
            }
            if (((ProGuard) this.f5626f.get(keyAt)).f5613e.f5567c.equals(proGuard.f5567c)) {
                return ((ProGuard) this.f5626f.get(keyAt)).f5611c;
            }
        }
        return -1;
    }

    void m7288a(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        ProGuard proGuard = (ProGuard) this.f5626f.get(i);
        proGuard.f5610b.m7189e();
        m7289a(applicationContext, proGuard.f5610b, i, (int) f5623c);
        proGuard.f5610b.m7277b(applicationContext.getResources().getString(p028c.p029a.ProGuard.m2841h(applicationContext)) + proGuard.f5613e.f5566b).m7276b().m7185a(false).m7187b(true);
        notificationManager.notify(i, proGuard.f5610b.m7279d());
    }

    void m7296b(Context context, int i) {
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        ProGuard proGuard = (ProGuard) this.f5626f.get(i);
        if (proGuard != null) {
            p028c.p029a.ProGuard.m2811c(f5625e, "download service clear cache " + proGuard.f5613e.f5566b);
            if (proGuard.f5609a != null) {
                proGuard.f5609a.m7219a((int) f5624d);
            }
            notificationManager.cancel(proGuard.f5611c);
            if (this.f5627g.containsKey(proGuard.f5613e)) {
                this.f5627g.remove(proGuard.f5613e);
            }
            proGuard.m7281b(this.f5626f);
            this.f5628h.m7299b(i);
        }
    }

    void m7290a(ProGuard proGuard, long j, long j2, long j3) {
        if (proGuard.f5570f != null) {
            Map hashMap = new HashMap();
            hashMap.put("dsize", String.valueOf(j));
            hashMap.put("dtime", p028c.p029a.ProGuard.m2850a().split(" ")[f5623c]);
            float f = 0.0f;
            if (j2 > 0) {
                f = ((float) j) / ((float) j2);
            }
            hashMap.put("dpcent", String.valueOf((int) (f * 100.0f)));
            hashMap.put("ptimes", String.valueOf(j3));
            m7291a(hashMap, false, proGuard.f5570f);
        }
    }

    final void m7291a(Map<String, String> map, boolean z, String[] strArr) {
        new Thread(new ProGuard(this, strArr, z, map)).start();
    }

    boolean m7293a(DownloadingService downloadingService, Intent intent) {
        Context applicationContext;
        int parseInt;
        ProGuard proGuard;
        Message obtain;
        try {
            applicationContext = downloadingService.getApplicationContext();
            String[] split = intent.getExtras().getString(ProGuard.f5636e).split(":");
            parseInt = Integer.parseInt(split[f5621a]);
            CharSequence trim = split[f5623c].trim();
            if (!(parseInt == 0 || TextUtils.isEmpty(trim) || this.f5626f.indexOfKey(parseInt) < 0)) {
                proGuard = (ProGuard) this.f5626f.get(parseInt);
                com.umeng.update.net.DownloadingService.ProGuard proGuard2 = proGuard.f5609a;
                if (ProGuard.f5633b.equals(trim)) {
                    if (proGuard2 == null) {
                        p028c.p029a.ProGuard.m2811c(f5625e, "Receive action do play click.");
                        if (!p028c.p029a.ProGuard.m2797a(applicationContext, UpdateConfig.f5446g) || p028c.p029a.ProGuard.m2801e(applicationContext)) {
                            downloadingService.getClass();
                            proGuard2 = new com.umeng.update.net.DownloadingService.ProGuard(downloadingService, applicationContext, proGuard.f5613e, parseInt, proGuard.f5612d, downloadingService.f5560q);
                            proGuard.f5609a = proGuard2;
                            proGuard2.start();
                            obtain = Message.obtain();
                            obtain.what = f5624d;
                            obtain.arg1 = 7;
                            obtain.arg2 = parseInt;
                            try {
                                if (this.f5627g.get(proGuard.f5613e) != null) {
                                    ((Messenger) this.f5627g.get(proGuard.f5613e)).send(obtain);
                                }
                            } catch (Exception e) {
                                p028c.p029a.ProGuard.m2810b(f5625e, "", e);
                            }
                            return true;
                        }
                        Toast.makeText(applicationContext, applicationContext.getResources().getString(p028c.p029a.ProGuard.m2834a(applicationContext.getApplicationContext())), f5623c).show();
                        return false;
                    }
                    p028c.p029a.ProGuard.m2811c(f5625e, "Receive action do play click.");
                    proGuard2.m7219a((int) f5623c);
                    proGuard.f5609a = null;
                    m7288a(applicationContext, parseInt);
                    obtain = Message.obtain();
                    obtain.what = f5624d;
                    obtain.arg1 = 6;
                    obtain.arg2 = parseInt;
                    try {
                        if (this.f5627g.get(proGuard.f5613e) != null) {
                            ((Messenger) this.f5627g.get(proGuard.f5613e)).send(obtain);
                        }
                    } catch (Exception e2) {
                        p028c.p029a.ProGuard.m2810b(f5625e, "", e2);
                    }
                    return true;
                } else if (ProGuard.f5634c.equals(trim)) {
                    p028c.p029a.ProGuard.m2811c(f5625e, "Receive action do stop click.");
                    if (proGuard2 != null) {
                        proGuard2.m7219a((int) f5624d);
                    } else {
                        m7290a(proGuard.f5613e, proGuard.f5614f[f5621a], proGuard.f5614f[f5623c], proGuard.f5614f[f5624d]);
                    }
                    obtain = Message.obtain();
                    obtain.what = 5;
                    obtain.arg1 = 5;
                    obtain.arg2 = parseInt;
                    try {
                        if (this.f5627g.get(proGuard.f5613e) != null) {
                            ((Messenger) this.f5627g.get(proGuard.f5613e)).send(obtain);
                        }
                        m7296b(applicationContext, parseInt);
                    } catch (RemoteException e3) {
                        m7296b(applicationContext, parseInt);
                    }
                    return true;
                }
            }
        } catch (Exception e4) {
            obtain = Message.obtain();
            obtain.what = 5;
            obtain.arg1 = 5;
            obtain.arg2 = parseInt;
            try {
                if (this.f5627g.get(proGuard.f5613e) != null) {
                    ((Messenger) this.f5627g.get(proGuard.f5613e)).send(obtain);
                }
                m7296b(applicationContext, parseInt);
            } catch (RemoteException e5) {
                m7296b(applicationContext, parseInt);
            }
        } catch (Exception e22) {
            e22.printStackTrace();
        } catch (Throwable th) {
            Throwable th2 = th;
            Message obtain2 = Message.obtain();
            obtain2.what = 5;
            obtain2.arg1 = 5;
            obtain2.arg2 = parseInt;
            try {
                if (this.f5627g.get(proGuard.f5613e) != null) {
                    ((Messenger) this.f5627g.get(proGuard.f5613e)).send(obtain2);
                }
                m7296b(applicationContext, parseInt);
            } catch (RemoteException e6) {
                m7296b(applicationContext, parseInt);
            }
        }
        return false;
    }
}
