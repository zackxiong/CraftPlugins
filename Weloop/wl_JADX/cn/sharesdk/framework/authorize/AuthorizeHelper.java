package cn.sharesdk.framework.authorize;

import cn.sharesdk.framework.Platform;

public interface AuthorizeHelper {
    AuthorizeListener getAuthorizeListener();

    String getAuthorizeUrl();

    C0005b getAuthorizeWebviewClient(C0016g c0016g);

    Platform getPlatform();

    String getRedirectUri();

    SSOListener getSSOListener();

    C0002f getSSOProcessor(C0014e c0014e);
}
