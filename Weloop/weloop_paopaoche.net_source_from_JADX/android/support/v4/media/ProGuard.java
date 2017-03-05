package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

/* renamed from: android.support.v4.media.b */
public class ProGuard {

    /* renamed from: android.support.v4.media.b.a */
    public static class ProGuard {
        public static Object m545a() {
            return new Builder();
        }

        public static void m551a(Object obj, String str) {
            ((Builder) obj).setMediaId(str);
        }

        public static void m550a(Object obj, CharSequence charSequence) {
            ((Builder) obj).setTitle(charSequence);
        }

        public static void m552b(Object obj, CharSequence charSequence) {
            ((Builder) obj).setSubtitle(charSequence);
        }

        public static void m553c(Object obj, CharSequence charSequence) {
            ((Builder) obj).setDescription(charSequence);
        }

        public static void m547a(Object obj, Bitmap bitmap) {
            ((Builder) obj).setIconBitmap(bitmap);
        }

        public static void m548a(Object obj, Uri uri) {
            ((Builder) obj).setIconUri(uri);
        }

        public static void m549a(Object obj, Bundle bundle) {
            ((Builder) obj).setExtras(bundle);
        }

        public static Object m546a(Object obj) {
            return ((Builder) obj).build();
        }
    }

    public static String m555a(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    public static CharSequence m557b(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    public static CharSequence m558c(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    public static CharSequence m559d(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    public static Bitmap m560e(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    public static Uri m561f(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    public static Bundle m562g(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    public static void m556a(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }

    public static Object m554a(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }
}
