package com.baidu.platform.comapi.map;

import android.os.Bundle;
import com.baidu.platform.comapi.p086a.C0597c;

/* renamed from: com.baidu.platform.comapi.map.z */
public class C0639z {
    private static final String f4881t;
    public float f4882a;
    public int f4883b;
    public int f4884c;
    public double f4885d;
    public double f4886e;
    public int f4887f;
    public int f4888g;
    public long f4889h;
    public long f4890i;
    public C0638b f4891j;
    public C0637a f4892k;
    public boolean f4893l;
    public double f4894m;
    public double f4895n;
    public int f4896o;
    public String f4897p;
    public float f4898q;
    public boolean f4899r;
    public int f4900s;

    /* renamed from: com.baidu.platform.comapi.map.z.a */
    public class C0637a {
        public long f4867a;
        public long f4868b;
        public long f4869c;
        public long f4870d;
        public C0597c f4871e;
        public C0597c f4872f;
        public C0597c f4873g;
        public C0597c f4874h;
        final /* synthetic */ C0639z f4875i;

        public C0637a(C0639z c0639z) {
            this.f4875i = c0639z;
            this.f4867a = 0;
            this.f4868b = 0;
            this.f4869c = 0;
            this.f4870d = 0;
            this.f4871e = new C0597c(0, 0);
            this.f4872f = new C0597c(0, 0);
            this.f4873g = new C0597c(0, 0);
            this.f4874h = new C0597c(0, 0);
        }
    }

    /* renamed from: com.baidu.platform.comapi.map.z.b */
    public class C0638b {
        public int f4876a;
        public int f4877b;
        public int f4878c;
        public int f4879d;
        final /* synthetic */ C0639z f4880e;

        public C0638b(C0639z c0639z) {
            this.f4880e = c0639z;
            this.f4876a = 0;
            this.f4877b = 0;
            this.f4878c = 0;
            this.f4879d = 0;
        }
    }

    static {
        f4881t = C0639z.class.getSimpleName();
    }

    public C0639z() {
        this.f4882a = 12.0f;
        this.f4883b = 0;
        this.f4884c = 0;
        this.f4885d = 1.2958162E7d;
        this.f4886e = 4825907.0d;
        this.f4889h = 0;
        this.f4890i = 0;
        this.f4887f = -1;
        this.f4888g = -1;
        this.f4891j = new C0638b(this);
        this.f4892k = new C0637a(this);
        this.f4893l = false;
    }

    public Bundle m6616a(C0620f c0620f) {
        int i = 1;
        if (this.f4882a < c0620f.f4804b) {
            this.f4882a = c0620f.f4804b;
        }
        if (this.f4882a > c0620f.f4803a) {
            this.f4882a = c0620f.f4803a;
        }
        while (this.f4883b < 0) {
            this.f4883b += 360;
        }
        this.f4883b %= 360;
        if (this.f4884c > 0) {
            this.f4884c = 0;
        }
        if (this.f4884c < -45) {
            this.f4884c = -45;
        }
        Bundle bundle = new Bundle();
        bundle.putDouble("level", (double) this.f4882a);
        bundle.putDouble("rotation", (double) this.f4883b);
        bundle.putDouble("overlooking", (double) this.f4884c);
        bundle.putDouble("centerptx", this.f4885d);
        bundle.putDouble("centerpty", this.f4886e);
        bundle.putInt("left", this.f4891j.f4876a);
        bundle.putInt("right", this.f4891j.f4877b);
        bundle.putInt("top", this.f4891j.f4878c);
        bundle.putInt("bottom", this.f4891j.f4879d);
        if (this.f4887f >= 0 && this.f4888g >= 0 && this.f4887f <= this.f4891j.f4877b && this.f4888g <= this.f4891j.f4879d && this.f4891j.f4877b > 0 && this.f4891j.f4879d > 0) {
            int i2 = this.f4888g - ((this.f4891j.f4879d - this.f4891j.f4878c) / 2);
            this.f4889h = (long) (this.f4887f - ((this.f4891j.f4877b - this.f4891j.f4876a) / 2));
            this.f4890i = (long) (-i2);
            bundle.putLong("xoffset", this.f4889h);
            bundle.putLong("yoffset", this.f4890i);
        }
        bundle.putInt("lbx", this.f4892k.f4871e.f4674a);
        bundle.putInt("lby", this.f4892k.f4871e.f4675b);
        bundle.putInt("ltx", this.f4892k.f4872f.f4674a);
        bundle.putInt("lty", this.f4892k.f4872f.f4675b);
        bundle.putInt("rtx", this.f4892k.f4873g.f4674a);
        bundle.putInt("rty", this.f4892k.f4873g.f4675b);
        bundle.putInt("rbx", this.f4892k.f4874h.f4674a);
        bundle.putInt("rby", this.f4892k.f4874h.f4675b);
        bundle.putInt("bfpp", this.f4893l ? 1 : 0);
        bundle.putInt("animation", 1);
        bundle.putInt("animatime", this.f4896o);
        bundle.putString("panoid", this.f4897p);
        bundle.putInt("autolink", 0);
        bundle.putFloat("siangle", this.f4898q);
        String str = "isbirdeye";
        if (!this.f4899r) {
            i = 0;
        }
        bundle.putInt(str, i);
        bundle.putInt("ssext", this.f4900s);
        return bundle;
    }

