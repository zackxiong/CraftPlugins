package com.baidu.location;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.wifi.ScanResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import com.baidu.location.p083a.p084a.C0492a;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* renamed from: com.baidu.location.j */
class C0524j {
    public static final String lA = "http://loc.map.baidu.com/fence";
    public static final long lk = 1800000;
    public static C0524j lx;
    private boolean f4060a;
    private List f4061b;
    private List f4062c;
    private WakeLock f4063d;
    private HandlerThread f4064e;
    private C0523d f4065f;
    private C0522c f4066g;
    private boolean f4067h;
    private String f4068i;
    private String f4069j;
    private C0451b f4070k;
    private C0451b f4071l;
    private String f4072m;
    private Messenger f4073n;
    private int f4074o;
    private Map f4075p;
    private Handler f4076q;
    private boolean f4077r;

    /* renamed from: com.baidu.location.j.a */
    private class C0520a extends ac {
        private C0448C f4054Y;
        private final String f4055Z;
        final /* synthetic */ C0524j f4056a;

        public C0520a(C0524j c0524j, C0448C c0448c, String str) {
            this.f4056a = c0524j;
            this.f4054Y = c0448c;
            this.f4055Z = str;
            this.c0 = new ArrayList();
        }

        private void m5976d() {
            this.f4056a.f4077r = false;
            this.f4056a.f4075p.put(this.f4054Y.getGeofenceId(), Long.valueOf(System.currentTimeMillis()));
            C0460G.m5597for(C0513f.getServiceContext()).m5599do(this.f4054Y);
            if (this.f4056a.f4073n != null) {
                Message obtain = Message.obtain(null, C0452e.f3840goto);
                Bundle bundle = new Bundle();
                bundle.putString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID, this.f4054Y.getGeofenceId());
                obtain.setData(bundle);
                this.f4056a.f4073n.send(obtain);
            }
        }

