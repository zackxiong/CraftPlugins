package com.baidu.platform.comjni.tools;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.baidu.platform.comjni.tools.b */
final class C0648b implements Creator<ParcelItem> {
    C0648b() {
    }

    public ParcelItem m6683a(Parcel parcel) {
        ParcelItem parcelItem = new ParcelItem();
        parcelItem.setBundle(parcel.readBundle());
        return parcelItem;
    }

    public ParcelItem[] m6684a(int i) {
        return new ParcelItem[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m6683a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m6684a(i);
    }
}
