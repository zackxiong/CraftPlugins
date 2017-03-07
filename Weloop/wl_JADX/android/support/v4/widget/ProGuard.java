package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: android.support.v4.widget.j */
final class ProGuard implements Creator<SavedState> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m1615a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m1616a(i);
    }

    public SavedState m1615a(Parcel parcel) {
        return new SavedState(parcel);
    }

    public SavedState[] m1616a(int i) {
        return new SavedState[i];
    }
}
