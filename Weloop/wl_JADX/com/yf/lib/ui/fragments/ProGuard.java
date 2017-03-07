package com.yf.lib.ui.fragments;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: com.yf.lib.ui.fragments.a */
final class ProGuard implements Creator<SavedState> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m8642a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m8643a(i);
    }

    public SavedState m8642a(Parcel parcel) {
        return new SavedState(null);
    }

    public SavedState[] m8643a(int i) {
        return new SavedState[i];
    }
}
