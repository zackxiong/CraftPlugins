package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.p015f.ProGuard;

/* compiled from: ProGuard */
public final class MediaMetadataCompat implements Parcelable {
    public static final Creator<MediaMetadataCompat> CREATOR;
    private static final ProGuard<String, Integer> f383a;
    private static final String[] f384b;
    private static final String[] f385c;
    private static final String[] f386d;
    private final Bundle f387e;

    static {
        f383a = new ProGuard();
        f383a.put("android.media.metadata.TITLE", Integer.valueOf(1));
        f383a.put("android.media.metadata.ARTIST", Integer.valueOf(1));
        f383a.put("android.media.metadata.DURATION", Integer.valueOf(0));
        f383a.put("android.media.metadata.ALBUM", Integer.valueOf(1));
        f383a.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
        f383a.put("android.media.metadata.WRITER", Integer.valueOf(1));
        f383a.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
        f383a.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
        f383a.put("android.media.metadata.DATE", Integer.valueOf(1));
        f383a.put("android.media.metadata.YEAR", Integer.valueOf(0));
        f383a.put("android.media.metadata.GENRE", Integer.valueOf(1));
        f383a.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
        f383a.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
        f383a.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
        f383a.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
        f383a.put("android.media.metadata.ART", Integer.valueOf(2));
        f383a.put("android.media.metadata.ART_URI", Integer.valueOf(1));
        f383a.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
        f383a.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
        f383a.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
        f383a.put("android.media.metadata.RATING", Integer.valueOf(3));
        f383a.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
        f383a.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
        f383a.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
        f383a.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
        f383a.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
        f383a.put("android.media.metadata.MEDIA_ID", Integer.valueOf(1));
        f384b = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        f385c = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        f386d = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new ProGuard();
    }

    private MediaMetadataCompat(Parcel parcel) {
        this.f387e = parcel.readBundle();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f387e);
    }
}
