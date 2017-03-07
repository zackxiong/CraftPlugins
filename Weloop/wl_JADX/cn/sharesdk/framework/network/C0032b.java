package cn.sharesdk.framework.network;

import cn.sharesdk.framework.utils.C0065a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: cn.sharesdk.framework.network.b */
public class C0032b extends C0031d {
    private C0030a f1975a;

    public C0032b m2997a(byte[] bArr) {
        if (this.f1975a == null) {
            this.f1975a = new C0030a(bArr.length);
        }
        this.f1975a.write(bArr);
        this.f1975a.flush();
        return this;
    }

    protected InputStream m2998a() {
        if (this.f1975a == null) {
            return new ByteArrayInputStream(new byte[0]);
        }
        byte[] a = this.f1975a.m2993a();
        return (a == null || this.f1975a.size() <= 0) ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(a, 0, this.f1975a.size());
    }

    protected long m2999b() {
        return this.f1975a == null ? 0 : (long) this.f1975a.size();
    }

    public String toString() {
        if (this.f1975a == null) {
            return null;
        }
        byte[] a = this.f1975a.m2993a();
        return a != null ? C0065a.m3203a(a, 0, this.f1975a.size()) : null;
    }
}
