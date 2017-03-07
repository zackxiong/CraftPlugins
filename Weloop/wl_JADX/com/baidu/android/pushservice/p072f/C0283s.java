package com.baidu.android.pushservice.p072f;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.p071e.C0250e;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.s */
public final class C0283s {
    private static final String f3257a;
    private static volatile C0283s f3258b;
    private Context f3259c;

    static {
        f3257a = C0283s.class.getSimpleName();
        f3258b = null;
    }

    private C0283s(Context context) {
        this.f3259c = null;
        this.f3259c = context.getApplicationContext();
        if (this.f3259c == null) {
            C0385a.m5313d(f3257a, "Error occurs with mContext");
        }
    }

    public static C0283s m4927a(Context context) {
        if (f3258b == null) {
            f3258b = new C0283s(context);
        }
        if (C0192a.m4339a(context)) {
            C0385a.m5311b(f3257a, "Current packet name: " + context.getPackageName());
        }
        return f3258b;
    }

    public String m4928a(long j, long j2, int i, int i2) {
        JSONArray jSONArray;
        List list;
        String str = "";
        JSONArray jSONArray2 = new JSONArray();
        List<C0277k> appInfo = PushDatabase.getAppInfo(this.f3259c);
        List<C0276j> arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        List<C0272g> arrayList2 = new ArrayList();
        List<C0288x> wifiBehaviorEnumClassList = PushDatabase.getWifiBehaviorEnumClassList(this.f3259c, j, j2, i, i2);
        if (wifiBehaviorEnumClassList != null && wifiBehaviorEnumClassList.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app_appid", "9530");
                jSONArray = new JSONArray();
                for (C0288x a : wifiBehaviorEnumClassList) {
                    jSONArray.put(a.m4957a().m4956a());
                }
                jSONObject.put("push_action", jSONArray);
                jSONArray2.put(jSONObject);
            } catch (JSONException e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(f3257a, " wifiBehavioEnums excetion: " + e);
                }
            }
        }
        List<C0265a> aDBehaviorEnumClassList = PushDatabase.getADBehaviorEnumClassList(this.f3259c, j, j2, i, i2);
        if (aDBehaviorEnumClassList != null) {
            for (C0265a c0265a : aDBehaviorEnumClassList) {
                if (c0265a.m4821a().startsWith(C0267p.f3193r)) {
                    if (!hashMap2.containsKey(c0265a.m4825b())) {
                        hashMap2.put(c0265a.m4825b(), new ArrayList());
                    }
                    list = (List) hashMap2.get(c0265a.m4825b());
                    if (list != null) {
                        list.add(c0265a.m4831d());
                    }
                }
            }
        }
        List<C0286v> wifiActionBehaviorEnumClassList = PushDatabase.getWifiActionBehaviorEnumClassList(this.f3259c, j, j2, i, i2);
        if (wifiActionBehaviorEnumClassList != null) {
            for (C0286v c0286v : wifiActionBehaviorEnumClassList) {
                if (c0286v.m4941a().startsWith(C0267p.f3194s)) {
                    if (!hashMap3.containsKey(c0286v.m4945b())) {
                        hashMap3.put(c0286v.m4945b(), new ArrayList());
                    }
                    list = (List) hashMap3.get(c0286v.m4945b());
                    if (list != null) {
                        list.add(c0286v.m4950d());
                    }
                }
            }
        }
        List<C0271f> behaviorEnumClassList = PushDatabase.getBehaviorEnumClassList(this.f3259c, j, j2, i, i2);
        if (behaviorEnumClassList != null) {
            for (C0271f c0271f : behaviorEnumClassList) {
                if (c0271f.m4856a().startsWith(C0267p.f3195t)) {
                    arrayList.add(c0271f.m4866d());
                } else if (c0271f.m4856a().startsWith(C0267p.f3193r)) {
                    if (!hashMap.containsKey(c0271f.m4860b())) {
                        hashMap.put(c0271f.m4860b(), new ArrayList());
                    }
                    list = (List) hashMap.get(c0271f.m4860b());
                    if (list != null) {
                        list.add(c0271f.m4869e());
                    }
                } else if (c0271f.m4856a().startsWith(C0267p.f3194s)) {
                    if (!hashMap4.containsKey(c0271f.m4860b())) {
                        hashMap4.put(c0271f.m4860b(), new ArrayList());
                    }
                    list = (List) hashMap4.get(c0271f.m4860b());
                    if (list != null) {
                        list.add(c0271f.m4872f());
                    }
                } else if (c0271f.m4856a().startsWith(C0267p.f3196u)) {
                    arrayList2.add(c0271f.m4874g());
                }
            }
        }
        List<C0273h> c = C0250e.m4709a(this.f3259c).m4766c();
        try {
            if (arrayList.size() > 0) {
                jSONObject = new JSONObject();
                jSONObject.put("app_appid", "9527");
                jSONArray = new JSONArray();
                for (C0276j a2 : arrayList) {
                    jSONArray.put(a2.m4908a());
                }
                jSONObject.put("push_action", jSONArray);
                jSONArray2.put(jSONObject);
            }
            if (appInfo != null) {
                for (C0277k c0277k : appInfo) {
                    JSONObject a3 = c0277k.m4909a(this.f3259c);
                    JSONArray jSONArray3 = new JSONArray();
                    List<C0278l> list2 = (List) hashMap.get(c0277k.m4838a());
                    List<C0268b> list3 = (List) hashMap2.get(c0277k.m4838a());
                    List<C0285u> list4 = (List) hashMap3.get(c0277k.m4838a());
                    List<C0269c> list5 = (List) hashMap4.get(c0277k.m4838a());
                    if (list2 != null) {
                        try {
                            if (list2.size() != 0) {
                                for (C0278l a4 : list2) {
                                    jSONArray3.put(a4.m4912a());
                                }
                            }
                        } catch (JSONException e2) {
                            if (C0192a.m4339a(this.f3259c)) {
                                C0385a.m5313d(f3257a, "error: JSONException");
                            }
                        }
                    }
                    if (list5 != null) {
                        if (list5.size() != 0) {
                            for (C0269c a5 : list5) {
                                jSONArray3.put(a5.m4837a());
                            }
                        }
                    }
                    if (!(list3 == null || list3.size() == 0)) {
                        for (C0268b a6 : list3) {
                            jSONArray3.put(a6.m4836a());
                        }
                    }
                    if (!(list4 == null || list4.size() == 0)) {
                        for (C0285u a7 : list4) {
                            jSONArray3.put(a7.m4940a());
                        }
                    }
                    if (jSONArray3.length() > 0) {
                        a3.put("push_action", jSONArray3);
                    }
                    jSONArray2.put(a3);
                }
            }
            if (arrayList2 != null) {
                if (arrayList2.size() > 0) {
                    jSONObject = new JSONObject();
                    jSONObject.put("app_appid", "9528");
                    jSONArray = new JSONArray();
                    for (C0272g a8 : arrayList2) {
                        jSONArray.put(a8.m4877a());
                    }
                    jSONObject.put("crash_info", jSONArray);
                    jSONArray2.put(jSONObject);
                }
            }
            if (c != null && c.size() > 0) {
                jSONObject = new JSONObject();
                jSONObject.put("app_appid", "9529");
                jSONArray = new JSONArray();
                for (C0273h e3 : c) {
                    jSONArray.put(e3.m4886e());
                }
                jSONObject.put("host_info", jSONArray);
                jSONArray2.put(jSONObject);
            }
        } catch (JSONException e4) {
            if (C0192a.m4339a(this.f3259c)) {
                C0385a.m5313d(f3257a, "error:" + e4.getMessage());
            }
        }
        str = jSONArray2.length() == 0 ? "" : jSONArray2.toString();
        if (C0192a.m4339a(this.f3259c)) {
            C0385a.m5311b(f3257a, "stat:" + str);
        }
        return str;
    }
}
