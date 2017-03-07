package com.tencent.p099b.p100a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.baidu.android.pushservice.PushConstants;
import com.tencent.p099b.p100a.p101a.C0662d;
import com.tencent.p099b.p100a.p102b.C0673b;
import com.tencent.p099b.p100a.p102b.C0674c;
import com.tencent.p099b.p100a.p102b.C0677f;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0689r;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.ai */
public class ai {
    private static C0673b f5114h;
    private static Context f5115i;
    private static ai f5116j;
    volatile int f5117a;
    C0674c f5118b;
    private C0693d f5119c;
    private C0693d f5120d;
    private C0677f f5121e;
    private String f5122f;
    private String f5123g;
    private int f5124k;
    private ConcurrentHashMap<C0662d, String> f5125l;
    private boolean f5126m;
    private HashMap<String, String> f5127n;

    static {
        f5114h = C0683l.m6973c();
        f5115i = null;
        f5116j = null;
    }

    private ai(Context context) {
        this.f5119c = null;
        this.f5120d = null;
        this.f5121e = null;
        this.f5122f = "";
        this.f5123g = "";
        this.f5117a = 0;
        this.f5118b = null;
        this.f5124k = 0;
        this.f5125l = null;
        this.f5126m = false;
        this.f5127n = new HashMap();
        try {
            this.f5121e = new C0677f();
            f5115i = context.getApplicationContext();
            this.f5125l = new ConcurrentHashMap();
            this.f5122f = C0683l.m6994o(context);
            this.f5123g = "pri_" + C0683l.m6994o(context);
            this.f5119c = new C0693d(f5115i, this.f5122f);
            this.f5120d = new C0693d(f5115i, this.f5123g);
            m6911a(true);
            m6911a(false);
            m6919e();
            m6930b(f5115i);
            m6923i();
            m6924j();
        } catch (Throwable th) {
            f5114h.m6938b(th);
        }
    }

    public static ai m6901a(Context context) {
        if (f5116j == null) {
            synchronized (ai.class) {
                if (f5116j == null) {
                    f5116j = new ai(context);
                }
            }
        }
        return f5116j;
    }

