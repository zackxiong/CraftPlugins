package com.alimama.mobile.csdk.umupdate.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class Promoter implements Parcelable {
    public static final Creator<Promoter> CREATOR;
    private static final String f2438G;
    public String f2439A;
    public int f2440B;
    public String f2441C;
    public boolean f2442D;
    public String[] f2443E;
    public double f2444F;
    public String f2445a;
    public int f2446b;
    public int f2447c;
    public int f2448d;
    public String f2449e;
    public int f2450f;
    public int f2451g;
    public int f2452h;
    public String f2453i;
    public String f2454j;
    public String f2455k;
    public String f2456l;
    public String f2457m;
    public String f2458n;
    public String f2459o;
    public String f2460p;
    public String f2461q;
    public int f2462r;
    public String f2463s;
    public long f2464t;
    public String f2465u;
    public String f2466v;
    public int f2467w;
    public String f2468x;
    public String f2469y;
    public String f2470z;

    static {
        f2438G = Promoter.class.getSimpleName();
        CREATOR = new ProGuard();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2445a);
        parcel.writeInt(this.f2446b);
        parcel.writeInt(this.f2447c);
        parcel.writeInt(this.f2448d);
        parcel.writeString(this.f2449e);
        parcel.writeInt(this.f2450f);
        parcel.writeInt(this.f2451g);
        parcel.writeInt(this.f2452h);
        parcel.writeString(this.f2453i);
        parcel.writeString(this.f2454j);
        parcel.writeString(this.f2455k);
        parcel.writeString(this.f2456l);
        parcel.writeString(this.f2457m);
        parcel.writeString(this.f2458n);
        parcel.writeString(this.f2459o);
        parcel.writeString(this.f2460p);
        parcel.writeString(this.f2461q);
        parcel.writeInt(this.f2462r);
        parcel.writeString(this.f2463s);
        parcel.writeLong(this.f2464t);
        parcel.writeString(this.f2465u);
        parcel.writeString(this.f2466v);
        parcel.writeInt(this.f2467w);
        parcel.writeInt(this.f2442D ? 1 : 0);
        parcel.writeInt(this.f2443E == null ? 0 : this.f2443E.length);
        parcel.writeStringArray(this.f2443E == null ? new String[0] : this.f2443E);
        parcel.writeString(this.f2468x);
        parcel.writeString(this.f2470z);
        parcel.writeString(this.f2439A);
        parcel.writeInt(this.f2440B);
        parcel.writeString(this.f2441C);
    }

    protected Promoter(Parcel parcel) {
        boolean z = false;
        this.f2465u = "";
        this.f2467w = 0;
        this.f2468x = "";
        this.f2469y = "";
        this.f2442D = false;
        if (parcel != null) {
            this.f2445a = parcel.readString();
            this.f2446b = parcel.readInt();
            this.f2447c = parcel.readInt();
            this.f2448d = parcel.readInt();
            this.f2449e = parcel.readString();
            this.f2450f = parcel.readInt();
            this.f2451g = parcel.readInt();
            this.f2452h = parcel.readInt();
            this.f2453i = parcel.readString();
            this.f2454j = parcel.readString();
            this.f2455k = parcel.readString();
            this.f2456l = parcel.readString();
            this.f2457m = parcel.readString();
            this.f2458n = parcel.readString();
            this.f2459o = parcel.readString();
            this.f2460p = parcel.readString();
            this.f2461q = parcel.readString();
            this.f2462r = parcel.readInt();
            this.f2463s = parcel.readString();
            this.f2464t = parcel.readLong();
            this.f2465u = parcel.readString();
            this.f2466v = parcel.readString();
            this.f2467w = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f2442D = z;
            int readInt = parcel.readInt();
            String[] strArr = new String[readInt];
            parcel.readStringArray(strArr);
            if (readInt > 0) {
                this.f2443E = strArr;
            }
            this.f2468x = parcel.readString();
            this.f2470z = parcel.readString();
            this.f2439A = parcel.readString();
            this.f2440B = parcel.readInt();
            this.f2441C = parcel.readString();
        }
    }

    public Promoter() {
        this.f2465u = "";
        this.f2467w = 0;
        this.f2468x = "";
        this.f2469y = "";
        this.f2442D = false;
    }

    public Promoter(JSONObject jSONObject) {
        this.f2465u = "";
        this.f2467w = 0;
        this.f2468x = "";
        this.f2469y = "";
        this.f2442D = false;
        m3715a(jSONObject);
    }

    private void m3715a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f2445a = jSONObject.optString("promoter", "");
            this.f2446b = jSONObject.optInt("category", 0);
            this.f2447c = jSONObject.optInt("content_type");
            this.f2448d = jSONObject.optInt("display_type", 0);
            this.f2450f = jSONObject.optInt("img_type", 0);
            this.f2449e = jSONObject.optString("img", "");
            this.f2451g = jSONObject.optInt("anim_in", 0);
            this.f2452h = jSONObject.optInt("landing_type", 0);
            this.f2454j = jSONObject.optString("text_size", "");
            this.f2455k = jSONObject.optString("text_color");
            this.f2453i = jSONObject.optString("text_font");
            this.f2456l = jSONObject.optString("title", "");
            this.f2457m = jSONObject.optString("provider", "");
            this.f2458n = jSONObject.optString("ad_words", "");
            this.f2459o = jSONObject.optString("description", "");
            this.f2442D = jSONObject.optInt("filter", 0) != 0;
            this.f2460p = jSONObject.optString("icon", "");
            this.f2461q = jSONObject.optString("url", "");
            this.f2467w = jSONObject.optInt("new", 0);
            this.f2462r = jSONObject.optInt("app_version_code", 0);
            this.f2463s = jSONObject.optString("url_in_app");
            this.f2464t = jSONObject.optLong("size", 0);
            this.f2465u = jSONObject.optString("app_package_name", "");
            this.f2466v = jSONObject.optString("app_version_name", "");
            this.f2468x = jSONObject.optString("act_pams", "");
            this.f2470z = jSONObject.optString("price");
            this.f2439A = jSONObject.optString("promoprice", "");
            this.f2440B = jSONObject.optInt("sell");
            this.f2444F = jSONObject.optDouble("bid", 0.0d);
            this.f2441C = jSONObject.optString("landing_size");
            try {
                if (jSONObject.has("imgs")) {
                    Object optString = jSONObject.optString("imgs", "");
                    if (!TextUtils.isEmpty(optString)) {
                        this.f2443E = optString.split("\\,");
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T extends com.alimama.mobile.csdk.umupdate.models.Promoter> T m3714a(org.json.JSONObject r5, java.lang.Class<T> r6) {
        /*
        r4 = 1;
        r3 = 0;
        r0 = 1;
        r0 = new java.lang.Class[r0];	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r1 = 0;
        r2 = org.json.JSONObject.class;
        r0[r1] = r2;	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r0 = r6.getConstructor(r0);	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r2 = 0;
        r1[r2] = r5;	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r0 = r0.newInstance(r1);	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
        r0 = (com.alimama.mobile.csdk.umupdate.models.Promoter) r0;	 Catch:{ SecurityException -> 0x001b, NoSuchMethodException -> 0x0027, IllegalArgumentException -> 0x0032, InstantiationException -> 0x003d, IllegalAccessException -> 0x0048, InvocationTargetException -> 0x0053 }
    L_0x001a:
        return r0;
    L_0x001b:
        r0 = move-exception;
        r1 = "SecurityException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
    L_0x0025:
        r0 = 0;
        goto L_0x001a;
    L_0x0027:
        r0 = move-exception;
        r1 = "NoSuchMethodException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
        goto L_0x0025;
    L_0x0032:
        r0 = move-exception;
        r1 = "IllegalArgumentException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
        goto L_0x0025;
    L_0x003d:
        r0 = move-exception;
        r1 = "InstantiationException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
        goto L_0x0025;
    L_0x0048:
        r0 = move-exception;
        r1 = "IllegalAccessException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
        goto L_0x0025;
    L_0x0053:
        r0 = move-exception;
        r1 = "InvocationTargetException";
        r2 = new java.lang.Object[r4];
        r2[r3] = r0;
        com.alimama.mobile.csdk.umupdate.p036a.ProGuard.m3665c(r1, r2);
        goto L_0x0025;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alimama.mobile.csdk.umupdate.models.Promoter.a(org.json.JSONObject, java.lang.Class):T");
    }
}
