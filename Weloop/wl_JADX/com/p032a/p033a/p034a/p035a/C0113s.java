package com.p032a.p033a.p034a.p035a;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.tencent.mm.sdk.modelpay.PayReq.Options;
import com.umeng.update.util.ProGuard;
import java.io.IOException;
import java.io.Reader;

/* renamed from: com.a.a.a.a.s */
public class C0113s {
    public int f2162a;
    public int f2163b;
    public String f2164c;
    private final StringBuffer f2165d;
    private int f2166e;
    private final Reader f2167f;
    private final int[] f2168g;
    private boolean f2169h;
    private char f2170i;

    public C0113s(Reader reader) {
        int i = 0;
        this.f2162a = Integer.MIN_VALUE;
        this.f2163b = Integer.MIN_VALUE;
        this.f2164c = "";
        this.f2165d = new StringBuffer();
        this.f2168g = new int[ProGuard.f5669b];
        this.f2169h = false;
        this.f2170i = '\u0000';
        this.f2167f = reader;
        while (i < this.f2168g.length) {
            if ((65 <= i && i <= 90) || ((97 <= i && i <= 122) || i == 45)) {
                this.f2168g[i] = -3;
            } else if (48 <= i && i <= 57) {
                this.f2168g[i] = -2;
            } else if (i < 0 || i > 32) {
                this.f2168g[i] = i;
            } else {
                this.f2168g[i] = -5;
            }
            i = (char) (i + 1);
        }
        m3390a();
    }

    public int m3390a() {
        if (this.f2169h) {
            this.f2169h = false;
            return this.f2162a;
        }
        this.f2162a = this.f2166e;
        boolean z;
        do {
            char c;
            int i;
            boolean z2 = false;
            int i2;
            do {
                int read = this.f2167f.read();
                if (read != -1) {
                    c = this.f2168g[read];
                } else if (this.f2170i != '\u0000') {
                    throw new IOException("Unterminated quote");
                } else {
                    c = '\uffff';
                }
                if (this.f2170i == '\u0000' && c == '\ufffb') {
                    i2 = 1;
                } else {
                    z = false;
                }
                if (z2 || i2 != 0) {
                    z2 = true;
                    continue;
                } else {
                    z2 = false;
                    continue;
                }
            } while (i2 != 0);
            if (c == '\'' || c == '\"') {
                if (this.f2170i == '\u0000') {
                    this.f2170i = (char) c;
                } else if (this.f2170i == c) {
                    this.f2170i = '\u0000';
                }
            }
            if (this.f2170i != '\u0000') {
                i = this.f2170i;
            }
            z = z2 || !((this.f2162a < -1 || this.f2162a == 39 || this.f2162a == 34) && this.f2162a == i);
            if (z) {
                switch (this.f2162a) {
                    case ErrCode.ERR_SENT_FAILED /*-3*/:
                        this.f2164c = this.f2165d.toString();
                        this.f2165d.setLength(0);
                        break;
                    case ErrCode.ERR_USER_CANCEL /*-2*/:
                        this.f2163b = Integer.parseInt(this.f2165d.toString());
                        this.f2165d.setLength(0);
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePasteDrawable /*34*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePopupWindowStyle /*39*/:
                        this.f2164c = this.f2165d.toString().substring(1, this.f2165d.length() - 1);
                        this.f2165d.setLength(0);
                        break;
                }
                if (i != -5) {
                    this.f2166e = i == -6 ? read : i;
                }
            }
            switch (i) {
                case ErrCode.ERR_SENT_FAILED /*-3*/:
                case ErrCode.ERR_USER_CANCEL /*-2*/:
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePasteDrawable /*34*/:
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePopupWindowStyle /*39*/:
                    this.f2165d.append((char) read);
                    continue;
                default:
                    break;
            }
        } while (!z);
        return this.f2162a;
    }

    public void m3391a(char c) {
        this.f2168g[c] = c;
    }

    public void m3392a(char c, char c2) {
        while (c <= c2) {
            this.f2168g[c] = -3;
            c = (char) (c + 1);
        }
    }

    public void m3393b() {
        this.f2169h = true;
    }

    public String toString() {
        switch (this.f2162a) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePasteDrawable /*34*/:
                return new StringBuffer().append("\"").append(this.f2164c).append("\"").toString();
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                return Integer.toString(this.f2163b);
            case Options.INVALID_FLAGS /*-1*/:
                return "(EOF)";
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModePopupWindowStyle /*39*/:
                return new StringBuffer().append("'").append(this.f2164c).append("'").toString();
            default:
                return new StringBuffer().append("'").append((char) this.f2162a).append("'").toString();
        }
    }
}
