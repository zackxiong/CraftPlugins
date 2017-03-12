package cn.sharesdk.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

/* renamed from: cn.sharesdk.framework.network.d */
public abstract class C0031d {
    protected abstract InputStream m2994a();

    protected abstract long m2995b();

    public InputStreamEntity m2996c() {
        return new InputStreamEntity(m2994a(), m2995b());
    }
}
