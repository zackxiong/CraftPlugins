package com.p038b.p039a.p048d;

import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.b.a.d.d */
public class ProGuard {
    private String f2760a;
    private List<ProGuard> f2761b;
    private List<NameValuePair> f2762c;
    private HttpEntity f2763d;
    private List<NameValuePair> f2764e;
    private HashMap<String, com.p038b.p039a.p048d.p050b.p052b.p053a.ProGuard> f2765f;
    private com.p038b.p039a.p040e.ProGuard f2766g;

    /* renamed from: com.b.a.d.d.a */
    public class ProGuard {
        public final boolean f2758a;
        public final Header f2759b;
    }

    public ProGuard() {
        this.f2760a = "UTF-8";
    }

    public com.p038b.p039a.p040e.ProGuard m4066a() {
        return this.f2766g;
    }

    public String m4069b() {
        return this.f2760a;
    }

    public void m4068a(String str, String str2) {
        if (this.f2764e == null) {
            this.f2764e = new ArrayList();
        }
        this.f2764e.add(new BasicNameValuePair(str, str2));
    }

    public void m4067a(String str, File file) {
        if (this.f2765f == null) {
            this.f2765f = new HashMap();
        }
        this.f2765f.put(str, new com.p038b.p039a.p048d.p050b.p052b.p053a.ProGuard(file));
    }

    public HttpEntity m4070c() {
        if (this.f2763d != null) {
            return this.f2763d;
        }
        if (this.f2765f != null && !this.f2765f.isEmpty()) {
            com.p038b.p039a.p048d.p050b.p052b.ProGuard proGuard = new com.p038b.p039a.p048d.p050b.p052b.ProGuard(com.p038b.p039a.p048d.p050b.p052b.ProGuard.STRICT, null, Charset.forName(this.f2760a));
            if (!(this.f2764e == null || this.f2764e.isEmpty())) {
                for (NameValuePair nameValuePair : this.f2764e) {
                    try {
                        proGuard.m4032a(nameValuePair.getName(), new com.p038b.p039a.p048d.p050b.p052b.p053a.ProGuard(nameValuePair.getValue()));
                    } catch (Throwable e) {
                        com.p038b.p039a.p055f.ProGuard.m4101a(e.getMessage(), e);
                    }
                }
            }
            for (Entry entry : this.f2765f.entrySet()) {
                proGuard.m4032a((String) entry.getKey(), (com.p038b.p039a.p048d.p050b.p052b.p053a.ProGuard) entry.getValue());
            }
            return proGuard;
        } else if (this.f2764e == null || this.f2764e.isEmpty()) {
            return null;
        } else {
            return new com.p038b.p039a.p048d.p050b.p051a.ProGuard(this.f2764e, this.f2760a);
        }
    }

    public List<NameValuePair> m4071d() {
        return this.f2762c;
    }

    public List<ProGuard> m4072e() {
        return this.f2761b;
    }
}
