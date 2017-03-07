package com.alimama.mobile.csdk.umupdate.p036a;

import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Message;
import android.text.TextUtils;
import com.alimama.mobile.csdk.umupdate.models.MMEntity;
import com.alimama.mobile.csdk.umupdate.models.Promoter;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.location.LocationClientOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.alimama.mobile.csdk.umupdate.a.m */
public class ProGuard extends ProGuard<Void, Void, Message> {
    static final String f2369e;
    com.alimama.mobile.csdk.umupdate.models.ProGuard f2370f;
    private final com.alimama.mobile.ProGuard.ProGuard f2371g;
    private final int f2372h;
    private final boolean f2373i;

    static {
        f2369e = ProGuard.class.getCanonicalName();
    }

    public ProGuard(com.alimama.mobile.csdk.umupdate.models.ProGuard proGuard, com.alimama.mobile.ProGuard.ProGuard proGuard2, int i, boolean z) {
        this.f2371g = proGuard2;
        this.f2372h = i;
        this.f2373i = z;
        this.f2370f = proGuard;
    }

    protected void m3689a() {
        super.m3632a();
    }

    protected Message m3686a(Void... voidArr) {
        Object a;
        boolean isEmpty = TextUtils.isEmpty(this.f2370f.m3721b().I);
        if (isEmpty) {
            this.f2370f.m3721b().f2430r[0] = System.currentTimeMillis();
        }
        int[] iArr = new int[1];
        if (this.f2372h == 1) {
            a = m3682a(TextUtils.isEmpty(this.f2370f.m3721b().I), true);
            if (a == null || a.size() <= 0) {
                iArr[0] = 0;
                ProGuard.m3664b("get data from local-cache.but has no data.", new Object[0]);
            } else {
                iArr[0] = 1;
                ProGuard.m3664b("get data from local-cache.", new Object[0]);
            }
        } else {
            a = m3683a(iArr);
            ProGuard.m3664b("get data from live.", new Object[0]);
        }
        if (isEmpty) {
            this.f2370f.m3721b().f2430r[1] = System.currentTimeMillis();
        }
        Message message = new Message();
        message.obj = a;
        message.arg1 = iArr[0];
        return message;
    }

    protected void m3690a(Message message) {
        if (this.f2371g == null) {
            return;
        }
        if (message == null || message.obj == null) {
            this.f2371g.m3584a(message.arg1, new ArrayList());
            return;
        }
        List list = (List) message.obj;
        if (this.f2370f.m3721b().f2425m) {
            int a = m3685a(list);
            if (a > 0 && this.f2370f.m3721b().f2422j > 0) {
                int i = this.f2370f.m3721b().f2422j;
                a = this.f2370f.m3721b().f2422j - a;
                MMEntity b = this.f2370f.m3721b();
                if (a <= 0) {
                    a = -1;
                }
                b.f2422j = a;
                ProGuard.m3662a("new tips has changed " + i + " ===> " + this.f2370f.m3721b().f2422j, new Object[0]);
            }
        }
        this.f2371g.m3584a(message.arg1, list);
    }

    private List<Promoter> m3683a(int[] iArr) {
        int nextInt = new Random().nextInt(LocationClientOption.MIN_SCAN_SPAN);
        Map a = m3688a(this.f2370f.m3721b());
        if (a == null) {
            return null;
        }
        boolean z = a.containsKey("sid") ? TextUtils.isEmpty((String) a.get("sid")) : true;
        com.alimama.mobile.csdk.umupdate.p037b.ProGuard a2 = new com.alimama.mobile.csdk.umupdate.p037b.ProGuard().m3698a(new com.alimama.mobile.csdk.umupdate.p037b.ProGuard(a));
        if (iArr != null) {
            iArr[0] = a2 == null ? 0 : a2.f2394a;
        }
        if (a2 == null || a2.f2395b == null) {
            return null;
        }
        ProGuard.m3662a("   requestLive get resStr: " + a2.f2395b.toString(), new Object[0]);
        try {
            List<Promoter> a3 = m3681a(a2.f2395b);
            if (a3 != null && a3.size() > 0) {
                if (this.f2373i && a2.f2394a == 1) {
                    this.f2370f.m3720a().m3726a(z, a2.f2395b);
                }
                return a3;
            } else if (!z) {
                return null;
            } else {
                this.f2370f.m3720a().m3723a();
                return null;
            }
        } catch (Exception e) {
            ProGuard.m3665c(f2369e, nextInt + "  request from network error:", e);
            return null;
        }
    }

