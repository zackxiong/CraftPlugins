package com.p038b.p039a.p048d.p050b;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.CloneUtils;

/* renamed from: com.b.a.d.b.c */
public class ProGuard extends HttpRequestBase implements HttpEntityEnclosingRequest {
    private HttpEntity f2724a;
    private ProGuard f2725b;
    private com.p038b.p039a.p048d.p050b.p054c.ProGuard f2726c;
    private Charset f2727d;

    /* renamed from: com.b.a.d.b.c.a */
    public enum ProGuard {
        GET("GET"),
        POST("POST"),
        PUT("PUT"),
        HEAD("HEAD"),
        MOVE("MOVE"),
        COPY("COPY"),
        DELETE("DELETE"),
        OPTIONS("OPTIONS"),
        TRACE("TRACE"),
        CONNECT("CONNECT");
        
        private final String f2702k;

        private ProGuard(String str) {
            this.f2702k = str;
        }

        public String toString() {
            return this.f2702k;
        }
    }

    public ProGuard(ProGuard proGuard, String str) {
        this.f2725b = proGuard;
        m4054a(str);
    }

    public ProGuard m4052a(List<NameValuePair> list) {
        if (list != null) {
            for (NameValuePair nameValuePair : list) {
                this.f2726c.m4041a(nameValuePair.getName(), nameValuePair.getValue());
            }
        }
        return this;
    }

    public void m4053a(com.p038b.p039a.p048d.ProGuard proGuard, com.p038b.p039a.p048d.p049a.ProGuard proGuard2) {
        if (proGuard != null) {
            if (this.f2727d == null) {
                this.f2727d = Charset.forName(proGuard.m4069b());
            }
            List<com.p038b.p039a.p048d.ProGuard.ProGuard> e = proGuard.m4072e();
            if (e != null) {
                for (com.p038b.p039a.p048d.ProGuard.ProGuard proGuard3 : e) {
                    if (proGuard3.f2758a) {
                        setHeader(proGuard3.f2759b);
                    } else {
                        addHeader(proGuard3.f2759b);
                    }
                }
            }
            m4052a(proGuard.m4071d());
            HttpEntity c = proGuard.m4070c();
            if (c != null) {
                if (c instanceof com.p038b.p039a.p048d.p050b.p051a.ProGuard) {
                    ((com.p038b.p039a.p048d.p050b.p051a.ProGuard) c).m3977a(proGuard2);
                }
                setEntity(c);
            }
        }
    }

    public URI getURI() {
        try {
            if (this.f2727d == null) {
                this.f2727d = com.p038b.p039a.p055f.ProGuard.m4110a((HttpRequestBase) this);
            }
            if (this.f2727d == null) {
                this.f2727d = Charset.forName("UTF-8");
            }
            return this.f2726c.m4042a(this.f2727d);
        } catch (Throwable e) {
            com.p038b.p039a.p055f.ProGuard.m4101a(e.getMessage(), e);
            return null;
        }
    }

    public void setURI(URI uri) {
        this.f2726c = new com.p038b.p039a.p048d.p050b.p054c.ProGuard(uri);
    }

    public void m4054a(String str) {
        this.f2726c = new com.p038b.p039a.p048d.p050b.p054c.ProGuard(str);
    }

    public String getMethod() {
        return this.f2725b.toString();
    }

    public HttpEntity getEntity() {
        return this.f2724a;
    }

    public void setEntity(HttpEntity httpEntity) {
        this.f2724a = httpEntity;
    }

    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    public Object clone() {
        ProGuard proGuard = (ProGuard) super.clone();
        if (this.f2724a != null) {
            proGuard.f2724a = (HttpEntity) CloneUtils.clone(this.f2724a);
        }
        return proGuard;
    }
}
