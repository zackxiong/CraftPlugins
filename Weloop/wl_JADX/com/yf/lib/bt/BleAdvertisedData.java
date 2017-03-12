package com.yf.lib.bt;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;
import java.util.UUID;

/* compiled from: ProGuard */
public class BleAdvertisedData implements Parcelable {
    public static final Creator<BleAdvertisedData> CREATOR;
    private List<UUID> f6516a;
    private String f6517b;
    private byte[] f6518c;

    public BleAdvertisedData(List<UUID> list, String str, byte[] bArr) {
        this.f6516a = list;
        this.f6517b = str;
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f6518c = bArr;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6518c.length);
        parcel.writeByteArray(this.f6518c);
    }

    static {
        CREATOR = new ProGuard();
    }
}
