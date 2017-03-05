package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

/* compiled from: ProGuard */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Creator<MediaDescriptionCompat> CREATOR;
    private final String f375a;
    private final CharSequence f376b;
    private final CharSequence f377c;
    private final CharSequence f378d;
    private final Bitmap f379e;
    private final Uri f380f;
    private final Bundle f381g;
    private Object f382h;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat.a */
    public static final class ProGuard {
        private String f368a;
        private CharSequence f369b;
        private CharSequence f370c;
        private CharSequence f371d;
        private Bitmap f372e;
        private Uri f373f;
        private Bundle f374g;

        public ProGuard m537a(String str) {
            this.f368a = str;
            return this;
        }

        public ProGuard m536a(CharSequence charSequence) {
            this.f369b = charSequence;
            return this;
        }

        public ProGuard m539b(CharSequence charSequence) {
            this.f370c = charSequence;
            return this;
        }

        public ProGuard m540c(CharSequence charSequence) {
            this.f371d = charSequence;
            return this;
        }

        public ProGuard m533a(Bitmap bitmap) {
            this.f372e = bitmap;
            return this;
        }

        public ProGuard m534a(Uri uri) {
            this.f373f = uri;
            return this;
        }

        public ProGuard m535a(Bundle bundle) {
            this.f374g = bundle;
            return this;
        }

        public MediaDescriptionCompat m538a() {
            return new MediaDescriptionCompat(this.f369b, this.f370c, this.f371d, this.f372e, this.f373f, this.f374g, null);
        }
    }

    private MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle) {
        this.f375a = str;
        this.f376b = charSequence;
        this.f377c = charSequence2;
        this.f378d = charSequence3;
        this.f379e = bitmap;
        this.f380f = uri;
        this.f381g = bundle;
    }

    private MediaDescriptionCompat(Parcel parcel) {
        this.f375a = parcel.readString();
        this.f376b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f377c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f378d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f379e = (Bitmap) parcel.readParcelable(null);
        this.f380f = (Uri) parcel.readParcelable(null);
        this.f381g = parcel.readBundle();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (VERSION.SDK_INT < 21) {
            parcel.writeString(this.f375a);
            TextUtils.writeToParcel(this.f376b, parcel, i);
            TextUtils.writeToParcel(this.f377c, parcel, i);
            TextUtils.writeToParcel(this.f378d, parcel, i);
            parcel.writeParcelable(this.f379e, i);
            parcel.writeParcelable(this.f380f, i);
            parcel.writeBundle(this.f381g);
            return;
        }
        ProGuard.m556a(m542a(), parcel, i);
    }

    public String toString() {
        return this.f376b + ", " + this.f377c + ", " + this.f378d;
    }

    public Object m542a() {
        if (this.f382h != null || VERSION.SDK_INT < 21) {
            return this.f382h;
        }
        Object a = android.support.v4.media.ProGuard.ProGuard.m545a();
        android.support.v4.media.ProGuard.ProGuard.m551a(a, this.f375a);
        android.support.v4.media.ProGuard.ProGuard.m550a(a, this.f376b);
        android.support.v4.media.ProGuard.ProGuard.m552b(a, this.f377c);
        android.support.v4.media.ProGuard.ProGuard.m553c(a, this.f378d);
        android.support.v4.media.ProGuard.ProGuard.m547a(a, this.f379e);
        android.support.v4.media.ProGuard.ProGuard.m548a(a, this.f380f);
        android.support.v4.media.ProGuard.ProGuard.m549a(a, this.f381g);
        this.f382h = android.support.v4.media.ProGuard.ProGuard.m546a(a);
        return this.f382h;
    }

    public static MediaDescriptionCompat m541a(Object obj) {
        if (obj == null || VERSION.SDK_INT < 21) {
            return null;
        }
        ProGuard proGuard = new ProGuard();
        proGuard.m537a(ProGuard.m555a(obj));
        proGuard.m536a(ProGuard.m557b(obj));
        proGuard.m539b(ProGuard.m558c(obj));
        proGuard.m540c(ProGuard.m559d(obj));
        proGuard.m533a(ProGuard.m560e(obj));
        proGuard.m534a(ProGuard.m561f(obj));
        proGuard.m535a(ProGuard.m562g(obj));
        MediaDescriptionCompat a = proGuard.m538a();
        a.f382h = obj;
        return a;
    }

    static {
        CREATOR = new ProGuard();
    }
}
