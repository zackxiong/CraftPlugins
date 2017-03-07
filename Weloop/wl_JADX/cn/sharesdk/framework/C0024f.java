package cn.sharesdk.framework;

import java.util.HashMap;

/* renamed from: cn.sharesdk.framework.f */
class C0024f implements PlatformActionListener {
    final /* synthetic */ PlatformActionListener f1955a;
    final /* synthetic */ int f1956b;
    final /* synthetic */ Object f1957c;
    final /* synthetic */ C0022d f1958d;

    C0024f(C0022d c0022d, PlatformActionListener platformActionListener, int i, Object obj) {
        this.f1958d = c0022d;
        this.f1955a = platformActionListener;
        this.f1956b = i;
        this.f1957c = obj;
    }

    public void onCancel(Platform platform, int i) {
        this.f1958d.f1950a = this.f1955a;
        if (this.f1958d.f1950a != null) {
            this.f1958d.f1950a.onCancel(platform, this.f1956b);
        }
    }

    public void onComplete(Platform platform, int i, HashMap<String, Object> hashMap) {
        this.f1958d.f1950a = this.f1955a;
        platform.afterRegister(this.f1956b, this.f1957c);
    }

    public void onError(Platform platform, int i, Throwable th) {
        this.f1958d.f1950a = this.f1955a;
        if (this.f1958d.f1950a != null) {
            this.f1958d.f1950a.onError(platform, i, th);
        }
    }
}
