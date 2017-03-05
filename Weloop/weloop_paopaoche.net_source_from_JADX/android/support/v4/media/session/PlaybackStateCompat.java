package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

/* compiled from: ProGuard */
public final class PlaybackStateCompat implements Parcelable {
    public static final Creator<PlaybackStateCompat> CREATOR;
    private final int f403a;
    private final long f404b;
    private final long f405c;
    private final float f406d;
    private final long f407e;
    private final CharSequence f408f;
    private final long f409g;

    /* compiled from: ProGuard */
    public static final class CustomAction implements Parcelable {
        public static final Creator<CustomAction> CREATOR;
        private final String f399a;
        private final CharSequence f400b;
        private final int f401c;
        private final Bundle f402d;

        private CustomAction(Parcel parcel) {
            this.f399a = parcel.readString();
            this.f400b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f401c = parcel.readInt();
            this.f402d = parcel.readBundle();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f399a);
            TextUtils.writeToParcel(this.f400b, parcel, i);
            parcel.writeInt(this.f401c);
            parcel.writeBundle(this.f402d);
        }

        public int describeContents() {
            return 0;
        }

        static {
            CREATOR = new ProGuard();
        }

        public String toString() {
            return "Action:mName='" + this.f400b + ", mIcon=" + this.f401c + ", mExtras=" + this.f402d;
        }
    }

    private PlaybackStateCompat(Parcel parcel) {
        this.f403a = parcel.readInt();
        this.f404b = parcel.readLong();
        this.f406d = parcel.readFloat();
        this.f409g = parcel.readLong();
        this.f405c = parcel.readLong();
        this.f407e = parcel.readLong();
        this.f408f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("PlaybackState {");
        stringBuilder.append("state=").append(this.f403a);
        stringBuilder.append(", position=").append(this.f404b);
        stringBuilder.append(", buffered position=").append(this.f405c);
        stringBuilder.append(", speed=").append(this.f406d);
        stringBuilder.append(", updated=").append(this.f409g);
        stringBuilder.append(", actions=").append(this.f407e);
        stringBuilder.append(", error=").append(this.f408f);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f403a);
        parcel.writeLong(this.f404b);
        parcel.writeFloat(this.f406d);
        parcel.writeLong(this.f409g);
        parcel.writeLong(this.f405c);
        parcel.writeLong(this.f407e);
        TextUtils.writeToParcel(this.f408f, parcel, i);
    }

    static {
        CREATOR = new ProGuard();
    }
}
