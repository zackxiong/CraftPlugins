package android.support.v4.view;

import android.os.Parcel;
import android.support.v4.p013d.ProGuard;
import android.support.v4.view.ViewPager.SavedState;

/* compiled from: ProGuard */
final class bb implements ProGuard<SavedState> {
    bb() {
    }

    public /* synthetic */ Object m1109a(Parcel parcel, ClassLoader classLoader) {
        return m1111b(parcel, classLoader);
    }

    public /* synthetic */ Object[] m1110a(int i) {
        return m1112b(i);
    }

    public SavedState m1111b(Parcel parcel, ClassLoader classLoader) {
        return new SavedState(parcel, classLoader);
    }

    public SavedState[] m1112b(int i) {
        return new SavedState[i];
    }
}
