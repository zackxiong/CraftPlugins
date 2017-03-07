package com.baidu.location;

/* renamed from: com.baidu.location.q */
class C0535q implements Runnable {
    final /* synthetic */ C0533o f4098a;

    C0535q(C0533o c0533o) {
        this.f4098a = c0533o;
    }

    public void run() {
        this.f4098a.ac.removeCallbacks(this.f4098a.ak);
        this.f4098a.ac.removeCallbacks(this.f4098a.al);
        this.f4098a.bK();
        this.f4098a.bL();
    }
}
