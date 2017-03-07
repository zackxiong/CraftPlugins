package com.baidu.android.pushservice.p072f.p073a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.f.a.b */
public class C0264b {
    public static int m4815a(Context context, String str, String str2) {
        return C0264b.m4816a(context, str, str2, -1);
    }

    public static int m4816a(android.content.Context r11, java.lang.String r12, java.lang.String r13, long r14) {
        /* JADX: method processing error */
/*
        Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.ssa.SSATransform.placePhi(SSATransform.java:82)
	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:50)
	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r3 = -1;
        r0 = -1;
        r2 = -2;
        if (r11 == 0) goto L_0x0012;
    L_0x0006:
        r4 = android.text.TextUtils.isEmpty(r12);
        if (r4 != 0) goto L_0x0012;
    L_0x000c:
        r4 = android.text.TextUtils.isEmpty(r13);
        if (r4 == 0) goto L_0x0014;
    L_0x0012:
        r2 = r3;
    L_0x0013:
        return r2;
    L_0x0014:
        r4 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1));
        if (r4 >= 0) goto L_0x0019;
    L_0x0018:
        r14 = r0;
    L_0x0019:
        r4 = java.lang.System.currentTimeMillis();
        r6 = 0;
        r6 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1));
        if (r6 < 0) goto L_0x0029;
    L_0x0023:
        r6 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1));
        if (r6 >= 0) goto L_0x0029;
    L_0x0027:
        r2 = r3;
        goto L_0x0013;
    L_0x0029:
        r3 = com.baidu.android.pushservice.p072f.p073a.C0264b.m4817a(r11, r12);
        if (r3 == 0) goto L_0x0034;
    L_0x002f:
        r2 = com.baidu.android.pushservice.p072f.p073a.C0264b.m4819b(r11, r12, r13, r14);
        goto L_0x0013;
    L_0x0034:
        r6 = com.baidu.android.pushservice.p072f.p073a.C0263a.m4812a(r11);
        if (r6 == 0) goto L_0x0013;
    L_0x003a:
        r7 = r6.m4813a();
        r8 = new android.content.ContentValues;
        r8.<init>();
        r3 = "KEY";
        r8.put(r3, r12);
        r3 = "VALUE";
        r8.put(r3, r13);
        r3 = "CREATE_TIME";
        r9 = java.lang.Long.valueOf(r4);
        r8.put(r3, r9);
        r3 = "LAST_MODIFY_TIME";
        r4 = java.lang.Long.valueOf(r4);
        r8.put(r3, r4);
        r3 = "EXPIRE_TIME";
        r4 = java.lang.Long.valueOf(r14);
        r8.put(r3, r4);
        r3 = 0;
        r4 = "LOCAL_WIFI_CACHE";	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        r5 = 0;	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        r4 = r7.insert(r4, r5, r8);	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r0 != 0) goto L_0x008c;
    L_0x0074:
        r0 = r2;
    L_0x0075:
        r6.m4814b();
    L_0x0078:
        r2 = r0;
        goto L_0x0013;
    L_0x007a:
        r0 = move-exception;
        r0 = "WifiCacheDBManager";	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        r1 = "WifiCacheDBManager putWifiCache  failed";	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5311b(r0, r1);	 Catch:{ Exception -> 0x007a, all -> 0x0087 }
        r6.m4814b();
        r0 = r2;
        goto L_0x0078;
    L_0x0087:
        r0 = move-exception;
        r6.m4814b();
        throw r0;
    L_0x008c:
        r0 = r3;
        goto L_0x0075;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.f.a.b.a(android.content.Context, java.lang.String, java.lang.String, long):int");
    }

    public static String m4817a(Context context, String str) {
        Cursor rawQuery;
        Throwable th;
        String str2 = null;
        if (!(context == null || TextUtils.isEmpty(str))) {
            C0264b.m4818a(context, false);
            C0263a a = C0263a.m4812a(context);
            if (a != null) {
                try {
                    rawQuery = a.m4813a().rawQuery("SELECT  VALUE FROM LOCAL_WIFI_CACHE WHERE KEY=?", new String[]{str});
                    if (rawQuery != null) {
                        try {
                            if (rawQuery.getCount() >= 1 && rawQuery.moveToFirst()) {
                                str2 = rawQuery.getString(0);
                            }
                        } catch (Exception e) {
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5311b("WifiCacheDBManager", "WifiCacheDBManager getWifiCache  failed");
                                }
                                if (rawQuery != null) {
                                    rawQuery.close();
                                }
                                a.m4814b();
                                return str2;
                            } catch (Throwable th2) {
                                th = th2;
                                if (rawQuery != null) {
                                    rawQuery.close();
                                }
                                a.m4814b();
                                throw th;
                            }
                        }
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    a.m4814b();
                } catch (Exception e2) {
                    rawQuery = null;
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("WifiCacheDBManager", "WifiCacheDBManager getWifiCache  failed");
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    a.m4814b();
                    return str2;
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    rawQuery = null;
                    th = th4;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    a.m4814b();
                    throw th;
                }
            }
        }
        return str2;
    }

    public static void m4818a(Context context, boolean z) {
        C0263a a = C0263a.m4812a(context);
        if (a != null) {
            try {
                a.m4813a().delete("LOCAL_WIFI_CACHE", z ? "1=1" : "EXPIRE_TIME <  " + System.currentTimeMillis() + " AND " + "EXPIRE_TIME" + "!=-1", null);
                a.m4814b();
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b("WifiCacheDBManager", "removeExpired   failed." + e);
                }
                a.m4814b();
            } catch (Throwable th) {
                a.m4814b();
            }
        }
    }

    private static int m4819b(Context context, String str, String str2, long j) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str)) {
            return -2;
        }
        if (j < -1) {
            j = -1;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (j >= 0 && j < currentTimeMillis) {
            return -1;
        }
        C0263a a = C0263a.m4812a(context);
        if (a == null) {
            return -1;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("VALUE", str2);
            contentValues.put("LAST_MODIFY_TIME", Long.valueOf(currentTimeMillis));
            contentValues.put("EXPIRE_TIME", Long.valueOf(j));
            a.m4813a().update("LOCAL_WIFI_CACHE", contentValues, "KEY=? ", new String[]{str});
            a.m4814b();
            return 0;
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("WifiCacheDBManager", "WifiCacheDBManager updateCache  failed");
            }
            a.m4814b();
            return -2;
        } catch (Throwable th) {
            a.m4814b();
        }
    }

    public static String m4820b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String a = C0264b.m4817a(context, str);
        C0263a a2 = C0263a.m4812a(context);
        if (a2 == null) {
            return a;
        }
        try {
            a2.m4813a().delete("LOCAL_WIFI_CACHE", "KEY= ?", new String[]{str});
            a2.m4814b();
            return a;
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("WifiCacheDBManager", "WifiCacheDBManager removeWifiCache  failed");
            }
            a2.m4814b();
            return a;
        } catch (Throwable th) {
            a2.m4814b();
        }
    }
}
