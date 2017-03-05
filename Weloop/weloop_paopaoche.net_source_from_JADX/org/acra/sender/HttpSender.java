package org.acra.sender;

import android.net.Uri;
import android.util.Log;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.p159b.ProGuard;

/* compiled from: ProGuard */
public class HttpSender implements ProGuard {
    private static /* synthetic */ int[] f9651e;
    private static /* synthetic */ int[] f9652f;
    private final Uri f9653a;
    private final Map<ReportField, String> f9654b;
    private final Method f9655c;
    private final Type f9656d;

    /* compiled from: ProGuard */
    public enum Method {
        POST,
        PUT
    }

    /* compiled from: ProGuard */
    public enum Type {
        FORM {
            public String getContentType() {
                return "application/x-www-form-urlencoded";
            }
        },
        JSON {
            public String getContentType() {
                return "application/json";
            }
        };

        public abstract String getContentType();
    }

    static /* synthetic */ int[] m12202a() {
        int[] iArr = f9651e;
        if (iArr == null) {
            iArr = new int[Type.values().length];
            try {
                iArr[Type.FORM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Type.JSON.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f9651e = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] m12203b() {
        int[] iArr = f9652f;
        if (iArr == null) {
            iArr = new int[Method.values().length];
            try {
                iArr[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Method.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f9652f = iArr;
        }
        return iArr;
    }

    public HttpSender(Method method, Type type, Map<ReportField, String> map) {
        this.f9655c = method;
        this.f9653a = null;
        this.f9654b = map;
        this.f9656d = type;
    }

    public void m12204a(ProGuard proGuard) {
        String str = null;
        try {
            URL url;
            String str2;
            if (this.f9653a == null) {
                url = new URL(ACRA.getConfig().m12110k());
            } else {
                url = new URL(this.f9653a.toString());
            }
            Log.d(ACRA.LOG_TAG, "Connect to " + url.toString());
            if (org.acra.ProGuard.m12083a(ACRA.getConfig().m12111l())) {
                str2 = null;
            } else {
                str2 = ACRA.getConfig().m12111l();
            }
            if (!org.acra.ProGuard.m12083a(ACRA.getConfig().m12112m())) {
                str = ACRA.getConfig().m12112m();
            }
            org.acra.p165e.ProGuard proGuard2 = new org.acra.p165e.ProGuard();
            proGuard2.m12163a(ACRA.getConfig().m12103d());
            proGuard2.m12167b(ACRA.getConfig().m12089F());
            proGuard2.m12169c(ACRA.getConfig().m12116q());
            proGuard2.m12164a(str2);
            proGuard2.m12168b(str);
            proGuard2.m12166a(ACRA.getConfig().m12100a());
            str = "";
            switch (m12202a()[this.f9656d.ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    str2 = proGuard.m12047a().toString();
                    break;
                default:
                    str2 = org.acra.p165e.ProGuard.m12159b(m12201a((Map) proGuard));
                    break;
            }
            switch (m12203b()[this.f9655c.ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    url = new URL(url.toString() + '/' + proGuard.m12046a(ReportField.REPORT_ID));
                    break;
                default:
                    throw new UnsupportedOperationException("Unknown method: " + this.f9655c.name());
            }
            proGuard2.m12165a(url, this.f9655c, str2, this.f9656d);
        } catch (Throwable e) {
            throw new ProGuard("Error while sending " + ACRA.getConfig().m12099P() + " report via Http " + this.f9655c.name(), e);
        } catch (Throwable e2) {
            throw new ProGuard("Error while sending " + ACRA.getConfig().m12099P() + " report via Http " + this.f9655c.name(), e2);
        }
    }

    private Map<String, String> m12201a(Map<ReportField, String> map) {
        ReportField[] e = ACRA.getConfig().m12104e();
        ReportField[] reportFieldArr;
        if (e.length == 0) {
            reportFieldArr = org.acra.ProGuard.f9626c;
        } else {
            reportFieldArr = e;
        }
        Map<String, String> hashMap = new HashMap(map.size());
        for (ReportField reportField : r2) {
            if (this.f9654b == null || this.f9654b.get(reportField) == null) {
                hashMap.put(reportField.toString(), (String) map.get(reportField));
            } else {
                hashMap.put((String) this.f9654b.get(reportField), (String) map.get(reportField));
            }
        }
        return hashMap;
    }
}
