package cn.sharesdk.framework;

import android.content.Context;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.utils.C0066b;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import com.umeng.update.ProGuard;
import java.util.HashMap;

public abstract class Service {
    private Context f1920a;
    private String f1921b;

    public static abstract class ServiceEvent {
        private final int PLATFORM;
        protected Service service;

        public ServiceEvent(Service service) {
            this.PLATFORM = 1;
            this.service = service;
        }

        protected HashMap<String, Object> filterShareContent(int i, ShareParams shareParams, HashMap<String, Object> hashMap) {
            C0060a filterShareContent = ShareSDK.getPlatform(ShareSDK.platformIdToName(i)).filterShareContent(shareParams, hashMap);
            HashMap<String, Object> hashMap2 = new HashMap();
            hashMap2.put("shareID", filterShareContent.f2065a);
            hashMap2.put("shareContent", new C0068d().m3255a(filterShareContent.toString()));
            C0071e.m3268c("filterShareContent ==>>%s", hashMap2);
            return hashMap2;
        }

        protected HashMap<String, Object> toMap() {
            HashMap<String, Object> hashMap = new HashMap();
            C0066b a = C0066b.m3214a(this.service.f1920a);
            hashMap.put("deviceid", a.m3238q());
            hashMap.put(ProGuard.f5480h, this.service.getAppKey());
            hashMap.put("apppkg", a.m3239r());
            hashMap.put("appver", Integer.valueOf(a.m3241t()));
            hashMap.put("sdkver", Integer.valueOf(this.service.getServiceVersionInt()));
            hashMap.put("plat", Integer.valueOf(1));
            hashMap.put("networktype", a.m3235n());
            hashMap.put("deviceData", a.m3229h());
            return hashMap;
        }

        public final String toString() {
            return new C0068d().m3254a(toMap());
        }
    }

    void m2896a(Context context) {
        this.f1920a = context;
    }

    void m2897a(String str) {
        this.f1921b = str;
    }

    public String getAppKey() {
        return this.f1921b;
    }

    public Context getContext() {
        return this.f1920a;
    }

    public String getDeviceKey() {
        return C0066b.m3214a(this.f1920a).m3238q();
    }

    protected abstract int getServiceVersionInt();

    public abstract String getServiceVersionName();

    public void onBind() {
    }

    public void onUnbind() {
    }
}
