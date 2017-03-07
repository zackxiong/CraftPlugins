package cn.sharesdk.framework;

/* renamed from: cn.sharesdk.framework.k */
class C0027k extends Thread {
    final /* synthetic */ int f1970a;
    final /* synthetic */ Object f1971b;
    final /* synthetic */ C0025i f1972c;

    C0027k(C0025i c0025i, int i, Object obj) {
        this.f1972c = c0025i;
        this.f1970a = i;
        this.f1971b = obj;
    }

    public void run() {
        this.f1972c.m2941j();
        if (this.f1972c.f1959a.checkAuthorize(this.f1970a, this.f1971b)) {
            this.f1972c.m2960c(this.f1970a, this.f1971b);
        }
    }
}
