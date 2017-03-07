package cn.sharesdk.framework;

import java.util.Comparator;

/* renamed from: cn.sharesdk.framework.o */
class C0042o implements Comparator<Platform> {
    final /* synthetic */ C0029n f1988a;

    C0042o(C0029n c0029n) {
        this.f1988a = c0029n;
    }

    public int m3031a(Platform platform, Platform platform2) {
        return platform.getSortId() != platform2.getSortId() ? platform.getSortId() - platform2.getSortId() : platform.getPlatformId() - platform2.getPlatformId();
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return m3031a((Platform) obj, (Platform) obj2);
    }
}
