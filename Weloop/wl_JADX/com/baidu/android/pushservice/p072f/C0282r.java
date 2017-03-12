package com.baidu.android.pushservice.p072f;

import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;

/* renamed from: com.baidu.android.pushservice.f.r */
class C0282r extends Thread {
    final /* synthetic */ C0281q f3256a;

    C0282r(C0281q c0281q) {
        this.f3256a = c0281q;
    }

    public void run() {
        long currentTimeMillis = System.currentTimeMillis();
        int i = (int) ((currentTimeMillis / 60000) % 5);
        int i2 = ((int) (currentTimeMillis / 1000)) % 60;
        if (i == 0 && i2 < 15) {
            try {
                C0282r.sleep((long) ((Math.random() * 60.0d) * 1000.0d));
            } catch (InterruptedException e) {
                if (C0192a.m4341b()) {
                    C0385a.m5312c("StatisticPoster", "InterruptedException: " + e);
                }
            }
            if (!C0399b.m5338e(this.f3256a.f3253b)) {
                return;
            }
        }
        this.f3256a.m4919c();
    }
}
