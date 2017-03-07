package com.baidu.location;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.location.C0550y.C0469a;
import java.util.ArrayList;
import java.util.Iterator;
import uk.co.chrisjenx.calligraphy.ProGuard;

public final class LocationClient implements C0452e, C0469a {
    private static final int j7 = 5;
    private static final int j8 = 12;
    private static final int jE = 10;
    private static final String jG = "baidu_location_Client";
    private static final int jK = 1;
    private static final int jO = 1000;
    private static final int jS = 3;
    private static final int jU = 8;
    private static final int jX = 9;
    private static final int jZ = 7;
    private static final int ka = 6;
    private static final int kb = 2;
    private static final int kk = 11;
    private static final int kn = 4;
    private boolean j0;
    private final Messenger j1;
    private Context j2;
    private boolean j3;
    private Messenger j4;
    private long j5;
    private LocationClientOption j6;
    private Boolean j9;
    private boolean jD;
    private C0467a jF;
    private boolean jH;
    private final Object jI;
    private BDErrorReport jJ;
    private C0468b jL;
    private Boolean jM;
    private C0529l jN;
    private long jP;
    private Boolean jQ;
    private boolean jR;
    private long jT;
    private BDLocationListener jV;
    private boolean jW;
    private boolean jY;
    private boolean kc;
    private long kd;
    private long ke;
    private ServiceConnection kf;
    private String kg;
    private boolean kh;
    private boolean ki;
    private BDLocation kj;
    private String kl;
    private String km;
    private boolean ko;
    private C0550y kp;
    private ArrayList kq;

    /* renamed from: com.baidu.location.LocationClient.a */
    private class C0467a extends Handler {
        final /* synthetic */ LocationClient f3903a;

