package com.alimama.mobile.csdk.umupdate.p037b;

import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alimama.mobile.csdk.umupdate.models.MMEntity;
import com.alimama.mobile.csdk.umupdate.models.Promoter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

/* renamed from: com.alimama.mobile.csdk.umupdate.b.d */
public class ProGuard extends p028c.p029a.ProGuard {
    private static final String f2391b;
    public Map<String, Object> f2392a;

    /* renamed from: com.alimama.mobile.csdk.umupdate.b.d.a */
    public static class ProGuard {
        private static final Random f2377k;
        List<Promoter> f2378a;
        private MMEntity f2379b;
        private String f2380c;
        private String f2381d;
        private String f2382e;
        private int f2383f;
        private int f2384g;
        private int f2385h;
        private String f2386i;
        private String f2387j;
        private int f2388l;
        private String f2389m;
        private int f2390n;

        static {
            f2377k = new Random();
        }

        public ProGuard(MMEntity mMEntity) {
            this.f2388l = 0;
            this.f2389m = "";
            this.f2390n = 1;
            this.f2378a = new ArrayList();
            this.f2379b = mMEntity;
        }

        public ProGuard m3701a(int i) {
            this.f2383f = i;
            return this;
        }

        public ProGuard m3704b(int i) {
            this.f2384g = i;
            return this;
        }

        public ProGuard m3706c(int i) {
            this.f2385h = i;
            return this;
        }

        public ProGuard m3702a(Promoter... promoterArr) {
            int size;
            int i = 0;
            for (Object add : promoterArr) {
                this.f2378a.add(add);
            }
            if (this.f2378a != null && this.f2378a.size() > 0) {
                Promoter promoter;
                size = this.f2378a.size();
                try {
                    promoter = (Promoter) this.f2378a.get(0);
                    if (this.f2378a.size() == 1) {
                        this.f2389m = promoter.f2468x;
                        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3664b("set promoter act_pams to report act_params. [" + this.f2389m + "]", new Object[0]);
                    } else {
                        this.f2389m = promoter.f2469y;
                        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3664b("set slot act_pams to report act_params. [" + this.f2389m + "]", new Object[0]);
                    }
                } catch (NullPointerException e) {
                }
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                while (i < size) {
                    promoter = (Promoter) this.f2378a.get(i);
                    stringBuffer.append(promoter.f2445a + ",");
                    stringBuffer2.append(promoter.f2446b + ",");
                    i++;
                }
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                this.f2381d = stringBuffer.toString();
                this.f2382e = stringBuffer2.toString();
            }
            return this;
        }

        public ProGuard m3703a() {
            return new ProGuard(m3705b());
        }

        public Map<String, Object> m3705b() {
            this.f2380c = com.alimama.mobile.ProGuard.m3589a().m3597b().m3610e() ? "0" : "1";
            return m3700c();
        }

