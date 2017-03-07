package com.baidu.mapapi.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.storage.StorageManager;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: com.baidu.mapapi.utils.i */
public final class C0594i {
    private static volatile C0594i f4649a;
    private boolean f4650b;
    private boolean f4651c;
    private final List<C0593h> f4652d;
    private C0593h f4653e;
    private String f4654f;

    static {
        f4649a = null;
    }

    private C0594i() {
        this.f4650b = false;
        this.f4651c = true;
        this.f4652d = new ArrayList();
        this.f4653e = null;
    }

    public static C0594i m6413a() {
        if (f4649a == null) {
            synchronized (C0594i.class) {
                if (f4649a == null) {
                    f4649a = new C0594i();
                }
            }
        }
        return f4649a;
    }

    private boolean m6414a(String str) {
        boolean createNewFile;
        Exception e;
        try {
            File file = new File(str + "/test.0");
            if (file.exists()) {
                file.delete();
            }
            createNewFile = file.createNewFile();
            try {
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return createNewFile;
            }
        } catch (Exception e3) {
            Exception exception = e3;
            createNewFile = false;
            e = exception;
            e.printStackTrace();
            return createNewFile;
        }
        return createNewFile;
    }

    @SuppressLint({"NewApi"})
    @TargetApi(14)
    private void m6415c(Context context) {
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Method method2 = storageManager.getClass().getMethod("getVolumeState", new Class[]{String.class});
            Class cls = Class.forName("android.os.storage.StorageVolume");
            Method method3 = cls.getMethod("isRemovable", new Class[0]);
            Method method4 = cls.getMethod("getPath", new Class[0]);
            Object[] objArr = (Object[]) method.invoke(storageManager, new Object[0]);
            if (objArr != null) {
                for (Object obj : objArr) {
                    String str = (String) method4.invoke(obj, new Object[0]);
                    if (str != null && str.length() > 0) {
                        if ("mounted".equals(method2.invoke(storageManager, new Object[]{str}))) {
                            Object obj2 = !((Boolean) method3.invoke(obj, new Object[0])).booleanValue() ? 1 : null;
                            if (VERSION.SDK_INT <= 19 && m6414a(str)) {
                                this.f4652d.add(new C0593h(str, obj2 == null, obj2 != null ? "\u5185\u7f6e\u5b58\u50a8\u5361" : "\u5916\u7f6e\u5b58\u50a8\u5361", context));
                            } else if (VERSION.SDK_INT >= 19 && new File(str + File.separator + "BaiduMapSDK").exists() && str.equals(context.getSharedPreferences("map_pref", 0).getString("PREFFERED_SD_CARD", ""))) {
                                this.f4654f = str + File.separator + "BaiduMapSDK";
                            }
                        }
                    }
                }
                if (VERSION.SDK_INT >= 19) {
                    File[] externalFilesDirs = context.getExternalFilesDirs(null);
                    Collection arrayList = new ArrayList();
                    arrayList.addAll(this.f4652d);
                    int i = 0;
                    while (i < externalFilesDirs.length && externalFilesDirs[i] != null) {
                        Object obj3;
                        String absolutePath = externalFilesDirs[i].getAbsolutePath();
                        for (C0593h a : this.f4652d) {
                            if (absolutePath.startsWith(a.m6409a())) {
                                obj3 = 1;
                                break;
                            }
                        }
                        obj3 = null;
                        String str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
                        if (!(str2 == null || r0 != null || absolutePath.indexOf(str2) == -1)) {
                            arrayList.add(new C0593h(absolutePath, true, "\u5916\u7f6e\u5b58\u50a8\u5361", context));
                        }
                        i++;
                    }
                    this.f4652d.clear();
                    this.f4652d.addAll(arrayList);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void m6416d(android.content.Context r10) {
        /*
        r9 = this;
        r2 = 0;
        r3 = new java.util.ArrayList;
        r3.<init>();
        r4 = new java.util.ArrayList;
        r4.<init>();
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1 = "/proc/mounts";
        r0.<init>(r1);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1 = r0.exists();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r1 == 0) goto L_0x0056;
    L_0x0018:
        r1 = new java.util.Scanner;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1.<init>(r0);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
    L_0x001d:
        r0 = r1.hasNext();	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        if (r0 == 0) goto L_0x0053;
    L_0x0023:
        r0 = r1.nextLine();	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        r5 = "/dev/block/vold/";
        r5 = r0.startsWith(r5);	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        if (r5 == 0) goto L_0x001d;
    L_0x002f:
        r5 = 9;
        r6 = 32;
        r0 = r0.replace(r5, r6);	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        r5 = " ";
        r0 = r0.split(r5);	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        if (r0 == 0) goto L_0x001d;
    L_0x003f:
        r5 = r0.length;	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        if (r5 <= 0) goto L_0x001d;
    L_0x0042:
        r5 = 1;
        r0 = r0[r5];	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        r3.add(r0);	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
        goto L_0x001d;
    L_0x0049:
        r0 = move-exception;
    L_0x004a:
        r0.printStackTrace();	 Catch:{ all -> 0x0118 }
        if (r1 == 0) goto L_0x0052;
    L_0x004f:
        r1.close();
    L_0x0052:
        return;
    L_0x0053:
        r1.close();	 Catch:{ Exception -> 0x0049, all -> 0x0115 }
    L_0x0056:
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1 = "/system/etc/vold.fstab";
        r0.<init>(r1);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1 = r0.exists();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r1 == 0) goto L_0x00b2;
    L_0x0063:
        r1 = new java.util.Scanner;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1.<init>(r0);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
    L_0x0068:
        r0 = r1.hasNext();	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        if (r0 == 0) goto L_0x00af;
    L_0x006e:
        r0 = r1.nextLine();	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        r5 = "dev_mount";
        r5 = r0.startsWith(r5);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        if (r5 == 0) goto L_0x0068;
    L_0x007a:
        r5 = 9;
        r6 = 32;
        r0 = r0.replace(r5, r6);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        r5 = " ";
        r0 = r0.split(r5);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        if (r0 == 0) goto L_0x0068;
    L_0x008a:
        r5 = r0.length;	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        if (r5 <= 0) goto L_0x0068;
    L_0x008d:
        r5 = 2;
        r0 = r0[r5];	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        r5 = ":";
        r5 = r0.contains(r5);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        if (r5 == 0) goto L_0x00a3;
    L_0x0098:
        r5 = 0;
        r6 = ":";
        r6 = r0.indexOf(r6);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        r0 = r0.substring(r5, r6);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
    L_0x00a3:
        r4.add(r0);	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
        goto L_0x0068;
    L_0x00a7:
        r0 = move-exception;
        r2 = r1;
    L_0x00a9:
        if (r2 == 0) goto L_0x00ae;
    L_0x00ab:
        r2.close();
    L_0x00ae:
        throw r0;
    L_0x00af:
        r1.close();	 Catch:{ Exception -> 0x0049, all -> 0x00a7 }
    L_0x00b2:
        r0 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r1 = r0.getAbsolutePath();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r0 = r9.f4652d;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r5 = new com.baidu.mapapi.utils.h;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r6 = 0;
        r7 = "Auto";
        r5.<init>(r1, r6, r7, r10);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r0.add(r5);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r3 = r3.iterator();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
    L_0x00cb:
        r0 = r3.hasNext();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r0 == 0) goto L_0x010c;
    L_0x00d1:
        r0 = r3.next();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r5 = r4.contains(r0);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r5 == 0) goto L_0x00cb;
    L_0x00dd:
        r5 = r0.equals(r1);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r5 != 0) goto L_0x00cb;
    L_0x00e3:
        r5 = new java.io.File;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r5.<init>(r0);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r6 = r5.exists();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r6 == 0) goto L_0x00cb;
    L_0x00ee:
        r6 = r5.isDirectory();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r6 == 0) goto L_0x00cb;
    L_0x00f4:
        r5 = r5.canWrite();	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        if (r5 == 0) goto L_0x00cb;
    L_0x00fa:
        r5 = r9.f4652d;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r6 = new com.baidu.mapapi.utils.h;	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r7 = 0;
        r8 = "Auto";
        r6.<init>(r0, r7, r8, r10);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        r5.add(r6);	 Catch:{ Exception -> 0x0108, all -> 0x0113 }
        goto L_0x00cb;
    L_0x0108:
        r0 = move-exception;
        r1 = r2;
        goto L_0x004a;
    L_0x010c:
        if (r2 == 0) goto L_0x0052;
    L_0x010e:
        r2.close();
        goto L_0x0052;
    L_0x0113:
        r0 = move-exception;
        goto L_0x00a9;
    L_0x0115:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00a9;
    L_0x0118:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00a9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapapi.utils.i.d(android.content.Context):void");
    }

    public void m6417a(Context context) {
        int i = 0;
        if (!this.f4650b) {
            this.f4650b = true;
            try {
                if (VERSION.SDK_INT >= 14) {
                    m6415c(context);
                } else {
                    m6416d(context);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (this.f4652d.size() > 0) {
                    C0593h c0593h = null;
                    for (C0593h c0593h2 : this.f4652d) {
                        C0593h c0593h3;
                        int i2;
                        if (new File(c0593h2.m6410b()).exists()) {
                            int i3 = i + 1;
                            c0593h3 = c0593h2;
                            i2 = i3;
                        } else {
                            i2 = i;
                            c0593h3 = c0593h;
                        }
                        c0593h = c0593h3;
                        i = i2;
                    }
                    if (i == 0) {
                        this.f4653e = m6420b(context);
                        if (this.f4653e == null) {
                            for (C0593h c0593h22 : this.f4652d) {
                                if (m6418a(context, c0593h22)) {
                                    this.f4653e = c0593h22;
                                    break;
                                }
                            }
                        }
                    } else if (i != 1) {
                        this.f4653e = m6420b(context);
                    } else if (m6418a(context, c0593h)) {
                        this.f4653e = c0593h;
                    }
                    if (this.f4653e == null) {
                        this.f4653e = (C0593h) this.f4652d.get(0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                if (this.f4653e == null || !m6414a(this.f4653e.m6409a())) {
                    this.f4651c = false;
                    this.f4653e = new C0593h(context);
                    this.f4652d.clear();
                    this.f4652d.add(this.f4653e);
                    return;
                }
                File file = new File(this.f4653e.m6410b());
                if (!file.exists()) {
                    file.mkdirs();
                }
                file = new File(this.f4653e.m6411c());
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, ".nomedia");
                if (!file2.exists()) {
                    file2.createNewFile();
                }
            } catch (Exception e22) {
                e22.printStackTrace();
            }
        }
    }

    public boolean m6418a(Context context, C0593h c0593h) {
        String a = c0593h.m6409a();
        if (!m6414a(a)) {
            return false;
        }
        Editor edit = context.getSharedPreferences("map_pref", 0).edit();
        edit.putString("PREFFERED_SD_CARD", a);
        return edit.commit();
    }

    public C0593h m6419b() {
        return this.f4653e;
    }

    public C0593h m6420b(Context context) {
        String string = context.getSharedPreferences("map_pref", 0).getString("PREFFERED_SD_CARD", "");
        if (string != null && string.length() > 0) {
            for (C0593h c0593h : this.f4652d) {
                if (c0593h.m6409a().equals(string)) {
                    return c0593h;
                }
            }
        }
        return null;
    }
}
