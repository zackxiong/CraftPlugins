package com.baidu.android.pushservice.p068b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.b.b */
public interface C0196b extends IInterface {

    /* renamed from: com.baidu.android.pushservice.b.b.a */
    public static abstract class C0198a extends Binder implements C0196b {

        /* renamed from: com.baidu.android.pushservice.b.b.a.a */
        private static class C0197a implements C0196b {
            private IBinder f2958a;

            C0197a(IBinder iBinder) {
                this.f2958a = iBinder;
            }

            public void m4433a(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f2958a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f2958a;
            }

            public void m4434b(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f2958a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void m4435c(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f2958a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public C0198a() {
            attachInterface(this, "com.baidu.android.pushservice.aidl.IPushServiceListener");
        }

        public static C0196b m4436a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.baidu.android.pushservice.aidl.IPushServiceListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof C0196b)) ? new C0197a(iBinder) : (C0196b) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    m4431b(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    m4430a(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    m4432c(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.baidu.android.pushservice.aidl.IPushServiceListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void m4430a(int i, String str);

    void m4431b(int i, String str);

    void m4432c(int i, String str);
}