        private Map<String, Object> m3700c() {
            com.alimama.mobile.csdk.umupdate.p036a.ProGuard b = com.alimama.mobile.ProGuard.m3589a().m3597b();
            Map<String, Object> hashMap = new HashMap();
            if (!TextUtils.isEmpty(this.f2379b.z)) {
                hashMap.put("slot_id", this.f2379b.z);
            } else if (TextUtils.isEmpty(this.f2379b.A)) {
                com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(com.alimama.mobile.csdk.umupdate.p036a.ProGuard.f2354e, "Both APPKEY and SLOTID are empty, please specify either one. Request aborted.");
                return null;
            } else {
                hashMap.put("app_key", this.f2379b.A);
            }
            CharSequence a = this.f2379b.m3712a();
            if (!TextUtils.isEmpty(a)) {
                hashMap.put("tcost", a);
            }
            if (!TextUtils.isEmpty(this.f2386i)) {
                hashMap.put("tabids", this.f2386i);
            }
            if (!TextUtils.isEmpty(this.f2379b.E)) {
                hashMap.put("tabid", this.f2379b.E);
            }
            if (!TextUtils.isEmpty(this.f2387j)) {
                hashMap.put("spvnums", this.f2387j);
            }
            hashMap.put(com.umeng.update.ProGuard.f5481i, com.alimama.mobile.csdk.umupdate.p036a.ProGuard.f2351b);
            hashMap.put("protocol_version", com.alimama.mobile.csdk.umupdate.p036a.ProGuard.f2352c);
            hashMap.put("ts", Long.valueOf(System.currentTimeMillis()));
            hashMap.put("device_model", Build.MODEL);
            if (!TextUtils.isEmpty(this.f2389m)) {
                try {
                    String[] split = this.f2389m.split("&");
                    Map hashMap2 = new HashMap();
                    for (String split2 : split) {
                        String[] split3 = split2.split("=");
                        if (split3.length == 2) {
                            hashMap2.put(split3[0], split3[1]);
                        }
                    }
                    for (String str : hashMap2.keySet()) {
                        String str2;
                        hashMap.put(str2, hashMap2.get(str2));
                    }
                } catch (Exception e) {
                }
            }
            try {
                CharSequence i = b.m3614i();
                if (!TextUtils.isEmpty(i)) {
                    hashMap.put("mc", i);
                }
                hashMap.put("carrier", b.m3619n());
                if (this.f2379b.f2414b != null) {
                    hashMap.put("module", this.f2379b.f2414b);
                }
                hashMap.put("os_version", VERSION.RELEASE);
                hashMap.put("os", "android");
                hashMap.put("rid", Integer.valueOf(f2377k.nextInt(32767)));
                String[] l = b.m3617l();
                hashMap.put("access", l[0]);
                hashMap.put("access_subtype", l[1]);
                if (!TextUtils.isEmpty(this.f2379b.I)) {
                    hashMap.put("sid", this.f2379b.I);
                }
                if (!TextUtils.isEmpty(this.f2379b.J)) {
                    hashMap.put("psid", this.f2379b.J);
                }
                hashMap.put("device_id", b.m3615j());
                hashMap.put(com.umeng.update.ProGuard.f5478f, com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3696b(b.m3615j()));
                try {
                    Location m = b.m3618m();
                    if (m != null) {
                        hashMap.put("lat", String.valueOf(m.getLatitude()));
                        hashMap.put("lng", String.valueOf(m.getLongitude()));
                        hashMap.put("gps_type", m.getProvider());
                        hashMap.put("gpst", String.valueOf(m.getTime()));
                        hashMap.put("gps_accuracy", String.valueOf(m.getAccuracy()));
                    }
                } catch (Exception e2) {
                }
                str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
                Object obj = str2.split(" ")[0];
                Object obj2 = str2.split(" ")[1];
                hashMap.put("date", obj);
                hashMap.put("time", obj2);
                hashMap.put("timezone", b.m3613h());
                hashMap.put("orientation", this.f2380c);
                hashMap.put("promoter", this.f2381d != null ? this.f2381d : "");
                hashMap.put("category", this.f2382e);
                hashMap.put("action_type", Integer.valueOf(this.f2383f));
                hashMap.put("action_index", Integer.valueOf(this.f2384g));
                hashMap.put("layout_type", Integer.valueOf(this.f2379b.C));
                hashMap.put("page_level", Integer.valueOf(this.f2385h));
                i = TextUtils.isEmpty(com.alimama.mobile.csdk.umupdate.p036a.ProGuard.f2353d) ? b.m3607b("MUNION_CHANNEL") : com.alimama.mobile.csdk.umupdate.p036a.ProGuard.f2353d;
                if (!TextUtils.isEmpty(i)) {
                    hashMap.put(com.umeng.update.ProGuard.f5477e, i);
                }
                if (this.f2388l != 0) {
                    hashMap.put("display_style", Integer.valueOf(this.f2388l));
                }
                hashMap.put("page_content_type", Integer.valueOf(this.f2390n));
                if (TextUtils.isEmpty(this.f2379b.z)) {
                    str2 = this.f2379b.A;
                } else {
                    str2 = this.f2379b.z;
                }
                return hashMap;
            } catch (Throwable e3) {
                throw new RuntimeException(e3);
            }
        }
    }

    static {
        f2391b = ProGuard.class.getName();
    }

    public ProGuard(Map<String, Object> map) {
        this.f2392a = map;
    }

    public void m3707a() {
        new ProGuard().m3699a(this, null);
    }

    public String getHttpMethod() {
        return GET;
    }

    public JSONObject toJson() {
        return new JSONObject(this.f2392a);
    }

    public String toGetUrl() {
        return com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3693a(ProGuard.f2376b[0], this.f2392a).toString();
    }

    public String m3708b() {
        Map hashMap = new HashMap();
        for (String str : this.f2392a.keySet()) {
            if (!(str.equals("date") || str.equals("action_type") || str.equals("time") || str.equals("ts"))) {
                hashMap.put(str, this.f2392a.get(str));
            }
        }
        return com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3693a(ProGuard.f2376b[0], hashMap);
    }
}
