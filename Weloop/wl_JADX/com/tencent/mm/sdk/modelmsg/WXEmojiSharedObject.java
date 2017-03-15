package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage.IMediaObject;
import com.tencent.mm.sdk.p106b.C0723a;

public class WXEmojiSharedObject implements IMediaObject {
    private static final String TAG = "MicroMsg.SDK.WXEmojiSharedObject";
    public int packageflag;
    public String packageid;
    public String thumburl;
    public String url;

    public WXEmojiSharedObject(String str, int i, String str2, String str3) {
        this.thumburl = str;
        this.packageflag = i;
        this.packageid = str2;
        this.url = str3;
    }

    public boolean checkArgs() {
        if (!TextUtils.isEmpty(this.packageid) && !TextUtils.isEmpty(this.thumburl) && !TextUtils.isEmpty(this.url) && this.packageflag != -1) {
            return true;
        }
        C0723a.m7143a(TAG, "checkArgs fail, packageid or thumburl is invalid");
        return false;
    }

    public void serialize(Bundle bundle) {
        bundle.putString("_wxemojisharedobject_thumburl", this.thumburl);
        bundle.putInt("_wxemojisharedobject_packageflag", this.packageflag);
        bundle.putString("_wxemojisharedobject_packageid", this.packageid);
        bundle.putString("_wxemojisharedobject_url", this.url);
    }

    public int type() {
        return 15;
    }

    public void unserialize(Bundle bundle) {
        this.thumburl = bundle.getString("_wxwebpageobject_thumburl");
        this.packageflag = bundle.getInt("_wxwebpageobject_packageflag");
        this.packageid = bundle.getString("_wxwebpageobject_packageid");
        this.url = bundle.getString("_wxwebpageobject_url");
    }
}