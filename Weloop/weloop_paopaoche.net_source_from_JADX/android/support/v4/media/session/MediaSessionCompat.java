package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;

/* compiled from: ProGuard */
public class MediaSessionCompat {

    /* compiled from: ProGuard */
    public static final class QueueItem implements Parcelable {
        public static final Creator<QueueItem> CREATOR;
        private final MediaDescriptionCompat f390a;
        private final long f391b;

        private QueueItem(Parcel parcel) {
            this.f390a = (MediaDescriptionCompat) MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f391b = parcel.readLong();
        }

        public void writeToParcel(Parcel parcel, int i) {
            this.f390a.writeToParcel(parcel, i);
            parcel.writeLong(this.f391b);
        }

        public int describeContents() {
            return 0;
        }

        static {
            CREATOR = new ProGuard();
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f390a + ", Id=" + this.f391b + " }";
        }
    }

    /* compiled from: ProGuard */
    static final class ResultReceiverWrapper implements Parcelable {
        public static final Creator<ResultReceiverWrapper> CREATOR;
        private ResultReceiver f392a;

        ResultReceiverWrapper(Parcel parcel) {
            this.f392a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        static {
            CREATOR = new ProGuard();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            this.f392a.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public static final class Token implements Parcelable {
        public static final Creator<Token> CREATOR;
        private final Object f393a;

        Token(Object obj) {
            this.f393a = obj;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            if (VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f393a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f393a);
            }
        }

        static {
            CREATOR = new ProGuard();
        }
    }
}
