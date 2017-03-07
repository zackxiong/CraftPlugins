package com.baidu.android.pushservice.message;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.baidu.android.pushservice.message.i */
final class C0323i implements Creator<PublicMsg> {
    C0323i() {
    }

    public PublicMsg m5075a(Parcel parcel) {
        return new PublicMsg(parcel);
    }

    public PublicMsg[] m5076a(int i) {
        return new PublicMsg[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m5075a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m5076a(i);
    }
}
