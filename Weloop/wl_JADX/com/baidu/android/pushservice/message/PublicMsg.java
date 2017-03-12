package com.baidu.android.pushservice.message;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.message.p074a.C0313k;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p072f.C0268b;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0278l;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;
import java.net.URISyntaxException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class PublicMsg implements Parcelable {
    public static final Creator<PublicMsg> CREATOR;
    public static final int FLAG_NEED_CLEAR = 1;
    public static final int FLAG_NEED_SOUND = 4;
    public static final int FLAG_NEED_VIBRATE = 2;
    private static final String TAG = "PublicMsg";
    public String mAdvertiseBigPictureClickUrl;
    public String mAdvertiseBigPictureContent;
    public String mAdvertiseBigPictureTitle;
    public String mAdvertiseBigPictureUrl;
    public String mAdvertiseClickUrl;
    public String mAdvertiseDetailClickUrl;
    public String mAdvertiseDownloadClickUrl;
    public String mAdvertiseLargeIconUrl;
    public String mAdvertiseSmallIconUrl;
    public int mAdvertiseStyle;
    public String mAppId;
    public String mCustomContent;
    public String mDescription;
    public boolean mIsSupportApp;
    public String mMsgId;
    public int mNetType;
    public int mNotificationBasicStyle;
    public int mNotificationBuilder;
    public int mOpenType;
    public String mPkgContent;
    public String mPkgName;
    public int mPkgVercode;
    public String mSupportAppname;
    public String mTitle;
    public String mUrl;
    public int mUserConfirm;

    static {
        CREATOR = new C0323i();
    }

    public PublicMsg() {
        this.mPkgVercode = 0;
        this.mNetType = 0;
        this.mNotificationBuilder = 0;
        this.mOpenType = 0;
        this.mNotificationBasicStyle = 7;
        this.mIsSupportApp = true;
        this.mUserConfirm = 0;
    }

    PublicMsg(Parcel parcel) {
        this.mPkgVercode = 0;
        this.mNetType = 0;
        this.mNotificationBuilder = 0;
        this.mOpenType = 0;
        this.mNotificationBasicStyle = 7;
        this.mIsSupportApp = true;
        this.mUserConfirm = 0;
        this.mMsgId = parcel.readString();
        this.mAppId = parcel.readString();
        this.mTitle = parcel.readString();
        this.mDescription = parcel.readString();
        this.mUrl = parcel.readString();
        this.mPkgName = parcel.readString();
        this.mPkgVercode = parcel.readInt();
        this.mNotificationBuilder = parcel.readInt();
        this.mNotificationBasicStyle = parcel.readInt();
        this.mOpenType = parcel.readInt();
        this.mUserConfirm = parcel.readInt();
        this.mCustomContent = parcel.readString();
        this.mPkgContent = parcel.readString();
        this.mAdvertiseStyle = parcel.readInt();
        this.mAdvertiseSmallIconUrl = parcel.readString();
        this.mAdvertiseLargeIconUrl = parcel.readString();
        this.mAdvertiseClickUrl = parcel.readString();
        this.mAdvertiseBigPictureUrl = parcel.readString();
        this.mAdvertiseBigPictureClickUrl = parcel.readString();
        this.mAdvertiseDownloadClickUrl = parcel.readString();
        this.mAdvertiseDetailClickUrl = parcel.readString();
        this.mAdvertiseBigPictureTitle = parcel.readString();
        this.mAdvertiseBigPictureContent = parcel.readString();
    }

    private void addCustomContentToIntent(Intent intent) {
        if (this.mCustomContent != null) {
            try {
                JSONObject jSONObject = new JSONObject(this.mCustomContent);
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str = (String) keys.next();
                    intent.putExtra(str, jSONObject.getString(str));
                }
                intent.putExtra(PushConstants.EXTRA_EXTRA, this.mCustomContent);
            } catch (JSONException e) {
                C0385a.m5312c(TAG, "Custom content to JSONObject exception::" + e.getMessage());
            }
        }
    }

    private String getLauncherActivityName(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo != null) {
                return resolveInfo.activityInfo.name;
            }
        }
        return null;
    }

    private void insertADBehavior(Context context, C0208h c0208h, C0268b c0268b, C0277k c0277k) {
        if (c0208h != null) {
            c0277k.m4847d(c0208h.m4444c());
            c0277k.m4845c(C0374f.m5205c(c0208h.f2984e));
            c0277k.m4843b(c0208h.f2984e);
            C0277k a = C0374f.m5177a(c0277k, context, c0208h.m4444c());
            try {
                C0284t.m4929a(context, c0268b);
                C0284t.m4933a(context, a);
            } catch (Exception e) {
                C0385a.m5308a(TAG, "PM insert db exception");
            }
        }
    }

    private void insertADNotiBehavior(Context context, String str, String str2, String str3, String str4, String str5) {
        C0268b c0268b = new C0268b();
        c0268b.g = str5;
        c0268b.f3197a = str;
        c0268b.h = System.currentTimeMillis();
        c0268b.i = C0399b.m5336d(context);
        c0268b.f3199c = C0313k.MSG_TYPE_ADVERTISE.m5045a();
        c0268b.k = str2;
        c0268b.f3200d = str3;
        c0268b.f3201e = str4;
        C0208h b = C0201b.m4446a(context).m4458b(str2);
        if (b != null) {
            insertADBehavior(context, b, c0268b, new C0277k(str2));
            if (C0192a.f2943d >= FLAG_NEED_CLEAR && C0192a.f2943d <= 5) {
                C0374f.m5189a("pushadvertise:  insert user action", context);
            }
        }
    }

    private void insertBehavior(Context context, C0208h c0208h, C0278l c0278l, C0277k c0277k) {
        if (c0208h != null) {
            c0277k.m4847d(c0208h.m4444c());
            c0277k.m4845c(C0374f.m5205c(c0208h.f2984e));
            c0277k.m4843b(c0208h.f2984e);
            C0277k a = C0374f.m5177a(c0277k, context, c0208h.m4444c());
            try {
                C0284t.m4934a(context, c0278l);
                C0284t.m4933a(context, a);
            } catch (Exception e) {
                C0385a.m5308a(TAG, "PM insert db exception");
            }
        }
    }

    private void insertNotiBehavior(Context context, String str, String str2, String str3) {
        C0278l c0278l = new C0278l();
        c0278l.g = str3;
        c0278l.f3246a = str;
        c0278l.h = System.currentTimeMillis();
        c0278l.i = C0399b.m5336d(context);
        c0278l.f3248c = C0313k.MSG_TYPE_MULTI_PRIVATE_NOTIFICATION.m5045a();
        c0278l.k = str2;
        C0208h b = C0201b.m4446a(context).m4458b(str2);
        if (b != null) {
            insertBehavior(context, b, c0278l, new C0277k(str2));
        }
    }

    private void startApplicationLauncher(Context context, String str, String str2) {
        try {
            Intent parseUri = this.mPkgContent != null ? Intent.parseUri(this.mPkgContent, 0) : new Intent();
            String launcherActivityName = getLauncherActivityName(context, str);
            if (launcherActivityName != null) {
                parseUri.setClassName(str, launcherActivityName);
                parseUri.setFlags(parseUri.getFlags() | 268435456);
                parseUri.putExtra(PushConstants.EXTRA_OPENTYPE, FLAG_NEED_CLEAR);
                parseUri.putExtra(PushConstants.EXTRA_MSGID, str2);
                context.startActivity(parseUri);
            }
        } catch (URISyntaxException e) {
            C0385a.m5313d(TAG, "error " + e.getMessage());
        }
    }

    public int describeContents() {
        return 0;
    }

    public void handle(Context context, String str, String str2) {
        int i = FLAG_NEED_CLEAR;
        int i2 = 0;
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "=== Handle msg: " + toString());
        }
        if ("com.baidu.pushservice.action.publicmsg.DELETE_V2".equals(str)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Public msg deleted by user, title = " + this.mTitle);
            }
            sendResult(context, str2, FLAG_NEED_VIBRATE);
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            int i3 = packageManager.getPackageInfo(this.mPkgName, 0).versionCode;
            if (i3 >= this.mPkgVercode) {
                Intent parseUri = Intent.parseUri(this.mPkgContent, 0);
                parseUri.setPackage(this.mPkgName);
                if (packageManager.queryBroadcastReceivers(parseUri, 0).size() > 0) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "Intent broadcasted to app! ===> " + parseUri.toURI());
                    }
                    context.sendBroadcast(parseUri);
                } else if (packageManager.queryIntentActivities(parseUri, 0).size() > 0) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "Intent sent to actvity! ===> " + parseUri.toURI());
                    }
                    parseUri.addFlags(268435456);
                    context.startActivity(parseUri);
                } else {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "No app component can deal, so start " + this.mPkgName + " launcher activity!");
                    }
                    i = 0;
                }
                i2 = i;
            } else if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Version code is too low! ===> app ver: " + i3 + ", request ver:" + this.mPkgVercode);
            }
        } catch (NameNotFoundException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "package not exist \r\n" + e.getMessage());
            }
        } catch (URISyntaxException e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "uri to intent fail \r\n" + e2.getMessage());
            }
        } catch (Exception e3) {
            C0385a.m5313d(TAG, "parse customize action error\r\n" + e3.getMessage());
        }
        if (i2 == 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(this.mUrl));
            intent.addFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e4) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d(TAG, ">>> Url cann't be deal! \r\n" + e4.getMessage());
                }
            }
        }
        sendResult(context, str2, i2);
    }

    public void handleADNotification(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "=== Handle AD notification: " + str);
        }
        if ("com.baidu.android.pushservice.action.adnotification.ADDELETE".equals(str)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "AD notification deleted by user, title = " + this.mTitle);
            }
            if (C0192a.f2943d >= FLAG_NEED_CLEAR && C0192a.f2943d <= 5) {
                C0374f.m5189a("pushadvertise:  save delete action", context);
            }
            insertADNotiBehavior(context, str2, str3, str6, str4, "010502");
            return;
        }
        try {
            int i = context.getPackageManager().getPackageInfo(this.mPkgName, 0).versionCode;
            if (i >= this.mPkgVercode) {
                insertADNotiBehavior(context, str2, str3, str6, str4, "010501");
            } else if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Version code is too low! ===> app ver: " + i + ", request ver:" + this.mPkgVercode);
            }
        } catch (NameNotFoundException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "package not exist \r\n" + e.getMessage());
            }
        }
    }

    public void handlePrivateNotification(Context context, String str, String str2, String str3) {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "=== Handle private notification: " + str);
        }
        if ("com.baidu.android.pushservice.action.privatenotification.DELETE".equals(str)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "private notification deleted by user, title = " + this.mTitle);
            }
            insertNotiBehavior(context, str2, str3, "010202");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            int i = packageManager.getPackageInfo(this.mPkgName, 0).versionCode;
            if (i >= this.mPkgVercode) {
                Intent intent = new Intent();
                intent.putExtra(PushConstants.EXTRA_NOTIFICATION_TITLE, this.mTitle);
                intent.putExtra(PushConstants.EXTRA_NOTIFICATION_CONTENT, this.mDescription);
                addCustomContentToIntent(intent);
                C0374f.m5184a(context, intent, PushConstants.ACTION_RECEIVER_NOTIFICATION_CLICK, this.mPkgName);
                insertNotiBehavior(context, str2, str3, "010201");
                if (this.mOpenType == FLAG_NEED_CLEAR && this.mUrl != null) {
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(this.mUrl));
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                } else if (this.mOpenType != FLAG_NEED_VIBRATE) {
                } else {
                    if (this.mPkgContent != null) {
                        intent = Intent.parseUri(this.mPkgContent, 0);
                        intent.setPackage(this.mPkgName);
                        if (packageManager.queryBroadcastReceivers(intent, 0).size() > 0) {
                            if (C0192a.m4341b()) {
                                C0385a.m5311b(TAG, "Intent broadcasted to app! ===> " + intent.toURI());
                            }
                            context.sendBroadcast(intent);
                            return;
                        } else if (packageManager.queryIntentActivities(intent, 0).size() > 0) {
                            if (C0192a.m4341b()) {
                                C0385a.m5311b(TAG, "Intent sent to actvity! ===> " + intent.toURI());
                            }
                            intent.addFlags(268435456);
                            intent.putExtra(PushConstants.EXTRA_OPENTYPE, FLAG_NEED_CLEAR);
                            intent.putExtra(PushConstants.EXTRA_MSGID, str2);
                            context.startActivity(intent);
                            return;
                        } else {
                            return;
                        }
                    }
                    startApplicationLauncher(context, this.mPkgName, str2);
                }
            } else if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Version code is too low! ===> app ver: " + i + ", request ver:" + this.mPkgVercode);
            }
        } catch (NameNotFoundException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "package not exist \r\n" + e.getMessage());
            }
        } catch (URISyntaxException e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d(TAG, "uri to intent fail \r\n" + e2.getMessage());
            }
        }
    }

    public void handleRichMediaNotification(Context context, String str, String str2) {
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "=== Handle rich media notification: " + str + " title = " + this.mTitle);
        }
        C0278l c0278l = new C0278l();
        if ("com.baidu.android.pushservice.action.media.DELETE".equals(str)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "rich media notification deleted by user, title = " + this.mTitle);
            }
            c0278l.g = "010402";
        } else {
            Intent intent = new Intent("com.baidu.android.pushservice.action.media.CLICK");
            intent.setPackage(this.mPkgName);
            intent.putExtra("public_msg", this);
            context.sendBroadcast(intent);
            c0278l.g = "010401";
        }
        c0278l.f3246a = this.mMsgId;
        c0278l.f3248c = C0313k.MSG_TYPE_RICH_MEDIA.m5045a();
        c0278l.h = System.currentTimeMillis();
        c0278l.j = 0;
        c0278l.i = C0399b.m5336d(context);
        c0278l.k = str2;
        C0208h b = C0201b.m4446a(context).m4458b(str2);
        if (b != null) {
            insertBehavior(context, b, c0278l, new C0277k(str2));
        }
    }

    void sendResult(Context context, String str, int i) {
        Object c = ad.m4377a().m4382c();
        Object d = ad.m4377a().m4383d();
        if (!TextUtils.isEmpty(c) && !TextUtils.isEmpty(d)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Send Linkhit, msgId = " + str + ", resultCode = " + i);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(PushConstants.EXTRA_MSGID, str);
                jSONObject.put("result_code", i);
            } catch (JSONException e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(TAG, e.getMessage());
                }
            }
            Thread thread = new Thread(new C0322h(this, context, c, d, jSONObject.toString()));
            thread.setName("PushService-linkhit");
            thread.start();
        } else if (C0192a.m4341b()) {
            C0385a.m5313d(TAG, "Fail Send Public msg result. Token invalid!");
        }
    }

    public String toString() {
        return "\r\n mMsgId = " + this.mMsgId + "\r\n mAppId = " + this.mAppId + "\r\n mTitle = " + this.mTitle + "\r\n mDescription = " + this.mDescription + "\r\n mUrl = " + this.mUrl + "\r\n mNetType = " + this.mNetType + "\r\n mSupportAppname = " + this.mSupportAppname + "\r\n mIsSupportApp = " + this.mIsSupportApp + "\r\n mPkgName = " + this.mPkgName + "\r\n mPlgVercode = " + this.mPkgVercode + "\r\n mNotificationBuilder = " + this.mNotificationBuilder + "\r\n mNotificationBasicStyle = " + this.mNotificationBasicStyle + "\r\n mOpenType = " + this.mOpenType + "\r\n mCustomContent = " + this.mCustomContent + "\r\n mIntent = " + this.mPkgContent + "AdvertiseStyle " + this.mAdvertiseStyle + "\r\n " + "AdvertiseBigpictureTitle " + this.mAdvertiseBigPictureTitle + "\r\n" + "AdvertiseBigpictureContent " + this.mAdvertiseBigPictureClickUrl + "\r\n" + "AdvertiseBigpictureUrl " + this.mAdvertiseBigPictureUrl + "\r\n" + "AdvertiseClickUrl " + this.mAdvertiseClickUrl + "\r\n" + "AdvertiseSamllIcon " + this.mAdvertiseSmallIconUrl + "\r\n" + "AdvertiseLargeIcon " + this.mAdvertiseLargeIconUrl + "\r\n" + "AdvertiseBigPictureUrl " + this.mAdvertiseBigPictureClickUrl + "\r\n" + "AdvertiseDownloadClickUrl " + this.mAdvertiseDownloadClickUrl + "\r\n" + "AdvertiseDetailClickUrl " + this.mAdvertiseDetailClickUrl + "\r\n";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mMsgId);
        parcel.writeString(this.mAppId);
        parcel.writeString(this.mTitle);
        parcel.writeString(this.mDescription);
        parcel.writeString(this.mUrl);
        parcel.writeString(this.mPkgName);
        parcel.writeInt(this.mPkgVercode);
        parcel.writeInt(this.mNotificationBuilder);
        parcel.writeInt(this.mNotificationBasicStyle);
        parcel.writeInt(this.mOpenType);
        parcel.writeInt(this.mUserConfirm);
        parcel.writeString(this.mCustomContent);
        parcel.writeString(this.mPkgContent);
        parcel.writeInt(this.mAdvertiseStyle);
        parcel.writeString(this.mAdvertiseSmallIconUrl);
        parcel.writeString(this.mAdvertiseLargeIconUrl);
        parcel.writeString(this.mAdvertiseClickUrl);
        parcel.writeString(this.mAdvertiseBigPictureUrl);
        parcel.writeString(this.mAdvertiseBigPictureClickUrl);
        parcel.writeString(this.mAdvertiseDownloadClickUrl);
        parcel.writeString(this.mAdvertiseDetailClickUrl);
        parcel.writeString(this.mAdvertiseBigPictureTitle);
        parcel.writeString(this.mAdvertiseBigPictureContent);
    }
}
