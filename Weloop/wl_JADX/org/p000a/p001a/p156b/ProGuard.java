package org.p000a.p001a.p156b;

import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.BDLocationStatusCodes;
import com.baidu.location.C0452e;
import com.baidu.location.LocationClientOption;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: org.a.a.b.m */
public class ProGuard {
    static Class f9400i;
    int f9401a;
    protected StringBuffer f9402b;
    protected int f9403c;
    protected int f9404d;
    ProGuard f9405e;
    ProGuard f9406f;
    protected ProGuard f9407g;
    protected String f9408h;

    /* renamed from: org.a.a.b.m.a */
    private static class ProGuard extends ProGuard {
        int f9390f;

        ProGuard(ProGuard proGuard, int i) {
            super(proGuard);
            this.f9390f = i;
        }

        public String m11821a(org.p000a.p001a.p002d.ProGuard proGuard) {
            switch (this.f9390f) {
                case LightAppTableDefine.Msg_Need_Clean_COUNT /*2000*/:
                    return Long.toString(proGuard.f9438d - org.p000a.p001a.p002d.ProGuard.m11883f());
                case 2001:
                    return proGuard.m11890g();
                case 2002:
                    return proGuard.m11886b().toString();
                case 2003:
                    return proGuard.m11888d();
                case 2004:
                    return proGuard.m11889e();
                default:
                    return null;
            }
        }
    }

    /* renamed from: org.a.a.b.m.h */
    private static abstract class ProGuard extends ProGuard {
        int f9391f;

        abstract String m11823b(org.p000a.p001a.p002d.ProGuard proGuard);

        ProGuard(ProGuard proGuard, int i) {
            super(proGuard);
            this.f9391f = i;
        }

        public String m11822a(org.p000a.p001a.p002d.ProGuard proGuard) {
            String b = m11823b(proGuard);
            if (this.f9391f <= 0) {
                return b;
            }
            int length = b.length();
            int i = length - 1;
            for (int i2 = this.f9391f; i2 > 0; i2--) {
                i = b.lastIndexOf(46, i - 1);
                if (i == -1) {
                    return b;
                }
            }
            return b.substring(i + 1, length);
        }
    }

    /* renamed from: org.a.a.b.m.b */
    private class ProGuard extends ProGuard {
        private final ProGuard f9392g;

        ProGuard(ProGuard proGuard, ProGuard proGuard2, int i) {
            super(proGuard2, i);
            this.f9392g = proGuard;
        }

        String m11824b(org.p000a.p001a.p002d.ProGuard proGuard) {
            return proGuard.m11887c();
        }
    }

    /* renamed from: org.a.a.b.m.c */
    private class ProGuard extends ProGuard {
        private final ProGuard f9393g;

        ProGuard(ProGuard proGuard, ProGuard proGuard2, int i) {
            super(proGuard2, i);
            this.f9393g = proGuard;
        }

        String m11825b(org.p000a.p001a.p002d.ProGuard proGuard) {
            return proGuard.m11885a().m11869a();
        }
    }

    /* renamed from: org.a.a.b.m.d */
    private static class ProGuard extends ProGuard {
        private DateFormat f9394f;
        private Date f9395g;

        ProGuard(ProGuard proGuard, DateFormat dateFormat) {
            super(proGuard);
            this.f9395g = new Date();
            this.f9394f = dateFormat;
        }

        public String m11826a(org.p000a.p001a.p002d.ProGuard proGuard) {
            this.f9395g.setTime(proGuard.f9438d);
            String str = null;
            try {
                str = this.f9394f.format(this.f9395g);
            } catch (Throwable e) {
                ProGuard.m11797a("Error occured while converting date.", e);
            }
            return str;
        }
    }

    /* renamed from: org.a.a.b.m.e */
    private static class ProGuard extends ProGuard {
        private String f9396f;

        ProGuard(String str) {
            this.f9396f = str;
        }

        public final void m11828a(StringBuffer stringBuffer, org.p000a.p001a.p002d.ProGuard proGuard) {
            stringBuffer.append(this.f9396f);
        }

        public String m11827a(org.p000a.p001a.p002d.ProGuard proGuard) {
            return this.f9396f;
        }
    }

    /* renamed from: org.a.a.b.m.f */
    private class ProGuard extends ProGuard {
        int f9397f;
        private final ProGuard f9398g;

        ProGuard(ProGuard proGuard, ProGuard proGuard2, int i) {
            super(proGuard2);
            this.f9398g = proGuard;
            this.f9397f = i;
        }

