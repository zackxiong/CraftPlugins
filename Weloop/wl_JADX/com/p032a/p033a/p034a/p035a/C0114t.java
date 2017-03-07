package com.p032a.p033a.p034a.p035a;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.a.a.a.a.t */
public class C0114t {
    public static C0114t f2171a;
    private final C0095o f2172b;
    private final C0097k f2173c;
    private final boolean f2174d;

    static {
        f2171a = new C0114t(C0120z.f2178a, aa.f2149a);
    }

    C0114t(ac acVar, boolean z, C0113s c0113s) {
        this.f2174d = z;
        switch (c0113s.f2162a) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
                if (c0113s.f2164c.equals("text")) {
                    if (c0113s.m3390a() == 40 && c0113s.m3390a() == 41) {
                        this.f2172b = C0119y.f2177a;
                        break;
                    }
                    throw new ad(acVar, "after text", c0113s, "()");
                }
                this.f2172b = new C0109m(c0113s.f2164c);
                break;
                break;
            case ProGuard.styleable.Theme_dialogTheme /*42*/:
                this.f2172b = C0096a.f2148a;
                break;
            case ProGuard.styleable.Theme_dropdownListPreferredItemHeight /*46*/:
                if (c0113s.m3390a() != 46) {
                    c0113s.m3393b();
                    this.f2172b = C0120z.f2178a;
                    break;
                }
                this.f2172b = C0111q.f2160a;
                break;
            case ProGuard.styleable.Theme_textAppearanceSearchResultSubtitle /*64*/:
                if (c0113s.m3390a() == -3) {
                    this.f2172b = new C0108j(c0113s.f2164c);
                    break;
                }
                throw new ad(acVar, "after @ in node test", c0113s, "name");
            default:
                throw new ad(acVar, "at begininning of step", c0113s, "'.' or '*' or name");
        }
        if (c0113s.m3390a() == 91) {
            c0113s.m3390a();
            this.f2173c = C0110n.m3385a(acVar, c0113s);
            if (c0113s.f2162a != 93) {
                throw new ad(acVar, "after predicate expression", c0113s, "]");
            }
            c0113s.m3390a();
            return;
        }
        this.f2173c = aa.f2149a;
    }

    C0114t(C0095o c0095o, C0097k c0097k) {
        this.f2172b = c0095o;
        this.f2173c = c0097k;
        this.f2174d = false;
    }

    public boolean m3394a() {
        return this.f2174d;
    }

    public boolean m3395b() {
        return this.f2172b.m3341a();
    }

    public C0095o m3396c() {
        return this.f2172b;
    }

    public C0097k m3397d() {
        return this.f2173c;
    }

    public String toString() {
        return new StringBuffer().append(this.f2172b.toString()).append(this.f2173c.toString()).toString();
    }
}
