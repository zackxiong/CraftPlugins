package com.baidu.location;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONObject;

public final class BDLocation implements Parcelable {
    public static final Creator CREATOR;
    public static final int LOCATION_WHERE_IN_CN = 1;
    public static final int LOCATION_WHERE_OUT_CN = 0;
    public static final int LOCATION_WHERE_UNKNOW = 2;
    public static final int OPERATORS_TYPE_MOBILE = 1;
    public static final int OPERATORS_TYPE_TELECOMU = 3;
    public static final int OPERATORS_TYPE_UNICOM = 2;
    public static final int OPERATORS_TYPE_UNKONW = 0;
    public static final int TypeCacheLocation = 65;
    public static final int TypeCriteriaException = 62;
    public static final int TypeGpsLocation = 61;
    public static final int TypeNetWorkException = 63;
    public static final int TypeNetWorkLocation = 161;
    public static final int TypeNone = 0;
    public static final int TypeOffLineLocation = 66;
    public static final int TypeOffLineLocationFail = 67;
    public static final int TypeOffLineLocationNetworkFail = 68;
    public static final int TypeServerError = 167;
    private boolean kA;
    private C0447a kB;
    private boolean kC;
    private String kD;
    private int kE;
    private float kF;
    private boolean kG;
    private int kH;
    private double kI;
    private boolean kJ;
    private float kK;
    private String kL;
    private String kM;
    private int kN;
    private String kr;
    private int ks;
    private double kt;
    private String ku;
    private boolean kv;
    private boolean kw;
    private String kx;
    private float ky;
    private double kz;

    /* renamed from: com.baidu.location.BDLocation.a */
    public class C0447a {
        public String f3774a;
        final /* synthetic */ BDLocation f3775b;
        public String f3776byte;
        public String f3777case;
        public String f3778char;
        public String f3779do;
        public String f3780for;
        public String f3781if;
        public String f3782int;
        public String f3783try;

        public C0447a(BDLocation bDLocation) {
            this.f3775b = bDLocation;
            this.f3780for = null;
            this.f3782int = null;
            this.f3776byte = null;
            this.f3781if = null;
            this.f3778char = null;
            this.f3777case = null;
            this.f3783try = null;
            this.f3779do = null;
            this.f3774a = null;
        }
    }

    static {
        CREATOR = new C0498a();
    }

    public BDLocation() {
        this.kH = TypeNone;
        this.kL = null;
        this.kt = Double.MIN_VALUE;
        this.kI = Double.MIN_VALUE;
        this.kv = false;
        this.kz = Double.MIN_VALUE;
        this.kw = false;
        this.kK = 0.0f;
        this.kC = false;
        this.kF = 0.0f;
        this.kJ = false;
        this.ks = -1;
        this.ky = -1.0f;
        this.kM = null;
        this.kG = false;
        this.kr = null;
        this.kA = false;
        this.kB = new C0447a(this);
        this.ku = null;
        this.kE = OPERATORS_TYPE_UNICOM;
        this.kD = null;
        this.kx = "";
    }

    private BDLocation(Parcel parcel) {
        this.kH = TypeNone;
        this.kL = null;
        this.kt = Double.MIN_VALUE;
        this.kI = Double.MIN_VALUE;
        this.kv = false;
        this.kz = Double.MIN_VALUE;
        this.kw = false;
        this.kK = 0.0f;
        this.kC = false;
        this.kF = 0.0f;
        this.kJ = false;
        this.ks = -1;
        this.ky = -1.0f;
        this.kM = null;
        this.kG = false;
        this.kr = null;
        this.kA = false;
        this.kB = new C0447a(this);
        this.ku = null;
        this.kE = OPERATORS_TYPE_UNICOM;
        this.kD = null;
        this.kx = "";
        this.kH = parcel.readInt();
        this.kL = parcel.readString();
        this.kt = parcel.readDouble();
        this.kI = parcel.readDouble();
        this.kz = parcel.readDouble();
        this.kK = parcel.readFloat();
        this.kF = parcel.readFloat();
        this.ks = parcel.readInt();
        this.ky = parcel.readFloat();
        this.ku = parcel.readString();
        this.kD = parcel.readString();
        this.kB.f3780for = parcel.readString();
        this.kB.f3782int = parcel.readString();
        this.kB.f3776byte = parcel.readString();
        this.kB.f3781if = parcel.readString();
        this.kB.f3778char = parcel.readString();
        this.kB.f3777case = parcel.readString();
        this.kB.f3783try = parcel.readString();
        this.kB.f3779do = parcel.readString();
        this.kB.f3774a = parcel.readString();
        this.kN = parcel.readInt();
        this.kx = parcel.readString();
        this.kE = parcel.readInt();
        boolean[] zArr = new boolean[6];
        try {
            parcel.readBooleanArray(zArr);
            this.kv = zArr[TypeNone];
            this.kw = zArr[OPERATORS_TYPE_MOBILE];
            this.kC = zArr[OPERATORS_TYPE_UNICOM];
            this.kJ = zArr[OPERATORS_TYPE_TELECOMU];
            this.kG = zArr[4];
            this.kA = zArr[5];
        } catch (Exception e) {
        }
    }

