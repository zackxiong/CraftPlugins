package org.acra.sender;

import android.net.Uri;
import android.util.Log;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

/* renamed from: org.acra.sender.b */
public class ProGuard implements ProGuard {
    private static /* synthetic */ int[] f9658b;
    private final Uri f9659a;

    static /* synthetic */ int[] m12208a() {
        int[] iArr = f9658b;
        if (iArr == null) {
            iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.ANDROID_VERSION.ordinal()] = 7;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ReportField.APPLICATION_LOG.ordinal()] = 36;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ReportField.APP_VERSION_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ReportField.APP_VERSION_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[ReportField.AVAILABLE_MEM_SIZE.ordinal()] = 12;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[ReportField.BRAND.ordinal()] = 9;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[ReportField.BUILD.ordinal()] = 8;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[ReportField.CRASH_CONFIGURATION.ordinal()] = 16;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[ReportField.CUSTOM_DATA.ordinal()] = 13;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[ReportField.DEVICE_FEATURES.ordinal()] = 30;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[ReportField.DEVICE_ID.ordinal()] = 27;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[ReportField.DISPLAY.ordinal()] = 17;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[ReportField.DROPBOX.ordinal()] = 22;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[ReportField.DUMPSYS_MEMINFO.ordinal()] = 21;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[ReportField.ENVIRONMENT.ordinal()] = 31;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[ReportField.EVENTSLOG.ordinal()] = 24;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[ReportField.FILE_PATH.ordinal()] = 5;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[ReportField.INITIAL_CONFIGURATION.ordinal()] = 15;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[ReportField.INSTALLATION_ID.ordinal()] = 28;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[ReportField.IS_SILENT.ordinal()] = 26;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[ReportField.LOGCAT.ordinal()] = 23;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[ReportField.MEDIA_CODEC_LIST.ordinal()] = 37;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[ReportField.PACKAGE_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[ReportField.PHONE_MODEL.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[ReportField.PRODUCT.ordinal()] = 10;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[ReportField.RADIOLOG.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[ReportField.REPORT_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[ReportField.SETTINGS_GLOBAL.ordinal()] = 34;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[ReportField.SETTINGS_SECURE.ordinal()] = 33;
            } catch (NoSuchFieldError e29) {
            }
            try {
                iArr[ReportField.SETTINGS_SYSTEM.ordinal()] = 32;
            } catch (NoSuchFieldError e30) {
            }
            try {
                iArr[ReportField.SHARED_PREFERENCES.ordinal()] = 35;
            } catch (NoSuchFieldError e31) {
            }
            try {
                iArr[ReportField.STACK_TRACE.ordinal()] = 14;
            } catch (NoSuchFieldError e32) {
            }
            try {
                iArr[ReportField.THREAD_DETAILS.ordinal()] = 38;
            } catch (NoSuchFieldError e33) {
            }
            try {
                iArr[ReportField.TOTAL_MEM_SIZE.ordinal()] = 11;
            } catch (NoSuchFieldError e34) {
            }
            try {
                iArr[ReportField.USER_APP_START_DATE.ordinal()] = 19;
            } catch (NoSuchFieldError e35) {
            }
            try {
                iArr[ReportField.USER_COMMENT.ordinal()] = 18;
            } catch (NoSuchFieldError e36) {
            }
            try {
                iArr[ReportField.USER_CRASH_DATE.ordinal()] = 20;
            } catch (NoSuchFieldError e37) {
            }
            try {
                iArr[ReportField.USER_EMAIL.ordinal()] = 29;
            } catch (NoSuchFieldError e38) {
            }
            try {
                iArr[ReportField.USER_IP.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            f9658b = iArr;
        }
        return iArr;
    }

    public ProGuard() {
        this.f9659a = null;
    }

    public void m12209a(org.acra.p159b.ProGuard proGuard) {
        Uri parse;
        if (this.f9659a == null) {
            parse = Uri.parse(String.format(ACRA.getConfig().m12096M(), new Object[]{ACRA.getConfig().m12109j()}));
        } else {
            parse = this.f9659a;
        }
        Map a = m12207a((Map) proGuard);
        a.put("pageNumber", "0");
        a.put("backupCache", "");
        a.put("submit", "Envoyer");
        try {
            URL url = new URL(parse.toString());
            Log.d(ACRA.LOG_TAG, "Sending report " + ((String) proGuard.get(ReportField.REPORT_ID)));
            Log.d(ACRA.LOG_TAG, "Connect to " + url);
            org.acra.p165e.ProGuard proGuard2 = new org.acra.p165e.ProGuard();
            proGuard2.m12163a(ACRA.getConfig().m12103d());
            proGuard2.m12167b(ACRA.getConfig().m12089F());
            proGuard2.m12169c(ACRA.getConfig().m12116q());
            proGuard2.m12165a(url, Method.POST, org.acra.p165e.ProGuard.m12159b(a), Type.FORM);
        } catch (Throwable e) {
            throw new ProGuard("Error while sending report to Google Form.", e);
        }
    }

    private Map<String, String> m12207a(Map<ReportField, String> map) {
        ReportField[] reportFieldArr;
        int i = 0;
        ReportField[] e = ACRA.getConfig().m12104e();
        if (e.length == 0) {
            reportFieldArr = org.acra.ProGuard.f9626c;
        } else {
            reportFieldArr = e;
        }
        Map<String, String> hashMap = new HashMap();
        int length = reportFieldArr.length;
        int i2 = 0;
        while (i < length) {
            ReportField reportField = reportFieldArr[i];
            switch (ProGuard.m12208a()[reportField.ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    hashMap.put("entry." + i2 + ".single", "'" + ((String) map.get(reportField)));
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    hashMap.put("entry." + i2 + ".single", "'" + ((String) map.get(reportField)));
                    break;
                default:
                    hashMap.put("entry." + i2 + ".single", (String) map.get(reportField));
                    break;
            }
            i2++;
            i++;
        }
        return hashMap;
    }
}
