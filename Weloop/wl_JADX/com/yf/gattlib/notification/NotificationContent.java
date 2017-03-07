package com.yf.gattlib.notification;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public final class NotificationContent implements Parcelable {
    public static final Creator<NotificationContent> CREATOR;
    public int f6278a;
    public byte f6279b;
    public String f6280c;
    public String f6281d;
    public String f6282e;

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NotificationContent)) {
            return false;
        }
        NotificationContent notificationContent = (NotificationContent) obj;
        if (this.f6278a == notificationContent.f6278a && this.f6279b == notificationContent.f6279b && this.f6282e != null && this.f6282e.equals(notificationContent.f6282e) && this.f6280c != null && this.f6280c.equals(notificationContent.f6280c) && this.f6281d != null && this.f6281d.equals(notificationContent.f6281d)) {
            return true;
        }
        return false;
    }

    private NotificationContent(Parcel parcel) {
        this.f6278a = parcel.readInt();
        this.f6279b = parcel.readByte();
        this.f6280c = parcel.readString();
        this.f6281d = parcel.readString();
        this.f6282e = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6278a);
        parcel.writeByte(this.f6279b);
        parcel.writeString(this.f6280c);
        parcel.writeString(this.f6281d);
        parcel.writeString(this.f6282e);
    }

    static {
        CREATOR = new ProGuard();
    }
}
