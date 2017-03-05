package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.frontia.module.deeplink.p082a.C0411c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.frontia.module.deeplink.b */
class C0416b {
    private static final Map<String, String> f3696b;
    private static final ArrayList<String> f3697c;
    private Context f3698a;

    static {
        f3696b = new HashMap();
        f3696b.put("geolocation", "com.baidu.frontia.module.deeplink.GeoLocation");
        f3696b.put("getcuid", "com.baidu.frontia.module.deeplink.GetCuid");
        f3696b.put("getapn", "com.baidu.frontia.module.deeplink.GetApn");
        f3696b.put("getPushServiceVersion", "com.baidu.frontia.module.deeplink.GetVersion");
        f3696b.put("addDebugDevice", "com.baidu.frontia.module.deeplink.addDebugDevice");
        f3696b.put("getNetworkType", "com.baidu.frontia.module.deeplink.GetNetworkType");
        f3696b.put("subscribeLight", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("unsubscribeLight", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("bindLight", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("unbindLight", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("subscribeService", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("unsubscribeService", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getSubscribedApps", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getSubscribedAppids", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getSubscribedAppinfos", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getMsgs", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getUnreadMsgNumber", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("setMsgRead", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("setAllMsgRead", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("deleteMsg", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("deleteAllMsg", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getUniqueId", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("isBind", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("isSubscribe", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("getWeakSubscribedApps", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("blackWeakSubscibedApps", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("weakBindLight", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("weakSubscribeService", "com.baidu.frontia.module.deeplink.LightApi");
        f3696b.put("detectRuntime", "com.baidu.frontia.module.deeplink.RuntimeApi");
        f3696b.put("startRuntime", "com.baidu.frontia.module.deeplink.RuntimeApi");
        f3697c = new ArrayList();
        f3697c.add("bindLight");
        f3697c.add("unbindLight");
        f3697c.add("subscribeService");
        f3697c.add("unsubscribeService");
        f3697c.add("getUniqueId");
        f3697c.add("isBind");
        f3697c.add("getPushServiceVersion");
    }

    public C0416b(Context context) {
        this.f3698a = context;
    }

    public static String m5401a(Uri uri) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("?");
        return indexOf < 0 ? uri2 : uri2.substring(0, indexOf);
    }

    private void m5402a(C0161b c0161b) {
        if (C0192a.m4341b()) {
            Log.d("CmdHandler", "Localserver responseCrossDomain");
        }
        c0161b.m4148a("text/plain");
        c0161b.m4149b("<?xml version=\"1.0\"?>");
        c0161b.m4149b("<!DOCTYPE cross-domain-policy SYSTEM \"http://www.macromedia.com/xml/dtds/cross-domain-policy.dtd\">");
        c0161b.m4149b("<cross-domain-policy>");
        c0161b.m4149b("<allow-access-from domain=\"*\" to-ports=\"*\" />");
        c0161b.m4149b("</cross-domain-policy>");
        c0161b.m4147a(200);
    }

    public static void m5403a(C0161b c0161b, String str, int i, String str2) {
        c0161b.m4148a("text/javascript");
        c0161b.m4146a().put("Cache-Control", "no-cache");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error", i);
            jSONObject.put(PushConstants.EXTRA_ERROR_CODE, str2);
        } catch (JSONException e) {
        }
        c0161b.m4149b(str + " && " + str + "(" + jSONObject.toString() + ");");
        c0161b.m4147a(200);
    }

    private void m5404a(String str, C0161b c0161b) {
        try {
            int indexOf = str.indexOf("?");
            if (indexOf > 0) {
                String substring = str.substring(indexOf + 1);
                substring = substring.substring(substring.indexOf("=") + 1);
                substring = substring.substring(substring.indexOf("&") + 1);
                substring = substring.substring(substring.indexOf("=") + 1);
                Intent intent = new Intent();
                intent.setAction(PushConstants.ACTION_METHOD);
                intent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_WEBAPP_BIND_FROM_DEEPLINK);
                intent.putExtra(PushConstants.EXTRA_WEB_BIND_API_KEY, substring);
                this.f3698a.sendBroadcast(intent);
                c0161b.m4147a(200);
                c0161b.m4149b("ok");
                return;
            }
            c0161b.m4147a(404);
        } catch (Exception e) {
            c0161b.m4147a(404);
        }
    }

    private boolean m5405a(C0160a c0160a, C0161b c0161b) {
        String str = "^http[s]?:\\/\\/[^\\/]+(\\.baidu\\.com|\\.hao123\\.com)(:\\d+)?(\\/.*|)$";
        CharSequence a = c0160a.m4143a("Referer");
        return !TextUtils.isEmpty(a) && Pattern.compile(str).matcher(a).matches();
    }

    private void m5406b(C0160a c0160a, C0161b c0161b) {
        Map a = c0160a.m4144a();
        if (a == null || a.size() < 1) {
            c0161b.m4147a(404);
        } else {
            C0416b.m5403a(c0161b, (String) a.get("callback"), 6, C0423g.f3713a);
        }
    }

    private boolean m5407b(String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse(str));
        intent.setAction("android.intent.action.VIEW");
        PackageManager packageManager = this.f3698a.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 1);
        if (queryIntentActivities.size() <= 0) {
            return false;
        }
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.VIEW");
        intent2.setData(Uri.parse("http://127.0.0.1"));
        List<ResolveInfo> queryIntentActivities2 = packageManager.queryIntentActivities(intent2, 1);
        ResolveInfo resolveInfo = (ResolveInfo) queryIntentActivities.get(0);
        boolean z = false;
        for (ResolveInfo resolveInfo2 : queryIntentActivities) {
            boolean z2;
            for (ResolveInfo resolveInfo3 : queryIntentActivities2) {
                if (resolveInfo3.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                    z2 = true;
                    break;
                }
            }
            z2 = z;
            if (z2) {
                break;
            }
            z = z2;
        }
        ResolveInfo resolveInfo22 = resolveInfo;
        intent.addFlags(268435456);
        intent.setClassName(resolveInfo22.activityInfo.packageName, resolveInfo22.activityInfo.name);
        this.f3698a.startActivity(intent);
        return true;
    }

    private String m5408c(String str) {
        return str.equals("getcuid") ? "020801" : str.equals("geolocation") ? "020803" : str.equals("getapn") ? "020802" : null;
    }

    private boolean m5409d(String str) {
        return !f3697c.contains(str);
    }

    public String m5410a(String str) {
        return (String) f3696b.get(str);
    }

    public void m5411a(String str, C0160a c0160a, C0161b c0161b) {
        Set queryParameterNames;
        Uri parse = Uri.parse(str);
        String path = parse.getPath();
        if (!f3696b.containsKey(path)) {
            path = C0416b.m5401a(parse);
        }
        if (C0192a.m4341b()) {
            Log.d("CmdHandler", "Localserver CMD received, uri=" + str + " path=" + path);
        }
        if (!m5412b(path, c0160a, c0161b)) {
            if (path == null || path.length() == 0) {
                m5406b(c0160a, c0161b);
                return;
            }
            int i;
            String substring;
            if (path.startsWith("native")) {
                i = 2;
                substring = path.substring(7);
            } else if (path.startsWith("push")) {
                i = 3;
                substring = path;
            } else {
                i = 1;
                substring = path;
            }
            if (i != 3) {
                String queryParameter = parse.getQueryParameter("client_id");
                if (queryParameter == null || queryParameter.length() == 0) {
                    m5406b(c0160a, c0161b);
                    return;
                } else if (substring.indexOf(47) != -1) {
                    int indexOf;
                    String substring2;
                    path = "";
                    String str2 = "";
                    Map hashMap = new HashMap();
                    Set hashSet = new HashSet();
                    if (VERSION.SDK_INT >= 11) {
                        queryParameterNames = parse.getQueryParameterNames();
                    } else {
                        while (str.contains("=")) {
                            try {
                                int indexOf2 = str.indexOf("&");
                                indexOf = str.indexOf("?");
                                if (indexOf2 > 0 && indexOf > 0 && indexOf2 >= indexOf) {
                                    indexOf2 = indexOf;
                                }
                                indexOf = str.indexOf("=");
                                hashSet.add(str.substring(indexOf2 + 1, indexOf));
                                str = str.substring(indexOf + 1);
                            } catch (Exception e) {
                                if (C0192a.m4341b()) {
                                    Log.d("CmdHandler", "commandDeal E: " + e);
                                }
                                queryParameterNames = hashSet;
                            }
                        }
                        queryParameterNames = hashSet;
                    }
                    for (String path2 : r0) {
                        if (!path2.equals("client_id")) {
                            hashMap.put(path2, parse.getQueryParameter(path2));
                        }
                    }
                    indexOf = substring.indexOf(47, 1);
                    if (indexOf != -1) {
                        path2 = substring.substring(indexOf + 1);
                        substring2 = substring.substring(0, indexOf);
                    } else {
                        path2 = str2;
                        substring2 = substring;
                    }
                    if (m5407b(new C0411c(this.f3698a, queryParameter, i == 2).m5375a(substring2, path2, hashMap))) {
                        c0161b.m4147a(200);
                        return;
                    } else {
                        m5406b(c0160a, c0161b);
                        return;
                    }
                } else {
                    c0161b.m4147a(404);
                    return;
                }
            }
            m5404a(str, c0161b);
        }
    }

    public boolean m5412b(String str, C0160a c0160a, C0161b c0161b) {
        Object a = m5410a(str);
        if (TextUtils.isEmpty(a) && !TextUtils.equals(str, "crossdomain.xml")) {
            return false;
        }
        if (!(m5409d(str) ? m5405a(c0160a, c0161b) : true)) {
            Map a2 = c0160a.m4144a();
            if (a2 == null || a2.size() < 1) {
                return true;
            }
            String str2 = (String) a2.get("callback");
            if (str2 == null) {
                return true;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error", 4);
                jSONObject.put(PushConstants.EXTRA_ERROR_CODE, "Referer Forbidden");
                String c = m5408c(str);
                if (c != null) {
                    C0269c c0269c = new C0269c();
                    c0269c.g = c;
                    c0269c.h = System.currentTimeMillis();
                    if (c0160a.m4144a() == null || c0160a.m4144a().get("ref_id") == null) {
                        c0269c.f3204c = "other";
                    } else {
                        c0269c.f3204c = (String) c0160a.m4144a().get("ref_id");
                    }
                    c0269c.j = 4;
                    if (this.f3698a != null) {
                        C0284t.m4930a(this.f3698a, c0269c);
                    }
                }
            } catch (JSONException e) {
            }
            c0161b.m4148a("text/javascript");
            c0161b.m4146a().put("Cache-Control", "no-cache");
            c0161b.m4149b(str2 + " && " + str2 + "(" + jSONObject.toString() + ");");
            c0161b.m4147a(200);
        } else if (TextUtils.equals(str, "crossdomain.xml")) {
            m5402a(c0161b);
        } else {
            C0407d c0407d;
            try {
                c0407d = (C0407d) Class.forName(a).newInstance();
            } catch (ClassNotFoundException e2) {
                Log.e("CmdHandler", "error " + e2.getMessage());
                c0407d = null;
            } catch (ClassCastException e3) {
                Log.e("CmdHandler", "error " + e3.getMessage());
                c0407d = null;
            } catch (IllegalAccessException e4) {
                Log.e("CmdHandler", "error " + e4.getMessage());
                c0407d = null;
            } catch (InstantiationException e5) {
                Log.e("CmdHandler", "error " + e5.getMessage());
                c0407d = null;
            }
            if (c0407d != null) {
                c0407d.execute(c0160a, c0161b);
            }
        }
        return true;
    }
}
