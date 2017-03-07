package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p071e.C0246a;
import com.baidu.android.pushservice.p071e.C0248c;
import com.baidu.android.pushservice.p071e.C0250e;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.baidu.frontia.p075a.p081e.C0405e;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LightApi implements NoProGuard, C0407d {
    private static final int DEFAULT_LIGHT_API_TIMEOUT = 10000;
    private static final String KEY_LIGHT_ADD_SHORTCUT = "addShortcut";
    private static final String KEY_LIGHT_APIKEY = "apikey";
    private static final String KEY_LIGHT_APPID = "appid";
    private static final String KEY_LIGHT_APPIDS = "appids";
    private static final String KEY_LIGHT_CHANNEL = "channel";
    private static final String KEY_LIGHT_CSRFTOKEN = "csrftoken";
    private static final String KEY_LIGHT_LIMIT = "limit";
    private static final String KEY_LIGHT_MSGIDS = "msgids";
    private static final String KEY_LIGHT_MSG_TYPE = "type";
    private static final String KEY_LIGHT_NONCE = "nonce";
    private static final String KEY_LIGHT_START = "start";
    private static final String KEY_LIGHT_TAG = "tag";
    private static final String KEY_LIGHT_UNREAD_ONLY = "unreadOnly";
    private static final String TAG = "LightApi";
    private String mCallback;
    private Context mContext;
    private C0161b mResponse;
    public Object myLock;
    public boolean resFlag;
    public boolean waitFlag;
    public Object waitLock;

    public LightApi() {
        this.myLock = new Object();
        this.waitLock = new Object();
        this.resFlag = false;
        this.waitFlag = false;
    }

    public void execute(C0160a c0160a, C0161b c0161b) {
        this.mResponse = c0161b;
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            int a2;
            this.mCallback = (String) a.get("callback");
            int i = DEFAULT_LIGHT_API_TIMEOUT;
            try {
                a2 = C0374f.m5175a(a, "timeout", (int) DEFAULT_LIGHT_API_TIMEOUT);
            } catch (NumberFormatException e) {
                C0385a.m5311b(TAG, "Timeout parse fail, use default");
                a2 = i;
            }
            this.mContext = C0423g.m5430a().m5437b();
            if (this.mContext != null) {
                C0246a c0248c = new C0248c(this);
                String a3 = c0160a.m4143a("URI");
                Uri uri = null;
                if (a3.length() > 0) {
                    uri = Uri.parse(a3.substring(1, a3.length()));
                }
                String path = uri.getPath();
                a3 = (String) a.get(KEY_LIGHT_APIKEY);
                C0250e a4 = C0250e.m4709a(this.mContext);
                if (a4 != null) {
                    String a5 = c0160a.m4143a("Referer");
                    String str;
                    String str2;
                    if ("bindLight".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_NONCE);
                        str2 = (String) a.get(KEY_LIGHT_ADD_SHORTCUT);
                        String str3 = (String) a.get(KEY_LIGHT_CHANNEL);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path) || TextUtils.isEmpty(str)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4743a(a3, path, str, a5, !TextUtils.isEmpty(str2) ? Boolean.parseBoolean(str2) : false, str3, c0248c, 1);
                    } else if ("unbindLight".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_NONCE);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path) || TextUtils.isEmpty(str)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4739a(a3, path, str, a5, c0248c, false);
                    } else if ("subscribeLight".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_CHANNEL);
                        a5 = (String) a.get(KEY_LIGHT_ADD_SHORTCUT);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4744a(a3, path, str, !TextUtils.isEmpty(a5) ? Boolean.parseBoolean(a5) : false, c0248c);
                    } else if ("unsubscribeLight".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_CHANNEL);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4736a(a3, path, str, c0248c);
                    } else if ("subscribeService".equalsIgnoreCase(path)) {
                        r13 = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        r14 = (String) a.get(KEY_LIGHT_NONCE);
                        r12 = (String) a.get(KEY_LIGHT_TAG);
                        r16 = (String) a.get(KEY_LIGHT_CHANNEL);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(r12) || TextUtils.isEmpty(r13) || TextUtils.isEmpty(r14)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4742a(a3, r12, r13, r14, a5, r16, c0248c, 0);
                    } else if ("unsubscribeService".equalsIgnoreCase(path)) {
                        r13 = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        r14 = (String) a.get(KEY_LIGHT_NONCE);
                        r12 = (String) a.get(KEY_LIGHT_TAG);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(r12) || TextUtils.isEmpty(r13) || TextUtils.isEmpty(r14)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4759b(a3, r12, r13, r14, a5, c0248c);
                    } else if ("getSubscribedApps".equalsIgnoreCase(path)) {
                        a4.m4726a(c0248c);
                    } else if ("getWeakSubscribedApps".equalsIgnoreCase(path)) {
                        int parseInt;
                        try {
                            parseInt = Integer.parseInt((String) a.get(KEY_LIGHT_START));
                            r3 = Integer.parseInt((String) a.get(KEY_LIGHT_LIMIT));
                        } catch (Exception e2) {
                            parseInt = 0;
                            r3 = 20;
                        }
                        a4.m4727a(c0248c, parseInt, r3);
                    } else if ("weakBindLight".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_NONCE);
                        str2 = (String) a.get(KEY_LIGHT_CHANNEL);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path) || TextUtils.isEmpty(str)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4740a(a3, path, str, a5, str2, c0248c);
                    } else if ("weakSubscribeService".equalsIgnoreCase(path)) {
                        r13 = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        r14 = (String) a.get(KEY_LIGHT_NONCE);
                        r12 = (String) a.get(KEY_LIGHT_TAG);
                        r16 = (String) a.get(KEY_LIGHT_CHANNEL);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(r12) || TextUtils.isEmpty(r13) || TextUtils.isEmpty(r14)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4741a(a3, r12, r13, r14, a5, r16, c0248c);
                    } else if ("blackWeakSubscibedApps".equalsIgnoreCase(path)) {
                        path = (String) a.get(KEY_LIGHT_CSRFTOKEN);
                        str = (String) a.get(KEY_LIGHT_NONCE);
                        if (TextUtils.isEmpty(a3) || TextUtils.isEmpty(path) || TextUtils.isEmpty(str)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4738a(a3, path, str, a5, c0248c);
                    } else if ("getSubscribedAppids".equalsIgnoreCase(path)) {
                        a4.m4755b(c0248c);
                    } else if ("getSubscribedAppinfos".equalsIgnoreCase(path)) {
                        a3 = (String) a.get(KEY_LIGHT_APPIDS);
                        if (TextUtils.isEmpty(a3)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        r4 = new ArrayList();
                        try {
                            r5 = new JSONArray(a3);
                            if (r5 != null) {
                                for (r3 = 0; r3 < r5.length(); r3++) {
                                    r4.add(r5.getString(r3));
                                }
                            }
                        } catch (JSONException e3) {
                            C0385a.m5313d(TAG, "error " + e3.getMessage());
                        }
                        if (r4.size() > 0) {
                            a4.m4730a(r4, c0248c);
                        } else {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("getMsgs".equalsIgnoreCase(path)) {
                        a3 = (String) a.get(KEY_LIGHT_UNREAD_ONLY);
                        try {
                            a4.m4728a(C0374f.m5181a(a, KEY_LIGHT_APPID, "0"), C0374f.m5175a(a, KEY_LIGHT_MSG_TYPE, 0), Boolean.parseBoolean(a3 == null ? "false" : a3), C0374f.m5175a(a, KEY_LIGHT_START, 0), C0374f.m5175a(a, KEY_LIGHT_LIMIT, 50), c0248c);
                        } catch (NumberFormatException e4) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("getUnreadMsgNumber".equalsIgnoreCase(path)) {
                        try {
                            a4.m4723a(C0374f.m5175a(a, KEY_LIGHT_MSG_TYPE, 0), C0374f.m5181a(a, KEY_LIGHT_APPID, "0"), c0248c);
                        } catch (NumberFormatException e5) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("setMsgRead".equalsIgnoreCase(path)) {
                        a3 = (String) a.get(KEY_LIGHT_MSGIDS);
                        if (TextUtils.isEmpty(a3)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        r4 = new ArrayList();
                        try {
                            r5 = new JSONArray(a3);
                            if (r5 != null) {
                                for (r3 = 0; r3 < r5.length(); r3++) {
                                    r4.add(r5.getString(r3));
                                }
                            }
                        } catch (JSONException e32) {
                            C0385a.m5313d(TAG, "error " + e32.getMessage());
                        }
                        if (r4.size() > 0) {
                            a4.m4754b(r4, c0248c);
                        } else {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("setAllMsgRead".equalsIgnoreCase(path)) {
                        try {
                            a4.m4753b(C0374f.m5175a(a, KEY_LIGHT_MSG_TYPE, 0), C0374f.m5181a(a, KEY_LIGHT_APPID, "0"), c0248c);
                        } catch (NumberFormatException e6) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("deleteMsg".equalsIgnoreCase(path)) {
                        a3 = (String) a.get(KEY_LIGHT_MSGIDS);
                        if (TextUtils.isEmpty(a3)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        r4 = new ArrayList();
                        try {
                            r5 = new JSONArray(a3);
                            if (r5 != null) {
                                for (r3 = 0; r3 < r5.length(); r3++) {
                                    r4.add(r5.getString(r3));
                                }
                            }
                        } catch (JSONException e322) {
                            C0385a.m5313d(TAG, "error " + e322.getMessage());
                        }
                        if (r4.size() > 0) {
                            a4.m4765c(r4, c0248c);
                        } else {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("deleteAllMsg".equalsIgnoreCase(path)) {
                        try {
                            a4.m4764c(C0374f.m5175a(a, KEY_LIGHT_MSG_TYPE, 0), C0374f.m5181a(a, KEY_LIGHT_APPID, "0"), c0248c);
                        } catch (NumberFormatException e7) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                    } else if ("getUniqueId".equals(path)) {
                        if (TextUtils.isEmpty(a3)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        try {
                            String a6 = C0402c.m5346a(this.mContext);
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append(a3).append("&").append(a6);
                            a6 = C0405e.m5358a(stringBuilder.toString().getBytes(), false);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("unique_id", a6);
                            jSONObject.put("error", 0);
                            sendResponse(0, jSONObject.toString());
                            return;
                        } catch (JSONException e8) {
                            C0385a.m5313d(TAG, "error " + e8.getMessage());
                        }
                    } else if ("isBind".equals(path)) {
                        if (TextUtils.isEmpty(a3)) {
                            sendResponse(2, "LocalServer API Params Wrong");
                            return;
                        }
                        a4.m4733a(a3, c0248c);
                    } else if (!"isSubscribe".equals(path)) {
                        C0385a.m5312c(TAG, "None light api matchs, response none");
                        return;
                    } else if (TextUtils.isEmpty(a3)) {
                        sendResponse(2, "LocalServer API Params Wrong");
                        return;
                    } else {
                        a4.m4757b(a3, c0248c);
                    }
                    synchronized (this.waitLock) {
                        try {
                            if (!this.waitFlag) {
                                this.waitLock.wait((long) a2);
                            }
                        } catch (InterruptedException e9) {
                            C0385a.m5313d(TAG, "error " + e9.getMessage());
                        }
                    }
                    synchronized (this.myLock) {
                        if (!this.resFlag) {
                            this.resFlag = true;
                            sendResponse(3, "LocalServer API Handling Timeout");
                        }
                    }
                }
            }
        }
    }

    public void sendResponse(int i, String str) {
        if (!TextUtils.isEmpty(this.mCallback)) {
            StringBuilder append = new StringBuilder().append(this.mCallback).append(" && ").append(this.mCallback).append("(");
            String str2 = "";
            if (i != 0) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error", i);
                    jSONObject.put(PushConstants.EXTRA_ERROR_CODE, str);
                } catch (JSONException e) {
                }
                append = append.append(jSONObject.toString());
            } else {
                append = append.append(str);
            }
            String stringBuilder = append.append(");").toString();
            if (this.mResponse != null) {
                this.mResponse.m4148a("text/javascript");
                this.mResponse.m4146a().put("Cache-Control", "no-cache");
                this.mResponse.m4149b(stringBuilder);
                this.mResponse.m4147a(200);
            }
        }
    }
}
