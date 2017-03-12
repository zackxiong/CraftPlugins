package com.yf.lib.bt.server.ancs;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.yf.lib.bt.server.ancs.a */
final class ProGuard implements Creator<NotificationContent> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m8521a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m8522a(i);
    }

    public NotificationContent m8521a(Parcel parcel) {
        return new NotificationContent(null);
    }

    public NotificationContent[] m8522a(int i) {
        return new NotificationContent[i];
    }
}
