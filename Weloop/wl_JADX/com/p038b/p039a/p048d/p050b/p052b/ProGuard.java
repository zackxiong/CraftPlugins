package com.p038b.p039a.p048d.p050b.p052b;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

/* renamed from: com.b.a.d.b.b.g */
public class ProGuard implements com.p038b.p039a.p048d.p050b.p051a.ProGuard, HttpEntity {
    private static final char[] f2681b;
    private ProGuard f2682a;
    private final ProGuard f2683c;
    private Header f2684d;
    private long f2685e;
    private volatile boolean f2686f;
    private final String f2687g;
    private final Charset f2688h;
    private String f2689i;

    /* renamed from: com.b.a.d.b.b.g.a */
    public static class ProGuard {
        public static final ProGuard f2677a;
        public com.p038b.p039a.p048d.p049a.ProGuard f2678b;
        public long f2679c;
        public long f2680d;

        public ProGuard() {
            this.f2678b = null;
            this.f2679c = 0;
            this.f2680d = 0;
        }

        static {
            f2677a = new ProGuard();
        }

        public boolean m4027a(boolean z) {
            if (this.f2678b != null) {
                return this.f2678b.m3970a(this.f2679c, this.f2680d, z);
            }
            return true;
        }
    }

    public void m4030a(com.p038b.p039a.p048d.p049a.ProGuard proGuard) {
        this.f2682a.f2678b = proGuard;
    }

    static {
        f2681b = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    public ProGuard(ProGuard proGuard, String str, Charset charset) {
        this.f2682a = new ProGuard();
        this.f2689i = "form-data";
        if (str == null) {
            str = m4028a();
        }
        this.f2687g = str;
        if (proGuard == null) {
            proGuard = ProGuard.STRICT;
        }
        if (charset == null) {
            charset = ProGuard.f2672a;
        }
        this.f2688h = charset;
        this.f2683c = new ProGuard(this.f2689i, this.f2688h, this.f2687g, proGuard);
        this.f2684d = new BasicHeader("Content-Type", m4029a(this.f2687g, this.f2688h));
        this.f2686f = true;
    }

    public ProGuard() {
        this(ProGuard.STRICT, null, null);
    }

    protected String m4029a(String str, Charset charset) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("multipart/" + this.f2689i + "; boundary=");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    protected String m4028a() {
        StringBuilder stringBuilder = new StringBuilder();
        Random random = new Random();
        int nextInt = random.nextInt(11) + 30;
        for (int i = 0; i < nextInt; i++) {
            stringBuilder.append(f2681b[random.nextInt(f2681b.length)]);
        }
        return stringBuilder.toString();
    }

    public void m4031a(ProGuard proGuard) {
        this.f2683c.m4019a(proGuard);
        this.f2686f = true;
    }

    public void m4032a(String str, com.p038b.p039a.p048d.p050b.p052b.p053a.ProGuard proGuard) {
        m4031a(new ProGuard(str, proGuard));
    }

    public boolean isRepeatable() {
        for (ProGuard b : this.f2683c.m4018a()) {
            if (b.m4006b().m3987e() < 0) {
                return false;
            }
        }
        return true;
    }

    public boolean isChunked() {
        return !isRepeatable();
    }

    public boolean isStreaming() {
        return !isRepeatable();
    }

    public long getContentLength() {
        if (this.f2686f) {
            this.f2685e = this.f2683c.m4022c();
            this.f2686f = false;
        }
        return this.f2685e;
    }

    public Header getContentType() {
        return this.f2684d;
    }

    public Header getContentEncoding() {
        return null;
    }

    public void consumeContent() {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    public InputStream getContent() {
        throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
    }

    public void writeTo(OutputStream outputStream) {
        this.f2682a.f2679c = getContentLength();
        this.f2683c.m4020a(outputStream, this.f2682a);
    }
}
