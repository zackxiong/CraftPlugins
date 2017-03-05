package com.baidu.location;

public abstract class BDNotifyListener {
    public int Notified;
    public float differDistance;
    public boolean isAdded;
    public String mCoorType;
    public double mLatitude;
    public double mLatitudeC;
    public double mLongitude;
    public double mLongitudeC;
    public C0529l mNotifyCache;
    public float mRadius;

    public BDNotifyListener() {
        this.mLatitude = Double.MIN_VALUE;
        this.mLongitude = Double.MIN_VALUE;
        this.mRadius = 0.0f;
        this.differDistance = 0.0f;
        this.mCoorType = null;
        this.mLatitudeC = Double.MIN_VALUE;
        this.mLongitudeC = Double.MIN_VALUE;
        this.Notified = 0;
        this.isAdded = false;
        this.mNotifyCache = null;
    }

    public void SetNotifyLocation(double d, double d2, float f, String str) {
        this.mLatitude = d;
        this.mLongitude = d2;
        if (f < 0.0f) {
            this.mRadius = 200.0f;
        } else {
            this.mRadius = f;
        }
        if (str.equals(BDGeofence.COORD_TYPE_GCJ) || str.equals(BDGeofence.COORD_TYPE_BD09) || str.equals(BDGeofence.COORD_TYPE_BD09LL) || str.equals("gps")) {
            this.mCoorType = str;
        } else {
            this.mCoorType = BDGeofence.COORD_TYPE_GCJ;
        }
        if (this.mCoorType.equals(BDGeofence.COORD_TYPE_GCJ)) {
            this.mLatitudeC = this.mLatitude;
            this.mLongitudeC = this.mLongitude;
        }
        if (this.isAdded) {
            this.Notified = 0;
            this.mNotifyCache.m6040if(this);
        }
    }

    public void onNotify(BDLocation bDLocation, float f) {
        C0465K.m5633do(C0452e.f3849o, "new location, not far from the destination..." + f);
    }
}
