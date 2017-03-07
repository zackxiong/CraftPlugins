package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage.IMediaObject;
import com.tencent.mm.sdk.p106b.C0723a;

public class WXVideoObject implements IMediaObject {
    private static final int LENGTH_LIMIT = 10240;
    private static final String TAG = "MicroMsg.SDK.WXVideoObject";
    public String videoLowBandUrl;
    public String videoUrl;

    public boolean checkArgs() {
        if ((this.videoUrl == null || this.videoUrl.length() == 0) && (this.videoLowBandUrl == null || this.videoLowBandUrl.length() == 0)) {
            C0723a.m7143a(TAG, "both arguments are null");
            return false;
        } else if (this.videoUrl != null && this.videoUrl.length() > LENGTH_LIMIT) {
            C0723a.m7143a(TAG, "checkArgs fail, videoUrl is too long");
            return false;
        } else if (this.videoLowBandUrl == null || this.videoLowBandUrl.length() <= LENGTH_LIMIT) {
            return true;
        } else {
            C0723a.m7143a(TAG, "checkArgs fail, videoLowBandUrl is too long");
            return false;
        }
    }

    public void serialize(Bundle bundle) {
        bundle.putString("_wxvideoobject_videoUrl", this.videoUrl);
        bundle.putString("_wxvideoobject_videoLowBandUrl", this.videoLowBandUrl);
    }

    public int type() {
        return 4;
    }

    public void unserialize(Bundle bundle) {
        this.videoUrl = bundle.getString("_wxvideoobject_videoUrl");
        this.videoLowBandUrl = bundle.getString("_wxvideoobject_videoLowBandUrl");
    }
}
