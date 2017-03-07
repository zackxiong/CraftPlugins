package com.baidu.location;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.baidu.location.BDLocation.C0447a;
import com.baidu.location.LocationClientOption.LocationMode;
import com.umeng.update.util.ProGuard;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* renamed from: com.baidu.location.T */
class C0479T implements C0452e {
    private static C0479T f3946a;
    private ArrayList f3947Y;
    private boolean f3948Z;
    private boolean aa;

    /* renamed from: com.baidu.location.T.a */
    private class C0478a {
        final /* synthetic */ C0479T f3941a;
        public LocationClientOption f3942do;
        public Messenger f3943for;
        public int f3944if;
        public String f3945int;

        public C0478a(C0479T c0479t, Message message) {
            this.f3941a = c0479t;
            this.f3945int = null;
            this.f3943for = null;
            this.f3942do = new LocationClientOption();
            this.f3944if = 0;
            this.f3943for = message.replyTo;
            this.f3945int = message.getData().getString("packName");
            this.f3942do.f3924if = message.getData().getString("prodName");
            C0518i.cY().m5974try(this.f3942do.f3924if, this.f3945int);
            this.f3942do.f3916do = message.getData().getString("coorType");
            this.f3942do.f3918else = message.getData().getString("addrType");
            C0465K.aG = this.f3942do.f3918else;
            this.f3942do.f3920for = message.getData().getBoolean("openGPS");
            this.f3942do.f3925int = message.getData().getInt("scanSpan");
            this.f3942do.f3915d = message.getData().getInt("timeOut");
            this.f3942do.f3923h = message.getData().getInt("priority");
            this.f3942do.f3922goto = message.getData().getBoolean("location_change_notify");
            this.f3942do.f3921g = message.getData().getBoolean("needDirect");
            if (this.f3942do.f3921g) {
                C0537s.bV().m6081try(this.f3942do.f3921g);
                C0537s.bV().bW();
            }
            if (this.f3942do.f3925int > LocationClientOption.MIN_SCAN_SPAN) {
                C0476R.m5715for().m5719int();
            }
            if (this.f3942do.getLocationMode() == LocationMode.Hight_Accuracy) {
                if (!C0453D.cs().cv()) {
                    Log.w(C0452e.f3849o, "use hight accuracy mode does not use open wifi");
                }
                if (!ao.bg().bd()) {
                    Log.w(C0452e.f3849o, "use hight accuracy mode does not use open gps");
                }
            }
        }

        private void m5722a(int i) {
            Message obtain = Message.obtain(null, i);
            try {
                if (this.f3943for != null) {
                    this.f3943for.send(obtain);
                }
                this.f3944if = 0;
            } catch (Exception e) {
                if (e instanceof DeadObjectException) {
                    this.f3944if++;
                }
            }
        }

        private void m5723a(int i, String str, BDLocation bDLocation) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(str, bDLocation);
            Message obtain = Message.obtain(null, i);
            obtain.setData(bundle);
            try {
                if (this.f3943for != null) {
                    this.f3943for.send(obtain);
                }
                this.f3944if = 0;
            } catch (Exception e) {
                if (e instanceof DeadObjectException) {
                    this.f3944if++;
                }
            }
        }

        public void m5725a() {
            m5722a(23);
        }

        public void m5726a(BDLocation bDLocation) {
            m5727a(bDLocation, 21);
        }

        public void m5727a(BDLocation bDLocation, int i) {
            BDLocation bDLocation2 = new BDLocation(bDLocation);
            bDLocation2.internalSet(0, C0518i.cY().f4051Y);
            if (bDLocation2 != null) {
                if (i == 21) {
                    m5723a(27, "locStr", bDLocation2);
                }
                if (!(this.f3942do.f3916do == null || this.f3942do.f3916do.equals(BDGeofence.COORD_TYPE_GCJ))) {
                    double longitude = bDLocation2.getLongitude();
                    double latitude = bDLocation2.getLatitude();
                    if (!(longitude == Double.MIN_VALUE || latitude == Double.MIN_VALUE)) {
                        double[] dArr = Jni.m5620if(longitude, latitude, this.f3942do.f3916do);
                        bDLocation2.setLongitude(dArr[0]);
                        bDLocation2.setLatitude(dArr[1]);
                    }
                }
                m5723a(i, "locStr", bDLocation2);
            }
        }

