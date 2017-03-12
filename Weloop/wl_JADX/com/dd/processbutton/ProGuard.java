package com.dd.processbutton;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.dd.processbutton.ProcessButton.SavedState;

/* renamed from: com.dd.processbutton.b */
final class ProGuard implements Creator<SavedState> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m6702a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m6703a(i);
    }

    public SavedState m6702a(Parcel parcel) {
        return new SavedState(null);
    }

    public SavedState[] m6703a(int i) {
        return new SavedState[i];
    }
}
