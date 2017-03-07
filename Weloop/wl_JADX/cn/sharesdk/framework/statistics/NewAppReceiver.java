package cn.sharesdk.framework.statistics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0066b;
import cn.sharesdk.framework.utils.C0071e;
import cn.sharesdk.framework.utils.C0072f;
import com.umeng.update.ProGuard;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

public class NewAppReceiver extends BroadcastReceiver implements Callback {
    private static final String[] f2012a;
    private static NewAppReceiver f2013b;
    private Context f2014c;
    private IntentFilter[] f2015d;
    private Handler f2016e;

    /* renamed from: cn.sharesdk.framework.statistics.NewAppReceiver.a */
    private static class C0047a {
        private C0072f f2009a;

        public C0047a(Context context) {
            C0066b a = C0066b.m3214a(context);
            String cachePath = C0064R.getCachePath(context, null);
            if (a.m3245x()) {
                File file = new File(a.m3246y(), "ShareSDK");
                if (file.exists()) {
                    this.f2009a = new C0072f();
                    this.f2009a.m3273a(new File(file, ".ba").getAbsolutePath());
                    return;
                }
            }
            this.f2009a = new C0072f();
            File file2 = new File(cachePath, ".ba");
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            this.f2009a.m3273a(file2.getAbsolutePath());
        }

        public ArrayList<HashMap<String, String>> m3073a() {
            Object c = this.f2009a.m3277c("buffered_apps");
            return c == null ? new ArrayList() : (ArrayList) c;
        }

        public void m3074a(ArrayList<HashMap<String, String>> arrayList) {
            this.f2009a.m3274a("buffered_apps", (Object) arrayList);
        }
    }

    /* renamed from: cn.sharesdk.framework.statistics.NewAppReceiver.b */
    private static class C0048b extends Thread {
        private Context f2010a;
        private C0047a f2011b;

        private C0048b(Context context) {
            this.f2010a = context;
            this.f2011b = new C0047a(context);
        }

        private ArrayList<HashMap<String, String>> m3075a(HashMap<String, HashMap<String, String>> hashMap) {
            ArrayList<HashMap<String, String>> arrayList = new ArrayList();
            for (Entry value : hashMap.entrySet()) {
                arrayList.add(value.getValue());
            }
            return arrayList;
        }

        private HashMap<String, HashMap<String, String>> m3076a(ArrayList<HashMap<String, String>> arrayList) {
            HashMap<String, HashMap<String, String>> hashMap = new HashMap();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                HashMap hashMap2 = (HashMap) it.next();
                String str = (String) hashMap2.get("pkg");
                if (!TextUtils.isEmpty(str)) {
                    hashMap.put(str, hashMap2);
                }
            }
            return hashMap;
        }

        public static void m3077a(Context context) {
            new C0048b(context).start();
        }

        public void run() {
            C0066b a = C0066b.m3214a(this.f2010a);
            ArrayList a2 = a.m3221a(false);
            ArrayList a3 = this.f2011b.m3073a();
            this.f2011b.m3074a(a2);
            HashMap a4 = m3076a(a2);
            HashMap a5 = m3076a(a3);
            Iterator it = a3.iterator();
            while (it.hasNext()) {
                String str = (String) ((HashMap) it.next()).get("pkg");
                if (!TextUtils.isEmpty(str)) {
                    a4.remove(str);
                }
            }
            Iterator it2 = a2.iterator();
            while (it2.hasNext()) {
                str = (String) ((HashMap) it2.next()).get("pkg");
                if (!TextUtils.isEmpty(str)) {
                    a5.remove(str);
                }
            }
            a3 = m3075a(a4);
            a2 = m3075a(a5);
            if (a3.size() > 0) {
                C0071e.m3260a("================== upload new adds: " + a.m3239r(), new Object[0]);
                try {
                    C0054a.m3106a(this.f2010a).m3123a("APPS", a3);
                } catch (Throwable th) {
                    C0071e.m3269c(th);
                }
            }
            if (a2.size() > 0) {
                C0071e.m3260a("================== upload new removes: " + a.m3239r(), new Object[0]);
                try {
                    C0054a.m3106a(this.f2010a).m3123a("UNINSTALL", a2);
                } catch (Throwable th2) {
                    C0071e.m3269c(th2);
                }
            }
        }
    }

    static {
        f2012a = new String[]{"android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_REPLACED"};
    }

    private NewAppReceiver(Context context) {
        int i = 0;
        this.f2014c = context;
        this.f2015d = new IntentFilter[]{new IntentFilter(), new IntentFilter()};
        this.f2015d[0].addAction("cn.sharesdk.START_UP");
        String[] strArr = f2012a;
        int length = strArr.length;
        while (i < length) {
            this.f2015d[1].addAction(strArr[i]);
            i++;
        }
        this.f2015d[1].addDataScheme(ProGuard.f5476d);
        this.f2016e = new Handler(this);
    }

    public static synchronized void m3078a() {
        synchronized (NewAppReceiver.class) {
            if (f2013b != null) {
                try {
                    f2013b.f2014c.unregisterReceiver(f2013b);
                } catch (Throwable th) {
                    C0071e.m3266b(th);
                }
            }
        }
    }

    public static synchronized void m3079a(Context context) {
        synchronized (NewAppReceiver.class) {
            if (f2013b == null) {
                f2013b = new NewAppReceiver(context);
            }
            m3078a();
            try {
                for (IntentFilter registerReceiver : f2013b.f2015d) {
                    context.registerReceiver(f2013b, registerReceiver);
                }
            } catch (Throwable th) {
                C0071e.m3266b(th);
            }
        }
    }

    private boolean m3080a(String str) {
        for (String equals : f2012a) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                C0048b.m3077a(this.f2014c);
                break;
        }
        return false;
    }

    public void onReceive(Context context, Intent intent) {
        int i;
        String str = null;
        if (intent != null) {
            str = intent.getAction();
        }
        if ("cn.sharesdk.START_UP".equals(str)) {
            String r = C0066b.m3214a(context).m3239r();
            String stringExtra = intent.getStringExtra("packageName");
            if (stringExtra != null && stringExtra.equals(r)) {
                i = 1;
            }
            i = 0;
        } else {
            if (m3080a(str)) {
                i = 1;
            }
            i = 0;
        }
        if (i != 0) {
            C0071e.m3260a("========= receive broadcast: " + str, new Object[0]);
            this.f2016e.removeMessages(1);
            this.f2016e.sendEmptyMessageDelayed(1, 3600000);
        }
    }
}
