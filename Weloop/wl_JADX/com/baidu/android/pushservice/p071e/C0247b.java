package com.baidu.android.pushservice.p071e;

import android.os.RemoteException;
import android.util.Log;
import com.baidu.android.pushservice.p068b.C0196b;

/* renamed from: com.baidu.android.pushservice.e.b */
public class C0247b implements C0246a {
    private C0196b f3097a;

    public C0247b(C0196b c0196b) {
        this.f3097a = c0196b;
    }

    public void m4653a(int i) {
    }

    public void m4654a(int i, String str) {
        try {
            this.f3097a.m4431b(i, str);
        } catch (Exception e) {
        }
    }

    public void m4655a(int i, String str, boolean z) {
    }

    public void m4656a(boolean z) {
    }

    public void m4657a(boolean z, boolean z2) {
    }

    public void m4658b(int i) {
    }

    public void m4659b(int i, String str) {
        if (this.f3097a != null) {
            try {
                this.f3097a.m4432c(i, str);
            } catch (RemoteException e) {
                Log.w("LightApiListenerForAidl", "onUnbindLightResult error");
                Log.e("LightApiListenerForAidl", "error " + e.getMessage());
            }
        }
    }

    public void m4660c(int i) {
    }

    public void m4661c(int i, String str) {
        if (this.f3097a != null) {
            try {
                this.f3097a.m4431b(i, str);
            } catch (RemoteException e) {
                Log.w("LightApiListenerForAidl", "onSubscribeResult error");
                Log.e("LightApiListenerForAidl", "error " + e.getMessage());
            }
        }
    }

    public void m4662d(int i) {
    }

    public void m4663d(int i, String str) {
        if (this.f3097a != null) {
            try {
                this.f3097a.m4430a(i, str);
            } catch (RemoteException e) {
                Log.w("LightApiListenerForAidl", "onUnsubscribeResult error");
                Log.e("LightApiListenerForAidl", "error " + e.getMessage());
            }
        }
    }

    public void m4664e(int i) {
    }

    public void m4665e(int i, String str) {
        try {
            this.f3097a.m4431b(i, str);
        } catch (RemoteException e) {
            Log.w("LightApiListenerForAidl", "onSubscribeServiceResult error");
            Log.e("LightApiListenerForAidl", "error " + e.getMessage());
        }
    }

    public void m4666f(int i, String str) {
    }

    public void m4667g(int i, String str) {
    }

    public void m4668h(int i, String str) {
    }

    public void m4669i(int i, String str) {
    }

    public void m4670j(int i, String str) {
    }
}
