package cn.sharesdk.framework;

/* renamed from: cn.sharesdk.framework.j */
class C0026j extends Thread {
    final /* synthetic */ String[] f1968a;
    final /* synthetic */ C0025i f1969b;

    C0026j(C0025i c0025i, String[] strArr) {
        this.f1969b = c0025i;
        this.f1968a = strArr;
    }

    public void run() {
        this.f1969b.m2941j();
        this.f1969b.f1959a.doAuthorize(this.f1968a);
    }
}
