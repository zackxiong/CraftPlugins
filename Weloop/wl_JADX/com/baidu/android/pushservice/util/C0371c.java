package com.baidu.android.pushservice.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.baidu.loctp.str.BDLocManager;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Enumeration;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.util.c */
public class C0371c {
    private static int f3601a;

    static {
        f3601a = 4;
    }

    public static String m5149a() {
        try {
            String str;
            String str2 = "";
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        str = inetAddress.getHostAddress().toString();
                        break;
                    }
                }
                str = str2;
                str2 = str;
            }
            if (TextUtils.isEmpty(str2)) {
                return "";
            }
            int indexOf = str2.indexOf(37);
            str = indexOf != -1 ? str2.substring(0, indexOf) : str2;
            return str == null ? "" : str;
        } catch (SocketException e) {
            C0385a.m5313d("LbsUtils", e.toString());
            return "";
        }
    }

    public static String m5150a(Context context) {
        return context == null ? null : System.getString(context.getContentResolver(), "com.baidu.android.pushservice.lbscache");
    }

    public static String m5151a(Context context, JSONObject jSONObject) {
        if (context == null || jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("city_code", jSONObject.getString("cityCode"));
            JSONObject jSONObject3 = jSONObject.getJSONObject("location");
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("latitude", jSONObject3.getString("lat"));
            jSONObject4.put("longitude", jSONObject3.getString("lng"));
            jSONObject4.put("accuracy", jSONObject.getString("accuracy"));
            jSONObject2.put("location", jSONObject4);
            System.putString(context.getContentResolver(), "com.baidu.android.pushservice.lbscache", jSONObject2.toString());
            return jSONObject2.toString();
        } catch (JSONException e) {
            C0385a.m5313d("LbsUtils", "error " + e.getMessage());
            return null;
        }
    }

    public static String m5152a(Context context, boolean z) {
        CharSequence a = PushSettings.m4204a();
        if (!TextUtils.isEmpty(a)) {
            CharSequence d = C0371c.m5156d(context);
            if (!TextUtils.isEmpty(d)) {
                if (!z && C0371c.m5154b(context) && !TextUtils.isEmpty(C0371c.m5150a(context))) {
                    return null;
                }
                int i;
                JSONObject jSONObject;
                String d2;
                String a2 = C0371c.m5149a();
                C0201b a3 = C0201b.m4446a(context);
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject2 = new JSONObject();
                ArrayList arrayList2 = a3.f2967b;
                for (i = 0; i < arrayList2.size(); i++) {
                    if (!TextUtils.isEmpty(((C0208h) arrayList2.get(i)).m4439a())) {
                        jSONObject = new JSONObject();
                        try {
                            jSONObject.put("userid", C0374f.m5205c(((C0208h) arrayList2.get(i)).f2984e));
                            jSONObject.put("appid", ((C0208h) arrayList2.get(i)).m4439a());
                            d2 = PushSettings.m4224d(((C0208h) arrayList2.get(i)).m4444c());
                            if (!TextUtils.isEmpty(d2)) {
                                int indexOf = d2.indexOf(",");
                                String substring = d2.substring(0, indexOf);
                                d2 = d2.substring(indexOf + 1);
                                jSONObject.put("apikey", substring);
                                jSONObject.put("frontia_user", d2);
                            }
                        } catch (Exception e) {
                            C0385a.m5313d("LbsUtils", "error " + e.getMessage());
                        }
                        jSONArray.put(jSONObject);
                    }
                }
                arrayList2 = a3.f2966a;
                for (i = 0; i < arrayList2.size(); i++) {
                    d2 = ((C0208h) arrayList2.get(i)).m4439a();
                    if (!(TextUtils.isEmpty(d2) || a3.m4460c(d2))) {
                        C0385a.m5311b("LbsUtils", ((C0208h) arrayList2.get(i)).f2984e + ":" + ((C0208h) arrayList2.get(i)).m4439a());
                        jSONObject = new JSONObject();
                        try {
                            jSONObject.put("userid", C0374f.m5205c(((C0208h) arrayList2.get(i)).f2984e));
                            jSONObject.put("appid", ((C0208h) arrayList2.get(i)).m4439a());
                            CharSequence d3 = PushSettings.m4224d(((C0208h) arrayList2.get(i)).m4439a());
                            if (!TextUtils.isEmpty(d3)) {
                                jSONObject.put("frontia_user", d3);
                            }
                        } catch (JSONException e2) {
                            C0385a.m5313d("LbsUtils", "error " + e2.getMessage());
                        }
                        jSONArray.put(jSONObject);
                    }
                }
                if (jSONArray.length() > 0) {
                    try {
                        jSONObject2.put("channelid", a);
                        jSONObject2.put("cuid", C0402c.m5346a(context));
                        jSONObject2.put("nettype", C0374f.m5257z(context.getApplicationContext()));
                        jSONObject2.put("clients", jSONArray);
                        jSONObject2.put("apinfo", d);
                        jSONObject2.put("cip", a2);
                        jSONObject2.put("model", Build.MODEL);
                        jSONObject2.put("version", VERSION.RELEASE);
                        jSONObject2.put("sdkversion", C0192a.m4336a());
                    } catch (JSONException e22) {
                        C0385a.m5313d("LbsUtils", "error " + e22.getMessage());
                    }
                    return jSONObject2.toString();
                }
            }
        }
        return null;
    }

    public static void m5153a(Context context, long j) {
        C0374f.m5186a(context, "com.baidu.pushservice.clt", Long.valueOf(j));
    }

    public static boolean m5154b(Context context) {
        if (context == null) {
            return false;
        }
        Object e = C0371c.m5157e(context);
        CharSequence string = System.getString(context.getContentResolver(), "com.baidu.android.pushservice.lac");
        if (TextUtils.isEmpty(e)) {
            return false;
        }
        if (TextUtils.equals(e, string)) {
            if (C0192a.m4339a(context)) {
                C0385a.m5308a("LbsUtils", "lbsinfo equals");
            }
            C0371c.m5153a(context, System.currentTimeMillis());
            return true;
        }
        if (C0192a.m4339a(context)) {
            C0385a.m5308a("LbsUtils", "lbsinfo not the same");
        }
        System.putString(context.getContentResolver(), "com.baidu.android.pushservice.lac", e);
        return false;
    }

    public static long m5155c(Context context) {
        long j = 0;
        if (context == null) {
            C0385a.m5313d("LbsUtils", "getLastSendLbsTime mContext == null");
        } else {
            try {
                j = System.getLong(context.getContentResolver(), "com.baidu.pushservice.clt");
            } catch (SettingNotFoundException e) {
                C0385a.m5313d("LbsUtils", "error " + e.getMessage());
            }
        }
        return j;
    }

    public static String m5156d(Context context) {
        return new BDLocManager(context.getApplicationContext()).getLocString(f3601a);
    }

    private static String m5157e(Context context) {
        Object bssid = ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo().getBSSID();
        if (!TextUtils.isEmpty(bssid)) {
            return bssid;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        CellLocation cellLocation = telephonyManager.getCellLocation();
        if (cellLocation instanceof GsmCellLocation) {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
            return gsmCellLocation.getCid() + "" + gsmCellLocation.getLac();
        } else if (!(cellLocation instanceof CdmaCellLocation)) {
            return "";
        } else {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) telephonyManager.getCellLocation();
            int baseStationId = cdmaCellLocation.getBaseStationId();
            int networkId = cdmaCellLocation.getNetworkId();
            return baseStationId + "" + networkId + "" + cdmaCellLocation.getSystemId();
        }
    }
}
