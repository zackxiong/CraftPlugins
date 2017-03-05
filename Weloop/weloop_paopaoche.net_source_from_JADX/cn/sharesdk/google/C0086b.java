package cn.sharesdk.google;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

/* renamed from: cn.sharesdk.google.b */
class C0086b implements PlatformActionListener {
    final /* synthetic */ ShareParams f2130a;
    final /* synthetic */ GooglePlus f2131b;

    C0086b(GooglePlus googlePlus, ShareParams shareParams) {
        this.f2131b = googlePlus;
        this.f2130a = shareParams;
    }

    public void onCancel(Platform platform, int i) {
        if (this.f2131b.listener != null) {
            this.f2131b.listener.onCancel(platform, i);
        }
    }

    public void onComplete(Platform platform, int i, HashMap<String, Object> hashMap) {
        HashMap hashMap2 = new HashMap();
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
        hashMap2.put("ShareParams", this.f2130a);
        if (this.f2131b.listener != null) {
            this.f2131b.listener.onComplete(platform, i, hashMap2);
        }
    }

    public void onError(Platform platform, int i, Throwable th) {
        if (this.f2131b.listener != null) {
            this.f2131b.listener.onError(platform, i, th);
        }
    }
}