        public void m5728if() {
            if (!this.f3942do.f3922goto) {
                return;
            }
            if (C0465K.a6) {
                m5722a(54);
            } else {
                m5722a(55);
            }
        }

        public void m5729if(BDLocation bDLocation) {
            if (this.f3942do.f3922goto && !C0536r.bO().bP()) {
                m5726a(bDLocation);
                C0552z.m6126a().m6134a(null);
                C0552z.m6126a().m6137if(C0552z.m6126a().f4163new);
            }
        }
    }

    static {
        f3946a = null;
    }

    private C0479T() {
        this.f3947Y = null;
        this.f3948Z = false;
        this.aa = false;
        this.f3947Y = new ArrayList();
    }

    private C0478a m5730a(Messenger messenger) {
        if (this.f3947Y == null) {
            return null;
        }
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            C0478a c0478a = (C0478a) it.next();
            if (c0478a.f3943for.equals(messenger)) {
                return c0478a;
            }
        }
        return null;
    }

    private void m5731a() {
        m5733b();
        m5745n();
    }

    private void m5732a(C0478a c0478a) {
        if (c0478a != null) {
            if (m5730a(c0478a.f3943for) != null) {
                c0478a.m5722a(14);
                return;
            }
            this.f3947Y.add(c0478a);
            c0478a.m5722a(13);
        }
    }

    private void m5733b() {
        Iterator it = this.f3947Y.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            C0478a c0478a = (C0478a) it.next();
            if (c0478a.f3942do.f3920for) {
                z2 = true;
            }
            z = c0478a.f3942do.f3922goto ? true : z;
        }
        C0465K.aM = z;
        if (this.f3948Z != z2) {
            this.f3948Z = z2;
            ao.bg().m5943int(this.f3948Z);
        }
    }

    public static C0479T m5734q() {
        if (f3946a == null) {
            f3946a = new C0479T();
        }
        return f3946a;
    }

    public void m5735byte(String str) {
        BDLocation bDLocation = new BDLocation(str);
        C0447a c0447a = C0543v.aI().m6104int(bDLocation);
        if (c0447a != null) {
            bDLocation.m5502if(c0447a);
        }
        C0552z.m6126a().f4163new = str;
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            ((C0478a) it.next()).m5729if(bDLocation);
        }
    }

    public void m5736do(Message message) {
        C0478a a = m5730a(message.replyTo);
        if (a != null) {
            this.f3947Y.remove(a);
        }
        C0537s.bV().bU();
        C0476R.m5715for().m5717do();
        m5731a();
    }

    public void m5737do(BDLocation bDLocation) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            C0478a c0478a = (C0478a) it.next();
            c0478a.m5726a(bDLocation);
            if (c0478a.f3944if > 4) {
                arrayList.add(c0478a);
            }
        }
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.f3947Y.remove((C0478a) it2.next());
            }
        }
    }

    public int m5738for(Message message) {
        if (message == null || message.replyTo == null) {
            return 1;
        }
        C0478a a = m5730a(message.replyTo);
        return (a == null || a.f3942do == null) ? 1 : a.f3942do.f3923h;
    }

    public String m5739if(Message message) {
        if (message == null || message.replyTo == null) {
            return null;
        }
        C0478a a = m5730a(message.replyTo);
        if (a == null) {
            return null;
        }
        a.f3942do.f3926long = message.getData().getInt("num", a.f3942do.f3926long);
        a.f3942do.f3912c = message.getData().getFloat("distance", a.f3942do.f3912c);
        a.f3942do.f3917e = message.getData().getBoolean("extraInfo", a.f3942do.f3917e);
        a.f3942do.f3927new = true;
        String format = String.format(Locale.CHINA, "&poi=%.1f|%d", new Object[]{Float.valueOf(a.f3942do.f3912c), Integer.valueOf(a.f3942do.f3926long)});
        return a.f3942do.f3917e ? format + "|1" : format;
    }

    public void m5740if(BDLocation bDLocation, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            C0478a c0478a = (C0478a) it.next();
            c0478a.m5727a(bDLocation, i);
            if (c0478a.f3944if > 4) {
                arrayList.add(c0478a);
            }
        }
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.f3947Y.remove((C0478a) it2.next());
            }
        }
    }

    public void m5741if(BDLocation bDLocation, Message message) {
        if (bDLocation != null && message != null) {
            C0478a a = m5730a(message.replyTo);
            if (a != null) {
                a.m5726a(bDLocation);
                if (a.f3944if > 4) {
                    this.f3947Y.remove(a);
                }
            }
        }
    }

    public boolean m5742int(Message message) {
        boolean z = false;
        C0478a a = m5730a(message.replyTo);
        if (a != null) {
            int i = a.f3942do.f3925int;
            a.f3942do.f3925int = message.getData().getInt("scanSpan", a.f3942do.f3925int);
            if (a.f3942do.f3925int < LocationClientOption.MIN_SCAN_SPAN) {
                C0476R.m5715for().m5716a();
                C0537s.bV().bU();
                ao.bg().bc();
            } else {
                C0476R.m5715for().m5718if();
            }
            if (a.f3942do.f3925int > 999 && i < LocationClientOption.MIN_SCAN_SPAN) {
                z = true;
                if (a.f3942do.f3921g) {
                    C0537s.bV().m6081try(a.f3942do.f3921g);
                    C0537s.bV().bW();
                }
            }
            a.f3942do.f3920for = message.getData().getBoolean("openGPS", a.f3942do.f3920for);
            String string = message.getData().getString("coorType");
            LocationClientOption locationClientOption = a.f3942do;
            if (string == null || string.equals("")) {
                string = a.f3942do.f3916do;
            }
            locationClientOption.f3916do = string;
            string = message.getData().getString("addrType");
            locationClientOption = a.f3942do;
            if (string == null || string.equals("")) {
                string = a.f3942do.f3918else;
            }
            locationClientOption.f3918else = string;
            if (!C0465K.aG.equals(a.f3942do.f3918else)) {
                C0543v.aI().m6102d();
            }
            C0465K.aG = a.f3942do.f3918else;
            a.f3942do.f3915d = message.getData().getInt("timeOut", a.f3942do.f3915d);
            a.f3942do.f3922goto = message.getData().getBoolean("location_change_notify", a.f3942do.f3922goto);
            a.f3942do.f3923h = message.getData().getInt("priority", a.f3942do.f3923h);
            m5731a();
        }
        return z;
    }

    public void m5743j() {
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            ((C0478a) it.next()).m5725a();
        }
    }

    public boolean m5744l() {
        return this.f3948Z;
    }

    public void m5745n() {
        Iterator it = this.f3947Y.iterator();
        while (it.hasNext()) {
            ((C0478a) it.next()).m5728if();
        }
    }

    public void m5746new(Message message) {
        if (message != null && message.replyTo != null) {
            m5732a(new C0478a(this, message));
            m5731a();
        }
    }

    public void m5747o() {
        this.f3947Y.clear();
        m5731a();
    }

    public String m5748p() {
        StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
        if (this.f3947Y.isEmpty()) {
            return "&prod=" + C0518i.jy + ":" + C0518i.ju;
        }
        C0478a c0478a = (C0478a) this.f3947Y.get(0);
        if (c0478a.f3942do.f3924if != null) {
            stringBuffer.append(c0478a.f3942do.f3924if);
        }
        if (c0478a.f3945int != null) {
            stringBuffer.append(":");
            stringBuffer.append(c0478a.f3945int);
            stringBuffer.append("|");
        }
        String stringBuffer2 = stringBuffer.toString();
        return (stringBuffer2 == null || stringBuffer2.equals("")) ? null : "&prod=" + stringBuffer2;
    }
}
