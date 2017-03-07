package com.p032a.p033a.p034a;

import com.umeng.update.util.ProGuard;
import java.io.Reader;
import java.util.Hashtable;

/* renamed from: com.a.a.a.l */
class C0137l implements C0121p {
    private static final char[] f2222c;
    private static final boolean[] f2223d;
    private static final char[] f2224e;
    private static final char[] f2225f;
    private static final char[] f2226g;
    private static final char[] f2227h;
    private static final char[] f2228i;
    private static final char[] f2229j;
    private static final char[] f2230k;
    private static final char[] f2231l;
    private static final char[] f2232m;
    private static final char[] f2233n;
    private static final char[] f2234o;
    private static final char[] f2235p;
    private static final char[] f2236q;
    private static final char[] f2237r;
    private static final char[] f2238s;
    private static final char[] f2239t;
    private static final char[] f2240u;
    private static final char[] f2241v;
    private static final char[] f2242w;
    private final Hashtable f2243A;
    private final Hashtable f2244B;
    private final C0126o f2245C;
    private final String f2246D;
    private int f2247E;
    private boolean f2248F;
    private final int f2249G;
    private final char[] f2250H;
    private int f2251I;
    private int f2252J;
    private boolean f2253K;
    private final char[] f2254L;
    private int f2255M;
    private final C0125b f2256N;
    private final C0123n f2257O;
    private String f2258x;
    private String f2259y;
    private final Reader f2260z;

    static {
        f2222c = new char[]{'.', '-', '_', ':'};
        f2223d = new boolean[ProGuard.f5670c];
        for (char c = '\u0000'; c < '\u0080'; c = (char) (c + 1)) {
            f2223d[c] = C0137l.m3520d(c);
        }
        f2224e = "<!--".toCharArray();
        f2225f = "-->".toCharArray();
        f2226g = "<?".toCharArray();
        f2227h = "?>".toCharArray();
        f2228i = "<!DOCTYPE".toCharArray();
        f2229j = "<?xml".toCharArray();
        f2230k = "encoding".toCharArray();
        f2231l = "version".toCharArray();
        f2232m = new char[]{'_', '.', ':', '-'};
        f2233n = "<!".toCharArray();
        f2234o = "&#".toCharArray();
        f2235p = "<!ENTITY".toCharArray();
        f2236q = "NDATA".toCharArray();
        f2237r = "SYSTEM".toCharArray();
        f2238s = "PUBLIC".toCharArray();
        f2239t = "<![CDATA[".toCharArray();
        f2240u = "]]>".toCharArray();
        f2241v = "/>".toCharArray();
        f2242w = "</".toCharArray();
    }

    public C0137l(String str, Reader reader, C0126o c0126o, String str2, C0123n c0123n) {
        this(str, reader, null, c0126o, str2, c0123n);
    }

    public C0137l(String str, Reader reader, char[] cArr, C0126o c0126o, String str2, C0123n c0123n) {
        this.f2259y = null;
        this.f2243A = new Hashtable();
        this.f2244B = new Hashtable();
        this.f2247E = -2;
        this.f2248F = false;
        this.f2249G = 1024;
        this.f2251I = 0;
        this.f2252J = 0;
        this.f2253K = false;
        this.f2254L = new char[255];
        this.f2255M = -1;
        this.f2255M = 1;
        this.f2256N = null;
        if (c0126o == null) {
            c0126o = C0121p.f2179a;
        }
        this.f2245C = c0126o;
        this.f2246D = str2 == null ? null : str2.toLowerCase();
        this.f2243A.put("lt", "<");
        this.f2243A.put("gt", ">");
        this.f2243A.put("amp", "&");
        this.f2243A.put("apos", "'");
        this.f2243A.put("quot", "\"");
        if (cArr != null) {
            this.f2250H = cArr;
            this.f2251I = 0;
            this.f2252J = this.f2250H.length;
            this.f2253K = true;
            this.f2260z = null;
        } else {
            this.f2260z = reader;
            this.f2250H = new char[1024];
            m3522f();
        }
        this.f2258x = str;
        this.f2257O = c0123n;
        this.f2257O.m3408a((C0121p) this);
        m3540x();
        this.f2257O.m3410b();
        C0131f Z = m3505Z();
        if (!(this.f2259y == null || this.f2259y.equals(Z.m3454a()))) {
            this.f2245C.m3421b(new StringBuffer().append("DOCTYPE name \"").append(this.f2259y).append("\" not same as tag name, \"").append(Z.m3454a()).append("\" of root element").toString(), this.f2258x, m3544b());
        }
        while (m3534r()) {
            m3535s();
        }
        if (this.f2260z != null) {
            this.f2260z.close();
        }
        this.f2257O.m3412c();
    }

