package com.yf.smart.weloopx.android.broadcasts;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.PushMessageReceiver;
import com.yf.smart.weloopx.android.ui.activities.MessageNotification;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class MyBaiduPushMessageReceiver extends PushMessageReceiver {
    public static final String f7126a;

    static {
        f7126a = MyBaiduPushMessageReceiver.class.getSimpleName();
    }

    public void onBind(Context context, int i, String str, String str2, String str3, String str4) {
        Log.d(f7126a, "onBind errorCode=" + i + " appid=" + str + " userId=" + str2 + " channelId=" + str3 + " requestId=" + str4);
        if (i != 0) {
        }
    }

    public void onMessage(Context context, String str, String str2) {
        Log.d(f7126a, "\u900f\u4f20\u6d88\u606f message=\"" + str + "\" customContentString=" + str2);
        if (!TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject(str2);
                if (!jSONObject.isNull("mykey")) {
                    jSONObject.getString("mykey");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void onNotificationClicked(Context context, String str, String str2, String str3) {
        Log.d(f7126a, "\u901a\u77e5\u70b9\u51fb title=\"" + str + "\" description=\"" + str2 + "\" customContent=" + str3);
        if (!TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                if (!jSONObject.isNull("mykey")) {
                    jSONObject.getString("mykey");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        m9033a(context);
    }

    public void onNotificationArrived(Context context, String str, String str2, String str3) {
        Log.d(f7126a, "onNotificationArrived  title=\"" + str + "\" description=\"" + str2 + "\" customContent=" + str3);
        if (!TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                if (!jSONObject.isNull("mykey")) {
                    jSONObject.getString("mykey");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void onSetTags(Context context, int i, List<String> list, List<String> list2, String str) {
        Log.d(f7126a, "onSetTags errorCode=" + i + " sucessTags=" + list + " failTags=" + list2 + " requestId=" + str);
    }

    public void onDelTags(Context context, int i, List<String> list, List<String> list2, String str) {
        Log.d(f7126a, "onDelTags errorCode=" + i + " sucessTags=" + list + " failTags=" + list2 + " requestId=" + str);
    }

    public void onListTags(Context context, int i, List<String> list, String str) {
        Log.d(f7126a, "onListTags errorCode=" + i + " tags=" + list);
    }

    public void onUnbind(Context context, int i, String str) {
        Log.d(f7126a, "onUnbind errorCode=" + i + " requestId = " + str);
        if (i != 0) {
        }
    }

    private void m9033a(Context context) {
        Intent intent = new Intent(context, MessageNotification.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }
}
