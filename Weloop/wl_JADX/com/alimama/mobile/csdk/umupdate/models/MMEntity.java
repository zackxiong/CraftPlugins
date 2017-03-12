package com.alimama.mobile.csdk.umupdate.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.baidu.location.LocationClientOption;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class MMEntity extends ProGuard implements Parcelable, Cloneable {
    public static Creator<MMEntity> f2413a;
    public ProGuard f2414b;
    public String f2415c;
    public String f2416d;
    public String f2417e;
    public String f2418f;
    public int f2419g;
    public int f2420h;
    public String f2421i;
    public int f2422j;
    public int f2423k;
    public String f2424l;
    public boolean f2425m;
    public boolean f2426n;
    public long f2427o;
    public int f2428p;
    public String f2429q;
    public long[] f2430r;
    public HashMap<String, Object> f2431s;
    protected int f2432t;
    protected long f2433u;
    protected boolean f2434v;
    public String f2435w;
    public int f2436x;
    public String f2437y;

    static {
        f2413a = new ProGuard();
    }

    public MMEntity(String str) {
        this.f2414b = ProGuard.UMENG;
        this.f2415c = "";
        this.f2416d = "";
        this.f2417e = "";
        this.f2418f = "";
        this.f2419g = 0;
        this.f2420h = 0;
        this.f2421i = "bigImg";
        this.f2422j = -1;
        this.f2423k = -1;
        this.f2425m = true;
        this.f2426n = false;
        this.f2427o = 0;
        this.f2428p = 1;
        this.f2429q = "";
        this.f2430r = new long[4];
        this.f2431s = new HashMap();
        this.f2432t = 0;
        this.f2433u = -1;
        this.f2434v = false;
        this.f2435w = "";
        this.f2436x = 0;
        this.f2437y = "";
        this.z = str;
        this.C = 17;
    }

    private MMEntity(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        super(parcel);
        this.f2414b = ProGuard.UMENG;
        this.f2415c = "";
        this.f2416d = "";
        this.f2417e = "";
        this.f2418f = "";
        this.f2419g = 0;
        this.f2420h = 0;
        this.f2421i = "bigImg";
        this.f2422j = -1;
        this.f2423k = -1;
        this.f2425m = true;
        this.f2426n = false;
        this.f2427o = 0;
        this.f2428p = 1;
        this.f2429q = "";
        this.f2430r = new long[4];
        this.f2431s = new HashMap();
        this.f2432t = 0;
        this.f2433u = -1;
        this.f2434v = false;
        this.f2435w = "";
        this.f2436x = 0;
        this.f2437y = "";
        int readInt = parcel.readInt();
        this.f2414b = readInt == -1 ? null : ProGuard.values()[readInt];
        this.f2415c = parcel.readString();
        this.f2416d = parcel.readString();
        this.f2417e = parcel.readString();
        this.f2418f = parcel.readString();
        this.f2419g = parcel.readInt();
        this.f2420h = parcel.readInt();
        this.f2421i = parcel.readString();
        this.f2422j = parcel.readInt();
        this.f2423k = parcel.readInt();
        if (parcel.readByte() != null) {
            z = true;
        } else {
            z = false;
        }
        this.f2425m = z;
        if (parcel.readByte() != null) {
            z = true;
        } else {
            z = false;
        }
        this.f2426n = z;
        this.f2432t = parcel.readInt();
        this.f2433u = parcel.readLong();
        if (parcel.readByte() == null) {
            z2 = false;
        }
        this.f2434v = z2;
        this.f2427o = parcel.readLong();
        this.f2428p = parcel.readInt();
        this.f2429q = parcel.readString();
        this.f2435w = parcel.readString();
        this.f2436x = parcel.readInt();
        this.f2437y = parcel.readString();
        this.f2424l = parcel.readString();
        this.f2430r = parcel.createLongArray();
        this.f2431s = parcel.readHashMap(HashMap.class.getClassLoader());
    }

    public String m3712a() {
        if (this.f2430r != null && this.f2430r.length == 4 && this.f2430r[0] > 0) {
            long j = this.f2430r[0];
            long j2 = this.f2430r[1];
            j = j2 - j;
            j2 = this.f2430r[3] - this.f2430r[2];
            if (j > 0) {
                return j + "_" + j2;
            }
        }
        return null;
    }

    public void m3713a(JSONObject jSONObject) {
        super.m3710a(jSONObject);
        this.f2424l = jSONObject.optString("landing_size");
        this.f2425m = jSONObject.optInt("filter", 1) == 1;
        this.f2423k = jSONObject.optInt("cache", -1);
        this.f2428p = jSONObject.optInt("sid_expire", 1);
        this.f2427o = jSONObject.optLong("expire", 0);
        this.f2416d = jSONObject.optString("landing_image", "");
        this.f2417e = jSONObject.optString("landing_url", "");
        this.f2418f = jSONObject.optString("new_img", "");
        this.f2421i = jSONObject.optString("display_type", "bigImg");
        Object optString = jSONObject.optString("module", "");
        if (!TextUtils.isEmpty(optString)) {
            ProGuard a = ProGuard.m3731a(optString);
            if (a == null) {
                a = ProGuard.UMENG;
            }
            this.f2414b = a;
        }
        this.f2419g = jSONObject.optInt("img_type", 0);
        JSONArray optJSONArray = jSONObject.optJSONArray("walls");
        if (optJSONArray != null && optJSONArray.length() > 1) {
            this.f2426n = true;
        }
        if (jSONObject.has("opensize")) {
            try {
                this.f2415c = "" + (Float.parseFloat(jSONObject.getString("opensize")) / 100.0f);
            } catch (Exception e) {
            }
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("dm");
        if (optJSONObject != null) {
            this.f2432t = optJSONObject.optInt("on");
            this.f2433u = (long) (((optJSONObject.optInt("tm") * 60) * 60) * LocationClientOption.MIN_SCAN_SPAN);
        } else {
            this.f2432t = 0;
            this.f2433u = -1;
        }
        this.f2422j = jSONObject.optInt("new_num", -1);
        this.f2429q = jSONObject.optString("landing_text", "");
        this.f2435w = jSONObject.optString("ispreload", "");
        this.f2436x = jSONObject.optInt("preload", 0);
        this.f2437y = jSONObject.optString("iscache", "");
    }

    public Object clone() {
        return super.clone();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        byte b;
        byte b2 = (byte) 1;
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2414b == null ? -1 : this.f2414b.ordinal());
        parcel.writeString(this.f2415c);
        parcel.writeString(this.f2416d);
        parcel.writeString(this.f2417e);
        parcel.writeString(this.f2418f);
        parcel.writeInt(this.f2419g);
        parcel.writeInt(this.f2420h);
        parcel.writeString(this.f2421i);
        parcel.writeInt(this.f2422j);
        parcel.writeInt(this.f2423k);
        if (this.f2425m) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        parcel.writeByte(b);
        if (this.f2426n) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        parcel.writeByte(b);
        parcel.writeInt(this.f2432t);
        parcel.writeLong(this.f2433u);
        if (!this.f2434v) {
            b2 = (byte) 0;
        }
        parcel.writeByte(b2);
        parcel.writeLong(this.f2427o);
        parcel.writeInt(this.f2428p);
        parcel.writeString(this.f2429q);
        parcel.writeString(this.f2435w);
        parcel.writeInt(this.f2436x);
        parcel.writeString(this.f2437y);
        parcel.writeString(this.f2424l);
        parcel.writeLongArray(this.f2430r);
        parcel.writeMap(this.f2431s);
    }
}
