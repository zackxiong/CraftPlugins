package org.acra.p159b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.format.Time;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.acra.ACRA;
import org.acra.ReportField;

/* renamed from: org.acra.b.d */
public final class ProGuard {
    private final Context f9538a;
    private final SharedPreferences f9539b;
    private final Map<String, String> f9540c;
    private final Time f9541d;
    private final String f9542e;

    public ProGuard(Context context, SharedPreferences sharedPreferences, Time time, String str) {
        this.f9540c = new HashMap();
        this.f9538a = context;
        this.f9539b = sharedPreferences;
        this.f9541d = time;
        this.f9542e = str;
    }

    public String m12051a(String str, String str2) {
        return (String) this.f9540c.put(str, str2);
    }

    public ProGuard m12052a(Throwable th, boolean z, Thread thread) {
        ProGuard proGuard = new ProGuard();
        try {
            List b = m12050b();
            proGuard.put(ReportField.STACK_TRACE, m12049a(th));
            proGuard.put(ReportField.USER_APP_START_DATE, this.f9541d.format3339(false));
            if (z) {
                proGuard.put(ReportField.IS_SILENT, "true");
            }
            if (b.contains(ReportField.REPORT_ID)) {
                proGuard.put(ReportField.REPORT_ID, UUID.randomUUID().toString());
            }
            if (b.contains(ReportField.INSTALLATION_ID)) {
                proGuard.put(ReportField.INSTALLATION_ID, org.acra.p165e.ProGuard.m12170a(this.f9538a));
            }
            if (b.contains(ReportField.INITIAL_CONFIGURATION)) {
                proGuard.put(ReportField.INITIAL_CONFIGURATION, this.f9542e);
            }
            if (b.contains(ReportField.CRASH_CONFIGURATION)) {
                proGuard.put(ReportField.CRASH_CONFIGURATION, ProGuard.m12042a(this.f9538a));
            }
            if (!(th instanceof OutOfMemoryError) && b.contains(ReportField.DUMPSYS_MEMINFO)) {
                proGuard.put(ReportField.DUMPSYS_MEMINFO, ProGuard.m12066a());
            }
            if (b.contains(ReportField.PACKAGE_NAME)) {
                proGuard.put(ReportField.PACKAGE_NAME, this.f9538a.getPackageName());
            }
            if (b.contains(ReportField.BUILD)) {
                proGuard.put(ReportField.BUILD, new StringBuilder(String.valueOf(ProGuard.m12075b(Build.class))).append(ProGuard.m12074a(VERSION.class, "VERSION")).toString());
            }
            if (b.contains(ReportField.PHONE_MODEL)) {
                proGuard.put(ReportField.PHONE_MODEL, Build.MODEL);
            }
            if (b.contains(ReportField.ANDROID_VERSION)) {
                proGuard.put(ReportField.ANDROID_VERSION, VERSION.RELEASE);
            }
            if (b.contains(ReportField.BRAND)) {
                proGuard.put(ReportField.BRAND, Build.BRAND);
            }
            if (b.contains(ReportField.PRODUCT)) {
                proGuard.put(ReportField.PRODUCT, Build.PRODUCT);
            }
            if (b.contains(ReportField.TOTAL_MEM_SIZE)) {
                proGuard.put(ReportField.TOTAL_MEM_SIZE, Long.toString(org.acra.p165e.ProGuard.m12181b()));
            }
            if (b.contains(ReportField.AVAILABLE_MEM_SIZE)) {
                proGuard.put(ReportField.AVAILABLE_MEM_SIZE, Long.toString(org.acra.p165e.ProGuard.m12179a()));
            }
            if (b.contains(ReportField.FILE_PATH)) {
                proGuard.put(ReportField.FILE_PATH, org.acra.p165e.ProGuard.m12182b(this.f9538a));
            }
            if (b.contains(ReportField.DISPLAY)) {
                proGuard.put(ReportField.DISPLAY, ProGuard.m12056a(this.f9538a));
            }
            if (b.contains(ReportField.USER_CRASH_DATE)) {
                Time time = new Time();
                time.setToNow();
                proGuard.put(ReportField.USER_CRASH_DATE, time.format3339(false));
            }
            if (b.contains(ReportField.CUSTOM_DATA)) {
                proGuard.put(ReportField.CUSTOM_DATA, m12048a());
            }
            if (b.contains(ReportField.USER_EMAIL)) {
                proGuard.put(ReportField.USER_EMAIL, this.f9539b.getString(ACRA.PREF_USER_EMAIL_ADDRESS, "N/A"));
            }
            if (b.contains(ReportField.DEVICE_FEATURES)) {
                proGuard.put(ReportField.DEVICE_FEATURES, ProGuard.m12053a(this.f9538a));
            }
            if (b.contains(ReportField.ENVIRONMENT)) {
                proGuard.put(ReportField.ENVIRONMENT, ProGuard.m12073a(Environment.class));
            }
            if (b.contains(ReportField.SETTINGS_SYSTEM)) {
                proGuard.put(ReportField.SETTINGS_SYSTEM, ProGuard.m12076a(this.f9538a));
            }
            if (b.contains(ReportField.SETTINGS_SECURE)) {
                proGuard.put(ReportField.SETTINGS_SECURE, ProGuard.m12078b(this.f9538a));
            }
            if (b.contains(ReportField.SETTINGS_GLOBAL)) {
                proGuard.put(ReportField.SETTINGS_GLOBAL, ProGuard.m12079c(this.f9538a));
            }
            if (b.contains(ReportField.SHARED_PREFERENCES)) {
                proGuard.put(ReportField.SHARED_PREFERENCES, ProGuard.m12080a(this.f9538a));
            }
            org.acra.p165e.ProGuard proGuard2 = new org.acra.p165e.ProGuard(this.f9538a);
            PackageInfo a = proGuard2.m12177a();
            if (a != null) {
                if (b.contains(ReportField.APP_VERSION_CODE)) {
                    proGuard.put(ReportField.APP_VERSION_CODE, Integer.toString(a.versionCode));
                }
                if (b.contains(ReportField.APP_VERSION_NAME)) {
                    proGuard.put(ReportField.APP_VERSION_NAME, a.versionName != null ? a.versionName : "not set");
                }
            } else {
                proGuard.put(ReportField.APP_VERSION_NAME, "Package info unavailable");
            }
            if (b.contains(ReportField.DEVICE_ID) && this.f9539b.getBoolean(ACRA.PREF_ENABLE_DEVICE_ID, true) && proGuard2.m12178a("android.permission.READ_PHONE_STATE")) {
                String a2 = org.acra.p165e.ProGuard.m12180a(this.f9538a);
                if (a2 != null) {
                    proGuard.put(ReportField.DEVICE_ID, a2);
                }
            }
            if (!(this.f9539b.getBoolean(ACRA.PREF_ENABLE_SYSTEM_LOGS, true) && proGuard2.m12178a("android.permission.READ_LOGS")) && ProGuard.m12040a() < 16) {
                Log.i(ACRA.LOG_TAG, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data.");
            } else {
                Log.i(ACRA.LOG_TAG, "READ_LOGS granted! ACRA can include LogCat and DropBox data.");
                if (b.contains(ReportField.LOGCAT)) {
                    proGuard.put(ReportField.LOGCAT, ProGuard.m12067a(null));
                }
                if (b.contains(ReportField.EVENTSLOG)) {
                    proGuard.put(ReportField.EVENTSLOG, ProGuard.m12067a("events"));
                }
                if (b.contains(ReportField.RADIOLOG)) {
                    proGuard.put(ReportField.RADIOLOG, ProGuard.m12067a("radio"));
                }
                if (b.contains(ReportField.DROPBOX)) {
                    proGuard.put(ReportField.DROPBOX, ProGuard.m12065a(this.f9538a, ACRA.getConfig().m12101b()));
                }
            }
            if (b.contains(ReportField.APPLICATION_LOG)) {
                proGuard.put(ReportField.APPLICATION_LOG, ProGuard.m12068a(this.f9538a, ACRA.getConfig().m12094K(), ACRA.getConfig().m12095L()));
            }
            if (b.contains(ReportField.MEDIA_CODEC_LIST)) {
                proGuard.put(ReportField.MEDIA_CODEC_LIST, ProGuard.m12069a());
            }
            if (b.contains(ReportField.THREAD_DETAILS)) {
                proGuard.put(ReportField.THREAD_DETAILS, ProGuard.m12082a(thread));
            }
            if (b.contains(ReportField.USER_IP)) {
                proGuard.put(ReportField.USER_IP, org.acra.p165e.ProGuard.m12183c());
            }
        } catch (Throwable e) {
            Log.e(ACRA.LOG_TAG, "Error while retrieving crash data", e);
        } catch (Throwable e2) {
            Log.e(ACRA.LOG_TAG, "Error : application log file " + ACRA.getConfig().m12094K() + " not found.", e2);
        } catch (Throwable e22) {
            Log.e(ACRA.LOG_TAG, "Error while reading application log file " + ACRA.getConfig().m12094K() + ".", e22);
        }
        return proGuard;
    }

    private String m12048a() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : this.f9540c.keySet()) {
            String str2 = (String) this.f9540c.get(str);
            stringBuilder.append(str);
            stringBuilder.append(" = ");
            if (str2 != null) {
                str2 = str2.replaceAll("\n", "\\\\n");
            }
            stringBuilder.append(str2);
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

    private String m12049a(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        while (th != null) {
            th.printStackTrace(printWriter);
            th = th.getCause();
        }
        String obj = stringWriter.toString();
        printWriter.close();
        return obj;
    }

    private List<ReportField> m12050b() {
        org.acra.p158a.ProGuard config = ACRA.getConfig();
        Object[] e = config.m12018e();
        if (e.length != 0) {
            Log.d(ACRA.LOG_TAG, "Using custom Report Fields");
        } else if (config.m12029p() == null || "".equals(config.m12029p())) {
            Log.d(ACRA.LOG_TAG, "Using default Report Fields");
            e = org.acra.ProGuard.f9626c;
        } else {
            Log.d(ACRA.LOG_TAG, "Using default Mail Report Fields");
            e = org.acra.ProGuard.f9625b;
        }
        return Arrays.asList(e);
    }
}
