package com.baidu.android.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.baidu.android.pushservice.util.C0374f;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class PushMessageReceiver extends BroadcastReceiver {
    private static String ACTION_LAPP_MESSAGE;
    private static String ACTION_LAPP_RECEIVE;
    public static final String TAG;

    static {
        TAG = PushMessageReceiver.class.getSimpleName();
        ACTION_LAPP_RECEIVE = PushConstants.ACTION_LAPP_RECEIVE;
        ACTION_LAPP_MESSAGE = PushConstants.ACTION_LAPP_MESSAGE;
    }

    public abstract void onBind(Context context, int i, String str, String str2, String str3, String str4);

    public void onCheckBindState(Context context, int i, String str, boolean z) {
    }

    public abstract void onDelTags(Context context, int i, List<String> list, List<String> list2, String str);

    public abstract void onListTags(Context context, int i, List<String> list, String str);

    public abstract void onMessage(Context context, String str, String str2);

    public abstract void onNotificationArrived(Context context, String str, String str2, String str3);

    public abstract void onNotificationClicked(Context context, String str, String str2, String str3);

    public final void onReceive(Context context, Intent intent) {
        int i = 0;
        if (intent.getAction() != null) {
            if (intent.getAction().equals(PushConstants.ACTION_MESSAGE) || intent.getAction().equals(PushConstants.ACTION_LAPP_MESSAGE)) {
                if (intent.getExtras() != null) {
                    String string = intent.getExtras().getString(PushConstants.EXTRA_PUSH_MESSAGE_STRING);
                    onMessage(context, string, intent.getStringExtra(PushConstants.EXTRA_EXTRA));
                    if (C0192a.f2943d > 0) {
                        C0374f.m5189a("message " + string + " at time of " + System.currentTimeMillis(), context);
                    }
                }
            } else if (intent.getAction().equals(PushConstants.ACTION_RECEIVE) || intent.getAction().equals(ACTION_LAPP_RECEIVE)) {
                String stringExtra = intent.getStringExtra(PushConstants.EXTRA_METHOD);
                if (stringExtra != null && !stringExtra.equals("")) {
                    int intExtra = intent.getIntExtra(PushConstants.EXTRA_ERROR_CODE, 0);
                    Object obj = "";
                    if (intent.getByteArrayExtra(PushConstants.EXTRA_CONTENT) != null) {
                        obj = new String(intent.getByteArrayExtra(PushConstants.EXTRA_CONTENT));
                    }
                    if (stringExtra.equals(PushConstants.ACTION_RECEIVER_NOTIFICATION_ARRIVED)) {
                        onNotificationArrived(context, intent.getStringExtra(PushConstants.EXTRA_NOTIFICATION_TITLE), intent.getStringExtra(PushConstants.EXTRA_EXTRA), intent.getStringExtra(PushConstants.EXTRA_NOTIFICATION_CONTENT));
                    } else if (stringExtra.equals(PushConstants.METHOD_BIND) || stringExtra.equals(PushConstants.METHOD_LAPP_BIND_INTENT)) {
                        if (!TextUtils.isEmpty(obj)) {
                            try {
                                Editor edit = context.getSharedPreferences("bindcache", 0).edit();
                                r3 = new JSONObject(obj);
                                String string2 = r3.getString("request_id");
                                JSONObject jSONObject = r3.getJSONObject("response_params");
                                stringExtra = jSONObject.getString("appid");
                                r5 = jSONObject.getString("channel_id");
                                String string3 = jSONObject.getString(PushConstants.EXTRA_USER_ID);
                                Long valueOf = Long.valueOf(System.currentTimeMillis());
                                if (intent.hasExtra(PushConstants.EXTRA_REAL_BIND)) {
                                    r7 = intent.getStringExtra(PushConstants.EXTRA_ACCESS_TOKEN);
                                    String stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_API_KEY);
                                    edit.putString(PushConstants.EXTRA_ACCESS_TOKEN, r7);
                                    edit.putString(PushConstants.EXTRA_API_KEY, stringExtra2);
                                }
                                edit.putString("appid", stringExtra);
                                edit.putString("channel_id", r5);
                                edit.putString("request_id", string2);
                                edit.putString(PushConstants.EXTRA_USER_ID, string3);
                                edit.putBoolean(PushConstants.EXTRA_BIND_STATUS, true);
                                edit.putLong("currbindtime", valueOf.longValue());
                                edit.putLong(ProGuard.f5479g, (long) C0374f.m5213e(context, context.getPackageName()));
                                edit.commit();
                                onBind(context, intExtra, stringExtra, string3, r5, string2);
                                if (C0192a.f2943d > 0) {
                                    C0374f.m5189a("onBind from" + context.getPackageName() + " errorCode " + intExtra + " appid " + stringExtra + " userId " + string3 + " channelId " + r5 + " requestId " + string2 + " at time of " + System.currentTimeMillis(), context);
                                }
                            } catch (Exception e) {
                                onBind(context, intExtra, null, null, null, null);
                                if (C0192a.f2943d > 0) {
                                    C0374f.m5189a("onBind from" + context.getPackageName() + " errorCode " + intExtra + " PushConnection isConnected " + PushManager.isConnected(context) + " at time of " + System.currentTimeMillis(), context);
                                }
                            }
                        }
                    } else if (stringExtra.equals(PushConstants.METHOD_UNBIND) || stringExtra.equals(PushConstants.METHOD_LAPP_UNBIND)) {
                        Editor edit2 = context.getSharedPreferences("bindcache", 0).edit();
                        try {
                            onUnbind(context, intExtra, new JSONObject(obj).getString("request_id"));
                            edit2.putBoolean(PushConstants.EXTRA_BIND_STATUS, false);
                            edit2.commit();
                        } catch (JSONException e2) {
                            onUnbind(context, intExtra, null);
                            edit2.putBoolean(PushConstants.EXTRA_BIND_STATUS, false);
                            edit2.commit();
                        }
                        if (C0192a.f2943d > 0) {
                            C0374f.m5189a("unbind from" + context.getPackageName() + " errorCode " + intExtra + " at time of " + System.currentTimeMillis(), context);
                        }
                    } else if (stringExtra.equals(PushConstants.METHOD_GET_LAPP_BIND_STATE)) {
                        onCheckBindState(context, intExtra, intent.getStringExtra(PushConstants.EXTRA_API_KEY), intent.getBooleanExtra(PushConstants.EXTRA_LAPP_BIND_STATE, false));
                    } else if (stringExtra.equals(PushConstants.METHOD_SET_TAGS) || stringExtra.equals(PushConstants.METHOD_SET_LAPP_TAGS)) {
                        try {
                            r3 = new JSONObject(obj);
                            r5 = r3.getString("request_id");
                            if (TextUtils.isEmpty(r3.optString(PushConstants.EXTRA_ERROR_CODE))) {
                                JSONArray jSONArray = r3.optJSONObject("response_params").getJSONArray("details");
                                r3 = new ArrayList();
                                r4 = new ArrayList();
                                while (i < jSONArray.length()) {
                                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                    r7 = jSONObject2.getString("tag");
                                    if (jSONObject2.getInt("result") == 0) {
                                        r3.add(r7);
                                    } else {
                                        r4.add(r7);
                                    }
                                    i++;
                                }
                                onSetTags(context, intExtra, r3, r4, r5);
                                return;
                            }
                            onSetTags(context, intExtra, new ArrayList(), new ArrayList(), r5);
                        } catch (JSONException e3) {
                            onSetTags(context, intExtra, null, null, null);
                        }
                    } else if (stringExtra.equals(PushConstants.METHOD_DEL_TAGS) || stringExtra.equals(PushConstants.METHOD_DEL_LAPP_TAGS)) {
                        try {
                            r3 = new JSONObject(obj);
                            r5 = r3.getString("request_id");
                            JSONArray jSONArray2 = r3.getJSONObject("response_params").getJSONArray("details");
                            r3 = new ArrayList();
                            r4 = new ArrayList();
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
                                r7 = jSONObject3.getString("tag");
                                if (jSONObject3.getInt("result") == 0) {
                                    r3.add(r7);
                                } else {
                                    r4.add(r7);
                                }
                            }
                            onDelTags(context, intExtra, r3, r4, r5);
                        } catch (JSONException e4) {
                            onDelTags(context, intExtra, null, null, null);
                        }
                    } else if (stringExtra.equals(PushConstants.METHOD_LISTTAGS) || stringExtra.equals(PushConstants.METHOD_LIST_LAPP_TAGS)) {
                        try {
                            onListTags(context, intExtra, intent.getStringArrayListExtra(PushConstants.EXTRA_TAGS_LIST), new JSONObject(obj).getString("request_id"));
                        } catch (JSONException e5) {
                            onListTags(context, intExtra, null, null);
                        }
                    }
                }
            } else if (intent.getAction().equals(PushConstants.ACTION_RECEIVER_NOTIFICATION_CLICK)) {
                onNotificationClicked(context, intent.getStringExtra(PushConstants.EXTRA_NOTIFICATION_TITLE), intent.getStringExtra(PushConstants.EXTRA_NOTIFICATION_CONTENT), intent.getStringExtra(PushConstants.EXTRA_EXTRA));
            }
        }
    }

    public abstract void onSetTags(Context context, int i, List<String> list, List<String> list2, String str);

    public abstract void onUnbind(Context context, int i, String str);
}