    private boolean m3480A() {
        return m3517b(f2229j);
    }

    private boolean m3481B() {
        return m3517b(f2230k);
    }

    private String m3482C() {
        m3510a(f2230k);
        m3484E();
        char a = m3506a('\'', '\"');
        StringBuffer stringBuffer = new StringBuffer();
        while (!m3514b(a)) {
            stringBuffer.append(m3523g());
        }
        m3509a(a);
        return stringBuffer.toString();
    }

    private void m3483D() {
        m3525i();
        m3510a(f2231l);
        m3484E();
        char a = m3506a('\'', '\"');
        m3486G();
        m3509a(a);
    }

    private final void m3484E() {
        if (m3526j()) {
            m3525i();
        }
        m3509a('=');
        if (m3526j()) {
            m3525i();
        }
    }

    private boolean m3485F() {
        char h = m3524h();
        return Character.isDigit(h) || (('a' <= h && h <= 'z') || (('Z' <= h && h <= 'Z') || C0137l.m3511a(h, f2232m)));
    }

    private void m3486G() {
        m3523g();
        while (m3485F()) {
            m3523g();
        }
    }

    private void m3487H() {
        m3510a(f2228i);
        m3525i();
        this.f2259y = m3528l();
        if (m3526j()) {
            m3525i();
            if (!(m3514b('>') || m3514b('['))) {
                this.f2248F = true;
                m3499T();
                if (m3526j()) {
                    m3525i();
                }
            }
        }
        if (m3514b('[')) {
            m3523g();
            while (!m3514b(']')) {
                if (m3489J()) {
                    m3488I();
                } else {
                    m3490K();
                }
            }
            m3509a(']');
            if (m3526j()) {
                m3525i();
            }
        }
        m3509a('>');
    }

    private void m3488I() {
        if (m3496Q()) {
            m3495P();
        } else {
            m3525i();
        }
    }

    private boolean m3489J() {
        return m3496Q() || m3526j();
    }

    private void m3490K() {
        if (m3539w()) {
            m3538v();
        } else if (m3537u()) {
            m3536t();
        } else if (m3498S()) {
            m3497R();
        } else if (m3517b(f2233n)) {
            while (!m3514b('>')) {
                if (m3515b('\'', '\"')) {
                    char g = m3523g();
                    while (!m3514b(g)) {
                        m3523g();
                    }
                    m3509a(g);
                } else {
                    m3523g();
                }
            }
            m3509a('>');
        } else {
            throw new C0133m(this, "expecting processing instruction, comment, or \"<!\"");
        }
    }

    private char m3491L() {
        m3510a(f2234o);
        Object obj = 10;
        if (m3514b('x')) {
            m3523g();
            obj = 16;
        }
        int i = 0;
        while (!m3514b(';')) {
            int i2 = i + 1;
            this.f2254L[i] = m3523g();
            if (i2 >= 255) {
                this.f2245C.m3421b("Tmp buffer overflow on readCharRef", this.f2258x, m3544b());
                return ' ';
            }
            i = i2;
        }
        m3509a(';');
        String str = new String(this.f2254L, 0, i);
        try {
            return (char) Integer.parseInt(str, obj);
        } catch (NumberFormatException e) {
            this.f2245C.m3421b(new StringBuffer().append("\"").append(str).append("\" is not a valid ").append(obj == 16 ? "hexadecimal" : "decimal").append(" number").toString(), this.f2258x, m3544b());
            return ' ';
        }
    }

