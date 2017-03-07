package com.baidu.location;

public final class LocationClientOption {
    public static final int MIN_SCAN_SPAN = 1000;
    public static final int MIN_SCAN_SPAN_NETWORK = 3000;
    protected static final int f3907byte = 1;
    protected static final int f3908try = 3;
    protected static final int f3909void = 2;
    protected boolean f3910a;
    protected boolean f3911b;
    protected float f3912c;
    protected String f3913case;
    protected boolean f3914char;
    protected int f3915d;
    protected String f3916do;
    protected boolean f3917e;
    protected String f3918else;
    protected LocationMode f3919f;
    protected boolean f3920for;
    protected boolean f3921g;
    protected boolean f3922goto;
    protected int f3923h;
    protected String f3924if;
    protected int f3925int;
    protected int f3926long;
    protected boolean f3927new;

    /* renamed from: com.baidu.location.LocationClientOption.1 */
    static /* synthetic */ class C04701 {
        static final /* synthetic */ int[] f3905a;

        static {
            f3905a = new int[LocationMode.values().length];
            try {
                f3905a[LocationMode.Hight_Accuracy.ordinal()] = LocationClientOption.f3907byte;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3905a[LocationMode.Battery_Saving.ordinal()] = LocationClientOption.f3909void;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3905a[LocationMode.Device_Sensors.ordinal()] = LocationClientOption.f3908try;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public enum LocationMode {
        Hight_Accuracy,
        Battery_Saving,
        Device_Sensors
    }

    public LocationClientOption() {
        this.f3916do = BDGeofence.COORD_TYPE_GCJ;
        this.f3918else = "detail";
        this.f3920for = false;
        this.f3925int = 0;
        this.f3915d = C0452e.f3818M;
        this.f3924if = "SDK2.0";
        this.f3923h = f3907byte;
        this.f3922goto = false;
        this.f3910a = true;
        this.f3927new = false;
        this.f3917e = false;
        this.f3912c = 500.0f;
        this.f3926long = f3908try;
        this.f3913case = "com.baidu.location.service_v2.9";
        this.f3911b = false;
        this.f3914char = false;
        this.f3921g = false;
    }

    public LocationClientOption(LocationClientOption locationClientOption) {
        this.f3916do = BDGeofence.COORD_TYPE_GCJ;
        this.f3918else = "detail";
        this.f3920for = false;
        this.f3925int = 0;
        this.f3915d = C0452e.f3818M;
        this.f3924if = "SDK2.0";
        this.f3923h = f3907byte;
        this.f3922goto = false;
        this.f3910a = true;
        this.f3927new = false;
        this.f3917e = false;
        this.f3912c = 500.0f;
        this.f3926long = f3908try;
        this.f3913case = "com.baidu.location.service_v2.9";
        this.f3911b = false;
        this.f3914char = false;
        this.f3921g = false;
        this.f3916do = locationClientOption.f3916do;
        this.f3918else = locationClientOption.f3918else;
        this.f3920for = locationClientOption.f3920for;
        this.f3925int = locationClientOption.f3925int;
        this.f3915d = locationClientOption.f3915d;
        this.f3924if = locationClientOption.f3924if;
        this.f3923h = locationClientOption.f3923h;
        this.f3922goto = locationClientOption.f3922goto;
        this.f3917e = locationClientOption.f3917e;
        this.f3912c = locationClientOption.f3912c;
        this.f3926long = locationClientOption.f3926long;
        this.f3913case = locationClientOption.f3913case;
        this.f3910a = locationClientOption.f3910a;
        this.f3911b = locationClientOption.f3911b;
        this.f3914char = locationClientOption.f3914char;
        this.f3921g = locationClientOption.f3921g;
        this.f3919f = locationClientOption.f3919f;
    }

    public void SetIgnoreCacheException(boolean z) {
        this.f3911b = z;
    }

    protected boolean m5701a() {
        return this.f3910a;
    }

    public boolean equals(LocationClientOption locationClientOption) {
        return this.f3916do.equals(locationClientOption.f3916do) && this.f3918else.equals(locationClientOption.f3918else) && this.f3920for == locationClientOption.f3920for && this.f3925int == locationClientOption.f3925int && this.f3915d == locationClientOption.f3915d && this.f3924if.equals(locationClientOption.f3924if) && this.f3922goto == locationClientOption.f3922goto && this.f3923h == locationClientOption.f3923h && this.f3926long == locationClientOption.f3926long && this.f3917e == locationClientOption.f3917e && this.f3912c == locationClientOption.f3912c && this.f3910a == locationClientOption.f3910a && this.f3911b == locationClientOption.f3911b && this.f3914char == locationClientOption.f3914char && this.f3921g == locationClientOption.f3921g && this.f3919f == locationClientOption.f3919f;
    }

    public String getAddrType() {
        return this.f3918else;
    }

    public String getCoorType() {
        return this.f3916do;
    }

    public LocationMode getLocationMode() {
        return this.f3919f;
    }

    public String getProdName() {
        return this.f3924if;
    }

    public int getScanSpan() {
        return this.f3925int;
    }

    public int getTimeOut() {
        return this.f3915d;
    }

    public boolean isLocationNotify() {
        return this.f3922goto;
    }

    public boolean isOpenGps() {
        return this.f3920for;
    }

    public void setAddrType(String str) {
        this.f3918else = str;
        if ("all".equals(this.f3918else)) {
            setIsNeedAddress(true);
        } else {
            setIsNeedAddress(false);
        }
    }

    public void setCoorType(String str) {
        String toLowerCase = str.toLowerCase();
        if (toLowerCase.equals(BDGeofence.COORD_TYPE_GCJ) || toLowerCase.equals(BDGeofence.COORD_TYPE_BD09) || toLowerCase.equals(BDGeofence.COORD_TYPE_BD09LL)) {
            this.f3916do = toLowerCase;
        }
    }

    public void setIgnoreKillProcess(boolean z) {
        this.f3914char = z;
    }

    public void setIsNeedAddress(boolean z) {
        if (z) {
            this.f3918else = "all";
        } else {
            this.f3918else = "noaddr";
        }
    }

    public void setLocationMode(LocationMode locationMode) {
        switch (C04701.f3905a[locationMode.ordinal()]) {
            case f3907byte /*1*/:
                this.f3920for = true;
                break;
            case f3909void /*2*/:
                this.f3920for = false;
                break;
            case f3908try /*3*/:
                this.f3923h = f3908try;
                this.f3920for = true;
                break;
            default:
                throw new IllegalArgumentException("Illegal this mode : " + locationMode);
        }
        this.f3919f = locationMode;
    }

    public void setLocationNotify(boolean z) {
        this.f3922goto = z;
    }

    public void setNeedDeviceDirect(boolean z) {
        this.f3921g = z;
    }

    public void setOpenGps(boolean z) {
        this.f3920for = z;
    }

    public void setProdName(String str) {
        if (str.length() > 64) {
            str = str.substring(0, 64);
        }
        this.f3924if = str;
    }

    public void setScanSpan(int i) {
        this.f3925int = i;
    }

    public void setTimeOut(int i) {
        this.f3915d = i;
    }
}
