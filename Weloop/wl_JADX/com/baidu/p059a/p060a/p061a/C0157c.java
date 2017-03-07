package com.baidu.p059a.p060a.p061a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.a.a.a.c */
public interface C0157c extends IInterface {

    /* renamed from: com.baidu.a.a.a.c.a */
    public static abstract class C0159a extends Binder implements C0157c {

        /* renamed from: com.baidu.a.a.a.c.a.a */
        private static class C0158a implements C0157c {
            private IBinder f2852a;

            C0158a(IBinder iBinder) {
                this.f2852a = iBinder;
            }

            public void m4141a(IBinder iBinder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.mapframework.open.aidl.IOpenClientCallback");
                    obtain.writeStrongBinder(iBinder);
                    this.f2852a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f2852a;
            }
        }

        public C0159a() {
            attachInterface(this, "com.baidu.mapframework.open.aidl.IOpenClientCallback");
        }

        public static C0157c m4142b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.baidu.mapframework.open.aidl.IOpenClientCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof C0157c)) ? new C0158a(iBinder) : (C0157c) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.enforceInterface("com.baidu.mapframework.open.aidl.IOpenClientCallback");
                    m4140a(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.baidu.mapframework.open.aidl.IOpenClientCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void m4140a(IBinder iBinder);
}