    public BDLocation(BDLocation bDLocation) {
        this.kH = TypeNone;
        this.kL = null;
        this.kt = Double.MIN_VALUE;
        this.kI = Double.MIN_VALUE;
        this.kv = false;
        this.kz = Double.MIN_VALUE;
        this.kw = false;
        this.kK = 0.0f;
        this.kC = false;
        this.kF = 0.0f;
        this.kJ = false;
        this.ks = -1;
        this.ky = -1.0f;
        this.kM = null;
        this.kG = false;
        this.kr = null;
        this.kA = false;
        this.kB = new C0447a(this);
        this.ku = null;
        this.kE = OPERATORS_TYPE_UNICOM;
        this.kD = null;
        this.kx = "";
        this.kH = bDLocation.kH;
        this.kL = bDLocation.kL;
        this.kt = bDLocation.kt;
        this.kI = bDLocation.kI;
        this.kv = bDLocation.kv;
        this.kz = bDLocation.kz;
        this.kw = bDLocation.kw;
        this.kK = bDLocation.kK;
        this.kC = bDLocation.kC;
        this.kF = bDLocation.kF;
        this.kJ = bDLocation.kJ;
        this.ks = bDLocation.ks;
        this.ky = bDLocation.ky;
        this.kM = bDLocation.kM;
        this.kG = bDLocation.kG;
        this.kr = bDLocation.kr;
        this.kE = bDLocation.kE;
        this.kA = bDLocation.kA;
        this.kB = new C0447a(this);
        this.kB.f3780for = bDLocation.kB.f3780for;
        this.kB.f3782int = bDLocation.kB.f3782int;
        this.kB.f3776byte = bDLocation.kB.f3776byte;
        this.kB.f3781if = bDLocation.kB.f3781if;
        this.kB.f3778char = bDLocation.kB.f3778char;
        this.kB.f3777case = bDLocation.kB.f3777case;
        this.kB.f3783try = bDLocation.kB.f3783try;
        this.kB.f3779do = bDLocation.kB.f3779do;
        this.kB.f3774a = bDLocation.kB.f3774a;
        this.ku = bDLocation.ku;
        this.kD = bDLocation.kD;
        this.kN = bDLocation.kN;
        this.kx = bDLocation.kx;
    }

