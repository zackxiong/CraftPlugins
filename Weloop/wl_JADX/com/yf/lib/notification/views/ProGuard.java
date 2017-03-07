package com.yf.lib.notification.views;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.yf.lib.notification.views.f */
final class ProGuard implements Creator<YFRemoteViews2> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m8596a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m8597a(i);
    }

    public YFRemoteViews2 m8596a(Parcel parcel) {
        return new YFRemoteViews2(parcel);
    }

    public YFRemoteViews2[] m8597a(int i) {
        return new YFRemoteViews2[i];
    }
}
