package com.baidu.android.pushservice.p068b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.baidu.android.pushservice.p068b.C0196b.C0198a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.b.a */
public interface C0193a extends IInterface {

    /* renamed from: com.baidu.android.pushservice.b.a.a */
    public static abstract class C0195a extends Binder implements C0193a {

        /* renamed from: com.baidu.android.pushservice.b.a.a.a */
        private static class C0194a implements C0193a {
            private IBinder f2957a;

            C0194a(IBinder iBinder) {
                this.f2957a = iBinder;
            }

            public int m4407a(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f2957a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m4408a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    this.f2957a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m4409a(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m4410a(String str, int i, boolean z, int i2, int i3) {
                int i4 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (z) {
                        i4 = 1;
                    }
                    obtain.writeInt(i4);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.f2957a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void m4411a(String str, String str2, C0196b c0196b) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(c0196b != null ? c0196b.asBinder() : null);
                    this.f2957a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void m4412a(String str, String str2, boolean z, C0196b c0196b) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(c0196b != null ? c0196b.asBinder() : null);
                    this.f2957a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void m4413a(String str, String str2, boolean z, String str3, C0196b c0196b) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(c0196b != null ? c0196b.asBinder() : null);
                    this.f2957a.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4414a(String str, String str2) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f2957a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4415a(String str, String str2, int i) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    this.f2957a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4416a(String str, String str2, String str3, String str4) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f2957a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4417a(String str, boolean z) {
                boolean z2 = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.f2957a.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z2 = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f2957a;
            }

            public int m4418b(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int m4419b(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f2957a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m4420b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    this.f2957a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void m4421b(String str, String str2, C0196b c0196b) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(c0196b != null ? c0196b.asBinder() : null);
                    this.f2957a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4422b(String str, String str2) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f2957a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int m4423c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    this.f2957a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int m4424c(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int m4425c(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f2957a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int m4426d(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean m4427e(String str) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m4428f(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
                    obtain.writeString(str);
                    this.f2957a.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public C0195a() {
            attachInterface(this, "com.baidu.android.pushservice.aidl.IPushService");
        }

        public static C0193a m4429a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.baidu.android.pushservice.aidl.IPushService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof C0193a)) ? new C0194a(iBinder) : (C0193a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int i3 = 0;
            String a;
            boolean a2;
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    boolean z;
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    m4390a(readString, readString2, z, C0198a.m4436a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    m4389a(parcel.readString(), parcel.readString(), C0198a.m4436a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    m4399b(parcel.readString(), parcel.readString(), C0198a.m4436a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.View_theme /*4*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a = m4386a();
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a = m4398b();
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a = m4387a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a = m4388a(parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4385a(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4396b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4397b(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4402c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4403c(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4392a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4394a(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4393a(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4400b(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4404d(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_collapseContentDescription /*18*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4405e(parcel.readString());
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_navigationIcon /*19*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a2 = m4395a(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Toolbar_navigationContentDescription /*20*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    i3 = m4401c();
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case ProGuard.styleable.Theme_actionBarWidgetTheme /*21*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    m4391a(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), C0198a.m4436a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ProGuard.styleable.Theme_actionBarSize /*22*/:
                    parcel.enforceInterface("com.baidu.android.pushservice.aidl.IPushService");
                    a = m4406f(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.baidu.android.pushservice.aidl.IPushService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int m4385a(String str, int i);

    String m4386a();

    String m4387a(String str);

    String m4388a(String str, int i, boolean z, int i2, int i3);

    void m4389a(String str, String str2, C0196b c0196b);

    void m4390a(String str, String str2, boolean z, C0196b c0196b);

    void m4391a(String str, String str2, boolean z, String str3, C0196b c0196b);

    boolean m4392a(String str, String str2);

    boolean m4393a(String str, String str2, int i);

    boolean m4394a(String str, String str2, String str3, String str4);

    boolean m4395a(String str, boolean z);

    int m4396b(String str);

    int m4397b(String str, int i);

    String m4398b();

    void m4399b(String str, String str2, C0196b c0196b);

    boolean m4400b(String str, String str2);

    int m4401c();

    int m4402c(String str);

    int m4403c(String str, int i);

    int m4404d(String str);

    boolean m4405e(String str);

    String m4406f(String str);
}