    protected BDLocation(String str) {
        this.kH = TypeNone;
        this.kL = null;
        this.kt = Double.MIN_VALUE;
        this.kI = Double.MIN_VALUE;
        this.kv = false;
        this.kz = Double.MIN_VALUE;
        this.kw = false;
        this.kK = 0.0f;
        this.kC = false;
        this.kF = 0.0f;
        this.kJ = false;
        this.ks = -1;
        this.ky = -1.0f;
        this.kM = null;
        this.kG = false;
        this.kr = null;
        this.kA = false;
        this.kB = new C0447a(this);
        this.ku = null;
        this.kE = OPERATORS_TYPE_UNICOM;
        this.kD = null;
        this.kx = "";
        if (str != null && !str.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                int parseInt = Integer.parseInt(jSONObject2.getString("error"));
                setLocType(parseInt);
                setTime(jSONObject2.getString("time"));
                if (parseInt == TypeGpsLocation) {
                    jSONObject = jSONObject.getJSONObject(PushConstants.EXTRA_CONTENT);
                    jSONObject2 = jSONObject.getJSONObject("point");
                    setLatitude(Double.parseDouble(jSONObject2.getString("y")));
                    setLongitude(Double.parseDouble(jSONObject2.getString("x")));
                    setRadius(Float.parseFloat(jSONObject.getString("radius")));
                    setSpeed(Float.parseFloat(jSONObject.getString("s")));
                    setDirection(Float.parseFloat(jSONObject.getString("d")));
                    setSatelliteNumber(Integer.parseInt(jSONObject.getString("n")));
                    if (jSONObject.has("h")) {
                        try {
                            setAltitude(jSONObject.getDouble("h"));
                        } catch (Exception e) {
                        }
                    }
                } else if (parseInt == TypeNetWorkLocation) {
                    jSONObject2 = jSONObject.getJSONObject(PushConstants.EXTRA_CONTENT);
                    jSONObject = jSONObject2.getJSONObject("point");
                    setLatitude(Double.parseDouble(jSONObject.getString("y")));
                    setLongitude(Double.parseDouble(jSONObject.getString("x")));
                    setRadius(Float.parseFloat(jSONObject2.getString("radius")));
                    if (jSONObject2.has("addr")) {
                        String string = jSONObject2.getString("addr");
                        this.kB.f3783try = string;
                        String[] split = string.split(",");
                        parseInt = split.length;
                        if (parseInt > 0) {
                            this.kB.f3780for = split[TypeNone];
                        }
                        if (parseInt > OPERATORS_TYPE_MOBILE) {
                            this.kB.f3782int = split[OPERATORS_TYPE_MOBILE];
                        }
                        if (parseInt > OPERATORS_TYPE_UNICOM) {
                            this.kB.f3776byte = split[OPERATORS_TYPE_UNICOM];
                        }
                        if (parseInt > OPERATORS_TYPE_TELECOMU) {
                            this.kB.f3781if = split[OPERATORS_TYPE_TELECOMU];
                        }
                        if (parseInt > 4) {
                            this.kB.f3778char = split[4];
                        }
                        if (parseInt > 5) {
                            this.kB.f3777case = split[5];
                        }
                        if (parseInt > 6) {
                            this.kB.f3779do = split[6];
                        }
                        if (parseInt > 7) {
                            this.kB.f3774a = split[7];
                        }
                        string = ((this.kB.f3780for.contains("\u5317\u4eac") && this.kB.f3782int.contains("\u5317\u4eac")) || ((this.kB.f3780for.contains("\u4e0a\u6d77") && this.kB.f3782int.contains("\u4e0a\u6d77")) || ((this.kB.f3780for.contains("\u5929\u6d25") && this.kB.f3782int.contains("\u5929\u6d25")) || (this.kB.f3780for.contains("\u91cd\u5e86") && this.kB.f3782int.contains("\u91cd\u5e86"))))) ? this.kB.f3780for : this.kB.f3780for + this.kB.f3782int;
                        this.kB.f3783try = this.kB.f3778char != null ? string + this.kB.f3776byte + this.kB.f3781if + this.kB.f3778char : string + this.kB.f3776byte + this.kB.f3781if;
                        this.kG = true;
                    } else {
                        this.kG = false;
                        setAddrStr(null);
                    }
                    if (jSONObject2.has("floor")) {
                        this.ku = jSONObject2.getString("floor");
                        if (TextUtils.isEmpty(this.ku)) {
                            this.ku = null;
                        }
                    }
                    if (jSONObject2.has("loctp")) {
                        this.kD = jSONObject2.getString("loctp");
                        if (TextUtils.isEmpty(this.kD)) {
                            this.kD = null;
                        }
                    }
                    try {
                        if (jSONObject2.has("in_cn")) {
                            m5501i(Integer.parseInt(jSONObject2.getString("in_cn")));
                        } else {
                            m5501i(OPERATORS_TYPE_MOBILE);
                        }
                    } catch (Exception e2) {
                    }
                } else if (parseInt == TypeOffLineLocation || parseInt == TypeOffLineLocationNetworkFail) {
                    jSONObject = jSONObject.getJSONObject(PushConstants.EXTRA_CONTENT);
                    jSONObject2 = jSONObject.getJSONObject("point");
                    setLatitude(Double.parseDouble(jSONObject2.getString("y")));
                    setLongitude(Double.parseDouble(jSONObject2.getString("x")));
                    setRadius(Float.parseFloat(jSONObject.getString("radius")));
                    m5499if(Boolean.valueOf(Boolean.parseBoolean(jSONObject.getString("isCellChanged"))));
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                this.kH = TypeNone;
                this.kG = false;
            }
        }
    }

    private String c8() {
        return this.kx;
    }

    private static String da() {
        return Build.MODEL;
    }

    private String m5498do(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }

    private void m5499if(Boolean bool) {
        this.kA = bool.booleanValue();
    }

    protected String c6() {
        return null;
    }

    int c7() {
        return this.kE;
    }

    C0447a c9() {
        return this.kB;
    }

    public int describeContents() {
        return TypeNone;
    }

    public String getAdUrl(String str) {
        String valueOf = String.valueOf(this.kt);
        String valueOf2 = String.valueOf(this.kI);
        String c8 = c8();
        return "http://lba.baidu.com/" + "?a=" + CommonEncrypt.m5528a("ak=" + str + "&" + "lat=" + valueOf + "&" + "lng=" + valueOf2 + "&" + "cu=" + c8 + "&" + "mb=" + da());
    }

    public String getAddrStr() {
        return this.kB.f3783try;
    }

