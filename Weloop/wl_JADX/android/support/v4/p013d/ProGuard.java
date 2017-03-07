package android.support.v4.p013d;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

/* renamed from: android.support.v4.d.e */
class ProGuard<T> implements ClassLoaderCreator<T> {
    private final ProGuard<T> f314a;

    public ProGuard(ProGuard<T> proGuard) {
        this.f314a = proGuard;
    }

    public T createFromParcel(Parcel parcel) {
        return this.f314a.m440a(parcel, null);
    }

    public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.f314a.m440a(parcel, classLoader);
    }

    public T[] newArray(int i) {
        return this.f314a.m441a(i);
    }
}
