package com.baidu.android.pushservice.message.p074a;

import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.a.i */
public final class C0310i {
    public static PublicMsg m5042a(String str, String str2, byte[] bArr) {
        boolean z = true;
        PublicMsg publicMsg = new PublicMsg();
        publicMsg.mMsgId = str;
        publicMsg.mAppId = str2;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (!jSONObject.isNull("title")) {
                publicMsg.mTitle = jSONObject.getString("title");
            }
            if (!jSONObject.isNull("description")) {
                publicMsg.mDescription = jSONObject.getString("description");
            }
            if (!jSONObject.isNull("url")) {
                publicMsg.mUrl = jSONObject.getString("url");
            }
            if (!jSONObject.isNull("notification_builder_id")) {
                publicMsg.mNotificationBuilder = jSONObject.getInt("notification_builder_id");
            }
            if (!jSONObject.isNull(PushConstants.EXTRA_OPENTYPE)) {
                publicMsg.mOpenType = jSONObject.getInt(PushConstants.EXTRA_OPENTYPE);
            }
            if (!jSONObject.isNull("notification_basic_style")) {
                publicMsg.mNotificationBasicStyle = jSONObject.getInt("notification_basic_style");
            }
            if (!jSONObject.isNull("custom_content")) {
                String string = jSONObject.getString("custom_content");
                C0385a.m5311b("PublicMsgBuilder", "custom_content=" + string);
                publicMsg.mCustomContent = string;
            }
            if (!jSONObject.isNull("net_support")) {
                publicMsg.mNetType = jSONObject.getInt("net_support");
            }
            if (!jSONObject.isNull("app_situation")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("app_situation");
                if (jSONObject2.getInt("as_is_support") != 1) {
                    z = false;
                }
                publicMsg.mIsSupportApp = z;
                publicMsg.mSupportAppname = jSONObject2.getString("as_pkg_name");
            }
            if (!jSONObject.isNull(PushConstants.PACKAGE_NAME)) {
                publicMsg.mPkgName = jSONObject.getString(PushConstants.PACKAGE_NAME);
            }
            if (!jSONObject.isNull("pkg_vercode")) {
                publicMsg.mPkgVercode = jSONObject.getInt("pkg_vercode");
            }
            if (!jSONObject.isNull("pkg_content")) {
                publicMsg.mPkgContent = jSONObject.getString("pkg_content");
            }
            publicMsg.mAdvertiseStyle = jSONObject.optInt("advertise_style");
            publicMsg.mAdvertiseSmallIconUrl = jSONObject.optString("smallicon_url");
            publicMsg.mAdvertiseLargeIconUrl = jSONObject.optString("largeicon_url");
            publicMsg.mAdvertiseClickUrl = jSONObject.optString("click_url");
            publicMsg.mAdvertiseBigPictureClickUrl = jSONObject.optString("pictureclick_url");
            publicMsg.mAdvertiseBigPictureUrl = jSONObject.optString("bigpicture_url");
            publicMsg.mAdvertiseDownloadClickUrl = jSONObject.optString("download_click_url");
            publicMsg.mAdvertiseDetailClickUrl = jSONObject.optString("detail_click_url");
            publicMsg.mAdvertiseBigPictureTitle = jSONObject.optString("bigstyle_title");
            publicMsg.mAdvertiseBigPictureContent = jSONObject.optString("bigstyle_content");
            return publicMsg;
        } catch (JSONException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("PublicMsgBuilder", "Public Message Parsing Fail:\r\n" + e.getMessage());
            }
            return null;
        }
    }
}