    public double getAltitude() {
        return this.kz;
    }

    public String getCity() {
        return this.kB.f3782int;
    }

    public String getCityCode() {
        return this.kB.f3777case;
    }

    public String getCoorType() {
        return this.kM;
    }

    public String getCountry() {
        return this.kB.f3779do;
    }

    public String getCountryCode() {
        return this.kB.f3774a;
    }

    public float getDirection() {
        return this.ky;
    }

    public String getDistrict() {
        return this.kB.f3776byte;
    }

    public String getFloor() {
        return this.ku;
    }

    public double getLatitude() {
        return this.kt;
    }

    public int getLocType() {
        return this.kH;
    }

    public double getLongitude() {
        return this.kI;
    }

    public String getNetworkLocationType() {
        return this.kD;
    }

    public int getOperators() {
        return this.kN;
    }

    public String getProvince() {
        return this.kB.f3780for;
    }

    public float getRadius() {
        return this.kF;
    }

    public int getSatelliteNumber() {
        this.kJ = true;
        return this.ks;
    }

    public float getSpeed() {
        return this.kK;
    }

    public String getStreet() {
        return this.kB.f3781if;
    }

    public String getStreetNumber() {
        return this.kB.f3778char;
    }

    public String getTime() {
        return this.kL;
    }

    protected void m5500h(int i) {
        this.kN = i;
    }

    public boolean hasAddr() {
        return this.kG;
    }

    public boolean hasAltitude() {
        return this.kv;
    }

    public boolean hasRadius() {
        return this.kC;
    }

    public boolean hasSateNumber() {
        return this.kJ;
    }

    public boolean hasSpeed() {
        return this.kw;
    }

    protected void m5501i(int i) {
        this.kE = i;
    }

    void m5502if(C0447a c0447a) {
        if (c0447a != null) {
            this.kB.f3783try = c0447a.f3783try;
            this.kB.f3782int = c0447a.f3782int;
            this.kB.f3777case = c0447a.f3777case;
            this.kB.f3776byte = c0447a.f3776byte;
            this.kB.f3780for = c0447a.f3780for;
            this.kB.f3781if = c0447a.f3781if;
            this.kB.f3778char = c0447a.f3778char;
            this.kB.f3779do = c0447a.f3779do;
            this.kB.f3774a = c0447a.f3774a;
            this.kG = true;
        }
    }

    public void internalSet(int i, String str) {
        if (str != null && i == 0) {
            this.kx = str;
        }
    }

    public boolean isCellChangeFlag() {
        return this.kA;
    }

    public void setAddrStr(String str) {
        this.kr = str;
        if (str == null) {
            this.kG = false;
        } else {
            this.kG = true;
        }
    }

    public void setAltitude(double d) {
        this.kz = d;
        this.kv = true;
    }

    public void setCoorType(String str) {
        this.kM = str;
    }

    public void setDirection(float f) {
        this.ky = f;
    }

    public void setLatitude(double d) {
        this.kt = d;
    }

    public void setLocType(int i) {
        this.kH = i;
    }

    public void setLongitude(double d) {
        this.kI = d;
    }

    public void setNetworkLocationType(String str) {
        this.kD = str;
    }

    public void setRadius(float f) {
        this.kF = f;
        this.kC = true;
    }

    public void setSatelliteNumber(int i) {
        this.ks = i;
    }

    public void setSpeed(float f) {
        this.kK = f;
        this.kw = true;
    }

    public void setTime(String str) {
        this.kL = str;
    }

    protected BDLocation m5503v(String str) {
        return null;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.kH);
        parcel.writeString(this.kL);
        parcel.writeDouble(this.kt);
        parcel.writeDouble(this.kI);
        parcel.writeDouble(this.kz);
        parcel.writeFloat(this.kK);
        parcel.writeFloat(this.kF);
        parcel.writeInt(this.ks);
        parcel.writeFloat(this.ky);
        parcel.writeString(this.ku);
        parcel.writeString(this.kD);
        parcel.writeString(this.kB.f3780for);
        parcel.writeString(this.kB.f3782int);
        parcel.writeString(this.kB.f3776byte);
        parcel.writeString(this.kB.f3781if);
        parcel.writeString(this.kB.f3778char);
        parcel.writeString(this.kB.f3777case);
        parcel.writeString(this.kB.f3783try);
        parcel.writeString(this.kB.f3779do);
        parcel.writeString(this.kB.f3774a);
        parcel.writeInt(this.kN);
        parcel.writeString(this.kx);
        parcel.writeInt(this.kE);
        parcel.writeBooleanArray(new boolean[]{this.kv, this.kw, this.kC, this.kJ, this.kG, this.kA});
    }
}
