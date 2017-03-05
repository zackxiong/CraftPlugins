package com.p038b.p039a.p048d.p050b.p051a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;

/* renamed from: com.b.a.d.b.a.a */
public class ProGuard extends AbstractHttpEntity implements Cloneable {
    protected byte[] f2637a;
    private boolean f2638b;
    private String f2639c;
    private List<NameValuePair> f2640d;

    public ProGuard() {
        this((String) null);
    }

    public ProGuard(String str) {
        this.f2638b = true;
        this.f2639c = "UTF-8";
        if (str != null) {
            this.f2639c = str;
        }
        setContentType("application/x-www-form-urlencoded");
        this.f2640d = new ArrayList();
    }

    public ProGuard(List<NameValuePair> list, String str) {
        this.f2638b = true;
        this.f2639c = "UTF-8";
        if (str != null) {
            this.f2639c = str;
        }
        setContentType("application/x-www-form-urlencoded");
        this.f2640d = list;
        m3976a();
    }

    private void m3976a() {
        if (this.f2638b) {
            try {
                this.f2637a = com.p038b.p039a.p048d.p050b.p054c.ProGuard.m4047a(this.f2640d, this.f2639c).getBytes(this.f2639c);
            } catch (Throwable e) {
                com.p038b.p039a.p055f.ProGuard.m4101a(e.getMessage(), e);
            }
            this.f2638b = false;
        }
    }

    public boolean isRepeatable() {
        return true;
    }

    public long getContentLength() {
        m3976a();
        return (long) this.f2637a.length;
    }

    public InputStream getContent() {
        m3976a();
        return new ByteArrayInputStream(this.f2637a);
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        m3976a();
        outputStream.write(this.f2637a);
        outputStream.flush();
    }

    public boolean isStreaming() {
        return false;
    }

    public Object clone() {
        return super.clone();
    }
}