        private void m5977e() {
            this.f4056a.f4077r = false;
            C0460G.m5597for(C0513f.getServiceContext()).m5601if(this.f4054Y);
            if (this.f4056a.f4073n != null) {
                Message obtain = Message.obtain(null, C0452e.f3842i);
                Bundle bundle = new Bundle();
                bundle.putString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID, this.f4054Y.getGeofenceId());
                obtain.setData(bundle);
                this.f4056a.f4073n.send(obtain);
            }
        }

        void m5978X() {
            this.cY = C0524j.lA;
            DecimalFormat decimalFormat = new DecimalFormat("0.00000");
            String str = "&x=%s&y=%s&r=%s&coord=%s&type=%s&cu=%s&fence_type=%s&wf_on=%s";
            Object[] objArr = new Object[8];
            objArr[0] = decimalFormat.format(this.f4054Y.m5510a());
            objArr[1] = decimalFormat.format(this.f4054Y.m5517case());
            objArr[2] = String.valueOf(this.f4054Y.m5519do());
            objArr[3] = String.valueOf(this.f4054Y.m5526int());
            objArr[4] = Integer.valueOf(C0460G.m5595do(C0513f.getServiceContext()));
            objArr[5] = C0492a.m5809a(C0513f.getServiceContext());
            objArr[6] = Integer.valueOf(this.f4054Y.m5518char());
            objArr[7] = C0453D.cs().cv() ? "1" : "0";
            this.c0.add(new BasicNameValuePair("fence", Jni.m5622k(String.format(str, objArr))));
            this.c0.add(new BasicNameValuePair("bloc", this.f4055Z));
            this.c0.add(new BasicNameValuePair("ext", Jni.m5622k(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{al.m5879a(C0513f.getServiceContext()), al.m5883if(C0513f.getServiceContext())}))));
        }

        public void an() {
            m5570R();
        }

        void m5979do(boolean z) {
            boolean z2 = false;
            this.f4056a.f4060a = false;
            if (z && this.cZ != null) {
                try {
                    JSONObject jSONObject = new JSONObject(EntityUtils.toString(this.cZ, "UTF-8"));
                    if (jSONObject != null) {
                        int intValue = Integer.valueOf(jSONObject.getString("error")).intValue();
                        if (jSONObject.has("in")) {
                            z2 = Integer.valueOf(jSONObject.getString("in")).intValue();
                        }
                        if (intValue == 0) {
                            this.f4056a.f4069j = null;
                            this.f4056a.f4071l = null;
                            C0460G.m5597for(C0513f.getServiceContext()).cJ();
                            if (this.f4056a.f4077r) {
                                if (z2) {
                                    m5976d();
                                } else if (!z2) {
                                    m5977e();
                                }
                            } else if (z2 && this.f4054Y.m5515b() == 1) {
                                m5976d();
                            } else if (!z2 && this.f4054Y.m5515b() == 0) {
                                m5977e();
                            }
                        }
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: com.baidu.location.j.b */
    private class C0521b extends C0504u {
        final /* synthetic */ C0524j f4057a;

        private C0521b(C0524j c0524j) {
            this.f4057a = c0524j;
        }

        void m5980a() {
        }

        void m5981a(Message message) {
        }
    }

    /* renamed from: com.baidu.location.j.c */
    public class C0522c extends BroadcastReceiver {
        final /* synthetic */ C0524j f4058a;

        public C0522c(C0524j c0524j) {
            this.f4058a = c0524j;
        }

        public void onReceive(Context context, Intent intent) {
            this.f4058a.m5987a(context);
            this.f4058a.f4076q.post(this.f4058a.f4065f);
        }
    }

    /* renamed from: com.baidu.location.j.d */
    private class C0523d implements Runnable {
        final /* synthetic */ C0524j f4059a;

        private C0523d(C0524j c0524j) {
            this.f4059a = c0524j;
        }

        public void run() {
            try {
                List c = this.f4059a.m5985a(true);
                if (!this.f4059a.f4068i.equals(this.f4059a.f4069j) || this.f4059a.m6000c() || !this.f4059a.f4060a) {
                    this.f4059a.f4069j = this.f4059a.f4068i;
                    this.f4059a.f4071l = this.f4059a.f4070k;
                    C0502a aw = aj.at().aw();
                    String l = Jni.m5623l(String.format("%s|%s|%s|0", new Object[]{Integer.valueOf(aw.f3998byte), Integer.valueOf(aw.f3999case), Integer.valueOf(aw.f3996a)}));
                    this.f4059a.f4072m = String.format("%s|%s|%s|0", new Object[]{Integer.valueOf(aw.f3998byte), Integer.valueOf(aw.f3999case), Integer.valueOf(aw.f3996a)});
                    this.f4059a.f4061b = this.f4059a.m6011for(l, true);
                    this.f4059a.f4062c = this.f4059a.m6011for(l, false);
                    this.f4059a.m5989a(c);
                    this.f4059a.m5995b();
                }
            } catch (Exception e) {
                this.f4059a.m6014if(C0513f.getServiceContext(), 360000);
            }
        }
    }

    C0524j() {
        this.f4075p = new HashMap();
        this.f4076q = new Handler();
        this.f4077r = true;
    }

    private List m5985a(boolean z) {
        C0502a aw = aj.at().aw();
        this.f4070k = C0453D.cs().cn();
        List arrayList = new ArrayList();
        if (z) {
            this.f4068i = String.format("%s|%s|%s|%s", new Object[]{Integer.valueOf(aw.f3998byte), Integer.valueOf(aw.f3999case), Integer.valueOf(aw.f3996a), Integer.valueOf(aw.f4002for)});
            arrayList.add(Jni.m5623l(this.f4068i));
        }
        if (this.f4070k != null) {
            List<ScanResult> list = this.f4070k.f3805for;
            if (list != null) {
                for (ScanResult scanResult : list) {
                    if (scanResult != null) {
                        arrayList.add(Jni.m5623l(scanResult.BSSID.replace(":", "")));
                    }
                }
            }
        }
        return arrayList;
    }

    private void m5986a() {
        this.f4064e = new HandlerThread("GeofenceStrategyService", 10);
        this.f4064e.start();
        this.f4076q = new Handler(this.f4064e.getLooper());
        this.f4065f = new C0523d();
    }

    private void m5987a(Context context) {
        if (this.f4063d == null) {
            this.f4063d = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "GeofenceStrategyService");
            this.f4063d.setReferenceCounted(false);
            this.f4063d.acquire(60000);
        }
    }

    private void m5989a(List list) {
        if (list != null && list.size() != 0) {
            int i;
            C0448C c0448c;
            List list2;
            List<C0448C> arrayList;
            int size = list.size();
            for (i = 0; i < size; i++) {
                list.set(i, String.format("'%s'", new Object[]{list.get(i)}));
            }
            Collection collection = m6013if(list, true);
            if (collection != null) {
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    c0448c = (C0448C) it.next();
                    Iterator it2 = this.f4075p.entrySet().iterator();
                    while (it2.hasNext()) {
                        Entry entry = (Entry) it2.next();
                        if (System.currentTimeMillis() - ((Long) entry.getValue()).longValue() >= lk) {
                            it2.remove();
                        }
                        if (c0448c.getGeofenceId().equals(entry.getKey())) {
                            it.remove();
                        }
                    }
                }
            }
            List<String> a = m5985a(false);
            if (a != null && a.size() > 0) {
                Map e = m6004e();
                if (e.size() > 0) {
                    for (String str : a) {
                        Iterator it3 = e.entrySet().iterator();
                        while (it3.hasNext()) {
                            if (((List) ((Entry) it3.next()).getValue()).contains(str)) {
                                it3.remove();
                                break;
                            }
                        }
                    }
                }
                if (e.size() > 0) {
                    a.clear();
                    a.addAll(e.keySet());
                    size = a.size();
                    for (i = 0; i < size; i++) {
                        a.set(i, String.format("'%s'", new Object[]{a.get(i)}));
                    }
                    list2 = m6013if((List) a, false);
                    arrayList = new ArrayList();
                    if (collection != null) {
                        arrayList.addAll(collection);
                    }
                    if (r0 != null) {
                        for (C0448C c0448c2 : r0) {
                            if (arrayList.contains(c0448c2) || this.f4077r) {
                                arrayList.add(c0448c2);
                            }
                        }
                    }
                    if (arrayList != null || arrayList.size() <= 0) {
                        this.f4060a = false;
                    }
                    for (C0448C c0448c22 : arrayList) {
                        if (c0448c22 != null) {
                            this.f4060a = true;
                            m6012for(c0448c22);
                            this.f4069j = this.f4068i;
                            this.f4071l = this.f4070k;
                            this.f4074o = 0;
                        } else {
                            this.f4060a = false;
                            this.f4074o++;
                            this.f4074o = this.f4074o == Integer.MAX_VALUE ? 1 : this.f4074o;
                        }
                    }
                    return;
                }
            }
            list2 = null;
            arrayList = new ArrayList();
            if (collection != null) {
                arrayList.addAll(collection);
            }
            if (r0 != null) {
                for (C0448C c0448c222 : r0) {
                    if (arrayList.contains(c0448c222)) {
                    }
                    arrayList.add(c0448c222);
                }
            }
            if (arrayList != null) {
            }
            this.f4060a = false;
        }
    }

    private void m5995b() {
        if (this.f4060a) {
            m6014if(C0513f.getServiceContext(), 30000);
        } else if (this.f4074o > 0) {
            m6014if(C0513f.getServiceContext(), this.f4074o >= 6 ? 180000 : this.f4074o * 30000);
        } else if (this.f4061b == null || this.f4061b.size() <= 0) {
            m6014if(C0513f.getServiceContext(), 360000);
        } else {
            Object obj = null;
            for (C0448C c0448c : this.f4061b) {
                Object obj2;
                if (c0448c.m5525if() || c0448c.m5522for()) {
                    obj2 = obj;
                } else {
                    m6012for(c0448c);
                    obj2 = 1;
                }
                obj = obj2;
            }
            if (this.f4062c != null && this.f4062c.size() > 0) {
                for (C0448C c0448c2 : this.f4062c) {
                    if (!(c0448c2.m5525if() || c0448c2.m5522for())) {
                        m6012for(c0448c2);
                        obj = 1;
                    }
                }
            }
            if (obj != null) {
                m6014if(C0513f.getServiceContext(), 30000);
            } else {
                m6014if(C0513f.getServiceContext(), 180000);
            }
        }
    }

    private boolean m6000c() {
        return this.f4071l == null ? true : this.f4070k == this.f4071l ? false : !this.f4071l.m5532a(this.f4070k);
    }

    private void m6002d() {
        if (this.f4063d != null && this.f4063d.isHeld()) {
            this.f4063d.release();
            this.f4063d = null;
        }
    }

    public static C0524j de() {
        if (lx == null) {
            lx = new C0524j();
            lx.m5986a();
        }
        return lx;
    }

    private Map m6004e() {
        Cursor cursor = null;
        Map hashMap = new HashMap();
        SQLiteDatabase readableDatabase = C0485W.m5762a(C0513f.getServiceContext()).getReadableDatabase();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            cursor = readableDatabase.rawQuery(String.format("SELECT a.ap, b.geofence_id FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND ((b.valid_date + b.duration_millis) >= %d) AND (b.next_exit_active_time < %d) ", new Object[]{"geofence_detail", "geofence", Long.valueOf(currentTimeMillis), Long.valueOf(currentTimeMillis)}), null);
            if (cursor == null || cursor.getCount() <= 0) {
                if (cursor != null) {
                    cursor.close();
                }
                readableDatabase.close();
                return hashMap;
            }
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID);
            int columnIndex2 = cursor.getColumnIndex("ap");
            do {
                String string = cursor.getString(columnIndex);
                String string2 = cursor.getString(columnIndex2);
                if (hashMap.containsKey(string)) {
                    ((List) hashMap.get(string)).add(string2);
                } else {
                    List arrayList = new ArrayList();
                    arrayList.add(string2);
                    hashMap.put(string, arrayList);
                }
            } while (cursor.moveToNext());
            if (cursor != null) {
                cursor.close();
            }
            readableDatabase.close();
            return hashMap;
        } catch (Exception e) {
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List m6011for(java.lang.String r30, boolean r31) {
        /*
        r29 = this;
        r2 = com.baidu.location.C0513f.getServiceContext();
        r2 = com.baidu.location.C0485W.m5762a(r2);
        r17 = r2.getReadableDatabase();
        r2 = 0;
        if (r17 == 0) goto L_0x0125;
    L_0x000f:
        r3 = 0;
        r4 = java.lang.System.currentTimeMillis();
        if (r31 == 0) goto L_0x0126;
    L_0x0016:
        r6 = "SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap = '%s' AND  (b.valid_date + b.duration_millis >= %d) AND b.next_active_time < %d)";
        r7 = 5;
        r7 = new java.lang.Object[r7];	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 0;
        r9 = "geofence_detail";
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 1;
        r9 = "geofence";
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 2;
        r7[r8] = r30;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 3;
        r9 = java.lang.Long.valueOf(r4);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 4;
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r7[r8] = r4;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r4 = java.lang.String.format(r6, r7);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
    L_0x003a:
        r5 = 0;
        r0 = r17;
        r12 = r0.rawQuery(r4, r5);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        if (r12 == 0) goto L_0x011d;
    L_0x0043:
        r3 = r12.getCount();	 Catch:{ Exception -> 0x0169, all -> 0x0167 }
        if (r3 <= 0) goto L_0x011d;
    L_0x0049:
        r13 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0169, all -> 0x0167 }
        r13.<init>();	 Catch:{ Exception -> 0x0169, all -> 0x0167 }
        r12.moveToFirst();	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "geofence_id";
        r18 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "longitude";
        r19 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "latitude";
        r20 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "radius";
        r21 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "coord_type";
        r22 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "duration_millis";
        r23 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "is_lac";
        r24 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "is_cell";
        r25 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "is_wifi";
        r26 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = "radius_type";
        r27 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
    L_0x008d:
        r0 = r18;
        r3 = r12.getString(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r19;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r4 = r2.floatValue();	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r20;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r6 = r2.floatValue();	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r21;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r28 = r2.floatValue();	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r22;
        r11 = r12.getString(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r23;
        r9 = r12.getLong(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r24;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r2 == 0) goto L_0x014c;
    L_0x00d1:
        r2 = 1;
        r16 = r2;
    L_0x00d4:
        r0 = r25;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r2 == 0) goto L_0x0150;
    L_0x00dc:
        r2 = 1;
        r15 = r2;
    L_0x00de:
        r0 = r26;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r2 == 0) goto L_0x0153;
    L_0x00e6:
        r2 = 1;
        r14 = r2;
    L_0x00e8:
        r0 = r27;
        r8 = r12.getInt(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = new com.baidu.location.C;	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r4 = (double) r4;	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r6 = (double) r6;	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2.<init>(r3, r4, r6, r8, r9, r11);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r2 == 0) goto L_0x0113;
    L_0x00f7:
        r0 = r28;
        r2.m5511a(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r16;
        r2.m5520do(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2.m5514a(r15);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2.m5524if(r14);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r0 = r29;
        r3 = r0.f4077r;	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r3 != 0) goto L_0x0113;
    L_0x010d:
        if (r31 == 0) goto L_0x0156;
    L_0x010f:
        r3 = 1;
    L_0x0110:
        r2.m5512a(r3);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
    L_0x0113:
        r13.add(r2);	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        r2 = r12.moveToNext();	 Catch:{ Exception -> 0x016c, all -> 0x0167 }
        if (r2 != 0) goto L_0x008d;
    L_0x011c:
        r2 = r13;
    L_0x011d:
        if (r12 == 0) goto L_0x0122;
    L_0x011f:
        r12.close();
    L_0x0122:
        r17.close();
    L_0x0125:
        return r2;
    L_0x0126:
        r6 = "SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap <> '%s' AND  (b.valid_date + b.duration_millis >= %d) AND b.next_exit_active_time < %d)";
        r7 = 5;
        r7 = new java.lang.Object[r7];	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 0;
        r9 = "geofence_detail";
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 1;
        r9 = "geofence";
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 2;
        r7[r8] = r30;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 3;
        r9 = java.lang.Long.valueOf(r4);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r7[r8] = r9;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r8 = 4;
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r7[r8] = r4;	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        r4 = java.lang.String.format(r6, r7);	 Catch:{ Exception -> 0x0158, all -> 0x015f }
        goto L_0x003a;
    L_0x014c:
        r2 = 0;
        r16 = r2;
        goto L_0x00d4;
    L_0x0150:
        r2 = 0;
        r15 = r2;
        goto L_0x00de;
    L_0x0153:
        r2 = 0;
        r14 = r2;
        goto L_0x00e8;
    L_0x0156:
        r3 = 0;
        goto L_0x0110;
    L_0x0158:
        r4 = move-exception;
    L_0x0159:
        if (r3 == 0) goto L_0x0122;
    L_0x015b:
        r3.close();
        goto L_0x0122;
    L_0x015f:
        r2 = move-exception;
        r12 = r3;
    L_0x0161:
        if (r12 == 0) goto L_0x0166;
    L_0x0163:
        r12.close();
    L_0x0166:
        throw r2;
    L_0x0167:
        r2 = move-exception;
        goto L_0x0161;
    L_0x0169:
        r3 = move-exception;
        r3 = r12;
        goto L_0x0159;
    L_0x016c:
        r2 = move-exception;
        r3 = r12;
        r2 = r13;
        goto L_0x0159;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.j.for(java.lang.String, boolean):java.util.List");
    }

    public void m6012for(C0448C c0448c) {
        new C0520a(this, c0448c, Jni.m5622k(new C0521b().m5872i("&gf=1").replace(BDGeofence.COORD_TYPE_GCJ, c0448c.m5526int()))).an();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List m6013if(java.util.List r30, boolean r31) {
        /*
        r29 = this;
        r2 = ",";
        r0 = r30;
        r4 = android.text.TextUtils.join(r2, r0);
        r2 = com.baidu.location.C0513f.getServiceContext();
        r2 = com.baidu.location.C0485W.m5762a(r2);
        r17 = r2.getReadableDatabase();
        r2 = 0;
        if (r17 == 0) goto L_0x0130;
    L_0x0017:
        r3 = 0;
        r6 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        if (r31 == 0) goto L_0x0131;
    L_0x001e:
        r5 = "SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap IN (%s) AND  (b.valid_date + b.duration_millis) >= %d) AND (b.next_active_time < %d)";
        r8 = 5;
        r8 = new java.lang.Object[r8];	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 0;
        r10 = "geofence_detail";
        r8[r9] = r10;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 1;
        r10 = "geofence";
        r8[r9] = r10;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 2;
        r8[r9] = r4;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = 3;
        r9 = java.lang.Long.valueOf(r6);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r8[r4] = r9;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = 4;
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r8[r4] = r6;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = java.lang.String.format(r5, r8);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
    L_0x0042:
        r5 = 0;
        r0 = r17;
        r12 = r0.rawQuery(r4, r5);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        if (r12 == 0) goto L_0x0128;
    L_0x004b:
        r3 = r12.getCount();	 Catch:{ Exception -> 0x0174, all -> 0x0172 }
        if (r3 <= 0) goto L_0x0128;
    L_0x0051:
        r13 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0174, all -> 0x0172 }
        r13.<init>();	 Catch:{ Exception -> 0x0174, all -> 0x0172 }
        r13.clear();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r12.moveToFirst();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "geofence_id";
        r18 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "longitude";
        r19 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "latitude";
        r20 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "radius";
        r21 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "coord_type";
        r22 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "duration_millis";
        r23 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "is_lac";
        r24 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "is_cell";
        r25 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "is_wifi";
        r26 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = "radius_type";
        r27 = r12.getColumnIndex(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
    L_0x0098:
        r0 = r18;
        r3 = r12.getString(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r19;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r4 = r2.floatValue();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r20;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r6 = r2.floatValue();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r21;
        r2 = r12.getString(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = java.lang.Float.valueOf(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r28 = r2.floatValue();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r22;
        r11 = r12.getString(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r23;
        r9 = r12.getLong(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r24;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r2 == 0) goto L_0x0157;
    L_0x00dc:
        r2 = 1;
        r16 = r2;
    L_0x00df:
        r0 = r25;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r2 == 0) goto L_0x015b;
    L_0x00e7:
        r2 = 1;
        r15 = r2;
    L_0x00e9:
        r0 = r26;
        r2 = r12.getInt(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r2 == 0) goto L_0x015e;
    L_0x00f1:
        r2 = 1;
        r14 = r2;
    L_0x00f3:
        r0 = r27;
        r8 = r12.getInt(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = new com.baidu.location.C;	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r4 = (double) r4;	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r6 = (double) r6;	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2.<init>(r3, r4, r6, r8, r9, r11);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r2 == 0) goto L_0x011e;
    L_0x0102:
        r0 = r28;
        r2.m5511a(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r16;
        r2.m5520do(r0);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2.m5514a(r15);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2.m5524if(r14);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r0 = r29;
        r3 = r0.f4077r;	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r3 != 0) goto L_0x011e;
    L_0x0118:
        if (r31 == 0) goto L_0x0161;
    L_0x011a:
        r3 = 1;
    L_0x011b:
        r2.m5512a(r3);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
    L_0x011e:
        r13.add(r2);	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        r2 = r12.moveToNext();	 Catch:{ Exception -> 0x0177, all -> 0x0172 }
        if (r2 != 0) goto L_0x0098;
    L_0x0127:
        r2 = r13;
    L_0x0128:
        if (r12 == 0) goto L_0x012d;
    L_0x012a:
        r12.close();
    L_0x012d:
        r17.close();
    L_0x0130:
        return r2;
    L_0x0131:
        r5 = "SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (b.geofence_id IN (%s) AND  (b.valid_date + b.duration_millis) >= %d) AND (b.next_exit_active_time < %d)";
        r8 = 5;
        r8 = new java.lang.Object[r8];	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 0;
        r10 = "geofence_detail";
        r8[r9] = r10;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 1;
        r10 = "geofence";
        r8[r9] = r10;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r9 = 2;
        r8[r9] = r4;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = 3;
        r9 = java.lang.Long.valueOf(r6);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r8[r4] = r9;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = 4;
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r8[r4] = r6;	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        r4 = java.lang.String.format(r5, r8);	 Catch:{ Exception -> 0x0163, all -> 0x016a }
        goto L_0x0042;
    L_0x0157:
        r2 = 0;
        r16 = r2;
        goto L_0x00df;
    L_0x015b:
        r2 = 0;
        r15 = r2;
        goto L_0x00e9;
    L_0x015e:
        r2 = 0;
        r14 = r2;
        goto L_0x00f3;
    L_0x0161:
        r3 = 0;
        goto L_0x011b;
    L_0x0163:
        r4 = move-exception;
    L_0x0164:
        if (r3 == 0) goto L_0x012d;
    L_0x0166:
        r3.close();
        goto L_0x012d;
    L_0x016a:
        r2 = move-exception;
        r12 = r3;
    L_0x016c:
        if (r12 == 0) goto L_0x0171;
    L_0x016e:
        r12.close();
    L_0x0171:
        throw r2;
    L_0x0172:
        r2 = move-exception;
        goto L_0x016c;
    L_0x0174:
        r3 = move-exception;
        r3 = r12;
        goto L_0x0164;
    L_0x0177:
        r2 = move-exception;
        r3 = r12;
        r2 = r13;
        goto L_0x0164;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.j.if(java.util.List, boolean):java.util.List");
    }

    public void m6014if(Context context, int i) {
        Intent intent = new Intent("com.baidu.locsdk.geofence.geofencestrategyservice");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728);
        if (i <= 0) {
            C0477S.m5720a(context, broadcast);
            context.sendBroadcast(intent);
            return;
        }
        C0477S.m5721a(context, broadcast, i);
    }

    public void m6015if(Context context, Message message) {
        if (!this.f4067h) {
            this.f4073n = message.replyTo;
            this.f4067h = true;
            this.f4066g = new C0522c(this);
            context.registerReceiver(this.f4066g, new IntentFilter("com.baidu.locsdk.geofence.geofencestrategyservice"));
            m6014if(context, 0);
        }
    }

    public void m6016new(Context context) {
        m6015if(context, null);
    }

    public void m6017try(Context context) {
        this.f4067h = false;
        C0477S.m5720a(context, PendingIntent.getBroadcast(context, 0, new Intent("com.baidu.locsdk.geofence.geofencestrategyservice"), 134217728));
        m6002d();
        if (this.f4066g != null) {
            try {
                context.unregisterReceiver(this.f4066g);
            } catch (Exception e) {
            }
        }
    }
}
