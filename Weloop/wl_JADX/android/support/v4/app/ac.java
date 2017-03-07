package android.support.v4.app;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* compiled from: ProGuard */
class ac extends ab {
    static boolean f119a;
    final android.support.v4.p015f.ProGuard<ProGuard> f120b;
    final android.support.v4.p015f.ProGuard<ProGuard> f121c;
    final String f122d;
    ProGuard f123e;
    boolean f124f;
    boolean f125g;

    /* renamed from: android.support.v4.app.ac.a */
    final class ProGuard implements android.support.v4.p008a.ProGuard.ProGuard<Object> {
        final int f104a;
        final Bundle f105b;
        android.support.v4.app.ab.ProGuard<Object> f106c;
        android.support.v4.p008a.ProGuard<Object> f107d;
        boolean f108e;
        boolean f109f;
        Object f110g;
        boolean f111h;
        boolean f112i;
        boolean f113j;
        boolean f114k;
        boolean f115l;
        boolean f116m;
        ProGuard f117n;
        final /* synthetic */ ac f118o;

        void m118a() {
            if (this.f112i && this.f113j) {
                this.f111h = true;
            } else if (!this.f111h) {
                this.f111h = true;
                if (ac.f119a) {
                    Log.v("LoaderManager", "  Starting: " + this);
                }
                if (this.f107d == null && this.f106c != null) {
                    this.f107d = this.f106c.m114a(this.f104a, this.f105b);
                }
                if (this.f107d == null) {
                    return;
                }
                if (!this.f107d.getClass().isMemberClass() || Modifier.isStatic(this.f107d.getClass().getModifiers())) {
                    if (!this.f116m) {
                        this.f107d.m91a(this.f104a, this);
                        this.f116m = true;
                    }
                    this.f107d.m90a();
                    return;
                }
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.f107d);
            }
        }

        void m121b() {
            if (ac.f119a) {
                Log.v("LoaderManager", "  Retaining: " + this);
            }
            this.f112i = true;
            this.f113j = this.f111h;
            this.f111h = false;
            this.f106c = null;
        }

        void m122c() {
            if (this.f112i) {
                if (ac.f119a) {
                    Log.v("LoaderManager", "  Finished Retaining: " + this);
                }
                this.f112i = false;
                if (!(this.f111h == this.f113j || this.f111h)) {
                    m124e();
                }
            }
            if (this.f111h && this.f108e && !this.f114k) {
                m119a(this.f107d, this.f110g);
            }
        }

        void m123d() {
            if (this.f111h && this.f114k) {
                this.f114k = false;
                if (this.f108e) {
                    m119a(this.f107d, this.f110g);
                }
            }
        }

