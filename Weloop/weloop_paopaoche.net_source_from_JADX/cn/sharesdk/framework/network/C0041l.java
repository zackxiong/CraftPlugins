package cn.sharesdk.framework.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: cn.sharesdk.framework.network.l */
public class C0041l extends C0031d {
    private StringBuilder f1987a;

    public C0041l() {
        this.f1987a = new StringBuilder();
    }

    public C0041l m3028a(String str) {
        this.f1987a.append(str);
        return this;
    }

    protected InputStream m3029a() {
        return new ByteArrayInputStream(this.f1987a.toString().getBytes("utf-8"));
    }

    protected long m3030b() {
        return (long) this.f1987a.toString().getBytes("utf-8").length;
    }

    public String toString() {
        return this.f1987a.toString();
    }
}
