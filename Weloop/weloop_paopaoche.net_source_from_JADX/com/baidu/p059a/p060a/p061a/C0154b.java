package com.baidu.p059a.p060a.p061a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.baidu.p059a.p060a.p061a.C0157c.C0159a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.a.a.a.b */
public interface C0154b extends IInterface {

    /* renamed from: com.baidu.a.a.a.b.a */
    public static abstract class C0156a extends Binder implements C0154b {

        /* renamed from: com.baidu.a.a.a.b.a.a */
        private static class C0155a implements C0154b {
            private IBinder f2851a;

            C0155a(IBinder iBinder) {
                this.f2851a = iBinder;
            }

            public void m4138a(C0157c c0157c) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.mapframework.open.aidl.IMapOpenService");
                    obtain.writeStrongBinder(c0157c != null ? c0157c.asBinder() : null);
                    this.f2851a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f2851a;
            }
        }

        public static C0154b m4139a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.baidu.mapframework.open.aidl.IMapOpenService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof C0154b)) ? new C0155a(iBinder) : (C0154b) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.enforceInterface("com.baidu.mapframework.open.aidl.IMapOpenService");
                    m4137a(C0159a.m4142b(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.baidu.mapframework.open.aidl.IMapOpenService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void m4137a(C0157c c0157c);
}
