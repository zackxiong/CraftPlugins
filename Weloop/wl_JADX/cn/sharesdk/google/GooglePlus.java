package cn.sharesdk.google;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.statistics.p031b.C0061f.C0060a;
import cn.sharesdk.framework.utils.C0071e;
import java.io.File;
import java.util.HashMap;

public class GooglePlus extends Platform {
    public static final String NAME;

    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams {
        public String imageUrl;
    }

    static {
        NAME = GooglePlus.class.getSimpleName();
    }

    public GooglePlus(Context context) {
        super(context);
    }

    protected boolean checkAuthorize(int i, Object obj) {
        if (isValid()) {
            return true;
        }
        if (this.listener != null) {
            this.listener.onError(this, i, new GooglePlusClientNotExistException());
        }
        return false;
    }

    protected void doAuthorize(String[] strArr) {
        if (isValid()) {
            afterRegister(1, null);
        } else if (this.listener != null) {
            this.listener.onError(this, 1, new GooglePlusClientNotExistException());
        }
    }

    protected void doCustomerProtocol(String str, String str2, int i, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        if (this.listener != null) {
            this.listener.onCancel(this, i);
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareParams) {
        String str = null;
        String text = shareParams.getText();
        String imagePath = shareParams.getImagePath();
        Object imageUrl = shareParams.getImageUrl();
        if (!TextUtils.isEmpty(text)) {
            try {
                if (!TextUtils.isEmpty(text) && text.contains("http")) {
                    imagePath = null;
                } else if (!TextUtils.isEmpty(imageUrl) && imageUrl.startsWith("http")) {
                    imagePath = null;
                } else if (TextUtils.isEmpty(imagePath) || !new File(imagePath).exists()) {
                    imagePath = null;
                } else {
                    str = getShortLintk(null, false);
                    C0071e.m3268c("sLink %s ", null);
                }
                new C0085a(this).m3311a(text, str, imagePath, new C0086b(this, shareParams));
            } catch (Throwable th) {
                if (this.listener != null) {
                    this.listener.onError(this, 9, th);
                }
            }
        } else if (this.listener != null) {
            this.listener.onError(this, 9, new Throwable("share text should not null or empty!"));
        }
    }

    protected C0060a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
        C0060a c0060a = new C0060a();
        c0060a.f2066b = shareParams.getText();
        CharSequence imagePath = shareParams.getImagePath();
        CharSequence imageUrl = shareParams.getImageUrl();
        if (!TextUtils.isEmpty(imagePath)) {
            c0060a.f2069e.add(imagePath);
        } else if (!TextUtils.isEmpty(imageUrl)) {
            c0060a.f2068d.add(imageUrl);
        }
        return c0060a;
    }

    protected void follow(String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 6);
        }
    }

    protected void getFriendList(int i, int i2, String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 2);
        }
    }

    public String getName() {
        return NAME;
    }

    public int getPlatformId() {
        return 14;
    }

    public int getVersion() {
        return 1;
    }

    protected void initDevInfo(String str) {
    }

    public boolean isValid() {
        return C0088c.m3316a(this.context) == 0;
    }

    protected void setNetworkDevinfo() {
    }

    protected void timeline(int i, int i2, String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 7);
        }
    }

    protected void userInfor(String str) {
        if (this.listener != null) {
            this.listener.onCancel(this, 8);
        }
    }
}