    private final char[] m3492M() {
        if (!m3517b(f2234o)) {
            return m3494O().toCharArray();
        }
        return new char[]{m3491L()};
    }

    private final boolean m3493N() {
        return m3514b('&');
    }

    private String m3494O() {
        m3509a('&');
        String l = m3528l();
        String str = (String) this.f2243A.get(l);
        if (str == null) {
            str = "";
            if (this.f2248F) {
                this.f2245C.m3421b(new StringBuffer().append("&").append(l).append("; not found -- possibly defined in external DTD)").toString(), this.f2258x, m3544b());
            } else {
                this.f2245C.m3421b(new StringBuffer().append("No declaration of &").append(l).append(";").toString(), this.f2258x, m3544b());
            }
        }
        m3509a(';');
        return str;
    }

    private String m3495P() {
        m3509a('%');
        String l = m3528l();
        String str = (String) this.f2244B.get(l);
        if (str == null) {
            str = "";
            this.f2245C.m3421b(new StringBuffer().append("No declaration of %").append(l).append(";").toString(), this.f2258x, m3544b());
        }
        m3509a(';');
        return str;
    }

    private boolean m3496Q() {
        return m3514b('%');
    }

    private void m3497R() {
        m3510a(f2235p);
        m3525i();
        String l;
        if (m3514b('%')) {
            m3509a('%');
            m3525i();
            l = m3528l();
            m3525i();
            this.f2244B.put(l, m3531o() ? m3530n() : m3499T());
        } else {
            Object n;
            l = m3528l();
            m3525i();
            if (m3531o()) {
                n = m3530n();
            } else if (m3500U()) {
                n = m3499T();
                if (m3526j()) {
                    m3525i();
                }
                if (m3517b(f2236q)) {
                    m3510a(f2236q);
                    m3525i();
                    m3528l();
                }
            } else {
                throw new C0133m(this, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration");
            }
            this.f2243A.put(l, n);
        }
        if (m3526j()) {
            m3525i();
        }
        m3509a('>');
    }

    private boolean m3498S() {
        return m3517b(f2235p);
    }

    private String m3499T() {
        if (m3517b(f2237r)) {
            m3510a(f2237r);
        } else if (m3517b(f2238s)) {
            m3510a(f2238s);
            m3525i();
            m3533q();
        } else {
            throw new C0133m(this, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID");
        }
        m3525i();
        m3532p();
        return "(WARNING: external ID not read)";
    }

    private boolean m3500U() {
        return m3517b(f2237r) || m3517b(f2238s);
    }

    private String m3501V() {
        char a = m3506a('\'', '\"');
        StringBuffer stringBuffer = new StringBuffer();
        while (!m3514b(a)) {
            if (m3493N()) {
                stringBuffer.append(m3492M());
            } else {
                stringBuffer.append(m3523g());
            }
        }
        m3509a(a);
        return stringBuffer.toString();
    }

    private void m3502W() {
        int i = 0;
        while (!m3514b('<') && !m3514b('&') && !m3517b(f2240u)) {
            this.f2254L[i] = m3523g();
            if (this.f2254L[i] == '\r' && m3524h() == '\n') {
                this.f2254L[i] = m3523g();
            }
            i++;
            if (i == 255) {
                this.f2257O.m3409a(this.f2254L, 0, 255);
                i = 0;
            }
        }
        if (i > 0) {
            this.f2257O.m3409a(this.f2254L, 0, i);
        }
    }

    private void m3503X() {
        StringBuffer stringBuffer = null;
        m3510a(f2239t);
        int i = 0;
        while (!m3517b(f2240u)) {
            StringBuffer stringBuffer2;
            int i2;
            if (i >= 255) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(i);
                    stringBuffer.append(this.f2254L, 0, i);
                } else {
                    stringBuffer.append(this.f2254L, 0, i);
                }
                stringBuffer2 = stringBuffer;
                i2 = 0;
            } else {
                int i3 = i;
                stringBuffer2 = stringBuffer;
                i2 = i3;
            }
            int i4 = i2 + 1;
            this.f2254L[i2] = m3523g();
            stringBuffer = stringBuffer2;
            i = i4;
        }
        m3510a(f2240u);
        if (stringBuffer != null) {
            stringBuffer.append(this.f2254L, 0, i);
            char[] toCharArray = stringBuffer.toString().toCharArray();
            this.f2257O.m3409a(toCharArray, 0, toCharArray.length);
            return;
        }
        this.f2257O.m3409a(this.f2254L, 0, i);
    }

