package cn.sharesdk.google;

import android.content.Intent;
import cn.sharesdk.framework.C0007h;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.C0005b;
import cn.sharesdk.framework.authorize.C0016g;

/* renamed from: cn.sharesdk.google.a */
public class C0085a extends C0007h {
    public C0085a(Platform platform) {
        super(platform);
    }

    public void m3311a(String str, String str2, String str3, PlatformActionListener platformActionListener) {
        if (C0088c.m3316a(this.a.getContext()) != 0) {
            throw new GooglePlusClientNotExistException();
        }
        Intent intent = new Intent();
        intent.putExtra("text", str);
        intent.putExtra("imageUrl", str2);
        intent.putExtra("imagePath", str3);
        C0089d c0089d = new C0089d();
        c0089d.m3319a(this.a, platformActionListener);
        c0089d.show(this.a.getContext(), intent);
    }

    public String getAuthorizeUrl() {
        return null;
    }

    public C0005b getAuthorizeWebviewClient(C0016g c0016g) {
        return null;
    }

    public String getRedirectUri() {
        return null;
    }
}
