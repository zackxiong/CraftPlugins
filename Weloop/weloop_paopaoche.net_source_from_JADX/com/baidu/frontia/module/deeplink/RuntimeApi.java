package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.module.deeplink.C0422f.C0421b;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RuntimeApi implements NoProGuard, C0407d {
    private static final String TAG = "RuntimeApi";
    private final boolean DEBUG;
    private String mCallback;
    private Context mContext;
    private C0161b mResponse;

    public RuntimeApi() {
        this.DEBUG = false;
    }

    public void execute(C0160a c0160a, C0161b c0161b) {
        this.mResponse = c0161b;
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            this.mContext = C0423g.m5430a().m5437b();
            if (this.mContext != null) {
                this.mCallback = (String) a.get("callback");
                String a2 = c0160a.m4143a("URI");
                Uri uri = null;
                if (a2.length() > 0) {
                    uri = Uri.parse(a2.substring(1, a2.length()));
                }
                a2 = uri.getPath();
                String a3 = (a2.equals("detectRuntime") || a2.equals("startRuntime")) ? a2 : C0416b.m5401a(uri);
                JSONObject jSONObject;
                Intent intent;
                if ("detectRuntime".equalsIgnoreCase(a3)) {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put("error", 0);
                        intent = new Intent();
                        C0422f c0422f = new C0422f(this.mContext);
                        intent.setAction("com.baidu.lightapp.runtime.start");
                        List<C0421b> b = c0422f.m5426b(intent, true);
                        if (b.size() > 0) {
                            JSONArray jSONArray = new JSONArray();
                            JSONArray jSONArray2 = new JSONArray();
                            for (C0421b c0421b : b) {
                                jSONArray.put(c0421b.f3709d);
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("package_name", c0421b.f3709d);
                                jSONObject2.put("priority", c0421b.f3706a);
                                jSONObject2.put("sdk_version_code", c0421b.f3707b);
                                jSONArray2.put(jSONObject2);
                            }
                            jSONObject.put("exists", true);
                            jSONObject.put("packages", jSONArray.toString());
                            jSONObject.put("infos", jSONArray2.toString());
                        } else {
                            jSONObject.put("exists", false);
                        }
                    } catch (JSONException e) {
                        Log.e(TAG, "error " + e.getMessage());
                    }
                    sendResponse(jSONObject.toString());
                } else if ("startRuntime".equalsIgnoreCase(a3)) {
                    jSONObject = new JSONObject();
                    try {
                        intent = new Intent();
                        C0422f c0422f2 = new C0422f(this.mContext);
                        intent.setAction("com.baidu.lightapp.runtime.start");
                        Intent a4 = c0422f2.m5425a(intent, true);
                        if (a4 == null) {
                            jSONObject.put("error", 1);
                            jSONObject.put(PushConstants.EXTRA_ERROR_CODE, "no runtime found");
                        } else {
                            a4.setFlags(268435488);
                            a3 = (String) a.get("_lightapp_url");
                            if (!TextUtils.isEmpty(a3)) {
                                if (!a3.startsWith("http://")) {
                                    a3 = "http://" + a3;
                                }
                                a4.putExtra("_lightapp_url", a3);
                            }
                            this.mContext.startActivity(a4);
                            jSONObject.put("error", 0);
                        }
                    } catch (Exception e2) {
                    }
                    sendResponse(jSONObject.toString());
                }
            }
        }
    }

    public void sendResponse(String str) {
        if (!TextUtils.isEmpty(this.mCallback)) {
            String str2 = "";
            String str3 = this.mCallback + " && " + this.mCallback + "(" + str + ");";
            if (this.mResponse != null) {
                this.mResponse.m4148a("text/javascript");
                this.mResponse.m4146a().put("Cache-Control", "no-cache");
                this.mResponse.m4149b(str3);
                this.mResponse.m4147a(200);
            }
        }
    }
}
