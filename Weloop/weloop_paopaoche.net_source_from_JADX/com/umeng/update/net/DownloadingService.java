package com.umeng.update.net;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.SparseArray;
import android.widget.Toast;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.umeng.update.util.DeltaUpdate;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ProGuard */
public class DownloadingService extends Service {
    private static final long f5529C = 8000;
    private static final long f5530D = 500;
    private static Map<com.umeng.update.net.ProGuard.ProGuard, Messenger> f5531E = null;
    private static SparseArray<com.umeng.update.net.ProGuard.ProGuard> f5532F = null;
    private static Boolean f5533I = null;
    static final int f5534a = 1;
    static final int f5535b = 2;
    static final int f5536c = 3;
    static final int f5537d = 4;
    static final int f5538e = 5;
    static final int f5539f = 6;
    public static final int f5540g = 0;
    public static final int f5541h = 1;
    public static final int f5542i = 2;
    public static final int f5543j = 3;
    public static final int f5544k = 4;
    public static final int f5545l = 5;
    public static final int f5546m = 6;
    public static final int f5547n = 7;
    static final int f5548o = 100;
    static final String f5549p = "filename";
    public static boolean f5550r = false;
    private static final String f5551t;
    private static final long f5552w = 104857600;
    private static final long f5553x = 10485760;
    private static final long f5554y = 259200000;
    private static final int f5555z = 3;
    private Context f5556A;
    private Handler f5557B;
    private ProGuard f5558G;
    private boolean f5559H;
    ProGuard f5560q;
    final Messenger f5561s;
    private NotificationManager f5562u;
    private ProGuard f5563v;

    /* renamed from: com.umeng.update.net.DownloadingService.1 */
    class ProGuard extends Handler {
        final /* synthetic */ DownloadingService f5510a;

        ProGuard(DownloadingService downloadingService) {
            this.f5510a = downloadingService;
        }

