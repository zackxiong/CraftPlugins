package com.baidu.android.pushservice;

import android.text.TextUtils;
import com.baidu.android.pushservice.p068b.C0193a.C0195a;
import com.baidu.android.pushservice.p068b.C0196b;
import com.baidu.android.pushservice.p071e.C0247b;
import com.baidu.android.pushservice.p071e.C0250e;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.baidu.android.pushservice.x */
class C0381x extends C0195a {
    final /* synthetic */ PushService f3612a;

    C0381x(PushService pushService) {
        this.f3612a = pushService;
    }

    public int m5269a(String str, int i) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getUnreadMsgNumber from PushService, appid=" + str + " type=" + i);
        }
        return C0250e.m4709a(this.f3612a).m4723a(i, str, null);
    }

    public String m5270a() {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getSubcribedApps from PushService");
        }
        return C0250e.m4709a(this.f3612a).m4726a(null);
    }

    public String m5271a(String str) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getSubscribedAppinfos from PushService, appids=" + str);
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add("" + jSONArray.getInt(i));
                    }
                }
            } catch (JSONException e) {
                C0385a.m5313d("PushService", "error " + e.getMessage());
            }
        }
        return arrayList.size() > 0 ? C0250e.m4709a(this.f3612a).m4730a(arrayList, null) : null;
    }

    public String m5272a(String str, int i, boolean z, int i2, int i3) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getMsgs from PushService, appid=" + str + " type=" + i + " unreadOnly=" + z + " start=" + i2 + " limit=" + i3);
        }
        return C0250e.m4709a(this.f3612a).m4728a(str, i, z, i2, i3, null);
    }

    public void m5273a(String str, String str2, C0196b c0196b) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "unsubscribeLight from PushService, appid=" + str + " channel=" + str2);
        }
        C0250e.m4709a(this.f3612a).m4735a(str, str2, new C0247b(c0196b));
    }

    public void m5274a(String str, String str2, boolean z, C0196b c0196b) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "subscribeLight from PushService, appid=" + str + " channel=" + str2);
        }
        C0250e.m4709a(this.f3612a).m4746a(str, str2, z, new C0247b(c0196b));
    }

    public void m5275a(String str, String str2, boolean z, String str3, C0196b c0196b) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "subscribeLight from PushService, appidOrApikey=" + str + " channel=" + str2);
        }
        C0250e.m4709a(this.f3612a).m4747a(str, str2, z, str3, new C0247b(c0196b));
    }

    public boolean m5276a(String str, String str2) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "register from PushService, channel=" + str + " packageName=" + str2);
        }
        return C0250e.m4709a(this.f3612a).m4762b(str, str2);
    }

    public boolean m5277a(String str, String str2, int i) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "updateBlacklist from PushService, packageName=" + str + " appid=" + str2 + " type" + i);
        }
        return C0250e.m4709a(this.f3612a).m4751a(str, str2, i);
    }

    public boolean m5278a(String str, String str2, String str3, String str4) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "register from PushService, channel=" + str + " packageName=" + str2 + " hostName= " + str3 + " hostVersion= " + str4);
        }
        return C0250e.m4709a(this.f3612a).m4763b(str, str2, str3, str4);
    }

    public boolean m5279a(String str, boolean z) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "setNotifySwitch from PushService, pkgName=" + str + " on=" + z);
        }
        return C0250e.m4709a(this.f3612a).m4752a(str, z);
    }

    public int m5280b(String str) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "setMsgRead from PushService, msgids=" + str);
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                }
            } catch (JSONException e) {
                C0385a.m5313d("PushService", "error " + e.getMessage());
            }
        }
        return arrayList.size() > 0 ? C0250e.m4709a(this.f3612a).m4754b(arrayList, null) : -1;
    }

    public int m5281b(String str, int i) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "setMsgRead from PushService, appid=" + str + " type=" + i);
        }
        return C0250e.m4709a(this.f3612a).m4753b(i, str, null);
    }

    public String m5282b() {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getSubscribedAppids from PushService");
        }
        return C0250e.m4709a(this.f3612a).m4755b(null);
    }

    public void m5283b(String str, String str2, C0196b c0196b) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "unbindlight from PushService, appid=" + str + " channel=" + str2);
        }
        C0250e.m4709a(this.f3612a).m4758b(str, str2, new C0247b(c0196b));
    }

    public boolean m5284b(String str, String str2) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "removeBlacklist from PushService, packageName=" + str + " appid=" + str2);
        }
        return C0250e.m4709a(this.f3612a).m4769c(str, str2);
    }

    public int m5285c() {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getPushVersion " + C0192a.m4336a());
        }
        return C0192a.m4336a();
    }

    public int m5286c(String str) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "deleteMsg from PushService, msgids=" + str);
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                }
            } catch (JSONException e) {
                C0385a.m5313d("PushService", "error " + e.getMessage());
            }
        }
        return arrayList.size() > 0 ? C0250e.m4709a(this.f3612a).m4765c(arrayList, null) : -1;
    }

    public int m5287c(String str, int i) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "deleteAllMsg from PushService, appid=" + str + " type=" + i);
        }
        return C0250e.m4709a(this.f3612a).m4764c(i, str, null);
    }

    public int m5288d(String str) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "getNewMsgNum from PushService, packageName=" + str);
        }
        return C0250e.m4709a(this.f3612a).m4770d(str);
    }

    public boolean m5289e(String str) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushService", "clearNewMsgNum from PushService, packageName=" + str);
        }
        return C0250e.m4709a(this.f3612a).m4772e(str);
    }

    public String m5290f(String str) {
        return C0250e.m4709a(this.f3612a).m4777j(str);
    }
}
