package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: android.support.v4.media.session.e */
final class ProGuard implements Creator<PlaybackStateCompat> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m575a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m576a(i);
    }

    public PlaybackStateCompat m575a(Parcel parcel) {
        return new PlaybackStateCompat(null);
    }

    public PlaybackStateCompat[] m576a(int i) {
        return new PlaybackStateCompat[i];
    }
}