    private boolean m3504Y() {
        return m3517b(f2239t);
    }

    private final C0131f m3505Z() {
        C0131f c0131f = new C0131f();
        boolean a = m3512a(c0131f);
        this.f2257O.m3407a(c0131f);
        if (a) {
            ab();
            m3518c(c0131f);
        }
        this.f2257O.m3411b(c0131f);
        return c0131f;
    }

    private final char m3506a(char c, char c2) {
        char g = m3523g();
        if (g == c || g == c2) {
            return g;
        }
        throw new C0133m(this, g, new char[]{c, c2});
    }

    private final char m3507a(char c, char c2, char c3, char c4) {
        char g = m3523g();
        if (g == c || g == c2 || g == c3 || g == c4) {
            return g;
        }
        throw new C0133m(this, g, new char[]{c, c2, c3, c4});
    }

    private int m3508a(int i) {
        int i2 = 0;
        if (this.f2253K) {
            return -1;
        }
        int i3;
        if (this.f2250H.length - this.f2251I < i) {
            for (i3 = 0; this.f2251I + i3 < this.f2252J; i3++) {
                this.f2250H[i3] = this.f2250H[this.f2251I + i3];
            }
            i3 = this.f2252J - this.f2251I;
            this.f2252J = i3;
            this.f2251I = 0;
            i2 = i3;
        }
        i3 = m3522f();
        return i3 == -1 ? i2 == 0 ? -1 : i2 : i2 + i3;
    }

    private final void m3509a(char c) {
        char g = m3523g();
        if (g != c) {
            throw new C0133m(this, g, c);
        }
    }

    private final void m3510a(char[] cArr) {
        int length = cArr.length;
        if (this.f2252J - this.f2251I >= length || m3508a(length) > 0) {
            this.f2247E = this.f2250H[this.f2252J - 1];
            if (this.f2252J - this.f2251I < length) {
                throw new C0133m(this, "end of XML file", cArr);
            }
            for (int i = 0; i < length; i++) {
                if (this.f2250H[this.f2251I + i] != cArr[i]) {
                    throw new C0133m(this, new String(this.f2250H, this.f2251I, length), cArr);
                }
            }
            this.f2251I += length;
            return;
        }
        this.f2247E = -1;
        throw new C0133m(this, "end of XML file", cArr);
    }