        private C0467a(LocationClient locationClient) {
            this.f3903a = locationClient;
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case LocationClient.jK /*1*/:
                    this.f3903a.c3();
                case LocationClient.kb /*2*/:
                    this.f3903a.c2();
                case LocationClient.jS /*3*/:
                    this.f3903a.m5689n(message);
                case LocationClient.kn /*4*/:
                    this.f3903a.m5696r(message);
                case LocationClient.j7 /*5*/:
                    this.f3903a.m5694p(message);
                case LocationClient.ka /*6*/:
                    this.f3903a.m5695q(message);
                case LocationClient.jZ /*7*/:
                case LocationClient.jU /*8*/:
                    this.f3903a.m5686l(message);
                case LocationClient.jX /*9*/:
                    this.f3903a.m5697s(message);
                case LocationClient.jE /*10*/:
                    this.f3903a.m5693o(message);
                case LocationClient.kk /*11*/:
                    this.f3903a.c4();
                case LocationClient.j8 /*12*/:
                    this.f3903a.c1();
                case ProGuard.styleable.Theme_actionBarWidgetTheme /*21*/:
                    if (this.f3903a.jH || !this.f3903a.j3) {
                        this.f3903a.m5678if(message, 21);
                    } else {
                        this.f3903a.jH = true;
                    }
                case ProGuard.styleable.Theme_actionMenuTextColor /*26*/:
                    this.f3903a.m5678if(message, 26);
                case ProGuard.styleable.Theme_actionModeStyle /*27*/:
                    this.f3903a.m5688m(message);
                case ProGuard.styleable.Theme_dividerVertical /*54*/:
                    if (this.f3903a.j6.f3922goto) {
                        this.f3903a.jD = true;
                    }
                case ProGuard.styleable.Theme_dividerHorizontal /*55*/:
                    if (this.f3903a.j6.f3922goto) {
                        this.f3903a.jD = false;
                    }
                case C0452e.f3841h /*204*/:
                    this.f3903a.m5670else(false);
                case C0452e.f3828W /*205*/:
                    this.f3903a.m5670else(true);
                case C0452e.f3813H /*301*/:
                    this.f3903a.m5659case((BDLocation) message.obj);
                default:
                    super.handleMessage(message);
            }
        }
    }

    /* renamed from: com.baidu.location.LocationClient.b */
    private class C0468b implements Runnable {
        final /* synthetic */ LocationClient f3904a;

        private C0468b(LocationClient locationClient) {
            this.f3904a = locationClient;
        }

        public void run() {
            synchronized (this.f3904a.jI) {
                this.f3904a.jY = false;
                if (this.f3904a.j4 == null || this.f3904a.j1 == null) {
                } else if (this.f3904a.kq == null || this.f3904a.kq.size() < LocationClient.jK) {
                } else {
                    this.f3904a.jF.obtainMessage(LocationClient.kn).sendToTarget();
                }
            }
        }
    }

    public LocationClient(Context context) {
        this.kd = 0;
        this.km = null;
        this.j6 = new LocationClientOption();
        this.kc = false;
        this.j2 = null;
        this.j4 = null;
        this.jF = new C0467a();
        this.j1 = new Messenger(this.jF);
        this.kq = null;
        this.kj = null;
        this.jW = false;
        this.kh = false;
        this.jY = false;
        this.jL = null;
        this.jD = false;
        this.jI = new Object();
        this.j5 = 0;
        this.ke = 0;
        this.jN = null;
        this.ki = false;
        this.jV = null;
        this.kl = null;
        this.jR = false;
        this.ko = true;
        this.j3 = false;
        this.jH = false;
        this.jQ = Boolean.valueOf(false);
        this.jM = Boolean.valueOf(false);
        this.j9 = Boolean.valueOf(true);
        this.jT = 0;
        this.kp = null;
        this.kf = new C0510c(this);
        this.jP = 0;
        this.jJ = null;
        this.j2 = context;
        this.j6 = new LocationClientOption();
        this.jN = new C0529l(this.j2, this);
    }

    public LocationClient(Context context, LocationClientOption locationClientOption) {
        this.kd = 0;
        this.km = null;
        this.j6 = new LocationClientOption();
        this.kc = false;
        this.j2 = null;
        this.j4 = null;
        this.jF = new C0467a();
        this.j1 = new Messenger(this.jF);
        this.kq = null;
        this.kj = null;
        this.jW = false;
        this.kh = false;
        this.jY = false;
        this.jL = null;
        this.jD = false;
        this.jI = new Object();
        this.j5 = 0;
        this.ke = 0;
        this.jN = null;
        this.ki = false;
        this.jV = null;
        this.kl = null;
        this.jR = false;
        this.ko = true;
        this.j3 = false;
        this.jH = false;
        this.jQ = Boolean.valueOf(false);
        this.jM = Boolean.valueOf(false);
        this.j9 = Boolean.valueOf(true);
        this.jT = 0;
        this.kp = null;
        this.kf = new C0510c(this);
        this.jP = 0;
        this.jJ = null;
        this.j2 = context;
        this.j6 = locationClientOption;
        if (this.kp == null) {
            this.kp = new C0550y(this.j2, this.j6, this);
            this.kp.dc();
        }
        this.jN = new C0529l(this.j2, this);
    }

    private Bundle c0() {
        if (this.j6 == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("packName", this.km);
        bundle.putString("prodName", this.j6.f3924if);
        bundle.putString("coorType", this.j6.f3916do);
        bundle.putString("addrType", this.j6.f3918else);
        bundle.putBoolean("openGPS", this.j6.f3920for);
        bundle.putBoolean("location_change_notify", this.j6.f3922goto);
        bundle.putInt("scanSpan", this.j6.f3925int);
        bundle.putInt("timeOut", this.j6.f3915d);
        bundle.putInt("priority", this.j6.f3923h);
        bundle.putBoolean("map", this.jQ.booleanValue());
        bundle.putBoolean("import", this.jM.booleanValue());
        bundle.putBoolean("needDirect", this.j6.f3921g);
        bundle.putLong("starttime", this.jT);
        return bundle;
    }

    private void c1() {
        Message obtain = Message.obtain(null, 28);
        try {
            obtain.replyTo = this.j1;
            this.j4.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void c2() {
        if (this.kc && this.j4 != null) {
            Message obtain = Message.obtain(null, j8);
            obtain.replyTo = this.j1;
            try {
                this.j4.send(obtain);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.j2.unbindService(this.kf);
            } catch (Exception e2) {
            }
            synchronized (this.jI) {
                try {
                    if (this.jY) {
                        this.jF.removeCallbacks(this.jL);
                        this.jY = false;
                    }
                } catch (Exception e3) {
                }
            }
            this.jN.bq();
            this.j4 = null;
            C0465K.m5630char();
            this.jR = false;
            this.kc = false;
            this.j3 = false;
            this.jH = false;
        }
    }

    private void c3() {
        if (!this.kc) {
            C0465K.m5634else();
            this.km = this.j2.getPackageName();
            this.kl = this.km + "_bdls_v2.9";
            Intent intent = new Intent(this.j2, C0513f.class);
            try {
                intent.putExtra("debug_dev", this.j0);
            } catch (Exception e) {
            }
            if (this.j6 == null) {
                this.j6 = new LocationClientOption();
            }
            intent.putExtra("cache_exception", this.j6.f3911b);
            intent.putExtra("kill_process", this.j6.f3914char);
            try {
                this.j2.bindService(intent, this.kf, jK);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.kc = false;
            }
        }
    }

    private void c4() {
        if (this.j4 != null) {
            Message obtain = Message.obtain(null, 22);
            try {
                obtain.replyTo = this.j1;
                this.j4.send(obtain);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private Bundle c5() {
        if (this.j6 == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("num", this.j6.f3926long);
        bundle.putFloat("distance", this.j6.f3912c);
        bundle.putBoolean("extraInfo", this.j6.f3917e);
        return bundle;
    }

    private void m5659case(BDLocation bDLocation) {
        if (!this.ko) {
            if (bDLocation != null && (bDLocation.getLocType() == BDLocation.TypeNetWorkLocation || bDLocation.getLocType() == 66 || bDLocation.getLocType() == 68)) {
                this.j3 = true;
            }
            if (this.kq != null && this.kq.size() > 0) {
                Iterator it = this.kq.iterator();
                while (it.hasNext()) {
                    ((BDLocationListener) it.next()).onReceiveLocation(bDLocation);
                }
            }
        }
    }

    private void m5662d(int i) {
        if (this.jW || ((this.j6.f3922goto && this.kj.getLocType() == 61) || this.kj.getLocType() == 66 || this.kj.getLocType() == 67 || this.jR || this.kj.getLocType() == BDLocation.TypeNetWorkLocation)) {
            Iterator it = this.kq.iterator();
            while (it.hasNext()) {
                ((BDLocationListener) it.next()).onReceiveLocation(this.kj);
            }
            if (this.kj.getLocType() != 66 && this.kj.getLocType() != 67) {
                this.jW = false;
                this.ke = System.currentTimeMillis();
            }
        }
    }

    private boolean m5668e(int i) {
        if (this.j4 == null || !this.kc) {
            return false;
        }
        try {
            this.j4.send(Message.obtain(null, i));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void m5670else(boolean z) {
        if (this.jJ != null) {
            this.jJ.onReportResult(z);
        }
        this.jJ = null;
        this.jP = 0;
    }

    private void m5678if(Message message, int i) {
        Bundle data = message.getData();
        data.setClassLoader(BDLocation.class.getClassLoader());
        this.kj = (BDLocation) data.getParcelable("locStr");
        if (this.kj.getLocType() == 61) {
            this.j5 = System.currentTimeMillis();
        }
        m5662d(i);
    }

    private void m5686l(Message message) {
        if (message != null && message.obj != null) {
            this.jV = (BDLocationListener) message.obj;
        }
    }

    private void m5688m(Message message) {
        Bundle data = message.getData();
        data.setClassLoader(BDLocation.class.getClassLoader());
        BDLocation bDLocation = (BDLocation) data.getParcelable("locStr");
        if (this.jV == null) {
            return;
        }
        if (this.j6 == null || !this.j6.m5701a() || bDLocation.getLocType() != 65) {
            this.jV.onReceiveLocation(bDLocation);
        }
    }

    private void m5689n(Message message) {
        if (message != null && message.obj != null) {
            LocationClientOption locationClientOption = (LocationClientOption) message.obj;
            if (!this.j6.equals(locationClientOption)) {
                if (this.j6.f3925int != locationClientOption.f3925int) {
                    try {
                        synchronized (this.jI) {
                            if (this.jY) {
                                this.jF.removeCallbacks(this.jL);
                                this.jY = false;
                            }
                            if (locationClientOption.f3925int >= jO && !this.jY) {
                                if (this.jL == null) {
                                    this.jL = new C0468b();
                                }
                                this.jF.postDelayed(this.jL, (long) locationClientOption.f3925int);
                                this.jY = true;
                            }
                        }
                    } catch (Exception e) {
                    }
                }
                this.j6 = new LocationClientOption(locationClientOption);
                if (this.j4 != null) {
                    try {
                        Message obtain = Message.obtain(null, 15);
                        obtain.replyTo = this.j1;
                        obtain.setData(c0());
                        this.j4.send(obtain);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private void m5693o(Message message) {
        if (message != null && message.obj != null) {
            this.jN.m6039for((BDNotifyListener) message.obj);
        }
    }

    private void m5694p(Message message) {
        if (message != null && message.obj != null) {
            BDLocationListener bDLocationListener = (BDLocationListener) message.obj;
            if (this.kq == null) {
                this.kq = new ArrayList();
            }
            if (!this.kq.contains(bDLocationListener)) {
                this.kq.add(bDLocationListener);
            }
        }
    }

    private void m5695q(Message message) {
        if (message != null && message.obj != null) {
            BDLocationListener bDLocationListener = (BDLocationListener) message.obj;
            if (this.kq != null && this.kq.contains(bDLocationListener)) {
                this.kq.remove(bDLocationListener);
            }
        }
    }

    private void m5696r(Message message) {
        if (this.j4 != null) {
            if ((System.currentTimeMillis() - this.j5 > 3000 || !this.j6.f3922goto) && (!this.jR || System.currentTimeMillis() - this.ke > 20000)) {
                Message obtain = Message.obtain(null, 22);
                try {
                    obtain.replyTo = this.j1;
                    obtain.arg1 = message.arg1;
                    this.j4.send(obtain);
                    this.kd = System.currentTimeMillis();
                    this.jW = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            synchronized (this.jI) {
                if (!(this.j6 == null || this.j6.f3925int < jO || this.jY)) {
                    if (this.jL == null) {
                        this.jL = new C0468b();
                    }
                    this.jF.postDelayed(this.jL, (long) this.j6.f3925int);
                    this.jY = true;
                }
            }
        }
    }

    private void m5697s(Message message) {
        if (message != null && message.obj != null) {
            this.jN.m6038do((BDNotifyListener) message.obj);
        }
    }

    public void cancleError() {
        m5668e((int) C0452e.f3838f);
    }

    public String getAccessKey() {
        try {
            this.kg = al.m5879a(this.j2);
            if (TextUtils.isEmpty(this.kg)) {
                throw new IllegalStateException("please setting key from Manifest.xml");
            }
            Object[] objArr = new Object[kb];
            objArr[0] = this.kg;
            objArr[jK] = al.m5883if(this.j2);
            return String.format("KEY=%s;SHA1=%s", objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public BDLocation getLastKnownLocation() {
        return this.kj;
    }

    public LocationClientOption getLocOption() {
        return this.j6;
    }

    public String getVersion() {
        return "5.2.1";
    }

    public boolean isStarted() {
        return this.kc || this.j3;
    }

    public boolean notifyError() {
        return m5668e((int) C0452e.f3861z);
    }

    public void onReceiveLocation(BDLocation bDLocation) {
        Message obtainMessage = this.jF.obtainMessage(C0452e.f3813H);
        obtainMessage.obj = bDLocation;
        obtainMessage.sendToTarget();
    }

    public void registerLocationListener(BDLocationListener bDLocationListener) {
        if (bDLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.jF.obtainMessage(j7);
        obtainMessage.obj = bDLocationListener;
        obtainMessage.sendToTarget();
    }

    public void registerNotify(BDNotifyListener bDNotifyListener) {
        Message obtainMessage = this.jF.obtainMessage(jX);
        obtainMessage.obj = bDNotifyListener;
        obtainMessage.sendToTarget();
    }

    public void registerNotifyLocationListener(BDLocationListener bDLocationListener) {
        Message obtainMessage = this.jF.obtainMessage(jU);
        obtainMessage.obj = bDLocationListener;
        obtainMessage.sendToTarget();
    }

    public void removeNotifyEvent(BDNotifyListener bDNotifyListener) {
        Message obtainMessage = this.jF.obtainMessage(jE);
        obtainMessage.obj = bDNotifyListener;
        obtainMessage.sendToTarget();
    }

    public int reportErrorWithInfo(BDErrorReport bDErrorReport) {
        if (this.j4 == null || !this.kc) {
            return jK;
        }
        if (bDErrorReport == null) {
            return kb;
        }
        if (System.currentTimeMillis() - this.jP < 50000 && this.jJ != null) {
            return kn;
        }
        Bundle errorInfo = bDErrorReport.getErrorInfo();
        if (errorInfo == null) {
            return jS;
        }
        try {
            Message obtain = Message.obtain(null, C0452e.f3831byte);
            obtain.replyTo = this.j1;
            obtain.setData(errorInfo);
            this.j4.send(obtain);
            this.jJ = bDErrorReport;
            this.jP = System.currentTimeMillis();
            return 0;
        } catch (Exception e) {
            return jK;
        }
    }

    public int requestLocation() {
        if (this.j4 == null || this.j1 == null) {
            return jK;
        }
        if (this.kq == null || this.kq.size() < jK) {
            return kb;
        }
        if (System.currentTimeMillis() - this.kd < 1000) {
            return ka;
        }
        Message obtainMessage = this.jF.obtainMessage(kn);
        obtainMessage.arg1 = 0;
        obtainMessage.sendToTarget();
        return 0;
    }

    public void requestNotifyLocation() {
        this.jF.obtainMessage(kk).sendToTarget();
    }

    public int requestOfflineLocation() {
        if (this.j4 == null || this.j1 == null) {
            return jK;
        }
        if (this.kq == null || this.kq.size() < jK) {
            return kb;
        }
        this.jF.obtainMessage(j8).sendToTarget();
        return 0;
    }

    public void setDebug(boolean z) {
        this.j0 = z;
    }

    public void setForBaiduMap(boolean z) {
        this.jQ = Boolean.valueOf(z);
    }

    public void setLocOption(LocationClientOption locationClientOption) {
        if (locationClientOption != null) {
            String str;
            Object[] objArr;
            switch (locationClientOption.f3923h) {
                case jK /*1*/:
                    if (locationClientOption.f3925int != 0 && locationClientOption.f3925int < jO) {
                        str = C0452e.f3849o;
                        objArr = new Object[jK];
                        objArr[0] = Integer.valueOf(locationClientOption.f3925int);
                        Log.w(str, String.format("scanSpan time %d less than 1 second, location services may not star", objArr));
                        break;
                    }
                case kb /*2*/:
                    if (locationClientOption.f3925int > jO && locationClientOption.f3925int < LocationClientOption.MIN_SCAN_SPAN_NETWORK) {
                        locationClientOption.f3925int = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
                        str = C0452e.f3849o;
                        objArr = new Object[jK];
                        objArr[0] = Integer.valueOf(locationClientOption.f3925int);
                        Log.w(str, String.format("scanSpan time %d less than 3 second, location services may not star", objArr));
                        break;
                    }
                case jS /*3*/:
                    if (locationClientOption.f3925int == 0 || locationClientOption.f3925int >= jO) {
                        if (locationClientOption.f3925int == 0) {
                            locationClientOption.f3925int = jO;
                            break;
                        }
                    }
                    str = C0452e.f3849o;
                    objArr = new Object[jK];
                    objArr[0] = Integer.valueOf(locationClientOption.f3925int);
                    Log.w(str, String.format("scanSpan time %d less than 1 second, location services may not star", objArr));
                    break;
                    break;
                default:
                    break;
            }
        }
        locationClientOption = new LocationClientOption();
        if (this.kp == null) {
            this.kp = new C0550y(this.j2, locationClientOption, this);
            this.kp.dc();
        }
        Message obtainMessage = this.jF.obtainMessage(jS);
        obtainMessage.obj = locationClientOption;
        obtainMessage.sendToTarget();
    }

    public void start() {
        this.ko = false;
        this.jT = System.currentTimeMillis();
        if (this.kp == null) {
            this.kp = new C0550y(this.j2, this.j6, this);
            this.kp.dc();
        }
        this.kp.db();
        this.jF.obtainMessage(jK).sendToTarget();
    }

    public void stop() {
        this.ko = true;
        this.jF.obtainMessage(kb).sendToTarget();
        this.kp = null;
    }

    public void unRegisterLocationListener(BDLocationListener bDLocationListener) {
        if (bDLocationListener == null) {
            throw new IllegalStateException("please set a non-null listener");
        }
        Message obtainMessage = this.jF.obtainMessage(ka);
        obtainMessage.obj = bDLocationListener;
        obtainMessage.sendToTarget();
    }

    public boolean updateLocation(Location location) {
        if (this.j4 == null || this.j1 == null || location == null) {
            return false;
        }
        try {
            Message obtain = Message.obtain(null, 57);
            obtain.obj = location;
            this.j4.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
