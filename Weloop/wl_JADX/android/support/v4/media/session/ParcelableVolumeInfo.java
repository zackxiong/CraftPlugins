package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Creator<ParcelableVolumeInfo> CREATOR;
    public int f394a;
    public int f395b;
    public int f396c;
    public int f397d;
    public int f398e;

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f394a = parcel.readInt();
        this.f396c = parcel.readInt();
        this.f397d = parcel.readInt();
        this.f398e = parcel.readInt();
        this.f395b = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f394a);
        parcel.writeInt(this.f396c);
        parcel.writeInt(this.f397d);
        parcel.writeInt(this.f398e);
        parcel.writeInt(this.f395b);
    }

    static {
        CREATOR = new ProGuard();
    }
}