        public String m11829a(org.p000a.p001a.p002d.ProGuard proGuard) {
            org.p000a.p001a.p002d.ProGuard a = proGuard.m11885a();
            switch (this.f9397f) {
                case LocationClientOption.MIN_SCAN_SPAN /*1000*/:
                    return a.f9430e;
                case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                    return a.m11872d();
                case 1003:
                    return a.m11871c();
                case 1004:
                    return a.m11870b();
                default:
                    return null;
            }
        }
    }

    /* renamed from: org.a.a.b.m.g */
    private static class ProGuard extends ProGuard {
        private String f9399f;

        ProGuard(ProGuard proGuard, String str) {
            super(proGuard);
            this.f9399f = str;
        }

        public String m11830a(org.p000a.p001a.p002d.ProGuard proGuard) {
            Object a = proGuard.m11884a(this.f9399f);
            if (a == null) {
                return null;
            }
            return a.toString();
        }
    }

    public ProGuard(String str) {
        this.f9402b = new StringBuffer(32);
        this.f9407g = new ProGuard();
        this.f9408h = str;
        this.f9403c = str.length();
        this.f9401a = 0;
    }

    private void m11832b(ProGuard proGuard) {
        if (this.f9405e == null) {
            this.f9406f = proGuard;
            this.f9405e = proGuard;
            return;
        }
        this.f9406f.f9386a = proGuard;
        this.f9406f = proGuard;
    }

    protected String m11833a() {
        if (this.f9404d < this.f9403c && this.f9408h.charAt(this.f9404d) == '{') {
            int indexOf = this.f9408h.indexOf(125, this.f9404d);
            if (indexOf > this.f9404d) {
                String substring = this.f9408h.substring(this.f9404d + 1, indexOf);
                this.f9404d = indexOf + 1;
                return substring;
            }
        }
        return null;
    }

    protected int m11836b() {
        Throwable th;
        int i = 0;
        String a = m11833a();
        if (a == null) {
            return 0;
        }
        try {
            int parseInt = Integer.parseInt(a);
            if (parseInt > 0) {
                return parseInt;
            }
            try {
                ProGuard.m11799b(new StringBuffer().append("Precision option (").append(a).append(") isn't a positive integer.").toString());
                return 0;
            } catch (Throwable e) {
                Throwable th2 = e;
                i = parseInt;
                th = th2;
            }
        } catch (NumberFormatException e2) {
            th = e2;
            ProGuard.m11797a(new StringBuffer().append("Category option \"").append(a).append("\" not a decimal integer.").toString(), th);
            return i;
        }
    }

