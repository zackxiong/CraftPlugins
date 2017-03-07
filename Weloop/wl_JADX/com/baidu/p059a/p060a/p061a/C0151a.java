package com.baidu.p059a.p060a.p061a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.a.a.a.a */
public interface C0151a extends IInterface {

    /* renamed from: com.baidu.a.a.a.a.a */
    public static abstract class C0153a extends Binder implements C0151a {

        /* renamed from: com.baidu.a.a.a.a.a.a */
        private static class C0152a implements C0151a {
            private IBinder f2850a;

            C0152a(IBinder iBinder) {
                this.f2850a = iBinder;
            }

            public String m4134a(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.mapframework.open.aidl.IComOpenClient");
                    obtain.writeString(str);
                    this.f2850a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4135a(String str, String str2, Bundle bundle) {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.mapframework.open.aidl.IComOpenClient");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f2850a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f2850a;
            }
        }

        public static C0151a m4136a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.baidu.mapframework.open.aidl.IComOpenClient");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof C0151a)) ? new C0152a(iBinder) : (C0151a) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.enforceInterface("com.baidu.mapframework.open.aidl.IComOpenClient");
                    String a = m4132a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.enforceInterface("com.baidu.mapframework.open.aidl.IComOpenClient");
                    boolean a2 = m4133a(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(a2 ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.baidu.mapframework.open.aidl.IComOpenClient");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String m4132a(String str);

    boolean m4133a(String str, String str2, Bundle bundle);
}
