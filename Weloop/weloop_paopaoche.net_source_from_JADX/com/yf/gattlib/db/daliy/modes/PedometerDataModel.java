package com.yf.gattlib.db.daliy.modes;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public class PedometerDataModel implements Parcelable {
    public static final Creator<PedometerDataModel> CREATOR;
    private String f6180a;
    private String f6181b;
    private int f6182c;
    private byte[] f6183d;

    /* renamed from: com.yf.gattlib.db.daliy.modes.PedometerDataModel.1 */
    final class ProGuard implements Creator<PedometerDataModel> {
        ProGuard() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return m8033a(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return m8034a(i);
        }

        public PedometerDataModel m8033a(Parcel parcel) {
            return new PedometerDataModel(parcel);
        }

        public PedometerDataModel[] m8034a(int i) {
            return new PedometerDataModel[i];
        }
    }

    public PedometerDataModel(Parcel parcel) {
        this.f6180a = parcel.readString();
        this.f6181b = parcel.readString();
        this.f6182c = parcel.readInt();
        this.f6183d = new byte[2880];
        parcel.readByteArray(this.f6183d);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6180a);
        parcel.writeString(this.f6181b);
        parcel.writeInt(this.f6182c);
        parcel.writeByteArray(this.f6183d);
    }

    static {
        CREATOR = new ProGuard();
    }

    public int describeContents() {
        return 0;
    }
}
