package com.p038b.p039a.p048d.p050b.p054c;

import android.text.TextUtils;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.b.a.d.b.c.a */
public class ProGuard {
    private String f2703a;
    private String f2704b;
    private String f2705c;
    private String f2706d;
    private String f2707e;
    private String f2708f;
    private int f2709g;
    private String f2710h;
    private String f2711i;
    private String f2712j;
    private List<NameValuePair> f2713k;
    private String f2714l;
    private String f2715m;

    public ProGuard() {
        this.f2709g = -1;
    }

    public ProGuard(String str) {
        try {
            m4036a(new URI(str));
        } catch (Throwable e) {
            com.p038b.p039a.p055f.ProGuard.m4101a(e.getMessage(), e);
        }
    }

    public ProGuard(URI uri) {
        m4036a(uri);
    }

    private void m4036a(URI uri) {
        this.f2703a = uri.getScheme();
        this.f2704b = uri.getRawSchemeSpecificPart();
        this.f2705c = uri.getRawAuthority();
        this.f2708f = uri.getHost();
        this.f2709g = uri.getPort();
        this.f2707e = uri.getRawUserInfo();
        this.f2706d = uri.getUserInfo();
        this.f2711i = uri.getRawPath();
        this.f2710h = uri.getPath();
        this.f2712j = uri.getRawQuery();
        this.f2713k = m4035a(uri.getRawQuery());
        this.f2715m = uri.getRawFragment();
        this.f2714l = uri.getFragment();
    }

    private List<NameValuePair> m4035a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ProGuard.m4048a(str);
    }

    public URI m4042a(Charset charset) {
        return new URI(m4039b(charset));
    }

    private String m4039b(Charset charset) {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.f2703a != null) {
            stringBuilder.append(this.f2703a).append(':');
        }
        if (this.f2704b != null) {
            stringBuilder.append(this.f2704b);
        } else {
            if (this.f2705c != null) {
                stringBuilder.append("//").append(this.f2705c);
            } else if (this.f2708f != null) {
                stringBuilder.append("//");
                if (this.f2707e != null) {
                    stringBuilder.append(this.f2707e).append("@");
                } else if (this.f2706d != null) {
                    stringBuilder.append(m4033a(this.f2706d, charset)).append("@");
                }
                if (InetAddressUtils.isIPv6Address(this.f2708f)) {
                    stringBuilder.append("[").append(this.f2708f).append("]");
                } else {
                    stringBuilder.append(this.f2708f);
                }
                if (this.f2709g >= 0) {
                    stringBuilder.append(":").append(this.f2709g);
                }
            }
            if (this.f2711i != null) {
                stringBuilder.append(ProGuard.m4037b(this.f2711i));
            } else if (this.f2710h != null) {
                stringBuilder.append(m4038b(ProGuard.m4037b(this.f2710h), charset));
            }
            if (this.f2712j != null) {
                stringBuilder.append("?").append(this.f2712j);
            } else if (this.f2713k != null) {
                stringBuilder.append("?").append(m4034a(this.f2713k, charset));
            }
        }
        if (this.f2715m != null) {
            stringBuilder.append("#").append(this.f2715m);
        } else if (this.f2714l != null) {
            stringBuilder.append("#").append(m4040c(this.f2714l, charset));
        }
        return stringBuilder.toString();
    }

    private String m4033a(String str, Charset charset) {
        return ProGuard.m4045a(str, charset);
    }

    private String m4038b(String str, Charset charset) {
        return ProGuard.m4050c(str, charset).replace("+", "20%");
    }

    private String m4034a(List<NameValuePair> list, Charset charset) {
        return ProGuard.m4043a((Iterable) list, charset);
    }

    private String m4040c(String str, Charset charset) {
        return ProGuard.m4049b(str, charset);
    }

    public ProGuard m4041a(String str, String str2) {
        if (this.f2713k == null) {
            this.f2713k = new ArrayList();
        }
        this.f2713k.add(new BasicNameValuePair(str, str2));
        this.f2712j = null;
        this.f2704b = null;
        return this;
    }

    private static String m4037b(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        while (i < str.length() && str.charAt(i) == '/') {
            i++;
        }
        if (i > 1) {
            return str.substring(i - 1);
        }
        return str;
    }
}
