package cn.sharesdk.twitter;

import android.content.Context;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0068d;
import com.baidu.mapapi.SDKInitializer;
import java.util.ArrayList;
import java.util.HashMap;

public class Twitter extends Platform {
    public static final String NAME;
    private String f2136a;
    private String f2137b;
    private String f2138c;

    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams {
    }

    static {
        NAME = Twitter.class.getSimpleName();
    }

    public Twitter(Context context) {
        super(context);
    }

    protected boolean checkAuthorize(int i, Object obj) {
        if (isValid()) {
            C0094e a = C0094e.m3330a((Platform) this);
            a.m3336a(this.f2136a, this.f2137b, this.f2138c);
            String token = this.db.getToken();
            String tokenSecret = this.db.getTokenSecret();
            if (!(token == null || tokenSecret == null)) {
                a.m3335a(token, tokenSecret);
                return true;
            }
        }
        innerAuthorize(i, obj);
        return false;
    }

    protected void doAuthorize(String[] strArr) {
        C0094e a = C0094e.m3330a((Platform) this);
        a.m3336a(this.f2136a, this.f2137b, this.f2138c);
        a.m3334a(new C0090a(this, a));
    }

    protected void doCustomerProtocol(String str, String str2, int i, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        try {
            HashMap a = C0094e.m3330a((Platform) this).m3333a(str, str2, hashMap, hashMap2);
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
        C0094e a = C0094e.m3330a((Platform) this);
        String shortLintk = getShortLintk(shareParams.getText(), false);
        try {
            String imagePath = shareParams.getImagePath();
            HashMap c = imagePath == null ? a.m3339c(shortLintk) : a.m3338b(shortLintk, imagePath);
            if (c == null) {
                if (this.listener != null) {
                    this.listener.onError(this, 8, new Throwable("response is null"));
                }
            } else if (!c.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) && !c.containsKey("error")) {
                c.put("ShareParams", shareParams);
                if (this.listener != null) {
                    this.listener.onComplete(this, 9, c);
                }
            } else if (this.listener != null) {
                this.listener.onError(this, 8, new Throwable(new C0068d().m3254a(c)));
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
            HashMap hashMap2 = (HashMap) hashMap.get("entities");
            if (hashMap2 != null) {
                ArrayList arrayList = (ArrayList) hashMap2.get("media");
                if (!(arrayList == null || arrayList.size() <= 0 || ((HashMap) arrayList.get(0)) == null)) {
                    c0060a.f2068d.add(String.valueOf(hashMap.get("media_url")));
                }
            }
            c0060a.f2065a = String.valueOf(hashMap.get("id"));
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
            HashMap a = C0094e.m3330a((Platform) this).m3332a(i, i2, str);
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
        return 11;
    }

    public int getVersion() {
        return 2;
    }

    protected void initDevInfo(String str) {
        this.f2136a = getDevinfo("ConsumerKey");
        this.f2137b = getDevinfo("ConsumerSecret");
        this.f2138c = getDevinfo("CallbackUrl");
    }

    protected void setNetworkDevinfo() {
        this.f2136a = getNetworkDevinfo("consumer_key", "ConsumerKey");
        this.f2137b = getNetworkDevinfo("consumer_secret", "ConsumerSecret");
        this.f2138c = getNetworkDevinfo("redirect_uri", "CallbackUrl");
    }

    protected void timeline(int i, int i2, String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 7);
        }
    }

    protected void userInfor(String str) {
        try {
            HashMap b = C0094e.m3330a((Platform) this).m3337b(str);
            if (b == null || b.size() <= 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 8, new Throwable("response is null"));
                }
            } else if (!b.containsKey(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE) && !b.containsKey("error")) {
                if (str == null) {
                    this.db.put("nickname", String.valueOf(b.get("screen_name")));
                    this.db.put("icon", String.valueOf(b.get("profile_image_url")));
                    this.db.put("gender", "2");
                    this.db.put("resume", String.valueOf(b.get("description")));
                    this.db.put("secretType", "true".equals(String.valueOf(b.get("verified"))) ? "1" : "0");
                    this.db.put("followerCount", String.valueOf(b.get("followers_count")));
                    this.db.put("favouriteCount", String.valueOf(b.get("friends_count")));
                    this.db.put("shareCount", String.valueOf(b.get("statuses_count")));
                    this.db.put("snsregat", String.valueOf(C0064R.parseTwitterDate(String.valueOf(b.get("created_at")))));
                    this.db.put("snsUserUrl", "https://twitter.com/" + b.get("screen_name"));
                }
                if (this.listener != null) {
                    this.listener.onComplete(this, 8, b);
                }
            } else if (this.listener != null) {
                this.listener.onError(this, 8, new Throwable(new C0068d().m3254a(b)));
            }
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, 8, th);
            }
        }
    }
}
