package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.C0063b;
import cn.sharesdk.framework.statistics.p031b.C0055c;
import cn.sharesdk.framework.statistics.p031b.C0057b;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import java.util.HashMap;

/* renamed from: cn.sharesdk.framework.e */
class C0023e implements PlatformActionListener {
    final /* synthetic */ PlatformActionListener f1951a;
    final /* synthetic */ int f1952b;
    final /* synthetic */ HashMap f1953c;
    final /* synthetic */ C0022d f1954d;

    C0023e(C0022d c0022d, PlatformActionListener platformActionListener, int i, HashMap hashMap) {
        this.f1954d = c0022d;
        this.f1951a = platformActionListener;
        this.f1952b = i;
        this.f1953c = hashMap;
    }

    public void onCancel(Platform platform, int i) {
        this.f1954d.f1950a = this.f1951a;
        if (this.f1954d.f1950a != null) {
            this.f1954d.f1950a.onComplete(platform, this.f1952b, this.f1953c);
        }
    }

    public void onComplete(Platform platform, int i, HashMap<String, Object> hashMap) {
        this.f1954d.f1950a = this.f1951a;
        if (this.f1954d.f1950a != null) {
            this.f1954d.f1950a.onComplete(platform, this.f1952b, this.f1953c);
        }
        C0055c c0057b = new C0057b();
        c0057b.f2053a = platform.getPlatformId();
        c0057b.f2054b = "TencentWeibo".equals(platform.getName()) ? platform.getDb().get("name") : platform.getDb().getUserId();
        c0057b.f2055c = new C0068d().m3254a((HashMap) hashMap);
        c0057b.f2056d = this.f1954d.m2930a(platform);
        C0063b.m3186a(platform.getContext()).m3195a(c0057b);
    }

    public void onError(Platform platform, int i, Throwable th) {
        C0071e.m3269c(th);
        this.f1954d.f1950a = this.f1951a;
        if (this.f1954d.f1950a != null) {
            this.f1954d.f1950a.onComplete(platform, this.f1952b, this.f1953c);
        }
    }
}