        public void handleMessage(Message message) {
            int i;
            switch (message.what) {
                case DownloadingService.f5545l /*5*/:
                    com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) message.obj;
                    i = message.arg2;
                    try {
                        Notification notification;
                        String string = message.getData().getString(DownloadingService.f5549p);
                        ProGuard.m7331a(string, 39, -1, -1);
                        p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "Cancel old notification....");
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.addFlags(268435456);
                        intent.setDataAndType(Uri.fromFile(new File(string)), "application/vnd.android.package-archive");
                        PendingIntent activity = PendingIntent.getActivity(this.f5510a.f5556A, DownloadingService.f5540g, intent, 134217728);
                        Notification notification2;
                        if (proGuard.f5572h) {
                            notification2 = new Notification(17301634, this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2846m(this.f5510a.f5556A)), System.currentTimeMillis());
                            notification2.setLatestEventInfo(this.f5510a.f5556A, proGuard.f5566b, this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2846m(this.f5510a.f5556A)), activity);
                            notification = notification2;
                        } else {
                            notification2 = new Notification(17301634, this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2844k(this.f5510a.f5556A)), System.currentTimeMillis());
                            notification2.setLatestEventInfo(this.f5510a.f5556A, proGuard.f5566b, this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2844k(this.f5510a.f5556A)), activity);
                            notification = notification2;
                        }
                        notification.flags = 16;
                        this.f5510a.f5562u = (NotificationManager) this.f5510a.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
                        this.f5510a.f5562u.notify(i + DownloadingService.f5541h, notification);
                        p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "Show new  notification....");
                        boolean a = this.f5510a.f5563v.m7292a(this.f5510a.f5556A);
                        String a2 = DownloadingService.f5551t;
                        Object[] objArr = new Object[DownloadingService.f5541h];
                        objArr[DownloadingService.f5540g] = Boolean.valueOf(a);
                        p028c.p029a.ProGuard.m2811c(a2, String.format("isAppOnForeground = %1$B", objArr));
                        if (a && !proGuard.f5572h) {
                            this.f5510a.f5562u.cancel(i + DownloadingService.f5541h);
                            this.f5510a.f5556A.startActivity(intent);
                        }
                        String a3 = DownloadingService.f5551t;
                        Object[] objArr2 = new Object[DownloadingService.f5542i];
                        objArr2[DownloadingService.f5540g] = proGuard.f5566b;
                        objArr2[DownloadingService.f5541h] = string;
                        p028c.p029a.ProGuard.m2807a(a3, String.format("%1$10s downloaded. Saved to: %2$s", objArr2));
                    } catch (Exception e) {
                        p028c.p029a.ProGuard.m2809b(DownloadingService.f5551t, "can not install. " + e.getMessage());
                        this.f5510a.f5562u.cancel(i + DownloadingService.f5541h);
                    }
                case DownloadingService.f5546m /*6*/:
                    com.umeng.update.net.ProGuard.ProGuard proGuard2 = (com.umeng.update.net.ProGuard.ProGuard) message.obj;
                    i = message.arg2;
                    String string2 = message.getData().getString(DownloadingService.f5549p);
                    this.f5510a.f5562u.cancel(i);
                    Notification notification3 = new Notification(17301633, this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2847n(this.f5510a.f5556A)), System.currentTimeMillis());
                    notification3.setLatestEventInfo(this.f5510a.f5556A, p028c.p029a.ProGuard.m2806j(this.f5510a.f5556A), this.f5510a.f5556A.getString(p028c.p029a.ProGuard.m2847n(this.f5510a.f5556A)), PendingIntent.getActivity(this.f5510a.f5556A, DownloadingService.f5540g, new Intent(), 134217728));
                    this.f5510a.f5562u.notify(i + DownloadingService.f5541h, notification3);
                    String replace = string2.replace(".patch", ".apk");
                    String a4 = DeltaUpdate.m7338a(this.f5510a);
                    ProGuard a5 = this.f5510a.f5563v;
                    a5.getClass();
                    com.umeng.update.net.ProGuard.ProGuard proGuard3 = new com.umeng.update.net.ProGuard.ProGuard(a5, this.f5510a.f5556A, i, proGuard2, replace);
                    String[] strArr = new String[DownloadingService.f5555z];
                    strArr[DownloadingService.f5540g] = a4;
                    strArr[DownloadingService.f5541h] = replace;
                    strArr[DownloadingService.f5542i] = string2;
                    proGuard3.execute(strArr);
                default:
            }
        }
    }

    /* renamed from: com.umeng.update.net.DownloadingService.a */
    interface ProGuard {
        void m7202a(int i);

        void m7203a(int i, int i2);

        void m7204a(int i, Exception exception);

        void m7205a(int i, String str);
    }

    /* renamed from: com.umeng.update.net.DownloadingService.2 */
    class ProGuard implements ProGuard {
        SparseArray<Long> f5511a;
        final /* synthetic */ DownloadingService f5512b;

        ProGuard(DownloadingService downloadingService) {
            this.f5512b = downloadingService;
            this.f5511a = new SparseArray();
        }

        public void m7206a(int i) {
            int i2 = DownloadingService.f5540g;
            if (DownloadingService.f5532F.indexOfKey(i) >= 0) {
                com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(i);
                long[] jArr = proGuard.f5614f;
                if (jArr != null && jArr[DownloadingService.f5541h] > 0) {
                    i2 = (int) ((((float) jArr[DownloadingService.f5540g]) / ((float) jArr[DownloadingService.f5541h])) * 100.0f);
                    if (i2 > DownloadingService.f5548o) {
                        i2 = 99;
                    }
                }
                if (!proGuard.f5613e.f5572h) {
                    this.f5511a.put(i, Long.valueOf(-1));
                    com.umeng.update.net.ProGuard.ProGuard a = this.f5512b.f5563v.m7287a(this.f5512b, proGuard.f5613e, i, i2);
                    proGuard.f5610b = a;
                    this.f5512b.f5562u.notify(i, a.m7279d());
                }
            }
        }

        public void m7207a(int i, int i2) {
            if (DownloadingService.f5532F.indexOfKey(i) >= 0) {
                com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(i);
                com.umeng.update.net.ProGuard.ProGuard proGuard2 = proGuard.f5613e;
                long currentTimeMillis = System.currentTimeMillis();
                if (!proGuard2.f5572h && currentTimeMillis - ((Long) this.f5511a.get(i)).longValue() > DownloadingService.f5530D) {
                    this.f5511a.put(i, Long.valueOf(currentTimeMillis));
                    com.umeng.update.net.ProGuard.ProGuard proGuard3 = proGuard.f5610b;
                    proGuard3.m7271a((int) DownloadingService.f5548o, i2, false).m7274a(String.valueOf(i2) + "%");
                    this.f5512b.f5562u.notify(i, proGuard3.m7279d());
                }
                String a = DownloadingService.f5551t;
                Object[] objArr = new Object[DownloadingService.f5555z];
                objArr[DownloadingService.f5540g] = Integer.valueOf(i);
                objArr[DownloadingService.f5541h] = Integer.valueOf(i2);
                objArr[DownloadingService.f5542i] = proGuard2.f5566b;
                p028c.p029a.ProGuard.m2811c(a, String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", objArr));
            }
        }

        public void m7209a(int i, String str) {
            if (DownloadingService.f5532F.indexOfKey(i) >= 0) {
                com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(i);
                if (proGuard != null) {
                    com.umeng.update.net.ProGuard.ProGuard proGuard2 = proGuard.f5613e;
                    ProGuard.m7259a(this.f5512b.f5556A).m7263a(proGuard2.f5565a, proGuard2.f5567c, (int) DownloadingService.f5548o);
                    Bundle bundle = new Bundle();
                    bundle.putString(DownloadingService.f5549p, str);
                    Message obtain;
                    if (proGuard2.f5565a.equalsIgnoreCase("delta_update")) {
                        obtain = Message.obtain();
                        obtain.what = DownloadingService.f5546m;
                        obtain.arg1 = DownloadingService.f5541h;
                        obtain.obj = proGuard2;
                        obtain.arg2 = i;
                        obtain.setData(bundle);
                        this.f5512b.f5557B.sendMessage(obtain);
                        return;
                    }
                    obtain = Message.obtain();
                    obtain.what = DownloadingService.f5545l;
                    obtain.arg1 = DownloadingService.f5541h;
                    obtain.obj = proGuard2;
                    obtain.arg2 = i;
                    obtain.setData(bundle);
                    this.f5512b.f5557B.sendMessage(obtain);
                    obtain = Message.obtain();
                    obtain.what = DownloadingService.f5545l;
                    obtain.arg1 = DownloadingService.f5541h;
                    obtain.arg2 = i;
                    obtain.setData(bundle);
                    try {
                        if (DownloadingService.f5531E.get(proGuard2) != null) {
                            ((Messenger) DownloadingService.f5531E.get(proGuard2)).send(obtain);
                        }
                        this.f5512b.f5563v.m7296b(this.f5512b.f5556A, i);
                    } catch (RemoteException e) {
                        this.f5512b.f5563v.m7296b(this.f5512b.f5556A, i);
                    }
                }
            }
        }

        public void m7208a(int i, Exception exception) {
            if (DownloadingService.f5532F.indexOfKey(i) >= 0) {
                this.f5512b.f5563v.m7296b(this.f5512b.f5556A, i);
            }
        }
    }

    /* renamed from: com.umeng.update.net.DownloadingService.3 */
    class ProGuard implements Runnable {
        final /* synthetic */ String f5513a;
        final /* synthetic */ DownloadingService f5514b;

        ProGuard(DownloadingService downloadingService, String str) {
            this.f5514b = downloadingService;
            this.f5513a = str;
        }

        public void run() {
            Toast.makeText(this.f5514b.f5556A, this.f5513a, DownloadingService.f5540g).show();
        }
    }

    /* renamed from: com.umeng.update.net.DownloadingService.4 */
    class ProGuard implements Runnable {
        final /* synthetic */ DownloadingService f5515a;

        ProGuard(DownloadingService downloadingService) {
            this.f5515a = downloadingService;
        }

        public void run() {
            DownloadingService.f5533I = Boolean.valueOf(false);
        }
    }

    /* renamed from: com.umeng.update.net.DownloadingService.b */
    class ProGuard extends Thread {
        final /* synthetic */ DownloadingService f5517a;
        private Context f5518b;
        private boolean f5519c;
        private File f5520d;
        private int f5521e;
        private long f5522f;
        private long f5523g;
        private int f5524h;
        private int f5525i;
        private ProGuard f5526j;
        private com.umeng.update.net.ProGuard.ProGuard f5527k;

        /* renamed from: com.umeng.update.net.DownloadingService.b.1 */
        class ProGuard implements Runnable {
            final /* synthetic */ ProGuard f5516a;

            ProGuard(ProGuard proGuard) {
                this.f5516a = proGuard;
            }

            public void run() {
                Toast.makeText(this.f5516a.f5517a, p028c.p029a.ProGuard.m2842i(this.f5516a.f5518b), DownloadingService.f5540g).show();
            }
        }

        public ProGuard(DownloadingService downloadingService, Context context, com.umeng.update.net.ProGuard.ProGuard proGuard, int i, int i2, ProGuard proGuard2) {
            this.f5517a = downloadingService;
            this.f5521e = DownloadingService.f5540g;
            this.f5522f = -1;
            this.f5523g = -1;
            this.f5524h = -1;
            try {
                this.f5518b = context;
                this.f5527k = proGuard;
                this.f5521e = i2;
                if (DownloadingService.f5532F.indexOfKey(i) >= 0) {
                    long[] jArr = ((com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(i)).f5614f;
                    if (jArr != null && jArr.length > DownloadingService.f5541h) {
                        this.f5522f = jArr[DownloadingService.f5540g];
                        this.f5523g = jArr[DownloadingService.f5541h];
                    }
                }
                this.f5526j = proGuard2;
                this.f5525i = i;
                boolean[] zArr = new boolean[DownloadingService.f5541h];
                this.f5520d = ProGuard.m7318a("/apk", context, zArr);
                this.f5519c = zArr[DownloadingService.f5540g];
                ProGuard.m7328a(this.f5520d, this.f5519c ? DownloadingService.f5552w : DownloadingService.f5553x, (long) DownloadingService.f5554y);
                this.f5520d = new File(this.f5520d, m7211a(this.f5527k));
            } catch (Exception e) {
                p028c.p029a.ProGuard.m2812c(DownloadingService.f5551t, e.getMessage(), e);
                this.f5526j.m7204a(this.f5525i, e);
            }
        }

        public void run() {
            boolean z = false;
            this.f5521e = DownloadingService.f5540g;
            try {
                if (this.f5526j != null) {
                    this.f5526j.m7202a(this.f5525i);
                }
                if (this.f5522f > 0) {
                    z = true;
                }
                m7216a(z);
                if (DownloadingService.f5531E.size() <= 0) {
                    this.f5517a.stopSelf();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void m7219a(int i) {
            this.f5524h = i;
        }

        private void m7216a(boolean z) {
            FileOutputStream fileOutputStream;
            InputStream inputStream;
            Exception exception;
            int i;
            RemoteException e;
            Throwable th;
            InputStream inputStream2;
            FileOutputStream fileOutputStream2 = null;
            Object obj = null;
            String name = this.f5520d.getName();
            try {
                FileOutputStream fileOutputStream3 = new FileOutputStream(this.f5520d, true);
                try {
                    if (this.f5519c || ProGuard.m7330a(this.f5520d.getAbsolutePath(), (int) DownloadingService.f5555z)) {
                        fileOutputStream = fileOutputStream3;
                    } else {
                        fileOutputStream3.close();
                        fileOutputStream3 = this.f5518b.openFileOutput(name, 32771);
                        try {
                            this.f5520d = this.f5518b.getFileStreamPath(name);
                            fileOutputStream = fileOutputStream3;
                        } catch (Exception e2) {
                            inputStream = null;
                            fileOutputStream2 = fileOutputStream3;
                            exception = e2;
                            try {
                                p028c.p029a.ProGuard.m2812c(DownloadingService.f5551t, exception.getMessage(), exception);
                                i = this.f5521e + DownloadingService.f5541h;
                                this.f5521e = i;
                                if (i > DownloadingService.f5555z) {
                                }
                                m7213a();
                            } catch (RemoteException e3) {
                                e3.printStackTrace();
                                this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                                m7215a(exception);
                                this.f5517a.f5557B.post(new ProGuard(this));
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream = fileOutputStream2;
                                inputStream2 = inputStream;
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e42) {
                                                e42.printStackTrace();
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e422) {
                                                e422.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e4222) {
                                        e4222.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    if (fileOutputStream2 != null) {
                                        try {
                                            fileOutputStream2.close();
                                            return;
                                        } catch (IOException e52) {
                                            e52.printStackTrace();
                                            return;
                                        }
                                    }
                                    return;
                                } catch (Throwable th4) {
                                    if (fileOutputStream2 != null) {
                                        try {
                                            fileOutputStream2.close();
                                        } catch (IOException e42222) {
                                            e42222.printStackTrace();
                                        }
                                    }
                                }
                            }
                            if (fileOutputStream2 == null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e522) {
                                    e522.printStackTrace();
                                    return;
                                }
                            }
                        } catch (RemoteException e6) {
                            e3 = e6;
                            fileOutputStream = fileOutputStream3;
                            inputStream2 = null;
                            try {
                                this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                                e3.printStackTrace();
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (IOException e5222) {
                                        e5222.printStackTrace();
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                                return;
                                            } catch (IOException e52222) {
                                                e52222.printStackTrace();
                                                return;
                                            }
                                        }
                                        return;
                                    } catch (Throwable th5) {
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e422222) {
                                                e422222.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                if (fileOutputStream == null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e522222) {
                                        e522222.printStackTrace();
                                        return;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                if (inputStream2 != null) {
                                    inputStream2.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            fileOutputStream = fileOutputStream3;
                            inputStream2 = null;
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    }
                    try {
                        String a = DownloadingService.f5551t;
                        Object[] objArr = new Object[DownloadingService.f5542i];
                        objArr[DownloadingService.f5540g] = this.f5527k.f5567c;
                        objArr[DownloadingService.f5541h] = this.f5520d.getAbsolutePath();
                        p028c.p029a.ProGuard.m2811c(a, String.format("saveAPK: url = %1$15s\t|\tfilename = %2$15s", objArr));
                        HttpURLConnection a2 = m7212a(new URL(this.f5527k.f5567c), this.f5520d);
                        a2.connect();
                        inputStream2 = a2.getInputStream();
                        if (!z) {
                            long j = 0;
                            try {
                                if (this.f5520d.exists() && this.f5520d.length() > 0) {
                                    j = 0 + this.f5520d.length();
                                }
                                this.f5522f = j;
                                this.f5523g = j + ((long) a2.getContentLength());
                                String a3 = DownloadingService.f5551t;
                                objArr = new Object[DownloadingService.f5541h];
                                objArr[DownloadingService.f5540g] = Long.valueOf(this.f5522f);
                                p028c.p029a.ProGuard.m2811c(a3, String.format("getFileLength: %1$15s", objArr));
                                a3 = DownloadingService.f5551t;
                                objArr = new Object[DownloadingService.f5541h];
                                objArr[DownloadingService.f5540g] = Integer.valueOf(a2.getContentLength());
                                p028c.p029a.ProGuard.m2811c(a3, String.format("getConnectionLength: %1$15s", objArr));
                                a = DownloadingService.f5551t;
                                Object[] objArr2 = new Object[DownloadingService.f5541h];
                                objArr2[DownloadingService.f5540g] = Long.valueOf(this.f5523g);
                                p028c.p029a.ProGuard.m2811c(a, String.format("getContentLength: %1$15s", objArr2));
                            } catch (Exception e22) {
                                exception = e22;
                                fileOutputStream2 = fileOutputStream;
                                inputStream = inputStream2;
                            } catch (RemoteException e7) {
                                e3 = e7;
                            }
                        }
                        byte[] bArr = new byte[4096];
                        p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, this.f5527k.f5566b + "saveAPK getContentLength " + String.valueOf(this.f5523g));
                        ProGuard.m7259a(this.f5518b).m7265a(this.f5527k.f5565a, this.f5527k.f5567c);
                        int i2 = DownloadingService.f5540g;
                        while (this.f5524h < 0) {
                            int read = inputStream2.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, DownloadingService.f5540g, read);
                            this.f5522f += (long) read;
                            read = i2 + DownloadingService.f5541h;
                            if (i2 % 50 != 0) {
                                i2 = read;
                            } else if (!p028c.p029a.ProGuard.m2801e(this.f5518b)) {
                                break;
                            } else if (p028c.p029a.ProGuard.m2800d(this.f5518b) || !this.f5527k.f5573i) {
                                i2 = (int) ((((float) this.f5522f) * 100.0f) / ((float) this.f5523g));
                                if (i2 > DownloadingService.f5548o) {
                                    i2 = 99;
                                }
                                if (this.f5526j != null) {
                                    this.f5526j.m7203a(this.f5525i, i2);
                                }
                                m7218b(i2);
                                ProGuard.m7259a(this.f5518b).m7263a(this.f5527k.f5565a, this.f5527k.f5567c, i2);
                                i2 = read;
                            } else {
                                p028c.p029a.ProGuard.m2809b(DownloadingService.f5551t, "no wifi");
                                throw new IOException("no wifi");
                            }
                        }
                        obj = DownloadingService.f5541h;
                        inputStream2.close();
                        fileOutputStream.close();
                        if (this.f5524h == DownloadingService.f5541h) {
                            com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(this.f5525i);
                            proGuard.f5614f[DownloadingService.f5540g] = this.f5522f;
                            proGuard.f5614f[DownloadingService.f5541h] = this.f5523g;
                            proGuard.f5614f[DownloadingService.f5542i] = (long) this.f5521e;
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e5222222) {
                                    e5222222.printStackTrace();
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                            return;
                                        } catch (IOException e52222222) {
                                            e52222222.printStackTrace();
                                            return;
                                        }
                                    }
                                    return;
                                } catch (Throwable th8) {
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e4222222) {
                                            e4222222.printStackTrace();
                                        }
                                    }
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e522222222) {
                                    e522222222.printStackTrace();
                                }
                            }
                        } else if (this.f5524h == DownloadingService.f5542i) {
                            this.f5517a.f5563v.m7290a(this.f5527k, this.f5522f, this.f5523g, (long) this.f5521e);
                            this.f5517a.f5562u.cancel(this.f5525i);
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e5222222222) {
                                    e5222222222.printStackTrace();
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                            return;
                                        } catch (IOException e52222222222) {
                                            e52222222222.printStackTrace();
                                            return;
                                        }
                                    }
                                    return;
                                } catch (Throwable th9) {
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e42222222) {
                                            e42222222.printStackTrace();
                                        }
                                    }
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e522222222222) {
                                    e522222222222.printStackTrace();
                                }
                            }
                        } else {
                            if (obj == null) {
                                p028c.p029a.ProGuard.m2809b(DownloadingService.f5551t, "Download Fail repeat count=" + this.f5521e);
                                ((Messenger) DownloadingService.f5531E.get(this.f5527k)).send(Message.obtain(null, DownloadingService.f5545l, DownloadingService.f5540g, DownloadingService.f5540g));
                                this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                                if (this.f5526j != null) {
                                    this.f5526j.m7204a(this.f5525i, null);
                                }
                            } else {
                                m7217b();
                                File file = new File(this.f5520d.getParent(), this.f5520d.getName().replace(".tmp", ""));
                                this.f5520d.renameTo(file);
                                a = file.getAbsolutePath();
                                m7214a(file, a);
                                if (this.f5526j != null) {
                                    this.f5526j.m7205a(this.f5525i, a);
                                }
                            }
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e5222222222222) {
                                    e5222222222222.printStackTrace();
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                            return;
                                        } catch (IOException e52222222222222) {
                                            e52222222222222.printStackTrace();
                                            return;
                                        }
                                    }
                                    return;
                                } catch (Throwable th10) {
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e422222222) {
                                            e422222222.printStackTrace();
                                        }
                                    }
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e522222222222222) {
                                    e522222222222222.printStackTrace();
                                }
                            }
                        }
                    } catch (Exception e222) {
                        exception = e222;
                        inputStream = null;
                        fileOutputStream2 = fileOutputStream;
                        p028c.p029a.ProGuard.m2812c(DownloadingService.f5551t, exception.getMessage(), exception);
                        i = this.f5521e + DownloadingService.f5541h;
                        this.f5521e = i;
                        if (i > DownloadingService.f5555z) {
                        }
                        m7213a();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (fileOutputStream2 == null) {
                            fileOutputStream2.close();
                        }
                    } catch (RemoteException e8) {
                        e3 = e8;
                        inputStream2 = null;
                        this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                        e3.printStackTrace();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (fileOutputStream == null) {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        inputStream2 = null;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Exception e2222) {
                    inputStream = null;
                    fileOutputStream2 = fileOutputStream3;
                    exception = e2222;
                    p028c.p029a.ProGuard.m2812c(DownloadingService.f5551t, exception.getMessage(), exception);
                    i = this.f5521e + DownloadingService.f5541h;
                    this.f5521e = i;
                    if (i > DownloadingService.f5555z || this.f5527k.f5571g) {
                        m7213a();
                    } else {
                        p028c.p029a.ProGuard.m2809b(DownloadingService.f5551t, "Download Fail out of max repeat count");
                        ((Messenger) DownloadingService.f5531E.get(this.f5527k)).send(Message.obtain(null, DownloadingService.f5545l, DownloadingService.f5540g, DownloadingService.f5540g));
                        this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                        m7215a(exception);
                        this.f5517a.f5557B.post(new ProGuard(this));
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (fileOutputStream2 == null) {
                        fileOutputStream2.close();
                    }
                } catch (RemoteException e9) {
                    e3 = e9;
                    fileOutputStream = fileOutputStream3;
                    inputStream2 = null;
                    this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                    e3.printStackTrace();
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    if (fileOutputStream == null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th12) {
                    th = th12;
                    fileOutputStream = fileOutputStream3;
                    inputStream2 = null;
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e22222) {
                exception = e22222;
                inputStream = null;
                p028c.p029a.ProGuard.m2812c(DownloadingService.f5551t, exception.getMessage(), exception);
                i = this.f5521e + DownloadingService.f5541h;
                this.f5521e = i;
                if (i > DownloadingService.f5555z) {
                }
                m7213a();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (fileOutputStream2 == null) {
                    fileOutputStream2.close();
                }
            } catch (RemoteException e10) {
                e3 = e10;
                fileOutputStream = null;
                inputStream2 = null;
                this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                e3.printStackTrace();
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (fileOutputStream == null) {
                    fileOutputStream.close();
                }
            } catch (Throwable th13) {
                th = th13;
                fileOutputStream = null;
                inputStream2 = null;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        }

        private void m7213a() {
            p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "wait for repeating Test network repeat count=" + this.f5521e);
            try {
                if (this.f5527k.f5571g) {
                    com.umeng.update.net.ProGuard.ProGuard proGuard = (com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(this.f5525i);
                    proGuard.f5614f[DownloadingService.f5540g] = this.f5522f;
                    proGuard.f5614f[DownloadingService.f5541h] = this.f5523g;
                    proGuard.f5614f[DownloadingService.f5542i] = (long) this.f5521e;
                    String a = ProGuard.m7303a(this.f5525i, ProGuard.f5633b);
                    Intent intent = new Intent(this.f5518b, DownloadingService.class);
                    intent.putExtra(ProGuard.f5636e, a);
                    this.f5517a.f5563v.m7293a(this.f5517a, intent);
                    this.f5517a.m7227a(this.f5518b.getString(p028c.p029a.ProGuard.m2836c(this.f5518b)));
                    p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "changed play state button on op-notification.");
                    return;
                }
                Thread.sleep(DownloadingService.f5529C);
                if (this.f5523g < 1) {
                    m7216a(false);
                } else {
                    m7216a(true);
                }
            } catch (Exception e) {
                m7215a(e);
                this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
            }
        }

        private void m7218b(int i) {
            try {
                if (DownloadingService.f5531E.get(this.f5527k) != null) {
                    ((Messenger) DownloadingService.f5531E.get(this.f5527k)).send(Message.obtain(null, DownloadingService.f5555z, i, DownloadingService.f5540g));
                }
            } catch (DeadObjectException e) {
                String a = DownloadingService.f5551t;
                Object[] objArr = new Object[DownloadingService.f5541h];
                objArr[DownloadingService.f5540g] = this.f5527k.f5566b;
                p028c.p029a.ProGuard.m2809b(a, String.format("Service Client for downloading %1$15s is dead. Removing messenger from the service", objArr));
                DownloadingService.f5531E.put(this.f5527k, null);
            }
        }

        private HttpURLConnection m7212a(URL url, File file) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.addRequestProperty("Connection", "keep-alive");
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(10000);
            if (file.exists() && file.length() > 0) {
                String a = DownloadingService.f5551t;
                String str = this.f5527k.f5566b + " getFileLength: %1$15s";
                Object[] objArr = new Object[DownloadingService.f5541h];
                objArr[DownloadingService.f5540g] = Long.valueOf(file.length());
                p028c.p029a.ProGuard.m2811c(a, String.format(str, objArr));
                httpURLConnection.setRequestProperty("Range", "bytes=" + file.length() + "-");
            }
            return httpURLConnection;
        }

        private String m7211a(com.umeng.update.net.ProGuard.ProGuard proGuard) {
            String str;
            if (this.f5527k.f5569e != null) {
                str = this.f5527k.f5569e + ".apk.tmp";
            } else {
                str = p028c.p029a.ProGuard.m2852a(this.f5527k.f5567c) + ".apk.tmp";
            }
            if (this.f5527k.f5565a.equalsIgnoreCase("delta_update")) {
                return str.replace(".apk", ".patch");
            }
            return str;
        }

        private void m7217b() {
            if (this.f5527k.f5570f != null) {
                Map hashMap = new HashMap();
                hashMap.put("dsize", String.valueOf(this.f5523g));
                hashMap.put("dtime", p028c.p029a.ProGuard.m2850a().split(" ")[DownloadingService.f5541h]);
                hashMap.put("ptimes", String.valueOf(this.f5521e));
                this.f5517a.f5563v.m7291a(hashMap, true, this.f5527k.f5570f);
            }
        }

        private void m7214a(File file, String str) {
            p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "itemMd5 " + this.f5527k.f5568d);
            p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "fileMd5 " + p028c.p029a.ProGuard.m2851a(file));
            if (this.f5527k.f5568d != null && !this.f5527k.f5568d.equalsIgnoreCase(p028c.p029a.ProGuard.m2851a(file))) {
                if (this.f5527k.f5565a.equalsIgnoreCase("delta_update")) {
                    this.f5517a.f5562u.cancel(this.f5525i);
                    Bundle bundle = new Bundle();
                    bundle.putString(DownloadingService.f5549p, str);
                    Message obtain = Message.obtain();
                    obtain.what = DownloadingService.f5545l;
                    obtain.arg1 = DownloadingService.f5555z;
                    obtain.arg2 = this.f5525i;
                    obtain.setData(bundle);
                    try {
                        if (DownloadingService.f5531E.get(this.f5527k) != null) {
                            ((Messenger) DownloadingService.f5531E.get(this.f5527k)).send(obtain);
                        }
                        this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                        return;
                    } catch (RemoteException e) {
                        this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                        return;
                    }
                }
                ((Messenger) DownloadingService.f5531E.get(this.f5527k)).send(Message.obtain(null, DownloadingService.f5545l, DownloadingService.f5540g, DownloadingService.f5540g));
                if (!this.f5527k.f5572h) {
                    this.f5517a.f5563v.m7296b(this.f5518b, this.f5525i);
                    Notification notification = new Notification(17301634, this.f5518b.getString(p028c.p029a.ProGuard.m2842i(this.f5518b)), System.currentTimeMillis());
                    notification.setLatestEventInfo(this.f5518b, p028c.p029a.ProGuard.m2806j(this.f5518b), this.f5527k.f5566b + this.f5518b.getString(p028c.p029a.ProGuard.m2842i(this.f5518b)), PendingIntent.getActivity(this.f5518b, DownloadingService.f5540g, new Intent(), DownloadingService.f5540g));
                    notification.flags |= 16;
                    this.f5517a.f5562u.notify(this.f5525i, notification);
                }
            }
        }

        private void m7215a(Exception exception) {
            p028c.p029a.ProGuard.m2809b(DownloadingService.f5551t, "can not install. " + exception.getMessage());
            if (this.f5526j != null) {
                this.f5526j.m7204a(this.f5525i, exception);
            }
            this.f5517a.f5563v.m7290a(this.f5527k, this.f5522f, this.f5523g, (long) this.f5521e);
        }
    }

    /* renamed from: com.umeng.update.net.DownloadingService.c */
    class ProGuard extends Handler {
        final /* synthetic */ DownloadingService f5528a;

        ProGuard(DownloadingService downloadingService) {
            this.f5528a = downloadingService;
        }

        public void handleMessage(Message message) {
            p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "IncomingHandler(msg.what:" + message.what + " msg.arg1:" + message.arg1 + " msg.arg2:" + message.arg2 + " msg.replyTo:" + message.replyTo);
            switch (message.what) {
                case DownloadingService.f5544k /*4*/:
                    Bundle data = message.getData();
                    p028c.p029a.ProGuard.m2811c(DownloadingService.f5551t, "IncomingHandler(msg.getData():" + data);
                    com.umeng.update.net.ProGuard.ProGuard a = com.umeng.update.net.ProGuard.ProGuard.m7235a(data);
                    Message obtain;
                    if (this.f5528a.f5563v.m7294a(a, DownloadingService.f5550r, message.replyTo)) {
                        p028c.p029a.ProGuard.m2807a(DownloadingService.f5551t, a.f5566b + " is already in downloading list. ");
                        int b = this.f5528a.f5563v.m7295b(a);
                        if (b == -1 || ((com.umeng.update.net.ProGuard.ProGuard) DownloadingService.f5532F.get(b)).f5609a != null) {
                            Toast.makeText(this.f5528a.f5556A, p028c.p029a.ProGuard.m2835b(this.f5528a.f5556A), DownloadingService.f5540g).show();
                            obtain = Message.obtain();
                            obtain.what = DownloadingService.f5542i;
                            obtain.arg1 = DownloadingService.f5542i;
                            obtain.arg2 = DownloadingService.f5540g;
                            try {
                                message.replyTo.send(obtain);
                                return;
                            } catch (RemoteException e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        String a2 = ProGuard.m7303a(b, ProGuard.f5633b);
                        Intent intent = new Intent(this.f5528a.f5556A, DownloadingService.class);
                        intent.putExtra(ProGuard.f5636e, a2);
                        this.f5528a.f5563v.m7293a(this.f5528a, intent);
                    } else if (p028c.p029a.ProGuard.m2801e(this.f5528a.getApplicationContext())) {
                        DownloadingService.f5531E.put(a, message.replyTo);
                        obtain = Message.obtain();
                        obtain.what = DownloadingService.f5541h;
                        obtain.arg1 = DownloadingService.f5541h;
                        obtain.arg2 = DownloadingService.f5540g;
                        try {
                            message.replyTo.send(obtain);
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                        }
                        this.f5528a.m7226a(a);
                    } else {
                        Toast.makeText(this.f5528a.f5556A, p028c.p029a.ProGuard.m2834a(this.f5528a.f5556A), DownloadingService.f5540g).show();
                        obtain = Message.obtain();
                        obtain.what = DownloadingService.f5542i;
                        obtain.arg1 = DownloadingService.f5544k;
                        obtain.arg2 = DownloadingService.f5540g;
                        try {
                            message.replyTo.send(obtain);
                        } catch (RemoteException e22) {
                            e22.printStackTrace();
                        }
                    }
                default:
                    super.handleMessage(message);
            }
        }
    }

    public DownloadingService() {
        this.f5561s = new Messenger(new ProGuard(this));
        this.f5559H = true;
    }

    static {
        f5551t = DownloadingService.class.getName();
        f5550r = false;
        f5531E = new HashMap();
        f5532F = new SparseArray();
        f5533I = Boolean.valueOf(false);
    }

    public IBinder onBind(Intent intent) {
        p028c.p029a.ProGuard.m2811c(f5551t, "onBind ");
        return this.f5561s.getBinder();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (!(intent == null || intent.getExtras() == null || !intent.getExtras().containsKey(ProGuard.f5636e))) {
            this.f5563v.m7293a(this, intent);
        }
        if (VERSION.SDK_INT >= 19 && (this.f5558G.m7300b() || this.f5559H)) {
            try {
                Intent intent2 = new Intent(getApplicationContext(), getClass());
                intent2.setPackage(getPackageName());
                ((AlarmManager) getApplicationContext().getSystemService("alarm")).set(f5555z, SystemClock.elapsedRealtime() + 5000, PendingIntent.getService(getApplicationContext(), f5541h, intent2, 1073741824));
            } catch (Exception e) {
            }
        }
        if (this.f5559H) {
            m7233d();
            this.f5559H = false;
        }
        return f5541h;
    }

    public void onCreate() {
        super.onCreate();
        if (f5550r) {
            p028c.p029a.ProGuard.f1873a = true;
            Debug.waitForDebugger();
        }
        p028c.p029a.ProGuard.m2811c(f5551t, "onCreate ");
        this.f5562u = (NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        this.f5556A = this;
        this.f5558G = new ProGuard(this.f5556A);
        this.f5563v = new ProGuard(f5532F, f5531E, this.f5558G);
        this.f5557B = new ProGuard(this);
        this.f5560q = new ProGuard(this);
    }

    private void m7233d() {
        for (Integer intValue : this.f5558G.m7297a()) {
            this.f5562u.cancel(intValue.intValue());
        }
    }

    private void m7226a(com.umeng.update.net.ProGuard.ProGuard proGuard) {
        int i = f5540g;
        p028c.p029a.ProGuard.m2811c(f5551t, "startDownload([mComponentName:" + proGuard.f5565a + " mTitle:" + proGuard.f5566b + " mUrl:" + proGuard.f5567c + "])");
        int a = this.f5563v.m7286a(proGuard);
        ProGuard proGuard2 = new ProGuard(this, getApplicationContext(), proGuard, a, f5540g, this.f5560q);
        com.umeng.update.net.ProGuard.ProGuard proGuard3 = new com.umeng.update.net.ProGuard.ProGuard(proGuard, a);
        this.f5558G.m7298a(a);
        proGuard3.m7280a(f5532F);
        proGuard3.f5609a = proGuard2;
        proGuard2.start();
        m7234e();
        if (f5550r) {
            while (i < f5532F.size()) {
                p028c.p029a.ProGuard.m2811c(f5551t, "Running task " + ((com.umeng.update.net.ProGuard.ProGuard) f5532F.valueAt(i)).f5613e.f5566b);
                i += f5541h;
            }
        }
    }

    private void m7227a(String str) {
        synchronized (f5533I) {
            if (!f5533I.booleanValue()) {
                p028c.p029a.ProGuard.m2811c(f5551t, "show single toast.[" + str + "]");
                f5533I = Boolean.valueOf(true);
                this.f5557B.post(new ProGuard(this, str));
                this.f5557B.postDelayed(new ProGuard(this), 1200);
            }
        }
    }

    public void onDestroy() {
        try {
            ProGuard.m7259a(getApplicationContext()).m7262a(259200);
            ProGuard.m7259a(getApplicationContext()).finalize();
        } catch (Exception e) {
            p028c.p029a.ProGuard.m2809b(f5551t, e.getMessage());
        }
        super.onDestroy();
    }

    private void m7234e() {
        if (f5550r) {
            int size = f5531E.size();
            int size2 = f5532F.size();
            p028c.p029a.ProGuard.m2807a(f5551t, "Client size =" + size + "   cacheSize = " + size2);
            if (size != size2) {
                throw new RuntimeException("Client size =" + size + "   cacheSize = " + size2);
            }
        }
    }
}
