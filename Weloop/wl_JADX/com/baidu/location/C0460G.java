package com.baidu.location;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.location.GeofenceClient.OnAddBDGeofencesResultListener;
import com.baidu.location.GeofenceClient.OnRemoveBDGeofencesResultListener;
import com.baidu.location.p083a.p084a.C0492a;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.G */
class C0460G implements C0452e {
    private static C0460G ab = null;
    public static final int iS = 10;
    private C0456a f3885Y;
    private HandlerThread f3886Z;
    private Context f3887a;
    private Object aa;

    /* renamed from: com.baidu.location.G.a */
    private class C0456a extends Handler {
        public static final int f3868do = 2;
        public static final int f3869for = 3;
        public static final int f3870if = 0;
        final /* synthetic */ C0460G f3871a;

        public C0456a(C0460G c0460g, Looper looper) {
            this.f3871a = c0460g;
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            Bundle data = message.getData();
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    String string;
                    if (data != null) {
                        i = data.getInt("status_code", 1);
                        string = data.getString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID);
                    } else {
                        i = 1;
                        string = null;
                    }
                    this.f3871a.m5583a(i, string, (OnAddBDGeofencesResultListener) message.obj);
                case f3868do /*2*/:
                    String[] stringArray;
                    if (data != null) {
                        i = data.getInt("status_code", 1);
                        stringArray = data.getStringArray("geofence_ids");
                    } else {
                        i = 1;
                        stringArray = null;
                    }
                    this.f3871a.m5584a(i, stringArray, (OnRemoveBDGeofencesResultListener) message.obj);
                case f3869for /*3*/:
                    this.f3871a.cJ();
                default:
            }
        }
    }

    /* renamed from: com.baidu.location.G.b */
    class C0457b extends ac {
        private final C0448C f3875Y;
        private OnAddBDGeofencesResultListener f3876Z;
        final /* synthetic */ C0460G f3877a;
        private int aa;

        public C0457b(C0460G c0460g, C0448C c0448c, OnAddBDGeofencesResultListener onAddBDGeofencesResultListener) {
            this.f3877a = c0460g;
            this.f3875Y = c0448c;
            this.f3876Z = onAddBDGeofencesResultListener;
            this.c0 = new ArrayList();
        }

        public void m5576X() {
            this.cY = C0524j.lA;
            DecimalFormat decimalFormat = new DecimalFormat("0.00000");
            this.c0.add(new BasicNameValuePair("fence", Jni.m5622k(String.format("&x=%s&y=%s&r=%s&coord=%s&type=%s&cu=%s&sdk=%s", new Object[]{decimalFormat.format(this.f3875Y.m5510a()), decimalFormat.format(this.f3875Y.m5517case()), String.valueOf(this.f3875Y.m5527new()), String.valueOf(this.f3875Y.m5526int()), Integer.valueOf(C0460G.m5595do(this.f3877a.f3887a)), C0492a.m5809a(this.f3877a.f3887a), Float.valueOf(5.21f)}))));
            this.c0.add(new BasicNameValuePair("ext", Jni.m5622k(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[]{al.m5879a(this.f3877a.f3887a), al.m5883if(this.f3877a.f3887a)}))));
        }

        public void al() {
            m5570R();
        }

        public void m5577do(boolean z) {
            if (!z || this.cZ == null) {
                this.f3877a.m5589a(this.f3876Z, 1, this.f3875Y.getGeofenceId());
                return;
            }
            Object obj = null;
            try {
                JSONObject jSONObject = new JSONObject(EntityUtils.toString(this.cZ, "UTF-8"));
                if (jSONObject != null) {
                    Object string;
                    StringBuilder stringBuilder = new StringBuilder();
                    if (jSONObject.has("lac")) {
                        string = jSONObject.getString("lac");
                        if (!TextUtils.isEmpty(string)) {
                            stringBuilder.append(string);
                            this.f3875Y.m5520do(true);
                        }
                    }
                    if (jSONObject.has("cl")) {
                        string = jSONObject.getString("cl");
                        if (!TextUtils.isEmpty(string)) {
                            stringBuilder.append(string);
                            this.f3875Y.m5514a(true);
                        }
                    }
                    if (jSONObject.has("wf")) {
                        string = jSONObject.getString("wf");
                        if (!TextUtils.isEmpty(string)) {
                            stringBuilder.append(string);
                            this.f3875Y.m5524if(true);
                        }
                    }
                    obj = stringBuilder.toString();
                    if (jSONObject.has("radius")) {
                        this.f3875Y.m5511a(Float.valueOf(jSONObject.getString("radius")).floatValue());
                    }
                    if (jSONObject.has("error")) {
                        this.aa = Integer.valueOf(jSONObject.getString("error")).intValue();
                    }
                }
                if (!TextUtils.isEmpty(obj)) {
                    this.f3877a.f3885Y.post(new C0458c(this.f3877a, this.f3875Y, obj, this.f3876Z));
                } else if (this.aa == -3) {
                    this.f3877a.m5589a(this.f3876Z, (int) BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, this.f3875Y.getGeofenceId());
                } else {
                    this.f3877a.m5589a(this.f3876Z, this.aa, this.f3875Y.getGeofenceId());
                }
            } catch (Exception e) {
                this.f3877a.m5589a(this.f3876Z, 1, this.f3875Y.getGeofenceId());
            }
        }
    }

    /* renamed from: com.baidu.location.G.c */
    private class C0458c implements Runnable {
        final /* synthetic */ C0460G f3878a;
        private final C0448C f3879b;
        private final String f3880c;
        private final OnAddBDGeofencesResultListener f3881d;

        public C0458c(C0460G c0460g, C0448C c0448c, String str, OnAddBDGeofencesResultListener onAddBDGeofencesResultListener) {
            this.f3878a = c0460g;
            this.f3879b = c0448c;
            this.f3880c = str;
            this.f3881d = onAddBDGeofencesResultListener;
        }

        public void run() {
            this.f3878a.m5589a(this.f3881d, this.f3878a.m5578a(this.f3879b, this.f3880c), this.f3879b.getGeofenceId());
            if (C0513f.getServiceContext() != null) {
                C0524j.de().m6012for(this.f3879b);
            }
        }
    }

    /* renamed from: com.baidu.location.G.d */
    private class C0459d implements Runnable {
        final /* synthetic */ C0460G f3882a;
        private final List f3883b;
        private final OnRemoveBDGeofencesResultListener f3884c;

        public C0459d(C0460G c0460g, List list, OnRemoveBDGeofencesResultListener onRemoveBDGeofencesResultListener) {
            this.f3882a = c0460g;
            this.f3883b = list;
            this.f3884c = onRemoveBDGeofencesResultListener;
        }

        public void run() {
            int a = this.f3882a.m5581a(this.f3883b);
            Message obtain = Message.obtain(this.f3882a.f3885Y);
            obtain.what = 2;
            obtain.obj = this.f3884c;
            Bundle bundle = new Bundle();
            bundle.putInt("status_code", a);
            bundle.putStringArray("geofence_ids", (String[]) this.f3883b.toArray(new String[this.f3883b.size()]));
            obtain.setData(bundle);
            this.f3882a.f3885Y.sendMessage(obtain);
        }
    }

    C0460G() {
        this.aa = new Object();
    }

    private synchronized int m5578a(C0448C c0448c, String str) {
        int i = 0;
        synchronized (this) {
            SQLiteDatabase writableDatabase = C0485W.m5762a(this.f3887a).getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.beginTransaction();
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    ContentValues contentValues = new ContentValues();
                    String geofenceId = c0448c.getGeofenceId();
                    contentValues.put(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID, geofenceId);
                    contentValues.put("longitude", Double.valueOf(c0448c.m5510a()));
                    contentValues.put("latitude", Double.valueOf(c0448c.m5517case()));
                    contentValues.put("radius", Float.valueOf(c0448c.m5519do()));
                    contentValues.put("radius_type", Integer.valueOf(c0448c.m5527new()));
                    contentValues.put("valid_date", Long.valueOf(currentTimeMillis));
                    contentValues.put("duration_millis", Long.valueOf(c0448c.m5523goto()));
                    contentValues.put("coord_type", c0448c.m5526int());
                    contentValues.put("is_lac", Integer.valueOf(c0448c.m5516byte() ? 1 : 0));
                    contentValues.put("is_cell", Integer.valueOf(c0448c.m5525if() ? 1 : 0));
                    contentValues.put("is_wifi", Integer.valueOf(c0448c.m5522for() ? 1 : 0));
                    contentValues.put("next_active_time", Integer.valueOf(0));
                    contentValues.put("next_exit_active_time", Integer.valueOf(0));
                    writableDatabase.insert("geofence", null, contentValues);
                    for (String str2 : str.split(";")) {
                        String str22;
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID, geofenceId);
                        contentValues2.put("ap_backup", str22);
                        int lastIndexOf = str22.lastIndexOf("|");
                        if (lastIndexOf != -1) {
                            str22 = str22.substring(0, lastIndexOf);
                        }
                        contentValues2.put("ap", str22);
                        writableDatabase.insert("geofence_detail", null, contentValues2);
                    }
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Exception e) {
                    writableDatabase.endTransaction();
                    i = 1;
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                }
                writableDatabase.close();
            }
        }
        return i;
    }

    private synchronized int m5581a(List list) {
        int i;
        SQLiteDatabase writableDatabase = C0485W.m5762a(this.f3887a).getWritableDatabase();
        if (writableDatabase != null) {
            writableDatabase.beginTransaction();
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String[] strArr = new String[]{(String) it.next()};
                    writableDatabase.delete("geofence", String.format("%s=?", new Object[]{GeofenceClient.BUNDLE_FOR_GEOFENCE_ID}), strArr);
                    writableDatabase.delete("geofence_detail", String.format("%s=?", new Object[]{GeofenceClient.BUNDLE_FOR_GEOFENCE_ID}), strArr);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                i = 0;
            } catch (Exception e) {
                writableDatabase.endTransaction();
                i = 1;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
            writableDatabase.close();
        } else {
            i = 0;
        }
        return i;
    }

    private synchronized long m5582a() {
        long j;
        j = 0;
        try {
            SQLiteDatabase readableDatabase = C0485W.m5762a(this.f3887a).getReadableDatabase();
            if (readableDatabase != null) {
                j = DatabaseUtils.queryNumEntries(readableDatabase, "geofence");
                readableDatabase.close();
            }
        } catch (Exception e) {
        }
        return j;
    }

    private void m5583a(int i, String str, OnAddBDGeofencesResultListener onAddBDGeofencesResultListener) {
        if (i == 1) {
            onAddBDGeofencesResultListener.onAddBDGeofencesResult(i, str);
        } else {
            onAddBDGeofencesResultListener.onAddBDGeofencesResult(i, str);
        }
    }

    private void m5584a(int i, String[] strArr, OnRemoveBDGeofencesResultListener onRemoveBDGeofencesResultListener) {
        onRemoveBDGeofencesResultListener.onRemoveBDGeofencesByRequestIdsResult(i, strArr);
    }

    private void m5589a(OnAddBDGeofencesResultListener onAddBDGeofencesResultListener, int i, String str) {
        Message obtain = Message.obtain(this.f3885Y);
        obtain.what = 0;
        obtain.obj = onAddBDGeofencesResultListener;
        Bundle bundle = new Bundle();
        bundle.putInt("status_code", i);
        bundle.putString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID, str);
        obtain.setData(bundle);
        this.f3885Y.sendMessage(obtain);
    }

    private void m5591b() {
        this.f3885Y.sendEmptyMessage(3);
    }

    private final void m5593c() {
        if (!ac.m5568if(this.f3887a)) {
            throw new IllegalStateException("Not net connection");
        }
    }

    private synchronized void m5594d() {
        SQLiteDatabase writableDatabase = C0485W.m5762a(this.f3887a).getWritableDatabase();
        if (writableDatabase != null) {
            writableDatabase.beginTransaction();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                writableDatabase.execSQL(String.format("DELETE FROM %s WHERE EXISTS (SELECT * FROM %s WHERE (%s + %s) < %d)", new Object[]{"geofence_detail", "geofence", "valid_date", "duration_millis", Long.valueOf(currentTimeMillis)}));
                writableDatabase.execSQL(String.format("DELETE FROM %s WHERE (%s + %s) < %d", new Object[]{"geofence", "valid_date", "duration_millis", Long.valueOf(currentTimeMillis)}));
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                writableDatabase.close();
            } catch (Exception e) {
                writableDatabase.endTransaction();
                writableDatabase.close();
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                writableDatabase.close();
            }
        }
    }

    public static int m5595do(Context context) {
        String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        if (subscriberId != null) {
            if (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) {
                return 1;
            }
            if (subscriberId.startsWith("46001")) {
                return 2;
            }
            if (subscriberId.startsWith("46003")) {
                return 3;
            }
        }
        return 5;
    }

    private void m5596e() {
        this.f3886Z = new HandlerThread("GeofenceMan", iS);
        this.f3886Z.start();
        this.f3885Y = new C0456a(this, this.f3886Z.getLooper());
    }

    public static C0460G m5597for(Context context) {
        if (ab == null) {
            ab = new C0460G();
            ab.m5596e();
            ab.f3887a = context;
        }
        return ab;
    }

    public static void m5598int(Context context) {
        C0524j.de().m6017try(C0513f.getServiceContext());
    }

    public void cJ() {
        synchronized (this.aa) {
            this.f3885Y.post(new C0464J(this));
        }
    }

    public void m5599do(C0448C c0448c) {
        this.f3885Y.post(new C0462H(this, c0448c));
    }

    public synchronized void m5600do(String str, boolean z) {
        long j = C0524j.lk;
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                SQLiteDatabase writableDatabase = C0485W.m5762a(this.f3887a).getWritableDatabase();
                if (writableDatabase != null) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        String str2;
                        long currentTimeMillis;
                        if (z) {
                            str2 = "next_active_time";
                            currentTimeMillis = System.currentTimeMillis();
                            if (!(GeofenceClient.m5607e() == 0 || GeofenceClient.m5607e() == C0524j.lk)) {
                                j = GeofenceClient.m5607e();
                            }
                            contentValues.put(str2, Long.valueOf(j + currentTimeMillis));
                        } else {
                            str2 = "next_exit_active_time";
                            currentTimeMillis = System.currentTimeMillis();
                            if (!(GeofenceClient.m5607e() == 0 || GeofenceClient.m5607e() == C0524j.lk)) {
                                j = GeofenceClient.m5607e();
                            }
                            contentValues.put(str2, Long.valueOf(j + currentTimeMillis));
                        }
                        writableDatabase.update("geofence", contentValues, "geofence_id= ?", new String[]{str});
                    } catch (Exception e) {
                    } finally {
                        writableDatabase.close();
                    }
                }
            }
        }
    }

    public void m5601if(C0448C c0448c) {
        this.f3885Y.post(new C0463I(this, c0448c));
    }

    public void m5602if(C0448C c0448c, OnAddBDGeofencesResultListener onAddBDGeofencesResultListener) {
        m5593c();
        C0445A.m5491a((Object) onAddBDGeofencesResultListener, (Object) "OnAddBDGeofenceRecesResultListener not provided.");
        if (m5582a() >= 10) {
            onAddBDGeofencesResultListener.onAddBDGeofencesResult(BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES, c0448c.getGeofenceId());
            return;
        }
        new C0457b(this, c0448c, onAddBDGeofencesResultListener).al();
        m5591b();
    }

    public void m5603if(List list, OnRemoveBDGeofencesResultListener onRemoveBDGeofencesResultListener) {
        boolean z = list != null && list.size() > 0;
        C0445A.m5496if(z, "geofenceRequestIds can't be null nor empty.");
        C0445A.m5491a((Object) onRemoveBDGeofencesResultListener, (Object) "onRemoveBDGeofencesResultListener not provided.");
        this.f3885Y.post(new C0459d(this, list, onRemoveBDGeofencesResultListener));
    }
}
