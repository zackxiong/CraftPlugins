package cn.sharesdk.framework.network;

import java.io.InputStream;

public interface RawNetworkCallback {
    void onResponse(InputStream inputStream);
}
