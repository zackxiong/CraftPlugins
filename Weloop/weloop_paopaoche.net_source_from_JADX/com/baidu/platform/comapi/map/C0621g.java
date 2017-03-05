package com.baidu.platform.comapi.map;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Message;

/* renamed from: com.baidu.platform.comapi.map.g */
class C0621g extends Handler {
    final /* synthetic */ C0620f f4828a;

    C0621g(C0620f c0620f) {
        this.f4828a = c0620f;
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.f4828a.f4806d == null || ((Integer) message.obj).intValue() != this.f4828a.f4820s) {
            return;
        }
        if (message.what == 4000) {
            for (C0565h c0565h : this.f4828a.f4805c) {
                Bitmap bitmap = null;
                if (message.arg2 == 1) {
                    int[] iArr = new int[(this.f4828a.f4785G * this.f4828a.f4786H)];
                    int[] a = this.f4828a.f4806d.m6636a(new int[(this.f4828a.f4785G * this.f4828a.f4786H)], this.f4828a.f4785G, this.f4828a.f4786H);
                    for (int i = 0; i < this.f4828a.f4786H; i++) {
                        for (int i2 = 0; i2 < this.f4828a.f4785G; i2++) {
                            int i3 = a[(this.f4828a.f4785G * i) + i2];
                            iArr[(((this.f4828a.f4786H - i) - 1) * this.f4828a.f4785G) + i2] = ((i3 & -16711936) | ((i3 << 16) & 16711680)) | ((i3 >> 16) & 255);
                        }
                    }
                    bitmap = Bitmap.createBitmap(iArr, this.f4828a.f4785G, this.f4828a.f4786H, Config.ARGB_8888);
                }
                c0565h.m6285a(bitmap);
            }
        } else if (message.what == 39) {
            if (message.arg1 == 100) {
                this.f4828a.m6509F();
            } else if (message.arg1 == 200) {
                this.f4828a.m6507D();
            } else if (message.arg1 == 1) {
                this.f4828a.requestRender();
            } else if (message.arg1 == 0) {
                this.f4828a.requestRender();
                if (!(this.f4828a.m6552b() || this.f4828a.getRenderMode() == 0)) {
                    this.f4828a.setRenderMode(0);
                }
            }
            if (!this.f4828a.f4784F && this.f4828a.f4786H > 0 && this.f4828a.f4785G > 0 && this.f4828a.m6536a(0, 0) != null) {
                this.f4828a.f4784F = true;
                for (C0565h c0565h2 : this.f4828a.f4805c) {
                    c0565h2.m6291b();
                }
            }
            for (C0565h c0565h22 : this.f4828a.f4805c) {
                c0565h22.m6284a();
            }
        } else if (message.what == 41) {
            if (this.f4828a.f4802Z || this.f4828a.aa) {
                for (C0565h c0565h222 : this.f4828a.f4805c) {
                    c0565h222.m6293b(this.f4828a.m6577p());
                }
            }
        } else if (message.what == 999) {
            for (C0565h c0565h2222 : this.f4828a.f4805c) {
                c0565h2222.m6298d();
            }
        }
    }
}
