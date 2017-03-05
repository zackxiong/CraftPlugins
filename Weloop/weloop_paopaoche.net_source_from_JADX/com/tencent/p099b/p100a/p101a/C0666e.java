package com.tencent.p099b.p100a.p101a;

import com.baidu.location.BDLocationStatusCodes;
import com.baidu.location.LocationClientOption;

/* renamed from: com.tencent.b.a.a.e */
public enum C0666e {
    PAGE_VIEW(1),
    SESSION_ENV(2),
    ERROR(3),
    CUSTOM(LocationClientOption.MIN_SCAN_SPAN),
    ADDITION(BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES),
    MONITOR_STAT(BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE),
    MTA_GAME_USER(1003),
    NETWORK_MONITOR(1004),
    NETWORK_DETECTOR(1005);
    
    private int f5092j;

    private C0666e(int i) {
        this.f5092j = i;
    }

    public final int m6877a() {
        return this.f5092j;
    }
}