    public ProGuard m11837c() {
        this.f9404d = 0;
        while (this.f9404d < this.f9403c) {
            String str = this.f9408h;
            int i = this.f9404d;
            this.f9404d = i + 1;
            char charAt = str.charAt(i);
            switch (this.f9401a) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    if (this.f9404d != this.f9403c) {
                        if (charAt != '%') {
                            this.f9402b.append(charAt);
                            break;
                        }
                        switch (this.f9408h.charAt(this.f9404d)) {
                            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionModeFindDrawable /*37*/:
                                this.f9402b.append(charAt);
                                this.f9404d++;
                                break;
                            case C0452e.f3847m /*110*/:
                                this.f9402b.append(org.p000a.p001a.ProGuard.f9473a);
                                this.f9404d++;
                                break;
                            default:
                                if (this.f9402b.length() != 0) {
                                    m11832b(new ProGuard(this.f9402b.toString()));
                                }
                                this.f9402b.setLength(0);
                                this.f9402b.append(charAt);
                                this.f9401a = 1;
                                this.f9407g.m11790a();
                                break;
                        }
                    }
                    this.f9402b.append(charAt);
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f9402b.append(charAt);
                    switch (charAt) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_actionDropDownStyle /*45*/:
                            this.f9407g.f9365c = true;
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_dropdownListPreferredItemHeight /*46*/:
                            this.f9401a = 3;
                            break;
                        default:
                            if (charAt >= '0' && charAt <= '9') {
                                this.f9407g.f9363a = charAt - 48;
                                this.f9401a = 4;
                                break;
                            }
                            m11834a(charAt);
                            break;
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f9402b.append(charAt);
                    if (charAt >= '0' && charAt <= '9') {
                        this.f9407g.f9364b = charAt - 48;
                        this.f9401a = 5;
                        break;
                    }
                    ProGuard.m11799b(new StringBuffer().append("Error occured in position ").append(this.f9404d).append(".\n Was expecting digit, instead got char \"").append(charAt).append("\".").toString());
                    this.f9401a = 0;
                    break;
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f9402b.append(charAt);
                    if (charAt < '0' || charAt > '9') {
                        if (charAt != '.') {
                            m11834a(charAt);
                            break;
                        }
                        this.f9401a = 3;
                        break;
                    }
                    this.f9407g.f9363a = (charAt - 48) + (this.f9407g.f9363a * 10);
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f9402b.append(charAt);
                    if (charAt >= '0' && charAt <= '9') {
                        this.f9407g.f9364b = (charAt - 48) + (this.f9407g.f9364b * 10);
                        break;
                    }
                    m11834a(charAt);
                    this.f9401a = 0;
                    break;
                    break;
                default:
                    break;
            }
        }
        if (this.f9402b.length() != 0) {
            m11832b(new ProGuard(this.f9402b.toString()));
        }
        return this.f9405e;
    }

    protected void m11834a(char c) {
        ProGuard proGuard;
        switch (c) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_listPreferredItemHeight /*67*/:
                proGuard = new ProGuard(this, this.f9407g, m11836b());
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_listPreferredItemPaddingLeft /*70*/:
                proGuard = new ProGuard(this, this.f9407g, 1004);
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_panelBackground /*76*/:
                proGuard = new ProGuard(this, this.f9407g, 1003);
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_panelMenuListWidth /*77*/:
                proGuard = new ProGuard(this, this.f9407g, BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES);
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_alertDialogStyle /*88*/:
                proGuard = new ProGuard(this.f9407g, m11833a());
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_checkboxStyle /*99*/:
                proGuard = new ProGuard(this, this.f9407g, m11836b());
                this.f9402b.setLength(0);
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_checkedTextViewStyle /*100*/:
                DateFormat proGuard2;
                String str = "ISO8601";
                String a = m11833a();
                if (a == null) {
                    a = str;
                }
                if (a.equalsIgnoreCase("ISO8601")) {
                    proGuard2 = new ProGuard();
                } else if (a.equalsIgnoreCase("ABSOLUTE")) {
                    proGuard2 = new ProGuard();
                } else if (a.equalsIgnoreCase("DATE")) {
                    proGuard2 = new ProGuard();
                } else {
                    try {
                        proGuard2 = new SimpleDateFormat(a);
                    } catch (Throwable e) {
                        Class a2;
                        ProGuard.m11797a(new StringBuffer().append("Could not instantiate SimpleDateFormat with ").append(a).toString(), e);
                        str = "org.apache.log4j.helpers.ISO8601DateFormat";
                        if (f9400i == null) {
                            a2 = ProGuard.m11831a("java.text.DateFormat");
                            f9400i = a2;
                        } else {
                            a2 = f9400i;
                        }
                        proGuard2 = (DateFormat) ProGuard.m11810a(str, a2, null);
                    }
                }
                ProGuard proGuard3 = new ProGuard(this.f9407g, proGuard2);
                this.f9402b.setLength(0);
                proGuard = proGuard3;
                break;
            case 'l':
                proGuard = new ProGuard(this, this.f9407g, LocationClientOption.MIN_SCAN_SPAN);
                this.f9402b.setLength(0);
                break;
            case 'm':
                proGuard = new ProGuard(this.f9407g, 2004);
                this.f9402b.setLength(0);
                break;
            case 'p':
                proGuard = new ProGuard(this.f9407g, 2002);
                this.f9402b.setLength(0);
                break;
            case 'r':
                proGuard = new ProGuard(this.f9407g, LightAppTableDefine.Msg_Need_Clean_COUNT);
                this.f9402b.setLength(0);
                break;
            case 't':
                proGuard = new ProGuard(this.f9407g, 2001);
                this.f9402b.setLength(0);
                break;
            case 'x':
                proGuard = new ProGuard(this.f9407g, 2003);
                this.f9402b.setLength(0);
                break;
            default:
                ProGuard.m11799b(new StringBuffer().append("Unexpected char [").append(c).append("] at position ").append(this.f9404d).append(" in conversion patterrn.").toString());
                proGuard = new ProGuard(this.f9402b.toString());
                this.f9402b.setLength(0);
                break;
        }
        m11835a(proGuard);
    }

    static Class m11831a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    protected void m11835a(ProGuard proGuard) {
        this.f9402b.setLength(0);
        m11832b(proGuard);
        this.f9401a = 0;
        this.f9407g.m11790a();
    }
}