    private static final boolean m3511a(char c, char[] cArr) {
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    private boolean m3512a(C0131f c0131f) {
        m3509a('<');
        c0131f.m3457a(m3528l());
        while (m3526j()) {
            m3525i();
            if (!m3515b('/', '>')) {
                m3513b(c0131f);
            }
        }
        if (m3526j()) {
            m3525i();
        }
        boolean b = m3514b('>');
        if (b) {
            m3509a('>');
        } else {
            m3510a(f2241v);
        }
        return b;
    }

    private boolean aa() {
        return m3517b(f2242w);
    }

    private void ab() {
        m3502W();
        int i = 1;
        while (i != 0) {
            if (aa()) {
                i = 0;
            } else if (m3493N()) {
                char[] M = m3492M();
                this.f2257O.m3409a(M, 0, M.length);
            } else if (m3504Y()) {
                m3503X();
            } else if (m3539w()) {
                m3538v();
            } else if (m3537u()) {
                m3536t();
            } else if (m3514b('<')) {
                m3505Z();
            } else {
                i = 0;
            }
            m3502W();
        }
    }

    private void m3513b(C0131f c0131f) {
        String l = m3528l();
        m3484E();
        String V = m3501V();
        if (c0131f.m3459b(l) != null) {
            this.f2245C.m3421b(new StringBuffer().append("Element ").append(this).append(" contains attribute ").append(l).append("more than once").toString(), this.f2258x, m3544b());
        }
        c0131f.m3458a(l, V);
    }

    private final boolean m3514b(char c) {
        if (this.f2251I < this.f2252J || m3522f() != -1) {
            return this.f2250H[this.f2251I] == c;
        } else {
            throw new C0133m(this, "unexpected end of expression.");
        }
    }

    private final boolean m3515b(char c, char c2) {
        if (this.f2251I >= this.f2252J && m3522f() == -1) {
            return false;
        }
        char c3 = this.f2250H[this.f2251I];
        return c3 == c || c3 == c2;
    }

    private final boolean m3516b(char c, char c2, char c3, char c4) {
        if (this.f2251I >= this.f2252J && m3522f() == -1) {
            return false;
        }
        char c5 = this.f2250H[this.f2251I];
        return c5 == c || c5 == c2 || c5 == c3 || c5 == c4;
    }

    private final boolean m3517b(char[] cArr) {
        int length = cArr.length;
        if (this.f2252J - this.f2251I >= length || m3508a(length) > 0) {
            this.f2247E = this.f2250H[this.f2252J - 1];
            if (this.f2252J - this.f2251I < length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (this.f2250H[this.f2251I + i] != cArr[i]) {
                    return false;
                }
            }
            return true;
        }
        this.f2247E = -1;
        return false;
    }

    private void m3518c(C0131f c0131f) {
        m3510a(f2242w);
        String l = m3528l();
        if (!l.equals(c0131f.m3454a())) {
            this.f2245C.m3421b(new StringBuffer().append("end tag (").append(l).append(") does not match begin tag (").append(c0131f.m3454a()).append(")").toString(), this.f2258x, m3544b());
        }
        if (m3526j()) {
            m3525i();
        }
        m3509a('>');
    }

    private static boolean m3519c(char c) {
        return "abcdefghijklmnopqrstuvwxyz".indexOf(Character.toLowerCase(c)) != -1;
    }

    private static boolean m3520d(char c) {
        return Character.isDigit(c) || C0137l.m3519c(c) || C0137l.m3511a(c, f2222c) || C0137l.m3521e(c);
    }

    private static boolean m3521e(char c) {
        switch (c) {
            case '\u00b7':
            case '\u02d0':
            case '\u02d1':
            case '\u0387':
            case '\u0640':
            case '\u0e46':
            case '\u0ec6':
            case '\u3005':
            case '\u3031':
            case '\u3032':
            case '\u3033':
            case '\u3034':
            case '\u3035':
            case '\u309d':
            case '\u309e':
            case '\u30fc':
            case '\u30fd':
            case '\u30fe':
                return true;
            default:
                return false;
        }
    }

    private int m3522f() {
        if (this.f2253K) {
            return -1;
        }
        if (this.f2252J == this.f2250H.length) {
            this.f2252J = 0;
            this.f2251I = 0;
        }
        int read = this.f2260z.read(this.f2250H, this.f2252J, this.f2250H.length - this.f2252J);
        if (read <= 0) {
            this.f2253K = true;
            return -1;
        }
        this.f2252J += read;
        return read;
    }

    private final char m3523g() {
        if (this.f2251I < this.f2252J || m3522f() != -1) {
            if (this.f2250H[this.f2251I] == '\n') {
                this.f2255M++;
            }
            char[] cArr = this.f2250H;
            int i = this.f2251I;
            this.f2251I = i + 1;
            return cArr[i];
        }
        throw new C0133m(this, "unexpected end of expression.");
    }

    private final char m3524h() {
        if (this.f2251I < this.f2252J || m3522f() != -1) {
            return this.f2250H[this.f2251I];
        }
        throw new C0133m(this, "unexpected end of expression.");
    }

    private final void m3525i() {
        m3507a(' ', '\t', '\r', '\n');
        while (m3516b(' ', '\t', '\r', '\n')) {
            m3523g();
        }
    }

    private final boolean m3526j() {
        return m3516b(' ', '\t', '\r', '\n');
    }

    private boolean m3527k() {
        char h = m3524h();
        return h < '\u0080' ? f2223d[h] : C0137l.m3520d(h);
    }

    private final String m3528l() {
        StringBuffer stringBuffer = null;
        int i = 1;
        this.f2254L[0] = m3529m();
        while (m3527k()) {
            StringBuffer stringBuffer2;
            int i2;
            if (i >= 255) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(i);
                    stringBuffer.append(this.f2254L, 0, i);
                } else {
                    stringBuffer.append(this.f2254L, 0, i);
                }
                stringBuffer2 = stringBuffer;
                i2 = 0;
            } else {
                int i3 = i;
                stringBuffer2 = stringBuffer;
                i2 = i3;
            }
            int i4 = i2 + 1;
            this.f2254L[i2] = m3523g();
            stringBuffer = stringBuffer2;
            i = i4;
        }
        if (stringBuffer == null) {
            return C0143r.m3552a(new String(this.f2254L, 0, i));
        }
        stringBuffer.append(this.f2254L, 0, i);
        return stringBuffer.toString();
    }

    private char m3529m() {
        char g = m3523g();
        if (C0137l.m3519c(g) || g == '_' || g == ':') {
            return g;
        }
        throw new C0133m(this, g, "letter, underscore, colon");
    }

    private final String m3530n() {
        char a = m3506a('\'', '\"');
        StringBuffer stringBuffer = new StringBuffer();
        while (!m3514b(a)) {
            if (m3496Q()) {
                stringBuffer.append(m3495P());
            } else if (m3493N()) {
                stringBuffer.append(m3492M());
            } else {
                stringBuffer.append(m3523g());
            }
        }
        m3509a(a);
        return stringBuffer.toString();
    }

    private final boolean m3531o() {
        return m3515b('\'', '\"');
    }

    private final void m3532p() {
        char g = m3523g();
        while (m3524h() != g) {
            m3523g();
        }
        m3509a(g);
    }

    private final void m3533q() {
        m3532p();
    }

    private boolean m3534r() {
        return m3537u() || m3539w() || m3526j();
    }

    private void m3535s() {
        if (m3537u()) {
            m3536t();
        } else if (m3539w()) {
            m3538v();
        } else if (m3526j()) {
            m3525i();
        } else {
            throw new C0133m(this, "expecting comment or processing instruction or space");
        }
    }

    private final void m3536t() {
        m3510a(f2224e);
        while (!m3517b(f2225f)) {
            m3523g();
        }
        m3510a(f2225f);
    }

    private final boolean m3537u() {
        return m3517b(f2224e);
    }

    private final void m3538v() {
        m3510a(f2226g);
        while (!m3517b(f2227h)) {
            m3523g();
        }
        m3510a(f2227h);
    }

    private final boolean m3539w() {
        return m3517b(f2226g);
    }

    private void m3540x() {
        if (m3480A()) {
            m3542z();
        }
        while (m3534r()) {
            m3535s();
        }
        if (m3541y()) {
            m3487H();
            while (m3534r()) {
                m3535s();
            }
        }
    }

    private boolean m3541y() {
        return m3517b(f2228i);
    }

    private void m3542z() {
        m3510a(f2229j);
        m3483D();
        if (m3526j()) {
            m3525i();
        }
        if (m3481B()) {
            String C = m3482C();
            if (!(this.f2246D == null || C.toLowerCase().equals(this.f2246D))) {
                throw new C0134h(this.f2258x, C, this.f2246D);
            }
        }
        while (!m3517b(f2227h)) {
            m3523g();
        }
        m3510a(f2227h);
    }

    public String m3543a() {
        return this.f2258x;
    }

    public int m3544b() {
        return this.f2255M;
    }

    int m3545c() {
        return this.f2247E;
    }

    final String m3546d() {
        return "";
    }

    C0126o m3547e() {
        return this.f2245C;
    }

    public String toString() {
        return this.f2258x;
    }
}