    private List<Promoter> m3681a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.f2370f.m3721b().m3713a(jSONObject);
        com.alimama.mobile.csdk.umupdate.models.ProGuard a = this.f2370f.m3720a();
        if (a.m3727b() != this.f2370f.m3721b().f2436x) {
            a.m3724a(this.f2370f.m3721b().f2436x);
        }
        Object arrayList = new ArrayList();
        m3684a(arrayList, Promoter.class, jSONObject, this.f2370f.m3721b().O);
        return arrayList;
    }

    private List<Promoter> m3682a(boolean z, boolean z2) {
        try {
            List<Promoter> a = m3681a(this.f2370f.m3720a().m3722a(z, (long) this.f2370f.m3721b().f2428p, z2));
            if (a == null || a.size() <= 0) {
                return null;
            }
            return a;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Map<String, Object> m3688a(MMEntity mMEntity) {
        Map<String, Object> hashMap = new HashMap();
        ProGuard b = com.alimama.mobile.ProGuard.m3589a().m3597b();
        hashMap.put(com.umeng.update.ProGuard.f5481i, ProGuard.f2351b);
        hashMap.put("sdk_channel", ProGuard.f2350a);
        hashMap.put("protocol_version", ProGuard.f2352c);
        CharSequence b2 = TextUtils.isEmpty(ProGuard.f2353d) ? b.m3607b("MUNION_CHANNEL") : ProGuard.f2353d;
        if (!TextUtils.isEmpty(b2)) {
            hashMap.put(com.umeng.update.ProGuard.f5477e, b2);
        }
        hashMap.put("device_id", b.m3615j());
        hashMap.put(com.umeng.update.ProGuard.f5478f, ProGuard.m3696b(b.m3615j()));
        hashMap.put("device_model", Build.MODEL);
        hashMap.put("os", "android");
        b2 = b.m3614i();
        if (!TextUtils.isEmpty(b2)) {
            hashMap.put("mc", b2);
        }
        hashMap.put("os_version", VERSION.RELEASE);
        hashMap.put("locale", b.m3612g());
        hashMap.put("language", b.m3611f());
        hashMap.put("timezone", b.m3613h());
        hashMap.put("resolution", b.m3616k());
        String[] l = b.m3617l();
        hashMap.put("access", l[0]);
        hashMap.put("access_subtype", l[1]);
        hashMap.put("carrier", b.m3619n());
        Location m = b.m3618m();
        if (m != null) {
            hashMap.put("lat", String.valueOf(m.getLatitude()));
            hashMap.put("lng", String.valueOf(m.getLongitude()));
            hashMap.put("gps_type", m.getProvider());
            hashMap.put("gpst", String.valueOf(m.getTime()));
            hashMap.put("gps_accuracy", String.valueOf(m.getAccuracy()));
        }
        hashMap.put("cpu", b.m3620o());
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        Object obj = format.split(" ")[0];
        Object obj2 = format.split(" ")[1];
        hashMap.put("date", obj);
        hashMap.put("time", obj2);
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("timezone", b.m3613h());
        hashMap.put("apnm", b.m3606b());
        hashMap.put("apvn", b.m3608c());
        hashMap.put("apvc", b.m3609d());
        hashMap.put("adnm", b.m3604a());
        if (!TextUtils.isEmpty(this.f2370f.m3721b().z)) {
            hashMap.put("slot_id", this.f2370f.m3721b().z);
        } else if (TextUtils.isEmpty(this.f2370f.m3721b().A)) {
            ProGuard.m3665c("Both APPKEY and SLOTID are empty, please specify either one. Request aborted.", new Object[0]);
            return null;
        } else {
            hashMap.put("app_key", this.f2370f.m3721b().A);
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().F)) {
            hashMap.put("promoter", this.f2370f.m3721b().F);
        }
        hashMap.put("layout_type", Integer.valueOf(this.f2370f.m3721b().C));
        if (!TextUtils.isEmpty(this.f2370f.m3721b().D)) {
            hashMap.put("keywords", ProGuard.m3692a(this.f2370f.m3721b().D));
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().O)) {
            String[] split = this.f2370f.m3721b().O.split("&");
            try {
                Map hashMap2 = new HashMap();
                for (String split2 : split) {
                    String[] split3 = split2.split("=");
                    if (split3.length == 2) {
                        hashMap2.put(split3[0], split3[1]);
                    }
                }
                for (String format2 : hashMap2.keySet()) {
                    hashMap.put(format2, hashMap2.get(format2));
                }
            } catch (Exception e) {
            }
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().N)) {
            hashMap.put("url_params", this.f2370f.m3721b().N);
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().G)) {
            hashMap.put(PushConstants.EXTRA_TAGS, this.f2370f.m3721b().G);
        }
        if (this.f2370f.m3721b().B != 1) {
            hashMap.put("autofill", Integer.valueOf(this.f2370f.m3721b().B));
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().I)) {
            hashMap.put("sid", this.f2370f.m3721b().I);
        }
        if (!TextUtils.isEmpty(this.f2370f.m3721b().J)) {
            hashMap.put("psid", this.f2370f.m3721b().J);
        }
        hashMap.put("req_desc", Integer.valueOf(1));
        hashMap.put("resource_type", this.f2370f.m3721b().K == null ? "" : this.f2370f.m3721b().K.toString());
        if (this.f2370f.m3721b().L != null) {
            hashMap.put("template", this.f2370f.m3721b().L.toString() + (TextUtils.isEmpty(this.f2370f.m3721b().M) ? "" : "." + this.f2370f.m3721b().M));
        }
        if (this.f2370f.m3721b().H > 0) {
            hashMap.put("landing_type", Integer.valueOf(this.f2370f.m3721b().H));
        }
        return hashMap;
    }

    private <T extends Promoter> void m3684a(Collection collection, Class<T> cls, JSONObject jSONObject, String str) {
        ProGuard.m3664b("get promoters use class " + cls.toString(), new Object[0]);
        try {
            if (jSONObject.has("promoters")) {
                JSONArray jSONArray = jSONObject.getJSONArray("promoters");
                for (int i = 0; i < jSONArray.length(); i++) {
                    Promoter a = Promoter.m3714a((JSONObject) jSONArray.get(i), cls);
                    a.f2469y = str;
                    collection.add(a);
                }
                return;
            }
            ProGuard.m3665c("failed requesting", new Object[0]);
        } catch (Throwable e) {
            ProGuard.m3663a(e, "", new Object[0]);
        }
    }

    protected int m3685a(List<Promoter> list) {
        if (list == null) {
            return 0;
        }
        List arrayList = new ArrayList();
        int size = list.size() - 1;
        int i = 0;
        while (size >= 0) {
            int i2;
            Promoter promoter = (Promoter) list.get(size);
            boolean z = this.f2370f.m3721b().f2425m;
            if (promoter != null && promoter.f2442D && z && com.alimama.mobile.ProGuard.m3589a().m3597b().m3605a(promoter.f2465u)) {
                ProGuard.m3664b(ProGuard.f2354e, "Installed: " + ((Promoter) list.get(size)).f2456l + ". Remove from the list.");
                promoter = (Promoter) list.remove(size);
                arrayList.add(promoter);
                if (promoter.f2467w == 1) {
                    i2 = i + 1;
                    size--;
                    i = i2;
                }
            }
            i2 = i;
            size--;
            i = i2;
        }
        if (arrayList.size() <= 0) {
            return i;
        }
        new com.alimama.mobile.csdk.umupdate.p037b.ProGuard.ProGuard(this.f2370f.m3721b()).m3701a(-1).m3704b(-1).m3706c(-1).m3702a((Promoter[]) arrayList.toArray(new Promoter[0])).m3703a().m3707a();
        return i;
    }
}