    public void m6617a(Bundle bundle) {
        boolean z = true;
        this.f4882a = (float) bundle.getDouble("level");
        this.f4883b = (int) bundle.getDouble("rotation");
        this.f4884c = (int) bundle.getDouble("overlooking");
        this.f4885d = bundle.getDouble("centerptx");
        this.f4886e = bundle.getDouble("centerpty");
        this.f4891j.f4876a = bundle.getInt("left");
        this.f4891j.f4877b = bundle.getInt("right");
        this.f4891j.f4878c = bundle.getInt("top");
        this.f4891j.f4879d = bundle.getInt("bottom");
        this.f4889h = bundle.getLong("xoffset");
        this.f4890i = bundle.getLong("yoffset");
        if (!(this.f4891j.f4877b == 0 || this.f4891j.f4879d == 0)) {
            int i = (this.f4891j.f4879d - this.f4891j.f4878c) / 2;
            int i2 = (int) (-this.f4890i);
            this.f4887f = ((this.f4891j.f4877b - this.f4891j.f4876a) / 2) + ((int) this.f4889h);
            this.f4888g = i2 + i;
        }
        this.f4892k.f4867a = bundle.getLong("gleft");
        this.f4892k.f4868b = bundle.getLong("gright");
        this.f4892k.f4869c = bundle.getLong("gtop");
        this.f4892k.f4870d = bundle.getLong("gbottom");
        if (this.f4892k.f4867a <= -20037508) {
            this.f4892k.f4867a = -20037508;
        }
        if (this.f4892k.f4868b >= 20037508) {
            this.f4892k.f4868b = 20037508;
        }
        if (this.f4892k.f4869c >= 20037508) {
            this.f4892k.f4869c = 20037508;
        }
        if (this.f4892k.f4870d <= -20037508) {
            this.f4892k.f4870d = -20037508;
        }
        this.f4892k.f4871e.f4674a = bundle.getInt("lbx");
        this.f4892k.f4871e.f4675b = bundle.getInt("lby");
        this.f4892k.f4872f.f4674a = bundle.getInt("ltx");
        this.f4892k.f4872f.f4675b = bundle.getInt("lty");
        this.f4892k.f4873g.f4674a = bundle.getInt("rtx");
        this.f4892k.f4873g.f4675b = bundle.getInt("rty");
        this.f4892k.f4874h.f4674a = bundle.getInt("rbx");
        this.f4892k.f4874h.f4675b = bundle.getInt("rby");
        this.f4893l = bundle.getInt("bfpp") == 1;
        this.f4894m = bundle.getDouble("adapterzoomunit");
        this.f4895n = bundle.getDouble("zoomunit");
        this.f4897p = bundle.getString("panoid");
        this.f4898q = bundle.getFloat("siangle");
        if (bundle.getInt("isbirdeye") == 0) {
            z = false;
        }
        this.f4899r = z;
        this.f4900s = bundle.getInt("ssext");
    }
}
