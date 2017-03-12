package com.baidu.location;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import java.util.List;

public class GeofenceClient implements C0452e {
    public static final String BUNDLE_FOR_GEOFENCE_ID = "geofence_id";
    private static final int bm = 1;
    private static long bq;
    private Context bi;
    private OnGeofenceTriggerListener bj;
    private ServiceConnection bk;
    private Messenger bl;
    private Messenger bn;
    private boolean bo;
    private C0461a bp;

    public interface OnAddBDGeofencesResultListener {
        void onAddBDGeofencesResult(int i, String str);
    }

    public interface OnGeofenceTriggerListener {
        void onGeofenceExit(String str);

        void onGeofenceTrigger(String str);
    }

    public interface OnRemoveBDGeofencesResultListener {
        void onRemoveBDGeofencesByRequestIdsResult(int i, String[] strArr);
    }

    /* renamed from: com.baidu.location.GeofenceClient.a */
    private class C0461a extends Handler {
        final /* synthetic */ GeofenceClient f3888a;

        private C0461a(GeofenceClient geofenceClient) {
            this.f3888a = geofenceClient;
        }

        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case GeofenceClient.bm /*1*/:
                    this.f3888a.m5604d();
                case C0452e.f3840goto /*208*/:
                    if (data != null) {
                        this.f3888a.m5608for(data.getString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID));
                    }
                case C0452e.f3842i /*209*/:
                    if (data != null) {
                        this.f3888a.m5613int(data.getString(GeofenceClient.BUNDLE_FOR_GEOFENCE_ID));
                    }
                default:
            }
        }
    }

    static {
        bq = C0524j.lk;
    }

    public GeofenceClient(Context context) {
        this.bo = false;
        this.bn = null;
        this.bp = new C0461a();
        this.bl = new Messenger(this.bp);
        this.bk = new C0509b(this);
        this.bi = context;
    }

    private void m5604d() {
        if (!this.bo) {
            Intent intent = new Intent(this.bi, C0513f.class);
            intent.putExtra("interval", bq);
            try {
                this.bi.bindService(intent, this.bk, bm);
            } catch (Exception e) {
                this.bo = false;
            }
        }
    }

    protected static long m5607e() {
        return bq;
    }

    private void m5608for(String str) {
        if (this.bj != null) {
            this.bj.onGeofenceTrigger(str);
        }
    }

    private void m5613int(String str) {
        if (this.bj != null) {
            this.bj.onGeofenceExit(str);
        }
    }

    private void m5614void() {
        try {
            Message obtain = Message.obtain(null, C0452e.f3822Q);
            obtain.replyTo = this.bl;
            this.bn.send(obtain);
        } catch (Exception e) {
        }
    }

    public void addBDGeofence(BDGeofence bDGeofence, OnAddBDGeofencesResultListener onAddBDGeofencesResultListener) {
        C0445A.m5491a((Object) bDGeofence, (Object) "geofence is null");
        if (bDGeofence != null) {
            C0445A.m5496if(bDGeofence instanceof C0448C, "BDGeofence must be created using BDGeofence.Builder");
        }
        C0460G.m5597for(this.bi).m5602if((C0448C) bDGeofence, onAddBDGeofencesResultListener);
    }

    public boolean isStarted() {
        return this.bo;
    }

    public void registerGeofenceTriggerListener(OnGeofenceTriggerListener onGeofenceTriggerListener) {
        if (this.bj == null) {
            this.bj = onGeofenceTriggerListener;
        }
    }

    public void removeBDGeofences(List list, OnRemoveBDGeofencesResultListener onRemoveBDGeofencesResultListener) {
        C0460G.m5597for(this.bi).m5603if(list, onRemoveBDGeofencesResultListener);
    }

    public void setInterval(long j) {
        if (j > bq) {
            bq = j;
        }
    }

    public void start() {
        C0445A.m5491a(this.bj, (Object) "OnGeofenceTriggerListener not register!");
        this.bp.obtainMessage(bm).sendToTarget();
    }

    public void startGeofenceScann() {
        if (this.bo) {
            try {
                Message obtain = Message.obtain(null, C0452e.f3850p);
                obtain.replyTo = this.bl;
                this.bn.send(obtain);
            } catch (Exception e) {
            }
        }
    }

    public void stop() {
        m5614void();
    }
}
