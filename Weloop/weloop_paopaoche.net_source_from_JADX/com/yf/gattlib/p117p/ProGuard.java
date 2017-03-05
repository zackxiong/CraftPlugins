package com.yf.gattlib.p117p;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import java.util.HashMap;

/* renamed from: com.yf.gattlib.p.a */
public final class ProGuard {
    public static String m8224a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Throwable e) {
            ProGuard.m8295a(e);
            return "unknown";
        }
    }

    public static int m8226b(Context context) {
        String a = ProGuard.m8224a(context);
        if (TextUtils.isEmpty(a)) {
            return 1;
        }
        if (a.endsWith("a")) {
            return 3;
        }
        if (a.endsWith("b")) {
            return 2;
        }
        return 1;
    }

    public static HashMap<String, Object> m8225a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        HashMap<String, Object> hashMap = new HashMap();
        try {
            hashMap.put("image", packageManager.getApplicationIcon(str));
            hashMap.put("appName", packageManager.getApplicationInfo(str, 0).loadLabel(packageManager).toString());
            hashMap.put("pkg", str);
            return hashMap;
        } catch (NameNotFoundException e) {
            return null;
        }
    }
}
