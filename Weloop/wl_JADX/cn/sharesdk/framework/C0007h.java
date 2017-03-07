package cn.sharesdk.framework;

import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.C0002f;
import cn.sharesdk.framework.authorize.C0014e;
import cn.sharesdk.framework.authorize.C0016g;
import cn.sharesdk.framework.authorize.SSOListener;

/* renamed from: cn.sharesdk.framework.h */
public abstract class C0007h implements AuthorizeHelper {
    protected Platform f1907a;
    private AuthorizeListener f1908b;
    private SSOListener f1909c;

    public C0007h(Platform platform) {
        this.f1907a = platform;
    }

    protected void m2879a(SSOListener sSOListener) {
        this.f1909c = sSOListener;
        C0014e c0014e = new C0014e();
        c0014e.m2922a(sSOListener);
        c0014e.m2921a(this);
    }

    protected void m2880b(AuthorizeListener authorizeListener) {
        this.f1908b = authorizeListener;
        C0016g c0016g = new C0016g();
        c0016g.m2926a(this.f1908b);
        c0016g.m2921a(this);
    }

    public int m2881c() {
        return this.f1907a.getPlatformId();
    }

    public AuthorizeListener getAuthorizeListener() {
        return this.f1908b;
    }

    public Platform getPlatform() {
        return this.f1907a;
    }

    public SSOListener getSSOListener() {
        return this.f1909c;
    }

    public C0002f getSSOProcessor(C0014e c0014e) {
        return null;
    }
}
