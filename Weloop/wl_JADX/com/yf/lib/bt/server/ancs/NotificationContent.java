package com.yf.lib.bt.server.ancs;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: ProGuard */
public final class NotificationContent implements Parcelable {
    public static final Creator<NotificationContent> CREATOR;
    public int f6524a;
    public byte f6525b;
    public String f6526c;
    public String f6527d;
    public String f6528e;

    public NotificationContent() {
        this.f6526c = "";
        this.f6527d = "";
        this.f6528e = "";
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NotificationContent)) {
            return false;
        }
        NotificationContent notificationContent = (NotificationContent) obj;
        if (this.f6524a == notificationContent.f6524a && this.f6525b == notificationContent.f6525b && this.f6528e != null && this.f6528e.equals(notificationContent.f6528e) && this.f6526c != null && this.f6526c.equals(notificationContent.f6526c) && this.f6527d != null && this.f6527d.equals(notificationContent.f6527d)) {
            return true;
        }
        return false;
    }

    private NotificationContent(Parcel parcel) {
        this.f6526c = "";
        this.f6527d = "";
        this.f6528e = "";
        this.f6524a = parcel.readInt();
        this.f6525b = parcel.readByte();
        this.f6526c = parcel.readString();
        this.f6527d = parcel.readString();
        this.f6528e = parcel.readString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("id: ").append(this.f6524a).append(", categoryId:").append(this.f6525b).append(", title:").append(this.f6526c).append(", message:").append(this.f6527d).append(", pkg:").append(this.f6528e);
        return stringBuffer.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6524a);
        parcel.writeByte(this.f6525b);
        parcel.writeString(this.f6526c);
        parcel.writeString(this.f6527d);
        parcel.writeString(this.f6528e);
    }

    static {
        CREATOR = new ProGuard();
    }
}
