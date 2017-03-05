package com.baidu.location;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.baidu.location.l */
public class C0529l implements C0452e {
    public static final String gF = "android.com.baidu.location.TIMER.NOTIFY";
    private float f4086Y;
    private BDLocation f4087Z;
    private ArrayList f4088a;
    private long aa;
    private LocationClient ab;
    private Context ac;
    private int ad;
    private long ae;
    private boolean af;
    private PendingIntent ag;
    private AlarmManager ah;
    private C0528b ai;
    private C0527a aj;
    private boolean ak;

    /* renamed from: com.baidu.location.l.a */
    public class C0527a implements BDLocationListener {
        final /* synthetic */ C0529l f4084a;

        public C0527a(C0529l c0529l) {
            this.f4084a = c0529l;
        }

        public void m6030a(BDLocation bDLocation) {
        }

        public void onReceiveLocation(BDLocation bDLocation) {
            if (this.f4084a.f4088a != null && this.f4084a.f4088a.size() > 0) {
                this.f4084a.m6033a(bDLocation);
            }
        }
    }

    /* renamed from: com.baidu.location.l.b */
    public class C0528b extends BroadcastReceiver {
        final /* synthetic */ C0529l f4085a;

        public C0528b(C0529l c0529l) {
            this.f4085a = c0529l;
        }

        public void onReceive(Context context, Intent intent) {
            if (this.f4085a.f4088a != null && !this.f4085a.f4088a.isEmpty()) {
                this.f4085a.ab.requestNotifyLocation();
            }
        }
    }

    public C0529l(Context context, LocationClient locationClient) {
        this.f4088a = null;
        this.f4086Y = Float.MAX_VALUE;
        this.f4087Z = null;
        this.aa = 0;
        this.ab = null;
        this.ac = null;
        this.ad = 0;
        this.ae = 0;
        this.af = false;
        this.ag = null;
        this.ah = null;
        this.ai = null;
        this.aj = new C0527a(this);
        this.ak = false;
        this.ac = context;
        this.ab = locationClient;
        this.ab.registerNotifyLocationListener(this.aj);
        this.ah = (AlarmManager) this.ac.getSystemService("alarm");
        this.ai = new C0528b(this);
        this.ak = false;
    }

    private void m6032a(long j) {
        try {
            if (this.ag != null) {
                this.ah.cancel(this.ag);
            }
            this.ag = PendingIntent.getBroadcast(this.ac, 0, new Intent(gF), 134217728);
            if (this.ag != null) {
                this.ah.set(0, System.currentTimeMillis() + j, this.ag);
            }
        } catch (Exception e) {
        }
    }

    private void m6033a(BDLocation bDLocation) {
        if (bDLocation.getLocType() != 61 && bDLocation.getLocType() != BDLocation.TypeNetWorkLocation && bDLocation.getLocType() != 65) {
            m6032a(120000);
        } else if (System.currentTimeMillis() - this.aa >= 5000 && this.f4088a != null) {
            this.f4087Z = bDLocation;
            this.aa = System.currentTimeMillis();
            float[] fArr = new float[1];
            Iterator it = this.f4088a.iterator();
            float f = Float.MAX_VALUE;
            while (it.hasNext()) {
                BDNotifyListener bDNotifyListener = (BDNotifyListener) it.next();
                Location.distanceBetween(bDLocation.getLatitude(), bDLocation.getLongitude(), bDNotifyListener.mLatitudeC, bDNotifyListener.mLongitudeC, fArr);
                float radius = (fArr[0] - bDNotifyListener.mRadius) - bDLocation.getRadius();
                if (radius > 0.0f) {
                    if (radius < f) {
                    }
                    radius = f;
                } else {
                    if (bDNotifyListener.Notified < 3) {
                        bDNotifyListener.Notified++;
                        bDNotifyListener.onNotify(bDLocation, fArr[0]);
                        if (bDNotifyListener.Notified < 3) {
                            this.af = true;
                        }
                    }
                    radius = f;
                }
                f = radius;
            }
            if (f < this.f4086Y) {
                this.f4086Y = f;
            }
            this.ad = 0;
            m6037b();
        }
    }

