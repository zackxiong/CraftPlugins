package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public final class RatingCompat implements Parcelable {
    public static final Creator<RatingCompat> CREATOR;
    private final int f388a;
    private final float f389b;

    private RatingCompat(int i, float f) {
        this.f388a = i;
        this.f389b = f;
    }

    public String toString() {
        return "Rating:style=" + this.f388a + " rating=" + (this.f389b < 0.0f ? "unrated" : String.valueOf(this.f389b));
    }

    public int describeContents() {
        return this.f388a;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f388a);
        parcel.writeFloat(this.f389b);
    }

    static {
        CREATOR = new ProGuard();
    }
}
