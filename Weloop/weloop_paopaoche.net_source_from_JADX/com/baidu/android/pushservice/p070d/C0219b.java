package com.baidu.android.pushservice.p070d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.frontia.p075a.p081e.C0405e;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.d.b */
public final class C0219b {
    public static void m4528a(Context context) {
        C0219b.m4529a(context, C0201b.m4446a(context).f2966a);
        C0219b.m4529a(context, C0201b.m4446a(context).f2967b);
    }

    private static void m4529a(Context context, ArrayList<C0208h> arrayList) {
        if (arrayList != null) {
            PackageManager packageManager = context.getPackageManager();
            synchronized (arrayList) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C0208h c0208h = (C0208h) it.next();
                    Object c = c0208h.m4444c();
                    PackageInfo packageInfo = null;
                    try {
                        packageInfo = packageManager.getPackageInfo(c, 0);
                    } catch (NameNotFoundException e) {
                        if (!TextUtils.isEmpty(c)) {
                            Log.w("ApiUtils", c + "not found at packageManager");
                        }
                    }
                    if (packageInfo == null) {
                        Intent intent = new Intent(PushConstants.ACTION_METHOD);
                        intent.putExtra(PushConstants.EXTRA_METHOD, "com.baidu.android.pushservice.action.UNBINDAPP");
                        intent.putExtra("package_name", c0208h.m4444c());
                        C0192a.m4337a(context, intent);
                    }
                }
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    public static void m4530a(List<NameValuePair> list) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        list.add(new BasicNameValuePair("timestamp", currentTimeMillis + ""));
        list.add(new BasicNameValuePair("expires", (86400 + currentTimeMillis) + ""));
        list.add(new BasicNameValuePair("v", "1"));
        try {
            list.add(new BasicNameValuePair("vcode", C0405e.m5358a(URLEncoder.encode(currentTimeMillis + "bccs", "UTF-8").getBytes(), false)));
        } catch (UnsupportedEncodingException e) {
            Log.e("ApiUtils", "error " + e.getMessage());
        }
    }
}
