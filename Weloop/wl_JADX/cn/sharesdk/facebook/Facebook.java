package cn.sharesdk.facebook;

import android.content.Context;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import com.baidu.mapapi.SDKInitializer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;

public class Facebook extends Platform {
    public static final String NAME;
    private String f1896a;

    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams {
    }

    static {
        NAME = Facebook.class.getSimpleName();
    }

    public Facebook(Context context) {
        super(context);
    }

    protected boolean checkAuthorize(int i, Object obj) {
        if (isValid()) {
            C0008d a = C0008d.m2882a((Platform) this);
            a.m2887a(this.f1896a);
            String token = this.db.getToken();
            String valueOf = String.valueOf(this.db.getExpiresIn());
            if (!(token == null || valueOf == null)) {
                a.m2888a(token, valueOf);
                if (a.m2890a()) {
                    return true;
                }
            }
        }
        innerAuthorize(i, obj);
        return false;
    }

    protected void doAuthorize(String[] strArr) {
        C0008d a = C0008d.m2882a((Platform) this);
        a.m2887a(this.f1896a);
        a.m2889a(strArr);
        a.m2886a(new C0001a(this, a), isSSODisable());
    }

    protected void doCustomerProtocol(String str, String str2, int i, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        try {
            HashMap a = C0008d.m2882a((Platform) this).m2885a(str, str2, hashMap, hashMap2);
            if (a == null || a.size() <= 0) {
                if (this.listener != null) {
                    this.listener.onError(this, i, new Throwable("response is null"));
                }
            } else if (a.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) || a.containsKey("error")) {
                if (this.listener != null) {
                    this.listener.onError(this, i, new Throwable(new C0068d().m3254a(a)));
                }
            } else if (this.listener != null) {
                this.listener.onComplete(this, i, a);
            }
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, i, th);
            }
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareParams) {
        C0008d a = C0008d.m2882a((Platform) this);
        try {
            String shortLintk = getShortLintk(shareParams.getText(), false);
            String imagePath = shareParams.getImagePath();
            HashMap b = imagePath == null ? a.m2891b(shortLintk) : a.m2892b(shortLintk, imagePath);
            if (b == null || b.size() <= 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 9, new Throwable("response is null"));
                }
            } else if (b.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) || b.containsKey("error")) {
                if (this.listener != null) {
                    this.listener.onError(this, 9, new Throwable(new C0068d().m3254a(b)));
                }
            } else if (this.listener != null) {
                b.put("ShareParams", shareParams);
                this.listener.onComplete(this, 9, b);
            }
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, 9, th);
            }
        }
    }

    protected C0060a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
        C0060a c0060a = new C0060a();
        c0060a.f2066b = shareParams.getText();
        if (hashMap != null) {
            c0060a.f2068d.add(String.valueOf(hashMap.get("source")));
            Object obj = hashMap.get("post_id");
            c0060a.f2065a = obj == null ? null : String.valueOf(obj);
            c0060a.f2071g = hashMap;
        }
        return c0060a;
    }

    protected void follow(String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 6);
        }
    }

    protected void getFriendList(int i, int i2, String str) {
        try {
            HashMap a = C0008d.m2882a((Platform) this).m2884a(i, i2, str);
            if (a == null || a.size() <= 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 2, new Throwable("response is null"));
                }
            } else if (a.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) || a.containsKey("error")) {
                if (this.listener != null) {
                    this.listener.onError(this, 2, new Throwable(new C0068d().m3254a(a)));
                }
            } else if (this.listener != null) {
                this.listener.onComplete(this, 2, a);
            }
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, 2, th);
            }
        }
    }

    public String getName() {
        return NAME;
    }

    public int getPlatformId() {
        return 10;
    }

    public int getVersion() {
        return 2;
    }

    protected void initDevInfo(String str) {
        this.f1896a = getDevinfo("ConsumerKey");
    }

    protected void setNetworkDevinfo() {
        this.f1896a = getNetworkDevinfo("api_key", "ConsumerKey");
    }

    protected void timeline(int i, int i2, String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 7);
        }
    }

    protected void userInfor(String str) {
        HashMap d = C0008d.m2882a((Platform) this).m2894d(str);
        if (d == null || d.size() <= 0) {
            if (this.listener != null) {
                this.listener.onError(this, 8, new Throwable("response is null"));
            }
        } else if (!d.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) && !d.containsKey("error")) {
            if (str == null) {
                String[] split;
                ArrayList arrayList;
                Iterator it;
                HashMap hashMap;
                HashMap hashMap2;
                String a;
                this.db.putUserId(String.valueOf(d.get("id")));
                this.db.put("nickname", String.valueOf(d.get("name")));
                this.db.put("gender", "male".equals(String.valueOf(d.get("gender"))) ? "0" : "1");
                HashMap hashMap3 = (HashMap) d.get("picture");
                if (hashMap3 != null) {
                    hashMap3 = (HashMap) hashMap3.get("data");
                    if (hashMap3 != null) {
                        this.db.put("icon", String.valueOf(hashMap3.get("url")));
                    }
                }
                try {
                    split = String.valueOf(d.get("birthday")).split("/");
                    Calendar instance = Calendar.getInstance();
                    instance.set(1, Integer.parseInt(split[2]));
                    instance.set(2, Integer.parseInt(split[0]) - 1);
                    instance.set(5, Integer.parseInt(split[1]));
                    this.db.put("birthday", String.valueOf(instance.getTimeInMillis()));
                } catch (Throwable th) {
                    if (this.listener != null) {
                        this.listener.onError(this, 8, th);
                        return;
                    }
                    return;
                }
                this.db.put("secretType", "true".equals(String.valueOf(d.get("verified"))) ? "1" : "0");
                this.db.put("snsUserUrl", String.valueOf(d.get("link")));
                this.db.put("resume", String.valueOf(d.get("link")));
                ArrayList arrayList2 = (ArrayList) d.get("education");
                if (arrayList2 != null) {
                    arrayList = new ArrayList();
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        hashMap3 = (HashMap) it.next();
                        hashMap = new HashMap();
                        hashMap.put("school_type", Integer.valueOf(0));
                        hashMap2 = (HashMap) hashMap3.get("school");
                        if (hashMap2 != null) {
                            hashMap.put("school", String.valueOf(hashMap2.get("name")));
                        }
                        try {
                            hashMap.put("year", Integer.valueOf(Integer.parseInt(String.valueOf(((HashMap) hashMap3.get("year")).get("name")))));
                        } catch (Throwable th2) {
                            C0071e.m3269c(th2);
                        }
                        hashMap.put("background", Integer.valueOf(0));
                        arrayList.add(hashMap);
                    }
                    hashMap3 = new HashMap();
                    hashMap3.put("list", arrayList);
                    a = new C0068d().m3254a(hashMap3);
                    this.db.put("educationJSONArrayStr", a.substring(8, a.length() - 1));
                }
                arrayList2 = (ArrayList) d.get("work");
                if (arrayList2 != null) {
                    arrayList = new ArrayList();
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        hashMap3 = (HashMap) it.next();
                        hashMap = new HashMap();
                        hashMap2 = (HashMap) hashMap3.get("employer");
                        if (hashMap2 != null) {
                            hashMap.put("company", String.valueOf(hashMap2.get("name")));
                        }
                        hashMap2 = (HashMap) hashMap3.get("position");
                        if (hashMap2 != null) {
                            hashMap.put("position", String.valueOf(hashMap2.get("name")));
                        }
                        try {
                            String[] split2 = String.valueOf(hashMap3.get("start_date")).split("-");
                            hashMap.put("start_date", Integer.valueOf(Integer.parseInt(split2[1]) + (Integer.parseInt(split2[0]) * 100)));
                        } catch (Throwable th3) {
                            C0071e.m3269c(th3);
                        }
                        try {
                            split = String.valueOf(hashMap3.get("end_date")).split("-");
                            hashMap.put("end_date", Integer.valueOf(Integer.parseInt(split[1]) + (Integer.parseInt(split[0]) * 100)));
                        } catch (Throwable th22) {
                            C0071e.m3269c(th22);
                            hashMap.put("end_date", Integer.valueOf(0));
                        }
                        arrayList.add(hashMap);
                    }
                    hashMap3 = new HashMap();
                    hashMap3.put("list", arrayList);
                    a = new C0068d().m3254a(hashMap3);
                    this.db.put("workJSONArrayStr", a.substring(8, a.length() - 1));
                }
            }
            if (this.listener != null) {
                this.listener.onComplete(this, 8, d);
            }
        } else if (this.listener != null) {
            this.listener.onError(this, 8, new Throwable(new C0068d().m3254a(d)));
        }
    }
}