    private boolean m6035a() {
        if (this.f4088a == null || this.f4088a.isEmpty()) {
            return false;
        }
        Iterator it = this.f4088a.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z = ((BDNotifyListener) it.next()).Notified < 3 ? true : z;
        }
        return z;
    }

    private void m6037b() {
        int i = 10000;
        if (m6035a()) {
            boolean z;
            int i2 = this.f4086Y > 5000.0f ? 600000 : this.f4086Y > 1000.0f ? 120000 : this.f4086Y > 500.0f ? 60000 : 10000;
            if (this.af) {
                this.af = false;
            } else {
                i = i2;
            }
            if (this.ad != 0) {
                if (((long) i) > (this.ae + ((long) this.ad)) - System.currentTimeMillis()) {
                    z = false;
                    if (z) {
                        this.ad = i;
                        this.ae = System.currentTimeMillis();
                        m6032a((long) this.ad);
                    }
                }
            }
            z = true;
            if (z) {
                this.ad = i;
                this.ae = System.currentTimeMillis();
                m6032a((long) this.ad);
            }
        }
    }

    public void bq() {
        if (this.ag != null) {
            this.ah.cancel(this.ag);
        }
        this.f4087Z = null;
        this.aa = 0;
        if (this.ak) {
            this.ac.unregisterReceiver(this.ai);
        }
        this.ak = false;
    }

    public int m6038do(BDNotifyListener bDNotifyListener) {
        if (this.f4088a == null) {
            this.f4088a = new ArrayList();
        }
        this.f4088a.add(bDNotifyListener);
        bDNotifyListener.isAdded = true;
        bDNotifyListener.mNotifyCache = this;
        if (!this.ak) {
            this.ac.registerReceiver(this.ai, new IntentFilter(gF));
            this.ak = true;
        }
        if (bDNotifyListener.mCoorType != null) {
            if (!bDNotifyListener.mCoorType.equals(BDGeofence.COORD_TYPE_GCJ)) {
                double[] dArr = Jni.m5620if(bDNotifyListener.mLongitude, bDNotifyListener.mLatitude, bDNotifyListener.mCoorType + "2gcj");
                bDNotifyListener.mLongitudeC = dArr[0];
                bDNotifyListener.mLatitudeC = dArr[1];
            }
            if (this.f4087Z == null || System.currentTimeMillis() - this.aa > 30000) {
                this.ab.requestNotifyLocation();
            } else {
                float[] fArr = new float[1];
                Location.distanceBetween(this.f4087Z.getLatitude(), this.f4087Z.getLongitude(), bDNotifyListener.mLatitudeC, bDNotifyListener.mLongitudeC, fArr);
                float radius = (fArr[0] - bDNotifyListener.mRadius) - this.f4087Z.getRadius();
                if (radius > 0.0f) {
                    if (radius < this.f4086Y) {
                        this.f4086Y = radius;
                    }
                } else if (bDNotifyListener.Notified < 3) {
                    bDNotifyListener.Notified++;
                    bDNotifyListener.onNotify(this.f4087Z, fArr[0]);
                    if (bDNotifyListener.Notified < 3) {
                        this.af = true;
                    }
                }
            }
            m6037b();
        }
        return 1;
    }

    public int m6039for(BDNotifyListener bDNotifyListener) {
        if (this.f4088a == null) {
            return 0;
        }
        if (this.f4088a.contains(bDNotifyListener)) {
            this.f4088a.remove(bDNotifyListener);
        }
        if (this.f4088a.size() == 0 && this.ag != null) {
            this.ah.cancel(this.ag);
        }
        return 1;
    }

    public void m6040if(BDNotifyListener bDNotifyListener) {
        if (bDNotifyListener.mCoorType != null) {
            if (!bDNotifyListener.mCoorType.equals(BDGeofence.COORD_TYPE_GCJ)) {
                double[] dArr = Jni.m5620if(bDNotifyListener.mLongitude, bDNotifyListener.mLatitude, bDNotifyListener.mCoorType + "2gcj");
                bDNotifyListener.mLongitudeC = dArr[0];
                bDNotifyListener.mLatitudeC = dArr[1];
            }
            if (this.f4087Z == null || System.currentTimeMillis() - this.aa > 300000) {
                this.ab.requestNotifyLocation();
            } else {
                float[] fArr = new float[1];
                Location.distanceBetween(this.f4087Z.getLatitude(), this.f4087Z.getLongitude(), bDNotifyListener.mLatitudeC, bDNotifyListener.mLongitudeC, fArr);
                float radius = (fArr[0] - bDNotifyListener.mRadius) - this.f4087Z.getRadius();
                if (radius > 0.0f) {
                    if (radius < this.f4086Y) {
                        this.f4086Y = radius;
                    }
                } else if (bDNotifyListener.Notified < 3) {
                    bDNotifyListener.Notified++;
                    bDNotifyListener.onNotify(this.f4087Z, fArr[0]);
                    if (bDNotifyListener.Notified < 3) {
                        this.af = true;
                    }
                }
            }
            m6037b();
        }
    }
}
