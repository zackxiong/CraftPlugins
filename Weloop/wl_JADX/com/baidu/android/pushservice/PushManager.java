package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Handler;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.Internal;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0364k;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.location.LocationClientOption;
import com.umeng.update.ProGuard;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"WorldReadableFiles"})
public class PushManager {
    private static int INFO_MAX_NUM = 0;
    private static final String TAG = "PushManager";
    private static Handler mHandler;
    @SuppressLint({"UseSparseArrays"})
    private static HashMap<Integer, C0364k> mStatisticsMap;

    static {
        INFO_MAX_NUM = 50;
        mHandler = null;
        mStatisticsMap = new HashMap();
    }

    public static void bind(Context context, int i) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_BIND);
            createMethodIntent.putExtra(PushConstants.EXTRA_BIND_NAME, Build.MODEL);
            createMethodIntent.putExtra(PushConstants.EXTRA_BIND_STATUS, i);
            createMethodIntent.putExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, C0192a.m4336a());
            createMethodIntent.setFlags(createMethodIntent.getFlags() | 32);
            sendRedirecctionIntent(context, createMethodIntent);
        }
    }

    public static void bindGroup(Context context, String str) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GBIND);
            createMethodIntent.putExtra(PushConstants.EXTRA_GID, str);
            createMethodIntent.setFlags(createMethodIntent.getFlags() | 32);
            context.sendBroadcast(createMethodIntent);
        }
    }

    private static void bindPushService(Context context, int i, String str) {
        if (C0192a.m4341b() && C0192a.f2943d > 0) {
            C0374f.m5201b("startWork at time of " + System.currentTimeMillis());
        }
        C0374f.m5227k(context);
        mHandler.postDelayed(new C0351s(i, context, str), 1000);
    }

    private static String bindinfoTojson(String str, String str2, String str3, String str4) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appid", str2);
        jSONObject.put("channel_id", str3);
        jSONObject.put(PushConstants.EXTRA_USER_ID, str4);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("request_id", str);
        jSONObject2.put("response_params", jSONObject);
        return jSONObject2.toString();
    }

    public static void checkedSendForUser(Context context, int i) {
        String str = "errorCode:" + i;
        if (context != null) {
            Editor edit = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).edit();
            edit.putLong(PushLightapp.KEY_PRIORITY2, 0);
            edit.commit();
            edit = context.getSharedPreferences("bindcache", 0).edit();
            edit.putBoolean(PushConstants.EXTRA_BIND_STATUS, false);
            edit.commit();
        }
        Intent intent = new Intent();
        intent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_BIND);
        intent.putExtra(PushConstants.EXTRA_ERROR_CODE, i);
        intent.putExtra(PushConstants.EXTRA_CONTENT, str.getBytes());
        intent.putExtra(PushConstants.EXTRA_BIND_STATUS, 0);
        if (C0192a.m4341b()) {
            C0385a.m5313d(TAG, "> sendResult to " + context.getPackageName() + " ,method:" + PushConstants.METHOD_BIND + " ,errorCode : " + i + " ,content : " + new String(str));
        }
        C0374f.m5184a(context, intent, PushConstants.ACTION_RECEIVE, context.getPackageName());
    }

    private static Intent createLappMethodIntent(Context context, String str) {
        Intent createWebMethodIntent = PushConstants.createWebMethodIntent(context);
        createWebMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
        return createWebMethodIntent;
    }

    public static Intent createMethodIntent(Context context) {
        if (isNullContext(context)) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 5);
        int i = sharedPreferences.getInt("com.baidu.android.pushservice.PushManager.LOGIN_TYPE", 0);
        String string = sharedPreferences.getString("com.baidu.android.pushservice.PushManager.LONGIN_VALUE", "");
        Intent createBdussInent;
        String rsaEncrypt;
        if (i == 2) {
            createBdussInent = Internal.createBdussInent(context);
            createBdussInent.putExtra("appid", string);
            rsaEncrypt = PushConstants.rsaEncrypt(sharedPreferences.getString("com.baidu.android.pushservice.PushManager.BDUSS", ""));
            createBdussInent.putExtra("bduss", rsaEncrypt);
            if (!C0192a.m4341b()) {
                return createBdussInent;
            }
            C0385a.m5311b(TAG, "RSA Bduss:" + rsaEncrypt);
            return createBdussInent;
        }
        createBdussInent = PushConstants.createMethodIntent(context);
        if (i == 1) {
            rsaEncrypt = PushConstants.rsaEncrypt(string);
            createBdussInent.putExtra(PushConstants.EXTRA_ACCESS_TOKEN, rsaEncrypt);
            if (!C0192a.m4341b()) {
                return createBdussInent;
            }
            C0385a.m5311b(TAG, "RSA Access Token:" + rsaEncrypt);
            return createBdussInent;
        }
        createBdussInent.putExtra(PushConstants.EXTRA_API_KEY, string);
        return createBdussInent;
    }

    private static Intent createSDKMethodIntent(Context context) {
        return isNullContext(context) ? null : PushConstants.createSDKMethodIntent(context);
    }

    private static Intent createSDKMethodIntent(Context context, String str) {
        Intent createMethodIntent = PushConstants.createMethodIntent(context);
        createMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
        return createMethodIntent;
    }

    private static Intent createWebMethodIntent(Context context) {
        return isNullContext(context) ? null : PushConstants.createWebMethodIntent(context);
    }

    public static void delLappTags(Context context, String str, List<String> list) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            if (list == null || list.size() == 0) {
                C0385a.m5312c(TAG, "No tags specified, do nothing.");
                return;
            }
            String str2 = "[";
            for (String str3 : list) {
                str2 = ((str2 + "\"") + str3) + "\",";
            }
            if (str2.length() > 0) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            String str32 = str2 + "]";
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_DEL_LAPP_TAGS);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str32);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void delSDKTags(Context context, String str, List<String> list) {
        Intent createSDKMethodIntent = createSDKMethodIntent(context);
        if (createSDKMethodIntent != null) {
            if (list == null || list.size() == 0) {
                C0385a.m5312c(TAG, "No tags specified, do nothing.");
                return;
            }
            String str2 = "[";
            for (String str3 : list) {
                str2 = ((str2 + "\"") + str3) + "\",";
            }
            if (str2.length() > 0) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            String str32 = str2 + "]";
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_DEL_SDK_TAGS);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str32);
            context.sendBroadcast(createSDKMethodIntent);
        }
    }

    public static void delTags(Context context, List<String> list) {
        if (list == null || list.size() == 0) {
            C0385a.m5312c(TAG, "No tags specified, do nothing.");
            return;
        }
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            String str = "[";
            for (String str2 : list) {
                str = ((str + "\"") + str2) + "\",";
            }
            if (str.length() > 0) {
                str = str.substring(0, str.length() - 1);
            }
            String str22 = str + "]";
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_DEL_TAGS);
            createMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str22);
            sendRedirecctionIntent(context, createMethodIntent);
        }
    }

    public static void deleteMessages(Context context, String[] strArr) {
        if (strArr != null) {
            Intent createMethodIntent = createMethodIntent(context);
            if (createMethodIntent != null) {
                createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_DELETE);
                createMethodIntent.putExtra(PushConstants.EXTRA_MSG_IDS, strArr);
                context.sendBroadcast(createMethodIntent);
            }
        }
    }

    public static void disableLbs(Context context) {
        if (!isNullContext(context)) {
            PushSettings.m4209a(context, false);
        }
    }

    public static void enableLbs(Context context) {
        if (!isNullContext(context)) {
            PushSettings.m4209a(context, true);
        }
    }

    public static void fetchGroupMessages(Context context, String str, int i, int i2) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_FETCHGMSG);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GID, str);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GROUP_FETCH_TYPE, i);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GROUP_FETCH_NUM, i2);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void fetchMessages(Context context, int i, int i2) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_FETCH);
            createMethodIntent.putExtra(PushConstants.EXTRA_FETCH_TYPE, i);
            createMethodIntent.putExtra(PushConstants.EXTRA_FETCH_NUM, i2);
            context.sendBroadcast(createMethodIntent);
        }
    }

    public static void getGroupInfo(Context context, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GINFO);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GID, str);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void getGroupList(Context context) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GLIST);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void getGroupMessageCounts(Context context, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_COUNTGMSG);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GID, str);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void getLappBindState(Context context, String str) {
        if (!isNullContext(context)) {
            Intent createLappMethodIntent = createLappMethodIntent(context, str);
            createLappMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GET_LAPP_BIND_STATE);
            context.sendBroadcast(createLappMethodIntent);
        }
    }

    public static void getMessageCounts(Context context) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_COUNT);
            context.sendBroadcast(createMethodIntent);
        }
    }

    public static void insertPassThroughMessageClick(Context context, String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Intent intent = new Intent();
                if (intent != null) {
                    String B = C0374f.m5170B(context);
                    if (B != null) {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d(TAG, "PassThroughMessageClick  : " + B);
                        }
                        intent.putExtra(PushConstants.EXTRA_APP_ID, str2);
                        intent.putExtra("msg_id", str);
                        intent.setAction("com.baidu.android.pushservice.action.passthrough.notification.CLICK");
                        intent.setClassName(B, "com.baidu.android.pushservice.PushService");
                        context.startService(intent);
                    }
                }
            } catch (Exception e) {
                C0385a.m5313d(TAG, "error " + e.getMessage());
            }
        }
    }

    public static void insertPassThroughMessageDelete(Context context, String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Intent intent = new Intent();
                if (intent != null) {
                    String B = C0374f.m5170B(context);
                    if (B != null) {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d(TAG, "PassThroughMessageDelete  : " + B);
                        }
                        intent.putExtra(PushConstants.EXTRA_APP_ID, str2);
                        intent.putExtra("msg_id", str);
                        intent.setAction("com.baidu.android.pushservice.action.passthrough.notification.DELETE");
                        intent.setClassName(B, "com.baidu.android.pushservice.PushService");
                        context.startService(intent);
                    }
                }
            } catch (Exception e) {
                C0385a.m5313d(TAG, "error " + e.getMessage());
            }
        }
    }

    public static void insertPassThroughMessageNotified(Context context, String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Intent intent = new Intent();
                if (intent != null) {
                    String B = C0374f.m5170B(context);
                    if (B != null) {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d(TAG, "PassThroughMessageNotified  : " + B);
                        }
                        intent.putExtra(PushConstants.EXTRA_APP_ID, str2);
                        intent.putExtra("msg_id", str);
                        intent.setAction("com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED");
                        intent.setClassName(B, "com.baidu.android.pushservice.PushService");
                        context.startService(intent);
                    }
                }
            } catch (Exception e) {
                C0385a.m5313d(TAG, "error " + e.getMessage());
            }
        }
    }

    private static boolean installStatus(Context context, int i, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("bindcache", 0);
        Long valueOf = Long.valueOf(sharedPreferences.getLong("currbindtime", 0));
        String string = sharedPreferences.getString(PushConstants.EXTRA_ACCESS_TOKEN, "");
        String string2 = sharedPreferences.getString(PushConstants.EXTRA_API_KEY, "");
        Long valueOf2 = Long.valueOf(sharedPreferences.getLong(ProGuard.f5479g, 0));
        if (Long.valueOf(System.currentTimeMillis()).longValue() - valueOf.longValue() > 43200000) {
            sharedPreferences.edit().clear().commit();
            return false;
        }
        if (i == 1) {
            if (!str.equals(string)) {
                return false;
            }
        } else if (i == 0 && !str.equals(string2)) {
            return false;
        }
        return ((long) C0374f.m5213e(context, context.getPackageName())) == valueOf2.longValue();
    }

    public static boolean isConnected(Context context) {
        if (isNullContext(context)) {
            return false;
        }
        boolean z = true;
        if (!(C0374f.m5248u(context) && PushSettings.m4218b(context))) {
            z = false;
        }
        return z;
    }

    private static boolean isNullContext(Context context) {
        if (context != null) {
            return false;
        }
        C0385a.m5313d(TAG, "Context is null!");
        return true;
    }

    public static boolean isPushEnabled(Context context) {
        return (isNullContext(context) || C0374f.m5207c(context)) ? false : true;
    }

    private static boolean isRunningNormal(Context context) {
        CharSequence B = C0374f.m5170B(context);
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "Current highest pkgname is : " + B);
        }
        int i = 0;
        for (String contains : C0374f.m5253x(context)) {
            i = contains.contains(B) ? i + 1 : i;
        }
        if (i == 0) {
            return false;
        }
        long o = C0374f.m5236o(context);
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "Current   priority is : " + o);
        }
        long C = C0374f.m5171C(context);
        if (C0192a.m4341b()) {
            C0385a.m5311b(TAG, "Current   highest priority is : " + C);
        }
        return o <= C;
    }

    private static void lightAppBind(Context context, int i, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_LAPP_BIND_INTENT);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_BIND_NAME, Build.MODEL);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_BIND_STATUS, i);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, C0192a.m4336a());
            createWebMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createWebMethodIntent.setFlags(createWebMethodIntent.getFlags() | 32);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void listLappTags(Context context, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_LIST_LAPP_TAGS);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    public static void listSDKTags(Context context, String str) {
        Intent createSDKMethodIntent = createSDKMethodIntent(context);
        if (createSDKMethodIntent != null) {
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_LIST_SDK_TAGS);
            context.sendBroadcast(createSDKMethodIntent);
        }
    }

    public static void listTags(Context context) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_LISTTAGS);
            sendRedirecctionIntent(context, createMethodIntent);
        }
    }

    public static void resumeWork(Context context) {
        if (!isNullContext(context)) {
            C0192a.m4340b(context, true);
            C0374f.m5188a(context, true, true);
            C0192a.m4338a(context, true);
            C0374f.m5227k(context);
            bind(context, 0);
        }
    }

    private static void sdkBind(Context context, int i, String str, int i2) {
        Intent createSDKMethodIntent = createSDKMethodIntent(context);
        if (createSDKMethodIntent != null) {
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SDK_BIND);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_BIND_NAME, Build.MODEL);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_BIND_STATUS, i);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, C0192a.m4336a());
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_CLIENT_SDK_VERSION, i2);
            createSDKMethodIntent.setFlags(createSDKMethodIntent.getFlags() | 32);
            context.sendBroadcast(createSDKMethodIntent);
        }
    }

    public static void sdkStartWork(Context context, String str, int i) {
        if (!isNullContext(context)) {
            C0192a.m4340b(context, true);
            C0374f.m5227k(context);
            sdkBind(context, 0, str, i);
        }
    }

    public static void sdkUnbind(Context context, String str) {
        if (!isNullContext(context)) {
            Intent createSDKMethodIntent = createSDKMethodIntent(context, str);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SDK_UNBIND);
            context.sendBroadcast(createSDKMethodIntent);
        }
    }

    public static void sendMsgToUser(Context context, String str, String str2, String str3, String str4) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SEND_MSG_TO_USER);
            createMethodIntent.putExtra(PushConstants.EXTRA_APP_ID, str);
            createMethodIntent.putExtra(PushConstants.EXTRA_USER_ID, str2);
            createMethodIntent.putExtra(PushConstants.EXTRA_MSG_KEY, str3);
            createMethodIntent.putExtra(PushConstants.EXTRA_MSG, str4);
            context.sendBroadcast(createMethodIntent);
        }
    }

    public static void sendRedirecctionIntent(Context context, Intent intent) {
        String B = C0374f.m5170B(context);
        intent.setClassName(B, "com.baidu.android.pushservice.PushService");
        try {
            context.startService(intent);
        } catch (Exception e) {
            intent.setClassName(B, C0374f.m5215e(context, B, intent.getAction()));
            context.sendBroadcast(intent);
        }
    }

    public static void setDefaultNotificationBuilder(Context context, PushNotificationBuilder pushNotificationBuilder) {
        if (!isNullContext(context)) {
            C0290g.m4967a(context, pushNotificationBuilder);
        }
    }

    public static void setLappTags(Context context, String str, List<String> list) {
        if (!isNullContext(context)) {
            if (list == null || list.size() == 0) {
                C0385a.m5312c(TAG, "No tags specified, do nothing.");
                return;
            }
            String str2 = "[";
            for (String str3 : list) {
                str2 = ((str2 + "\"") + str3) + "\",";
            }
            if (str2.length() > 0) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            String str32 = str2 + "]";
            Intent createLappMethodIntent = createLappMethodIntent(context, str);
            createLappMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createLappMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SET_LAPP_TAGS);
            createLappMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str32);
            context.sendBroadcast(createLappMethodIntent);
        }
    }

    public static void setMediaNotificationBuilder(Context context, PushNotificationBuilder pushNotificationBuilder) {
        if (!isNullContext(context)) {
            C0290g.m4969b(context, pushNotificationBuilder);
        }
    }

    public static void setNoDisturbMode(Context context, int i, int i2, int i3, int i4) {
        if (!isNullContext(context)) {
            if (i < 0 || i > 23 || i3 < 0 || i3 > 23) {
                C0385a.m5311b(TAG, "setNoDisturbMode hour parameters illegal!");
            } else if (i2 < 0 || i2 > 59 || i4 < 0 || i4 > 59) {
                C0385a.m5311b(TAG, "setNoDisturbMode minute parameters illegal!");
            } else {
                String packageName = context.getPackageName();
                if (C0192a.m4341b()) {
                    C0385a.m5311b(TAG, "PushManager setNoDisturbMode package name: " + packageName);
                }
                PushDatabase.setNoDisturbMode(context, packageName, i, i2, i3, i4);
            }
        }
    }

    public static void setNotificationBuilder(Context context, int i, PushNotificationBuilder pushNotificationBuilder) {
        if (!isNullContext(context)) {
            if (i < 1 || i > LocationClientOption.MIN_SCAN_SPAN) {
                C0385a.m5313d(TAG, "set notification builder error, id is illegal !");
            } else {
                C0290g.m4966a(context, i, pushNotificationBuilder);
            }
        }
    }

    public static void setSDKTags(Context context, String str, List<String> list) {
        if (list == null || list.size() == 0) {
            C0385a.m5312c(TAG, "No tags specified, do nothing.");
            return;
        }
        Intent createSDKMethodIntent = createSDKMethodIntent(context);
        if (createSDKMethodIntent != null) {
            String str2 = "[";
            for (String str3 : list) {
                str2 = ((str2 + "\"") + str3) + "\",";
            }
            if (str2.length() > 0) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            String str32 = str2 + "]";
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SET_SDK_TAGS);
            createSDKMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str32);
            context.sendBroadcast(createSDKMethodIntent);
        }
    }

    public static void setTags(Context context, List<String> list) {
        if (list == null || list.size() == 0) {
            C0385a.m5312c(TAG, "No tags specified, do nothing.");
            return;
        }
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            String str = "[";
            for (String str2 : list) {
                str = ((str + "\"") + str2) + "\",";
            }
            if (str.length() > 0) {
                str = str.substring(0, str.length() - 1);
            }
            String str22 = str + "]";
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_SET_TAGS);
            createMethodIntent.putExtra(PushConstants.EXTRA_TAGS, str22);
            sendRedirecctionIntent(context, createMethodIntent);
        }
    }

    public static void startWork(Context context, int i, String str) {
        if (!isNullContext(context)) {
            boolean n = C0374f.m5234n(context, str);
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "startWork from " + context.getPackageName() + " check: " + n);
            }
            if (n) {
                startWork(context, i, str, true);
            } else {
                checkedSendForUser(context, PushConstants.ERROR_APP_CHECK_FAILED);
            }
        }
    }

    public static void startWork(Context context, int i, String str, boolean z) {
        if (!isNullContext(context)) {
            if (mHandler == null) {
                mHandler = new Handler(context.getMainLooper());
            }
            if (C0192a.f2943d > 0) {
                C0374f.m5189a("startWork from" + context.getPackageName() + " at time of " + System.currentTimeMillis(), context);
            }
            C0192a.m4340b(context, true);
            C0374f.m5188a(context, true, true);
            Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (i == 1) {
                edit.putInt("com.baidu.android.pushservice.PushManager.LOGIN_TYPE", 1);
                edit.putString("com.baidu.android.pushservice.PushManager.LONGIN_VALUE", str);
            } else if (i == 0) {
                edit.putInt("com.baidu.android.pushservice.PushManager.LOGIN_TYPE", 0);
                edit.putString("com.baidu.android.pushservice.PushManager.LONGIN_VALUE", str);
            } else if (!(i == 3 || i == 4)) {
                C0385a.m5313d(TAG, "Wrong login type, please check!");
                return;
            }
            edit.commit();
            PushSettings.m4207a(context.getApplicationContext());
            if (z) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("bindcache", 0);
                boolean z2 = sharedPreferences.getBoolean(PushConstants.EXTRA_BIND_STATUS, false);
                String string = sharedPreferences.getString("request_id", "");
                String string2 = sharedPreferences.getString("appid", "");
                String string3 = sharedPreferences.getString("channel_id", "");
                String string4 = sharedPreferences.getString(PushConstants.EXTRA_USER_ID, "");
                String str2 = null;
                try {
                    str2 = bindinfoTojson(string, string2, string3, string4);
                } catch (JSONException e) {
                    C0385a.m5313d(TAG, "error " + e.getMessage());
                }
                boolean isRunningNormal = isRunningNormal(context);
                List x = C0374f.m5253x(context);
                boolean installStatus = installStatus(context, i, str);
                if (z2 && x != null && isRunningNormal && installStatus && str2 != null) {
                    Intent intent = new Intent();
                    intent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_BIND);
                    intent.putExtra(PushConstants.EXTRA_ERROR_CODE, 0);
                    intent.putExtra(PushConstants.EXTRA_CONTENT, str2.getBytes());
                    intent.putExtra(PushConstants.EXTRA_BIND_STATUS, 0);
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "new startWork> sendResult to " + context.getPackageName() + " ,method:" + PushConstants.METHOD_BIND + " ,errorCode : " + 0 + " ,content : " + new String(str2));
                    }
                    C0374f.m5184a(context, intent, PushConstants.ACTION_RECEIVE, context.getPackageName());
                    return;
                }
                bindPushService(context, i, str);
                return;
            }
            bindPushService(context, i, str);
        }
    }

    public static void startWork(Context context, String str, String str2) {
        if (!isNullContext(context)) {
            C0192a.m4340b(context, true);
            C0374f.m5188a(context, true, true);
            Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            edit.putInt("com.baidu.android.pushservice.PushManager.LOGIN_TYPE", 2);
            edit.putString("com.baidu.android.pushservice.PushManager.LONGIN_VALUE", str);
            edit.putString("com.baidu.android.pushservice.PushManager.BDUSS", str2);
            edit.commit();
            PushSettings.m4207a(context.getApplicationContext());
            C0374f.m5227k(context);
            bind(context, 0);
        }
    }

    public static void stopWork(Context context) {
        if (!isNullContext(context)) {
            if (C0192a.f2943d > 0) {
                C0374f.m5189a("stopWork from" + context.getPackageName() + " at time of " + " PushConnection isConnected " + isConnected(context) + System.currentTimeMillis(), context);
            }
            unbind(context);
            C0192a.m4340b(context, false);
            C0374f.m5188a(context, true, true);
            C0192a.m4338a(context, true);
            C0374f.m5222h(context, null);
            Editor edit = context.getSharedPreferences("bindcache", 0).edit();
            edit.putBoolean(PushConstants.EXTRA_BIND_STATUS, false);
            edit.commit();
        }
    }

    public static void tryConnect(Context context) {
        if (!isNullContext(context)) {
            context.sendBroadcast(createMethodIntent(context));
        }
    }

    public static void unbind(Context context) {
        Intent createMethodIntent = createMethodIntent(context);
        if (createMethodIntent != null) {
            createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_UNBIND);
            context.sendBroadcast(createMethodIntent);
        }
    }

    public static void unbindGroup(Context context, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GUNBIND);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_GID, str);
            context.sendBroadcast(createWebMethodIntent);
        }
    }

    private static void webAppBind(Context context, int i, String str) {
        Intent createWebMethodIntent = createWebMethodIntent(context);
        if (createWebMethodIntent != null) {
            createWebMethodIntent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_WEBAPP_BIND_INTENT);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_BIND_NAME, Build.MODEL);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_BIND_STATUS, i);
            createWebMethodIntent.putExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, C0192a.m4336a());
            createWebMethodIntent.putExtra(PushConstants.EXTRA_API_KEY, str);
            createWebMethodIntent.setFlags(createWebMethodIntent.getFlags() | 32);
            context.sendBroadcast(createWebMethodIntent);
        }
    }
}
