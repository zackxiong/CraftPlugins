package com.p032a.p033a.p034a.p035a;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.tencent.mm.sdk.modelpay.PayReq.Options;
import java.io.IOException;

/* renamed from: com.a.a.a.a.ad */
public class ad extends Exception {
    private Throwable f2154a;

    ad(ac acVar, Exception exception) {
        super(new StringBuffer().append(acVar).append(" ").append(exception).toString());
        this.f2154a = null;
        this.f2154a = exception;
    }

    public ad(ac acVar, String str) {
        super(new StringBuffer().append(acVar).append(" ").append(str).toString());
        this.f2154a = null;
    }

    ad(ac acVar, String str, C0113s c0113s, String str2) {
        this(acVar, new StringBuffer().append(str).append(" got \"").append(ad.m3367a(c0113s)).append("\" instead of expected ").append(str2).toString());
    }

    private static String m3367a(C0113s c0113s) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(ad.m3368b(c0113s));
            if (c0113s.f2162a != -1) {
                c0113s.m3390a();
                stringBuffer.append(ad.m3368b(c0113s));
                c0113s.m3393b();
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            return new StringBuffer().append("(cannot get  info: ").append(e).append(")").toString();
        }
    }

    private static String m3368b(C0113s c0113s) {
        switch (c0113s.f2162a) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
                return c0113s.f2164c;
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                return new StringBuffer().append(c0113s.f2163b).append("").toString();
            case Options.INVALID_FLAGS /*-1*/:
                return "<end of expression>";
            default:
                return new StringBuffer().append((char) c0113s.f2162a).append("").toString();
        }
    }

    public Throwable getCause() {
        return this.f2154a;
    }
}
