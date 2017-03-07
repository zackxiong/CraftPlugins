package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.baidu.frontia.module.deeplink.f */
public class C0422f {
    private List<C0421b> f3711a;
    private final Context f3712b;

    /* renamed from: com.baidu.frontia.module.deeplink.f.a */
    private class C0420a implements Comparator<C0421b> {
        final /* synthetic */ C0422f f3705a;

        private C0420a(C0422f c0422f) {
            this.f3705a = c0422f;
        }

        public int m5417a(C0421b c0421b, C0421b c0421b2) {
            int i = c0421b2.f3706a - c0421b.f3706a;
            return i == 0 ? c0421b2.f3707b - c0421b.f3707b : i;
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return m5417a((C0421b) obj, (C0421b) obj2);
        }
    }

    /* renamed from: com.baidu.frontia.module.deeplink.f.b */
    public class C0421b {
        int f3706a;
        int f3707b;
        String f3708c;
        String f3709d;
        final /* synthetic */ C0422f f3710e;

        public C0421b(C0422f c0422f) {
            this.f3710e = c0422f;
        }
    }

    public C0422f(Context context) {
        this.f3712b = context.getApplicationContext();
    }

    private int m5418a(String str) {
        int i = 0;
        if (!TextUtils.isEmpty(str)) {
            StringBuilder stringBuilder = new StringBuilder();
            String[] split = str.split("\\.");
            int length = split.length;
            for (int i2 = i; i2 < length; i2++) {
                stringBuilder.append(split[i2]);
            }
            try {
                i = Integer.valueOf(stringBuilder.toString()).intValue();
            } catch (NumberFormatException e) {
                Log.e("LightAppSDK", " number format exception " + e.getMessage());
            }
        }
        return i;
    }

    private String m5419a() {
        if (this.f3711a != null && this.f3711a.size() > 0) {
            C0421b c0421b = (C0421b) this.f3711a.get(0);
            if (c0421b != null && c0421b.f3707b > 0) {
                return c0421b.f3708c;
            }
        }
        return "";
    }

    private String m5420a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Context createPackageContext = context.createPackageContext(str, 2);
            return createPackageContext.getSharedPreferences(createPackageContext.getPackageName() + "runtime", 5).getString("sp_k_sdk_versioncode", "");
        } catch (NameNotFoundException e) {
            Log.e("LightAppSDK", "error " + e.getMessage());
            return "";
        }
    }

    private String m5421a(ResolveInfo resolveInfo) {
        Object obj = resolveInfo.activityInfo.packageName;
        IntentFilter intentFilter = resolveInfo.filter;
        if (TextUtils.isEmpty(obj)) {
            return "";
        }
        if (intentFilter == null) {
            return "";
        }
        int countCategories = intentFilter.countCategories();
        for (int i = 0; i < countCategories; i++) {
            String category = intentFilter.getCategory(i);
            if (category.contains(obj + "_")) {
                return category;
            }
        }
        return "";
    }

    private ArrayList<String> m5422a(Intent intent) {
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("key_pkgname_list");
        if (stringArrayListExtra == null) {
            stringArrayListExtra = new ArrayList();
        }
        stringArrayListExtra.add(this.f3712b.getPackageName());
        return stringArrayListExtra;
    }

    private int m5423b(String str) {
        int i = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.split("\\_");
                if (split.length > 0) {
                    i = Integer.valueOf(split[split.length - 1]).intValue();
                }
            } catch (Exception e) {
                Log.e("LightAppSDK", "error " + e.getMessage());
            }
        }
        return i;
    }

    private List<ResolveInfo> m5424b(Intent intent) {
        return this.f3712b.getPackageManager().queryIntentActivities(intent, 64);
    }

    public Intent m5425a(Intent intent, boolean z) {
        Intent intent2 = null;
        if (intent != null) {
            if (this.f3711a == null || this.f3711a.size() == 0) {
                m5426b(intent, z);
            }
            Object a = m5419a();
            if (!TextUtils.isEmpty(a)) {
                intent2 = new Intent(intent.getAction());
                intent2.addCategory(a);
                if (!z) {
                    intent2.putStringArrayListExtra("key_pkgname_list", m5422a(intent));
                }
            }
        }
        return intent2;
    }

    public List<C0421b> m5426b(Intent intent, boolean z) {
        if (this.f3711a == null) {
            this.f3711a = new ArrayList();
        } else {
            this.f3711a.clear();
        }
        for (ResolveInfo resolveInfo : m5424b(intent)) {
            if (z || !resolveInfo.activityInfo.packageName.equals(this.f3712b.getPackageName())) {
                Object obj;
                ArrayList stringArrayListExtra = intent.getStringArrayListExtra("key_pkgname_list");
                if (stringArrayListExtra != null) {
                    Iterator it = stringArrayListExtra.iterator();
                    while (it.hasNext()) {
                        if (resolveInfo.activityInfo.packageName.equals((String) it.next())) {
                            obj = 1;
                            break;
                        }
                    }
                }
                obj = null;
                if (obj == null) {
                    String a = m5421a(resolveInfo);
                    if (!TextUtils.isEmpty(a)) {
                        int a2 = m5418a(m5420a(this.f3712b, resolveInfo.activityInfo.packageName));
                        if (a2 != 0) {
                            C0421b c0421b = new C0421b(this);
                            c0421b.f3708c = a;
                            c0421b.f3706a = m5423b(a);
                            c0421b.f3707b = a2;
                            c0421b.f3709d = resolveInfo.activityInfo.packageName;
                            this.f3711a.add(c0421b);
                        }
                    }
                }
            }
        }
        Collections.sort(this.f3711a, new C0420a());
        return this.f3711a;
    }
}