    private static String m6902a(List<C0694e> list) {
        StringBuilder stringBuilder = new StringBuilder(list.size() * 3);
        stringBuilder.append("event_id in (");
        int size = list.size();
        int i = 0;
        for (C0694e c0694e : list) {
            stringBuilder.append(c0694e.f5235a);
            if (i != size - 1) {
                stringBuilder.append(",");
            }
            i++;
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private synchronized void m6903a(int i, boolean z) {
        try {
            if (this.f5117a > 0 && i > 0 && !C0710v.m7097a()) {
                if (C0708t.m7062b()) {
                    f5114h.m6935a("Load " + this.f5117a + " unsent events");
                }
                List arrayList = new ArrayList(i);
                m6916b(arrayList, i, z);
                if (arrayList.size() > 0) {
                    if (C0708t.m7062b()) {
                        f5114h.m6935a("Peek " + arrayList.size() + " unsent events.");
                    }
                    m6910a(arrayList, 2, z);
                    C0700l.m7035b(f5115i).m7038b(arrayList, new C0691b(this, arrayList, z));
                }
            }
        } catch (Throwable th) {
            f5114h.m6938b(th);
        }
    }

    static /* synthetic */ void m6905a(ai aiVar, int i, boolean z) {
        int f = i == -1 ? !z ? aiVar.m6920f() : aiVar.m6921g() : i;
        if (f > 0) {
            int l = (C0708t.m7077l() * 60) * C0708t.m7073h();
            if (f > l && l > 0) {
                f = l;
            }
            int i2 = C0708t.m7074i();
            int i3 = f / i2;
            int i4 = f % i2;
            if (C0708t.m7062b()) {
                f5114h.m6935a("sentStoreEventsByDb sendNumbers=" + f + ",important=" + z + ",maxSendNumPerFor1Period=" + l + ",maxCount=" + i3 + ",restNumbers=" + i4);
            }
            for (f = 0; f < i3; f++) {
                aiVar.m6903a(i2, z);
            }
            if (i4 > 0) {
                aiVar.m6903a(i4, z);
            }
        }
    }

    private synchronized void m6910a(List<C0694e> list, int i, boolean z) {
        SQLiteDatabase b;
        Throwable th;
        String str = null;
        synchronized (this) {
            if (list.size() != 0) {
                int g = !z ? C0708t.m7072g() : C0708t.m7069e();
                try {
                    String str2;
                    b = m6912b(z);
                    if (i == 2) {
                        try {
                            str2 = "update events set status=" + i + ", send_count=send_count+1  where " + ai.m6902a((List) list);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                f5114h.m6938b(th);
                                if (b != null) {
                                    try {
                                        b.endTransaction();
                                    } catch (Throwable th3) {
                                        f5114h.m6938b(th3);
                                    }
                                }
                            } catch (Throwable th4) {
                                th3 = th4;
                                if (b != null) {
                                    try {
                                        b.endTransaction();
                                    } catch (Throwable th5) {
                                        f5114h.m6938b(th5);
                                    }
                                }
                                throw th3;
                            }
                        }
                    }
                    String str3 = "update events set status=" + i + " where " + ai.m6902a((List) list);
                    if (this.f5124k % 3 == 0) {
                        str = "delete from events where send_count>" + g;
                    }
                    this.f5124k++;
                    str2 = str3;
                    if (C0708t.m7062b()) {
                        f5114h.m6935a("update sql:" + str2);
                    }
                    b.beginTransaction();
                    b.execSQL(str2);
                    if (str != null) {
                        f5114h.m6935a("update for delete sql:" + str);
                        b.execSQL(str);
                        m6919e();
                    }
                    b.setTransactionSuccessful();
                    if (b != null) {
                        try {
                            b.endTransaction();
                        } catch (Throwable th32) {
                            f5114h.m6938b(th32);
                        }
                    }
                } catch (Throwable th6) {
                    th32 = th6;
                    b = null;
                    if (b != null) {
                        b.endTransaction();
                    }
                    throw th32;
                }
            }
        }
    }

    private void m6911a(boolean z) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = m6912b(z);
            sQLiteDatabase.beginTransaction();
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", Integer.valueOf(1));
            int update = sQLiteDatabase.update("events", contentValues, "status=?", new String[]{Long.toString(2)});
            if (C0708t.m7062b()) {
                f5114h.m6935a("update " + update + " unsent events.");
            }
            sQLiteDatabase.setTransactionSuccessful();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th) {
                    f5114h.m6938b(th);
                }
            }
        } catch (Throwable th2) {
            f5114h.m6938b(th2);
        }
    }

    private SQLiteDatabase m6912b(boolean z) {
        return !z ? this.f5119c.getWritableDatabase() : this.f5120d.getWritableDatabase();
    }

    public static ai m6913b() {
        return f5116j;
    }

    private synchronized void m6914b(com.tencent.p099b.p100a.p101a.C0662d r7, com.tencent.p099b.p100a.C0671k r8, boolean r9, boolean r10) {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.tencent.b.a.ai.b(com.tencent.b.a.a.d, com.tencent.b.a.k, boolean, boolean):void. bs: [B:20:0x0092, B:51:0x00e9]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:57)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r6 = this;
        r1 = 0;
        monitor-enter(r6);
        r0 = com.tencent.p099b.p100a.C0708t.m7075j();	 Catch:{ all -> 0x00ed }
        if (r0 <= 0) goto L_0x00c5;	 Catch:{ all -> 0x00ed }
    L_0x0008:
        r0 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x00ed }
        if (r0 <= 0) goto L_0x0010;
    L_0x000c:
        if (r9 != 0) goto L_0x0010;
    L_0x000e:
        if (r10 == 0) goto L_0x0110;
    L_0x0010:
        r1 = r6.m6912b(r9);	 Catch:{ Throwable -> 0x00cf }
        r1.beginTransaction();	 Catch:{ Throwable -> 0x00cf }
        if (r9 != 0) goto L_0x003c;	 Catch:{ Throwable -> 0x00cf }
    L_0x0019:
        r0 = r6.f5117a;	 Catch:{ Throwable -> 0x00cf }
        r2 = com.tencent.p099b.p100a.C0708t.m7075j();	 Catch:{ Throwable -> 0x00cf }
        if (r0 <= r2) goto L_0x003c;	 Catch:{ Throwable -> 0x00cf }
    L_0x0021:
        r0 = f5114h;	 Catch:{ Throwable -> 0x00cf }
        r2 = "Too many events stored in db.";	 Catch:{ Throwable -> 0x00cf }
        r0.m6937b(r2);	 Catch:{ Throwable -> 0x00cf }
        r0 = r6.f5117a;	 Catch:{ Throwable -> 0x00cf }
        r2 = r6.f5119c;	 Catch:{ Throwable -> 0x00cf }
        r2 = r2.getWritableDatabase();	 Catch:{ Throwable -> 0x00cf }
        r3 = "events";	 Catch:{ Throwable -> 0x00cf }
        r4 = "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)";	 Catch:{ Throwable -> 0x00cf }
        r5 = 0;	 Catch:{ Throwable -> 0x00cf }
        r2 = r2.delete(r3, r4, r5);	 Catch:{ Throwable -> 0x00cf }
        r0 = r0 - r2;	 Catch:{ Throwable -> 0x00cf }
        r6.f5117a = r0;	 Catch:{ Throwable -> 0x00cf }
    L_0x003c:
        r0 = new android.content.ContentValues;	 Catch:{ Throwable -> 0x00cf }
        r0.<init>();	 Catch:{ Throwable -> 0x00cf }
        r2 = r7.m6870g();	 Catch:{ Throwable -> 0x00cf }
        r3 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ Throwable -> 0x00cf }
        if (r3 == 0) goto L_0x005f;	 Catch:{ Throwable -> 0x00cf }
    L_0x004b:
        r3 = f5114h;	 Catch:{ Throwable -> 0x00cf }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00cf }
        r5 = "insert 1 event, content:";	 Catch:{ Throwable -> 0x00cf }
        r4.<init>(r5);	 Catch:{ Throwable -> 0x00cf }
        r4 = r4.append(r2);	 Catch:{ Throwable -> 0x00cf }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x00cf }
        r3.m6935a(r4);	 Catch:{ Throwable -> 0x00cf }
    L_0x005f:
        r2 = com.tencent.p099b.p100a.p102b.C0689r.m7020b(r2);	 Catch:{ Throwable -> 0x00cf }
        r3 = "content";	 Catch:{ Throwable -> 0x00cf }
        r0.put(r3, r2);	 Catch:{ Throwable -> 0x00cf }
        r2 = "send_count";	 Catch:{ Throwable -> 0x00cf }
        r3 = "0";	 Catch:{ Throwable -> 0x00cf }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x00cf }
        r2 = "status";	 Catch:{ Throwable -> 0x00cf }
        r3 = 1;	 Catch:{ Throwable -> 0x00cf }
        r3 = java.lang.Integer.toString(r3);	 Catch:{ Throwable -> 0x00cf }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x00cf }
        r2 = "timestamp";	 Catch:{ Throwable -> 0x00cf }
        r4 = r7.m6866c();	 Catch:{ Throwable -> 0x00cf }
        r3 = java.lang.Long.valueOf(r4);	 Catch:{ Throwable -> 0x00cf }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x00cf }
        r2 = "events";	 Catch:{ Throwable -> 0x00cf }
        r3 = 0;	 Catch:{ Throwable -> 0x00cf }
        r2 = r1.insert(r2, r3, r0);	 Catch:{ Throwable -> 0x00cf }
        r1.setTransactionSuccessful();	 Catch:{ Throwable -> 0x00cf }
        if (r1 == 0) goto L_0x018a;
    L_0x0092:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00c7 }
        r0 = r2;
    L_0x0096:
        r2 = 0;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 <= 0) goto L_0x00f7;
    L_0x009c:
        r0 = r6.f5117a;	 Catch:{ all -> 0x00ed }
        r0 = r0 + 1;	 Catch:{ all -> 0x00ed }
        r6.f5117a = r0;	 Catch:{ all -> 0x00ed }
        r0 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ all -> 0x00ed }
        if (r0 == 0) goto L_0x00c0;	 Catch:{ all -> 0x00ed }
    L_0x00a8:
        r0 = f5114h;	 Catch:{ all -> 0x00ed }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ed }
        r2 = "directStoreEvent insert event to db, event:";	 Catch:{ all -> 0x00ed }
        r1.<init>(r2);	 Catch:{ all -> 0x00ed }
        r2 = r7.m6870g();	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r1 = r1.toString();	 Catch:{ all -> 0x00ed }
        r0.m6943g(r1);	 Catch:{ all -> 0x00ed }
    L_0x00c0:
        if (r8 == 0) goto L_0x00c5;	 Catch:{ all -> 0x00ed }
    L_0x00c2:
        r8.m6893a();	 Catch:{ all -> 0x00ed }
    L_0x00c5:
        monitor-exit(r6);
        return;
    L_0x00c7:
        r0 = move-exception;
        r1 = f5114h;	 Catch:{ all -> 0x00ed }
        r1.m6938b(r0);	 Catch:{ all -> 0x00ed }
        r0 = r2;
        goto L_0x0096;
    L_0x00cf:
        r0 = move-exception;
        r2 = -1;
        r4 = f5114h;	 Catch:{ all -> 0x00e6 }
        r4.m6938b(r0);	 Catch:{ all -> 0x00e6 }
        if (r1 == 0) goto L_0x018a;
    L_0x00d9:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00de }
        r0 = r2;
        goto L_0x0096;
    L_0x00de:
        r0 = move-exception;
        r1 = f5114h;	 Catch:{ all -> 0x00ed }
        r1.m6938b(r0);	 Catch:{ all -> 0x00ed }
        r0 = r2;
        goto L_0x0096;
    L_0x00e6:
        r0 = move-exception;
        if (r1 == 0) goto L_0x00ec;
    L_0x00e9:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00f0 }
    L_0x00ec:
        throw r0;	 Catch:{ all -> 0x00ed }
    L_0x00ed:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
    L_0x00f0:
        r1 = move-exception;
        r2 = f5114h;	 Catch:{ all -> 0x00ed }
        r2.m6938b(r1);	 Catch:{ all -> 0x00ed }
        goto L_0x00ec;	 Catch:{ all -> 0x00ed }
    L_0x00f7:
        r0 = f5114h;	 Catch:{ all -> 0x00ed }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ed }
        r2 = "Failed to store event:";	 Catch:{ all -> 0x00ed }
        r1.<init>(r2);	 Catch:{ all -> 0x00ed }
        r2 = r7.m6870g();	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r1 = r1.toString();	 Catch:{ all -> 0x00ed }
        r0.m6940d(r1);	 Catch:{ all -> 0x00ed }
        goto L_0x00c5;	 Catch:{ all -> 0x00ed }
    L_0x0110:
        r0 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x00ed }
        if (r0 <= 0) goto L_0x00c5;	 Catch:{ all -> 0x00ed }
    L_0x0114:
        r0 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ all -> 0x00ed }
        if (r0 == 0) goto L_0x0164;	 Catch:{ all -> 0x00ed }
    L_0x011a:
        r0 = f5114h;	 Catch:{ all -> 0x00ed }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ed }
        r2 = "cacheEventsInMemory.size():";	 Catch:{ all -> 0x00ed }
        r1.<init>(r2);	 Catch:{ all -> 0x00ed }
        r2 = r6.f5125l;	 Catch:{ all -> 0x00ed }
        r2 = r2.size();	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r2 = ",numEventsCachedInMemory:";	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r2 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r2 = ",numStoredEvents:";	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r2 = r6.f5117a;	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r1 = r1.toString();	 Catch:{ all -> 0x00ed }
        r0.m6935a(r1);	 Catch:{ all -> 0x00ed }
        r0 = f5114h;	 Catch:{ all -> 0x00ed }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ed }
        r2 = "cache event:";	 Catch:{ all -> 0x00ed }
        r1.<init>(r2);	 Catch:{ all -> 0x00ed }
        r2 = r7.m6870g();	 Catch:{ all -> 0x00ed }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00ed }
        r1 = r1.toString();	 Catch:{ all -> 0x00ed }
        r0.m6935a(r1);	 Catch:{ all -> 0x00ed }
    L_0x0164:
        r0 = r6.f5125l;	 Catch:{ all -> 0x00ed }
        r1 = "";	 Catch:{ all -> 0x00ed }
        r0.put(r7, r1);	 Catch:{ all -> 0x00ed }
        r0 = r6.f5125l;	 Catch:{ all -> 0x00ed }
        r0 = r0.size();	 Catch:{ all -> 0x00ed }
        r1 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x00ed }
        if (r0 < r1) goto L_0x0178;	 Catch:{ all -> 0x00ed }
    L_0x0175:
        r6.m6922h();	 Catch:{ all -> 0x00ed }
    L_0x0178:
        if (r8 == 0) goto L_0x00c5;	 Catch:{ all -> 0x00ed }
    L_0x017a:
        r0 = r6.f5125l;	 Catch:{ all -> 0x00ed }
        r0 = r0.size();	 Catch:{ all -> 0x00ed }
        if (r0 <= 0) goto L_0x0185;	 Catch:{ all -> 0x00ed }
    L_0x0182:
        r6.m6922h();	 Catch:{ all -> 0x00ed }
    L_0x0185:
        r8.m6893a();	 Catch:{ all -> 0x00ed }
        goto L_0x00c5;
    L_0x018a:
        r0 = r2;
        goto L_0x0096;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.b.a.ai.b(com.tencent.b.a.a.d, com.tencent.b.a.k, boolean, boolean):void");
    }

    private synchronized void m6915b(C0698i c0698i) {
        Throwable th;
        Cursor query;
        try {
            Object obj;
            long update;
            String jSONObject = c0698i.f5245b.toString();
            String a = C0683l.m6965a(jSONObject);
            ContentValues contentValues = new ContentValues();
            contentValues.put(PushConstants.EXTRA_CONTENT, c0698i.f5245b.toString());
            contentValues.put("md5sum", a);
            c0698i.f5246c = a;
            contentValues.put("version", Integer.valueOf(c0698i.f5247d));
            query = this.f5119c.getReadableDatabase().query("config", null, null, null, null, null, null);
            do {
                try {
                    if (!query.moveToNext()) {
                        obj = null;
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } while (query.getInt(0) != c0698i.f5244a);
            obj = 1;
            this.f5119c.getWritableDatabase().beginTransaction();
            if (1 == obj) {
                update = (long) this.f5119c.getWritableDatabase().update("config", contentValues, "type=?", new String[]{Integer.toString(c0698i.f5244a)});
            } else {
                contentValues.put(ProGuard.f5475c, Integer.valueOf(c0698i.f5244a));
                update = this.f5119c.getWritableDatabase().insert("config", null, contentValues);
            }
            if (update == -1) {
                f5114h.m6941e("Failed to store cfg:" + jSONObject);
            } else {
                f5114h.m6943g("Sucessed to store cfg:" + jSONObject);
            }
            this.f5119c.getWritableDatabase().setTransactionSuccessful();
            if (query != null) {
                query.close();
            }
            try {
                this.f5119c.getWritableDatabase().endTransaction();
            } catch (Exception e) {
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            this.f5119c.getWritableDatabase().endTransaction();
            throw th;
        }
    }

    private void m6916b(List<C0694e> list, int i, boolean z) {
        SQLiteDatabase readableDatabase;
        Throwable th;
        Cursor cursor;
        Cursor cursor2;
        if (z) {
            readableDatabase = this.f5120d.getReadableDatabase();
        } else {
            try {
                readableDatabase = this.f5119c.getReadableDatabase();
            } catch (Throwable th2) {
                th = th2;
                cursor2 = null;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        }
        cursor2 = readableDatabase.query("events", null, "status=?", new String[]{Integer.toString(1)}, null, null, null, Integer.toString(i));
        while (cursor2.moveToNext()) {
            try {
                long j = cursor2.getLong(0);
                String string = cursor2.getString(1);
                if (!C0708t.f5296g) {
                    string = C0689r.m7016a(string);
                }
                int i2 = cursor2.getInt(2);
                int i3 = cursor2.getInt(3);
                C0694e c0694e = new C0694e(j, string, i2, i3);
                if (C0708t.m7062b()) {
                    f5114h.m6935a("peek event, id=" + j + ",send_count=" + i3 + ",timestamp=" + cursor2.getLong(4));
                }
                list.add(c0694e);
            } catch (Throwable th3) {
                th = th3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    private synchronized void m6917c(java.util.List<com.tencent.p099b.p100a.C0694e> r9, boolean r10) {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.tencent.b.a.ai.c(java.util.List, boolean):void. bs: [B:26:0x00c1, B:49:0x00e9]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:57)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r8 = this;
        r1 = 0;
        monitor-enter(r8);
        r0 = r9.size();	 Catch:{ all -> 0x00ce }
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        monitor-exit(r8);
        return;
    L_0x000a:
        r0 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ all -> 0x00ce }
        if (r0 == 0) goto L_0x0032;	 Catch:{ all -> 0x00ce }
    L_0x0010:
        r0 = f5114h;	 Catch:{ all -> 0x00ce }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ce }
        r3 = "Delete ";	 Catch:{ all -> 0x00ce }
        r2.<init>(r3);	 Catch:{ all -> 0x00ce }
        r3 = r9.size();	 Catch:{ all -> 0x00ce }
        r2 = r2.append(r3);	 Catch:{ all -> 0x00ce }
        r3 = " events, important:";	 Catch:{ all -> 0x00ce }
        r2 = r2.append(r3);	 Catch:{ all -> 0x00ce }
        r2 = r2.append(r10);	 Catch:{ all -> 0x00ce }
        r2 = r2.toString();	 Catch:{ all -> 0x00ce }
        r0.m6935a(r2);	 Catch:{ all -> 0x00ce }
    L_0x0032:
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ce }
        r0 = r9.size();	 Catch:{ all -> 0x00ce }
        r0 = r0 * 3;	 Catch:{ all -> 0x00ce }
        r3.<init>(r0);	 Catch:{ all -> 0x00ce }
        r0 = "event_id in (";	 Catch:{ all -> 0x00ce }
        r3.append(r0);	 Catch:{ all -> 0x00ce }
        r0 = 0;	 Catch:{ all -> 0x00ce }
        r4 = r9.size();	 Catch:{ all -> 0x00ce }
        r5 = r9.iterator();	 Catch:{ all -> 0x00ce }
        r2 = r0;	 Catch:{ all -> 0x00ce }
    L_0x004c:
        r0 = r5.hasNext();	 Catch:{ all -> 0x00ce }
        if (r0 == 0) goto L_0x006a;	 Catch:{ all -> 0x00ce }
    L_0x0052:
        r0 = r5.next();	 Catch:{ all -> 0x00ce }
        r0 = (com.tencent.p099b.p100a.C0694e) r0;	 Catch:{ all -> 0x00ce }
        r6 = r0.f5235a;	 Catch:{ all -> 0x00ce }
        r3.append(r6);	 Catch:{ all -> 0x00ce }
        r0 = r4 + -1;	 Catch:{ all -> 0x00ce }
        if (r2 == r0) goto L_0x0066;	 Catch:{ all -> 0x00ce }
    L_0x0061:
        r0 = ",";	 Catch:{ all -> 0x00ce }
        r3.append(r0);	 Catch:{ all -> 0x00ce }
    L_0x0066:
        r0 = r2 + 1;	 Catch:{ all -> 0x00ce }
        r2 = r0;	 Catch:{ all -> 0x00ce }
        goto L_0x004c;	 Catch:{ all -> 0x00ce }
    L_0x006a:
        r0 = ")";	 Catch:{ all -> 0x00ce }
        r3.append(r0);	 Catch:{ all -> 0x00ce }
        r1 = r8.m6912b(r10);	 Catch:{ Throwable -> 0x00d1 }
        r1.beginTransaction();	 Catch:{ Throwable -> 0x00d1 }
        r0 = "events";	 Catch:{ Throwable -> 0x00d1 }
        r2 = r3.toString();	 Catch:{ Throwable -> 0x00d1 }
        r5 = 0;	 Catch:{ Throwable -> 0x00d1 }
        r0 = r1.delete(r0, r2, r5);	 Catch:{ Throwable -> 0x00d1 }
        r2 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ Throwable -> 0x00d1 }
        if (r2 == 0) goto L_0x00b3;	 Catch:{ Throwable -> 0x00d1 }
    L_0x0087:
        r2 = f5114h;	 Catch:{ Throwable -> 0x00d1 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00d1 }
        r6 = "delete ";	 Catch:{ Throwable -> 0x00d1 }
        r5.<init>(r6);	 Catch:{ Throwable -> 0x00d1 }
        r4 = r5.append(r4);	 Catch:{ Throwable -> 0x00d1 }
        r5 = " event ";	 Catch:{ Throwable -> 0x00d1 }
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x00d1 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x00d1 }
        r3 = r4.append(r3);	 Catch:{ Throwable -> 0x00d1 }
        r4 = ", success delete:";	 Catch:{ Throwable -> 0x00d1 }
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x00d1 }
        r3 = r3.append(r0);	 Catch:{ Throwable -> 0x00d1 }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x00d1 }
        r2.m6935a(r3);	 Catch:{ Throwable -> 0x00d1 }
    L_0x00b3:
        r2 = r8.f5117a;	 Catch:{ Throwable -> 0x00d1 }
        r0 = r2 - r0;	 Catch:{ Throwable -> 0x00d1 }
        r8.f5117a = r0;	 Catch:{ Throwable -> 0x00d1 }
        r1.setTransactionSuccessful();	 Catch:{ Throwable -> 0x00d1 }
        r8.m6919e();	 Catch:{ Throwable -> 0x00d1 }
        if (r1 == 0) goto L_0x0008;
    L_0x00c1:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00c6 }
        goto L_0x0008;
    L_0x00c6:
        r0 = move-exception;
        r1 = f5114h;	 Catch:{ all -> 0x00ce }
        r1.m6938b(r0);	 Catch:{ all -> 0x00ce }
        goto L_0x0008;
    L_0x00ce:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x00d1:
        r0 = move-exception;
        r2 = f5114h;	 Catch:{ all -> 0x00e6 }
        r2.m6938b(r0);	 Catch:{ all -> 0x00e6 }
        if (r1 == 0) goto L_0x0008;
    L_0x00d9:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00de }
        goto L_0x0008;
    L_0x00de:
        r0 = move-exception;
        r1 = f5114h;	 Catch:{ all -> 0x00ce }
        r1.m6938b(r0);	 Catch:{ all -> 0x00ce }
        goto L_0x0008;
    L_0x00e6:
        r0 = move-exception;
        if (r1 == 0) goto L_0x00ec;
    L_0x00e9:
        r1.endTransaction();	 Catch:{ Throwable -> 0x00ed }
    L_0x00ec:
        throw r0;	 Catch:{ all -> 0x00ce }
    L_0x00ed:
        r1 = move-exception;	 Catch:{ all -> 0x00ce }
        r2 = f5114h;	 Catch:{ all -> 0x00ce }
        r2.m6938b(r1);	 Catch:{ all -> 0x00ce }
        goto L_0x00ec;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.b.a.ai.c(java.util.List, boolean):void");
    }

    private void m6919e() {
        this.f5117a = m6920f() + m6921g();
    }

    private int m6920f() {
        return (int) DatabaseUtils.queryNumEntries(this.f5119c.getReadableDatabase(), "events");
    }

    private int m6921g() {
        return (int) DatabaseUtils.queryNumEntries(this.f5120d.getReadableDatabase(), "events");
    }

    private void m6922h() {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.tencent.b.a.ai.h():void. bs: [B:42:0x011b, B:53:0x0133]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:57)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r9 = this;
        r1 = 0;
        r0 = r9.f5126m;
        if (r0 == 0) goto L_0x0006;
    L_0x0005:
        return;
    L_0x0006:
        r2 = r9.f5125l;
        monitor-enter(r2);
        r0 = r9.f5125l;	 Catch:{ all -> 0x0013 }
        r0 = r0.size();	 Catch:{ all -> 0x0013 }
        if (r0 != 0) goto L_0x0016;	 Catch:{ all -> 0x0013 }
    L_0x0011:
        monitor-exit(r2);	 Catch:{ all -> 0x0013 }
        goto L_0x0005;
    L_0x0013:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
    L_0x0016:
        r0 = 1;
        r9.f5126m = r0;	 Catch:{ all -> 0x0013 }
        r0 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ all -> 0x0013 }
        if (r0 == 0) goto L_0x0051;	 Catch:{ all -> 0x0013 }
    L_0x001f:
        r0 = f5114h;	 Catch:{ all -> 0x0013 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0013 }
        r4 = "insert ";	 Catch:{ all -> 0x0013 }
        r3.<init>(r4);	 Catch:{ all -> 0x0013 }
        r4 = r9.f5125l;	 Catch:{ all -> 0x0013 }
        r4 = r4.size();	 Catch:{ all -> 0x0013 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0013 }
        r4 = " events ,numEventsCachedInMemory:";	 Catch:{ all -> 0x0013 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0013 }
        r4 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x0013 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0013 }
        r4 = ",numStoredEvents:";	 Catch:{ all -> 0x0013 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0013 }
        r4 = r9.f5117a;	 Catch:{ all -> 0x0013 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0013 }
        r3 = r3.toString();	 Catch:{ all -> 0x0013 }
        r0.m6935a(r3);	 Catch:{ all -> 0x0013 }
    L_0x0051:
        r0 = r9.f5119c;	 Catch:{ Throwable -> 0x00ca }
        r1 = r0.getWritableDatabase();	 Catch:{ Throwable -> 0x00ca }
        r1.beginTransaction();	 Catch:{ Throwable -> 0x00ca }
        r0 = r9.f5125l;	 Catch:{ Throwable -> 0x00ca }
        r0 = r0.entrySet();	 Catch:{ Throwable -> 0x00ca }
        r3 = r0.iterator();	 Catch:{ Throwable -> 0x00ca }
    L_0x0064:
        r0 = r3.hasNext();	 Catch:{ Throwable -> 0x00ca }
        if (r0 == 0) goto L_0x0116;	 Catch:{ Throwable -> 0x00ca }
    L_0x006a:
        r0 = r3.next();	 Catch:{ Throwable -> 0x00ca }
        r0 = (java.util.Map.Entry) r0;	 Catch:{ Throwable -> 0x00ca }
        r0 = r0.getKey();	 Catch:{ Throwable -> 0x00ca }
        r0 = (com.tencent.p099b.p100a.p101a.C0662d) r0;	 Catch:{ Throwable -> 0x00ca }
        r4 = new android.content.ContentValues;	 Catch:{ Throwable -> 0x00ca }
        r4.<init>();	 Catch:{ Throwable -> 0x00ca }
        r5 = r0.m6870g();	 Catch:{ Throwable -> 0x00ca }
        r6 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ Throwable -> 0x00ca }
        if (r6 == 0) goto L_0x0099;	 Catch:{ Throwable -> 0x00ca }
    L_0x0085:
        r6 = f5114h;	 Catch:{ Throwable -> 0x00ca }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00ca }
        r8 = "insert content:";	 Catch:{ Throwable -> 0x00ca }
        r7.<init>(r8);	 Catch:{ Throwable -> 0x00ca }
        r7 = r7.append(r5);	 Catch:{ Throwable -> 0x00ca }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x00ca }
        r6.m6935a(r7);	 Catch:{ Throwable -> 0x00ca }
    L_0x0099:
        r5 = com.tencent.p099b.p100a.p102b.C0689r.m7020b(r5);	 Catch:{ Throwable -> 0x00ca }
        r6 = "content";	 Catch:{ Throwable -> 0x00ca }
        r4.put(r6, r5);	 Catch:{ Throwable -> 0x00ca }
        r5 = "send_count";	 Catch:{ Throwable -> 0x00ca }
        r6 = "0";	 Catch:{ Throwable -> 0x00ca }
        r4.put(r5, r6);	 Catch:{ Throwable -> 0x00ca }
        r5 = "status";	 Catch:{ Throwable -> 0x00ca }
        r6 = 1;	 Catch:{ Throwable -> 0x00ca }
        r6 = java.lang.Integer.toString(r6);	 Catch:{ Throwable -> 0x00ca }
        r4.put(r5, r6);	 Catch:{ Throwable -> 0x00ca }
        r5 = "timestamp";	 Catch:{ Throwable -> 0x00ca }
        r6 = r0.m6866c();	 Catch:{ Throwable -> 0x00ca }
        r0 = java.lang.Long.valueOf(r6);	 Catch:{ Throwable -> 0x00ca }
        r4.put(r5, r0);	 Catch:{ Throwable -> 0x00ca }
        r0 = "events";	 Catch:{ Throwable -> 0x00ca }
        r5 = 0;	 Catch:{ Throwable -> 0x00ca }
        r1.insert(r0, r5, r4);	 Catch:{ Throwable -> 0x00ca }
        r3.remove();	 Catch:{ Throwable -> 0x00ca }
        goto L_0x0064;
    L_0x00ca:
        r0 = move-exception;
        r3 = f5114h;	 Catch:{ all -> 0x0130 }
        r3.m6938b(r0);	 Catch:{ all -> 0x0130 }
        if (r1 == 0) goto L_0x00d8;
    L_0x00d2:
        r1.endTransaction();	 Catch:{ Throwable -> 0x0129 }
        r9.m6919e();	 Catch:{ Throwable -> 0x0129 }
    L_0x00d8:
        r0 = 0;
        r9.f5126m = r0;	 Catch:{ all -> 0x0013 }
        r0 = com.tencent.p099b.p100a.C0708t.m7062b();	 Catch:{ all -> 0x0013 }
        if (r0 == 0) goto L_0x0113;	 Catch:{ all -> 0x0013 }
    L_0x00e1:
        r0 = f5114h;	 Catch:{ all -> 0x0013 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0013 }
        r3 = "after insert, cacheEventsInMemory.size():";	 Catch:{ all -> 0x0013 }
        r1.<init>(r3);	 Catch:{ all -> 0x0013 }
        r3 = r9.f5125l;	 Catch:{ all -> 0x0013 }
        r3 = r3.size();	 Catch:{ all -> 0x0013 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0013 }
        r3 = ",numEventsCachedInMemory:";	 Catch:{ all -> 0x0013 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0013 }
        r3 = com.tencent.p099b.p100a.C0708t.f5303n;	 Catch:{ all -> 0x0013 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0013 }
        r3 = ",numStoredEvents:";	 Catch:{ all -> 0x0013 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0013 }
        r3 = r9.f5117a;	 Catch:{ all -> 0x0013 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0013 }
        r1 = r1.toString();	 Catch:{ all -> 0x0013 }
        r0.m6935a(r1);	 Catch:{ all -> 0x0013 }
    L_0x0113:
        monitor-exit(r2);	 Catch:{ all -> 0x0013 }
        goto L_0x0005;
    L_0x0116:
        r1.setTransactionSuccessful();	 Catch:{ Throwable -> 0x00ca }
        if (r1 == 0) goto L_0x00d8;
    L_0x011b:
        r1.endTransaction();	 Catch:{ Throwable -> 0x0122 }
        r9.m6919e();	 Catch:{ Throwable -> 0x0122 }
        goto L_0x00d8;
    L_0x0122:
        r0 = move-exception;
        r1 = f5114h;	 Catch:{ all -> 0x0013 }
        r1.m6938b(r0);	 Catch:{ all -> 0x0013 }
        goto L_0x00d8;	 Catch:{ all -> 0x0013 }
    L_0x0129:
        r0 = move-exception;	 Catch:{ all -> 0x0013 }
        r1 = f5114h;	 Catch:{ all -> 0x0013 }
        r1.m6938b(r0);	 Catch:{ all -> 0x0013 }
        goto L_0x00d8;
    L_0x0130:
        r0 = move-exception;
        if (r1 == 0) goto L_0x0139;
    L_0x0133:
        r1.endTransaction();	 Catch:{ Throwable -> 0x013a }
        r9.m6919e();	 Catch:{ Throwable -> 0x013a }
    L_0x0139:
        throw r0;	 Catch:{ all -> 0x0013 }
    L_0x013a:
        r1 = move-exception;	 Catch:{ all -> 0x0013 }
        r3 = f5114h;	 Catch:{ all -> 0x0013 }
        r3.m6938b(r1);	 Catch:{ all -> 0x0013 }
        goto L_0x0139;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.b.a.ai.h():void");
    }

    private void m6923i() {
        Throwable th;
        Cursor query;
        try {
            query = this.f5119c.getReadableDatabase().query("config", null, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    int i = query.getInt(0);
                    String string = query.getString(1);
                    String string2 = query.getString(2);
                    int i2 = query.getInt(3);
                    C0698i c0698i = new C0698i(i);
                    c0698i.f5244a = i;
                    c0698i.f5245b = new JSONObject(string);
                    c0698i.f5246c = string2;
                    c0698i.f5247d = i2;
                    C0708t.m7051a(f5115i, c0698i);
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private void m6924j() {
        Cursor query;
        Throwable th;
        try {
            query = this.f5119c.getReadableDatabase().query("keyvalues", null, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    this.f5127n.put(query.getString(0), query.getString(1));
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public final int m6925a() {
        return this.f5117a;
    }

    final void m6926a(int i) {
        this.f5121e.m6952a(new C0692c(this, i));
    }

    final void m6927a(C0662d c0662d, C0671k c0671k, boolean z, boolean z2) {
        if (this.f5121e != null) {
            this.f5121e.m6952a(new am(this, c0662d, c0671k, z, z2));
        }
    }

    final void m6928a(C0698i c0698i) {
        if (c0698i != null) {
            this.f5121e.m6952a(new an(this, c0698i));
        }
    }

    final void m6929a(List<C0694e> list, boolean z) {
        if (this.f5121e != null) {
            this.f5121e.m6952a(new aj(this, list, z));
        }
    }

    public final synchronized C0674c m6930b(Context context) {
        C0674c c0674c;
        Cursor query;
        Throwable th;
        Cursor cursor;
        if (this.f5118b != null) {
            c0674c = this.f5118b;
        } else {
            try {
                this.f5119c.getWritableDatabase().beginTransaction();
                if (C0708t.m7062b()) {
                    f5114h.m6935a((Object) "try to load user info from db.");
                }
                query = this.f5119c.getReadableDatabase().query("user", null, null, null, null, null, null, null);
                Object obj = null;
                try {
                    String string;
                    String b;
                    if (query.moveToNext()) {
                        String a = C0689r.m7016a(query.getString(0));
                        int i = query.getInt(1);
                        string = query.getString(2);
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        int i2 = (i == 1 || C0683l.m6963a(query.getLong(3) * 1000).equals(C0683l.m6963a(1000 * currentTimeMillis))) ? i : 1;
                        int i3 = !string.equals(C0683l.m6991l(context)) ? i2 | 2 : i2;
                        String[] split = a.split(",");
                        obj = null;
                        if (split == null || split.length <= 0) {
                            b = C0683l.m6972b(context);
                            obj = 1;
                            a = b;
                        } else {
                            b = split[0];
                            if (b == null || b.length() < 11) {
                                string = C0689r.m7015a(context);
                                if (string == null || string.length() <= 10) {
                                    string = b;
                                } else {
                                    obj = 1;
                                }
                                b = a;
                                a = string;
                            } else {
                                String str = b;
                                b = a;
                                a = str;
                            }
                        }
                        if (split == null || split.length < 2) {
                            string = C0683l.m6974c(context);
                            if (string != null && string.length() > 0) {
                                b = a + "," + string;
                                obj = 1;
                            }
                        } else {
                            string = split[1];
                            b = a + "," + string;
                        }
                        this.f5118b = new C0674c(a, string, i3);
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("uid", C0689r.m7020b(b));
                        contentValues.put("user_type", Integer.valueOf(i3));
                        contentValues.put("app_ver", C0683l.m6991l(context));
                        contentValues.put("ts", Long.valueOf(currentTimeMillis));
                        if (obj != null) {
                            this.f5119c.getWritableDatabase().update("user", contentValues, "uid=?", new String[]{r10});
                        }
                        if (i3 != i) {
                            this.f5119c.getWritableDatabase().replace("user", null, contentValues);
                        }
                        obj = 1;
                    }
                    if (obj == null) {
                        string = C0683l.m6972b(context);
                        b = C0683l.m6974c(context);
                        String str2 = (b == null || b.length() <= 0) ? string : string + "," + b;
                        long currentTimeMillis2 = System.currentTimeMillis() / 1000;
                        String l = C0683l.m6991l(context);
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("uid", C0689r.m7020b(str2));
                        contentValues2.put("user_type", Integer.valueOf(0));
                        contentValues2.put("app_ver", l);
                        contentValues2.put("ts", Long.valueOf(currentTimeMillis2));
                        this.f5119c.getWritableDatabase().insert("user", null, contentValues2);
                        this.f5118b = new C0674c(string, b, 0);
                    }
                    this.f5119c.getWritableDatabase().setTransactionSuccessful();
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Throwable th2) {
                            f5114h.m6938b(th2);
                        }
                    }
                    this.f5119c.getWritableDatabase().endTransaction();
                } catch (Throwable th3) {
                    th2 = th3;
                    if (query != null) {
                        query.close();
                    }
                    this.f5119c.getWritableDatabase().endTransaction();
                    throw th2;
                }
            } catch (Throwable th4) {
                th2 = th4;
                query = null;
                if (query != null) {
                    query.close();
                }
                this.f5119c.getWritableDatabase().endTransaction();
                throw th2;
            }
            c0674c = this.f5118b;
        }
        return c0674c;
    }

    final void m6931b(List<C0694e> list, boolean z) {
        if (this.f5121e != null) {
            this.f5121e.m6952a(new ak(this, list, z));
        }
    }

    final void m6932c() {
        if (C0708t.m7065c()) {
            try {
                this.f5121e.m6952a(new al(this));
            } catch (Throwable th) {
                f5114h.m6938b(th);
            }
        }
    }
}
