package android.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* renamed from: android.widget.h */
final class ProGuard implements Creator<YFRemoteViews3> {
    ProGuard() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m2785a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m2786a(i);
    }

    public YFRemoteViews3 m2785a(Parcel parcel) {
        return new YFRemoteViews3(parcel);
    }

    public YFRemoteViews3[] m2786a(int i) {
        return new YFRemoteViews3[i];
    }
}
