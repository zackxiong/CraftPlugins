package com.baidu.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.baidu.location.a */
final class C0498a implements Creator {
    C0498a() {
    }

    public BDLocation m5826a(Parcel parcel) {
        return new BDLocation(null);
    }

    public BDLocation[] m5827a(int i) {
        return new BDLocation[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m5826a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m5827a(i);
    }
}