        void m124e() {
            if (ac.f119a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f111h = false;
            if (!this.f112i && this.f107d != null && this.f116m) {
                this.f116m = false;
                this.f107d.m92a((android.support.v4.p008a.ProGuard.ProGuard) this);
                this.f107d.m95c();
            }
        }

        void m125f() {
            String str;
            android.support.v4.app.ab.ProGuard proGuard = null;
            if (ac.f119a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f115l = true;
            boolean z = this.f109f;
            this.f109f = false;
            if (this.f106c != null && this.f107d != null && this.f108e && z) {
                if (ac.f119a) {
                    Log.v("LoaderManager", "  Reseting: " + this);
                }
                if (this.f118o.f123e != null) {
                    String str2 = this.f118o.f123e.f249b.f288u;
                    this.f118o.f123e.f249b.f288u = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.f106c.m115a(this.f107d);
                } finally {
                    proGuard = this.f118o.f123e;
                    if (proGuard != null) {
                        proGuard = this.f118o.f123e.f249b;
                        proGuard.f288u = str;
                    }
                }
            }
            this.f106c = proGuard;
            this.f110g = proGuard;
            this.f108e = false;
            if (this.f107d != null) {
                if (this.f116m) {
                    this.f116m = false;
                    this.f107d.m92a((android.support.v4.p008a.ProGuard.ProGuard) this);
                }
                this.f107d.m97e();
            }
            if (this.f117n != null) {
                this.f117n.m125f();
            }
        }

        void m119a(android.support.v4.p008a.ProGuard<Object> proGuard, Object obj) {
            String str;
            if (this.f106c != null) {
                if (this.f118o.f123e != null) {
                    String str2 = this.f118o.f123e.f249b.f288u;
                    this.f118o.f123e.f249b.f288u = "onLoadFinished";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    if (ac.f119a) {
                        Log.v("LoaderManager", "  onLoadFinished in " + proGuard + ": " + proGuard.m89a(obj));
                    }
                    this.f106c.m116a((android.support.v4.p008a.ProGuard) proGuard, obj);
                    this.f109f = true;
                } finally {
                    if (this.f118o.f123e != null) {
                        this.f118o.f123e.f249b.f288u = str;
                    }
                }
            }
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append("LoaderInfo{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" #");
            stringBuilder.append(this.f104a);
            stringBuilder.append(" : ");
            android.support.v4.p015f.ProGuard.m501a(this.f107d, stringBuilder);
            stringBuilder.append("}}");
            return stringBuilder.toString();
        }

        public void m120a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f104a);
            printWriter.print(" mArgs=");
            printWriter.println(this.f105b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.f106c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f107d);
            if (this.f107d != null) {
                this.f107d.m93a(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.f108e || this.f109f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.f108e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f109f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.f110g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f111h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.f114k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.f115l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.f112i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.f113j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.f116m);
            if (this.f117n != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.f117n);
                printWriter.println(":");
                this.f117n.m120a(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }
    }

    static {
        f119a = false;
    }

    ac(String str, ProGuard proGuard, boolean z) {
        this.f120b = new android.support.v4.p015f.ProGuard();
        this.f121c = new android.support.v4.p015f.ProGuard();
        this.f122d = str;
        this.f123e = proGuard;
        this.f124f = z;
    }

    void m126a(ProGuard proGuard) {
        this.f123e = proGuard;
    }

    void m129b() {
        if (f119a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.f124f) {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
            return;
        }
        this.f124f = true;
        for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
            ((ProGuard) this.f120b.m529c(b)).m118a();
        }
    }

    void m130c() {
        if (f119a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (this.f124f) {
            for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
                ((ProGuard) this.f120b.m529c(b)).m124e();
            }
            this.f124f = false;
            return;
        }
        Throwable runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
    }

    void m131d() {
        if (f119a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (this.f124f) {
            this.f125g = true;
            this.f124f = false;
            for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
                ((ProGuard) this.f120b.m529c(b)).m121b();
            }
            return;
        }
        Throwable runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
    }

    void m132e() {
        if (this.f125g) {
            if (f119a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f125g = false;
            for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
                ((ProGuard) this.f120b.m529c(b)).m122c();
            }
        }
    }

    void m133f() {
        for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
            ((ProGuard) this.f120b.m529c(b)).f114k = true;
        }
    }

    void m134g() {
        for (int b = this.f120b.m526b() - 1; b >= 0; b--) {
            ((ProGuard) this.f120b.m529c(b)).m123d();
        }
    }

    void m135h() {
        int b;
        if (!this.f125g) {
            if (f119a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (b = this.f120b.m526b() - 1; b >= 0; b--) {
                ((ProGuard) this.f120b.m529c(b)).m125f();
            }
            this.f120b.m530c();
        }
        if (f119a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (b = this.f121c.m526b() - 1; b >= 0; b--) {
            ((ProGuard) this.f121c.m529c(b)).m125f();
        }
        this.f121c.m530c();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(com.umeng.update.util.ProGuard.f5670c);
        stringBuilder.append("LoaderManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        android.support.v4.p015f.ProGuard.m501a(this.f123e, stringBuilder);
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    public void m127a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        if (this.f120b.m526b() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i2 = 0; i2 < this.f120b.m526b(); i2++) {
                ProGuard proGuard = (ProGuard) this.f120b.m529c(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f120b.m527b(i2));
                printWriter.print(": ");
                printWriter.println(proGuard.toString());
                proGuard.m120a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.f121c.m526b() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            while (i < this.f121c.m526b()) {
                proGuard = (ProGuard) this.f121c.m529c(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f121c.m527b(i));
                printWriter.print(": ");
                printWriter.println(proGuard.toString());
                proGuard.m120a(str3, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public boolean m128a() {
        int b = this.f120b.m526b();
        boolean z = false;
        for (int i = 0; i < b; i++) {
            int i2;
            ProGuard proGuard = (ProGuard) this.f120b.m529c(i);
            if (!proGuard.f111h || proGuard.f109f) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            z |= i2;
        }
        return z;
    }
}
