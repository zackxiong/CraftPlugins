package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

/* compiled from: ProGuard */
final class FragmentState implements Parcelable {
    public static final Creator<FragmentState> CREATOR;
    final String f70a;
    final int f71b;
    final boolean f72c;
    final int f73d;
    final int f74e;
    final String f75f;
    final boolean f76g;
    final boolean f77h;
    final Bundle f78i;
    Bundle f79j;
    Fragment f80k;

    public FragmentState(Fragment fragment) {
        this.f70a = fragment.getClass().getName();
        this.f71b = fragment.mIndex;
        this.f72c = fragment.mFromLayout;
        this.f73d = fragment.mFragmentId;
        this.f74e = fragment.mContainerId;
        this.f75f = fragment.mTag;
        this.f76g = fragment.mRetainInstance;
        this.f77h = fragment.mDetached;
        this.f78i = fragment.mArguments;
    }

    public FragmentState(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.f70a = parcel.readString();
        this.f71b = parcel.readInt();
        this.f72c = parcel.readInt() != 0;
        this.f73d = parcel.readInt();
        this.f74e = parcel.readInt();
        this.f75f = parcel.readString();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.f76g = z;
        if (parcel.readInt() == 0) {
            z2 = false;
        }
        this.f77h = z2;
        this.f78i = parcel.readBundle();
        this.f79j = parcel.readBundle();
    }

    public Fragment m106a(ProGuard proGuard, Fragment fragment) {
        if (this.f80k != null) {
            return this.f80k;
        }
        if (this.f78i != null) {
            this.f78i.setClassLoader(proGuard.getClassLoader());
        }
        this.f80k = Fragment.instantiate(proGuard, this.f70a, this.f78i);
        if (this.f79j != null) {
            this.f79j.setClassLoader(proGuard.getClassLoader());
            this.f80k.mSavedFragmentState = this.f79j;
        }
        this.f80k.setIndex(this.f71b, fragment);
        this.f80k.mFromLayout = this.f72c;
        this.f80k.mRestored = true;
        this.f80k.mFragmentId = this.f73d;
        this.f80k.mContainerId = this.f74e;
        this.f80k.mTag = this.f75f;
        this.f80k.mRetainInstance = this.f76g;
        this.f80k.mDetached = this.f77h;
        this.f80k.mFragmentManager = proGuard.f249b;
        if (ProGuard.f267a) {
            Log.v("FragmentManager", "Instantiated fragment " + this.f80k);
        }
        return this.f80k;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeString(this.f70a);
        parcel.writeInt(this.f71b);
        parcel.writeInt(this.f72c ? 1 : 0);
        parcel.writeInt(this.f73d);
        parcel.writeInt(this.f74e);
        parcel.writeString(this.f75f);
        if (this.f76g) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.f77h) {
            i3 = 0;
        }
        parcel.writeInt(i3);
        parcel.writeBundle(this.f78i);
        parcel.writeBundle(this.f79j);
    }

    static {
        CREATOR = new ProGuard();
    }
}
