package com.p032a.p033a.p034a.p035a;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.a.a.a.a.n */
public class C0110n {
    static C0097k m3385a(ac acVar, C0113s c0113s) {
        String str;
        switch (c0113s.f2162a) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
                if (!c0113s.f2164c.equals("text")) {
                    throw new ad(acVar, "at beginning of expression", c0113s, "text()");
                } else if (c0113s.m3390a() != 40) {
                    throw new ad(acVar, "after text", c0113s, "(");
                } else if (c0113s.m3390a() != 41) {
                    throw new ad(acVar, "after text(", c0113s, ")");
                } else {
                    switch (c0113s.m3390a()) {
                        case ProGuard.styleable.Theme_actionModeCopyDrawable /*33*/:
                            c0113s.m3390a();
                            if (c0113s.f2162a != 61) {
                                throw new ad(acVar, "after !", c0113s, "=");
                            }
                            c0113s.m3390a();
                            if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                                str = c0113s.f2164c;
                                c0113s.m3390a();
                                return new C0118x(str);
                            }
                            throw new ad(acVar, "right hand side of !=", c0113s, "quoted string");
                        case ProGuard.styleable.Theme_editTextColor /*61*/:
                            c0113s.m3390a();
                            if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                                str = c0113s.f2164c;
                                c0113s.m3390a();
                                return new C0116v(str);
                            }
                            throw new ad(acVar, "right hand side of equals", c0113s, "quoted string");
                        default:
                            return C0117w.f2176a;
                    }
                }
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                int i = c0113s.f2163b;
                c0113s.m3390a();
                return new C0112r(i);
            case ProGuard.styleable.Theme_textAppearanceSearchResultSubtitle /*64*/:
                if (c0113s.m3390a() != -3) {
                    throw new ad(acVar, "after @", c0113s, "name");
                }
                String str2 = c0113s.f2164c;
                int parseInt;
                switch (c0113s.m3390a()) {
                    case ProGuard.styleable.Theme_actionModeCopyDrawable /*33*/:
                        c0113s.m3390a();
                        if (c0113s.f2162a != 61) {
                            throw new ad(acVar, "after !", c0113s, "=");
                        }
                        c0113s.m3390a();
                        if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                            str = c0113s.f2164c;
                            c0113s.m3390a();
                            return new C0107h(str2, str);
                        }
                        throw new ad(acVar, "right hand side of !=", c0113s, "quoted string");
                    case ProGuard.styleable.Theme_popupWindowStyle /*60*/:
                        c0113s.m3390a();
                        if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                            parseInt = Integer.parseInt(c0113s.f2164c);
                        } else if (c0113s.f2162a == -2) {
                            parseInt = c0113s.f2163b;
                        } else {
                            throw new ad(acVar, "right hand side of less-than", c0113s, "quoted string or number");
                        }
                        c0113s.m3390a();
                        return new C0106g(str2, parseInt);
                    case ProGuard.styleable.Theme_editTextColor /*61*/:
                        c0113s.m3390a();
                        if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                            str = c0113s.f2164c;
                            c0113s.m3390a();
                            return new C0102c(str2, str);
                        }
                        throw new ad(acVar, "right hand side of equals", c0113s, "quoted string");
                    case ProGuard.styleable.Theme_editTextBackground /*62*/:
                        c0113s.m3390a();
                        if (c0113s.f2162a == 34 || c0113s.f2162a == 39) {
                            parseInt = Integer.parseInt(c0113s.f2164c);
                        } else if (c0113s.f2162a == -2) {
                            parseInt = c0113s.f2163b;
                        } else {
                            throw new ad(acVar, "right hand side of greater-than", c0113s, "quoted string or number");
                        }
                        c0113s.m3390a();
                        return new C0105f(str2, parseInt);
                    default:
                        return new C0103d(str2);
                }
            default:
                throw new ad(acVar, "at beginning of expression", c0113s, "@, number, or text()");
        }
    }
}
