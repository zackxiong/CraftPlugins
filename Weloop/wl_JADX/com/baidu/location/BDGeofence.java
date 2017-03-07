package com.baidu.location;

import android.text.TextUtils;

public interface BDGeofence {
    public static final String COORD_TYPE_BD09 = "bd09";
    public static final String COORD_TYPE_BD09LL = "bd09ll";
    public static final String COORD_TYPE_GCJ = "gcj02";
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int RADIUS_TYPE_SMALL = 1;

    public static final class Builder {
        private int f3767a;
        private String f3768do;
        private double f3769for;
        private long f3770if;
        private String f3771int;
        private boolean f3772new;
        private double f3773try;

        public Builder() {
            this.f3768do = null;
            this.f3772new = false;
            this.f3770if = Long.MIN_VALUE;
        }

        public BDGeofence build() {
            if (TextUtils.isEmpty(this.f3768do)) {
                throw new IllegalArgumentException("BDGeofence name not set.");
            } else if (!this.f3772new) {
                throw new IllegalArgumentException("BDGeofence region not set.");
            } else if (this.f3770if == Long.MIN_VALUE) {
                throw new IllegalArgumentException("BDGeofence Expiration not set.");
            } else if (!TextUtils.isEmpty(this.f3771int)) {
                return new C0448C(this.f3768do, this.f3773try, this.f3769for, this.f3767a, this.f3770if, this.f3771int);
            } else {
                throw new IllegalArgumentException("BDGeofence CoordType not set.");
            }
        }

        public Builder setCircularRegion(double d, double d2, int i) {
            this.f3772new = true;
            this.f3773try = d;
            this.f3769for = d2;
            this.f3767a = BDGeofence.RADIUS_TYPE_SMALL;
            return this;
        }

        public Builder setCoordType(String str) {
            this.f3771int = str;
            return this;
        }

        public Builder setExpirationDruation(long j) {
            if (j < 0) {
                this.f3770if = -1;
            } else {
                this.f3770if = j;
            }
            return this;
        }

        public Builder setGeofenceId(String str) {
            this.f3768do = str;
            return this;
        }
    }

    String getGeofenceId();
}
