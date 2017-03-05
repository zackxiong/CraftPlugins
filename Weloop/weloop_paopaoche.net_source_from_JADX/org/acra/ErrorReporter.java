package org.acra;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.format.Time;
import android.util.Log;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.umeng.update.UpdateConfig;
import java.io.File;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.acra.sender.HttpSender;
import org.acra.sender.ProGuard;

/* compiled from: ProGuard */
public class ErrorReporter implements UncaughtExceptionHandler {
    private static boolean f9516k;
    private static int f9517l;
    private boolean f9518a;
    private final Application f9519b;
    private final SharedPreferences f9520c;
    private final List<ProGuard> f9521d;
    private final org.acra.p159b.ProGuard f9522e;
    private final ProGuard f9523f;
    private final UncaughtExceptionHandler f9524g;
    private Thread f9525h;
    private Throwable f9526i;
    private transient Activity f9527j;

    static {
        f9516k = true;
        f9517l = 0;
    }

    ErrorReporter(Application application, SharedPreferences sharedPreferences, boolean z) {
        this.f9518a = false;
        this.f9521d = new ArrayList();
        this.f9523f = new ProGuard();
        this.f9519b = application;
        this.f9520c = sharedPreferences;
        this.f9518a = z;
        String a = org.acra.p159b.ProGuard.m12042a(this.f9519b);
        Time time = new Time();
        time.setToNow();
        if (org.acra.p159b.ProGuard.m12040a() >= 14) {
            org.acra.p160c.p161a.p162a.p163a.ProGuard.m12133a(application, new ProGuard(this));
        }
        this.f9522e = new org.acra.p159b.ProGuard(this.f9519b, sharedPreferences, time, a);
        this.f9524g = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        m11997c();
    }

    @Deprecated
    public void addCustomData(String str, String str2) {
        this.f9522e.m12051a(str, str2);
    }

    public void m11992a(ProGuard proGuard) {
        this.f9521d.add(proGuard);
    }

    public void m11990a() {
        this.f9521d.clear();
    }

    public void m11995b(ProGuard proGuard) {
        m11990a();
        m11992a(proGuard);
    }

    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (this.f9518a) {
                this.f9525h = thread;
                this.f9526i = th;
                Log.e(ACRA.LOG_TAG, "ACRA caught a " + th.getClass().getSimpleName() + " exception for " + this.f9519b.getPackageName() + ". Building report.");
                m11980a(th, ACRA.getConfig().m12117r(), false, true);
            } else if (this.f9524g != null) {
                Log.e(ACRA.LOG_TAG, "ACRA is disabled for " + this.f9519b.getPackageName() + " - forwarding uncaught Exception on to default ExceptionHandler");
                this.f9524g.uncaughtException(thread, th);
            } else {
                Log.e(ACRA.LOG_TAG, "ACRA is disabled for " + this.f9519b.getPackageName() + " - no default ExceptionHandler");
            }
        } catch (Throwable th2) {
            if (this.f9524g != null) {
                this.f9524g.uncaughtException(thread, th);
            }
        }
    }

    private void m11988f() {
        if (ACRA.getConfig().m12117r() == ReportingInteractionMode.SILENT || (ACRA.getConfig().m12117r() == ReportingInteractionMode.TOAST && ACRA.getConfig().m12108i())) {
            this.f9524g.uncaughtException(this.f9525h, this.f9526i);
            return;
        }
        Log.e(ACRA.LOG_TAG, new StringBuilder(String.valueOf(this.f9519b.getPackageName())).append(" fatal error : ").append(this.f9526i.getMessage()).toString(), this.f9526i);
        if (this.f9527j != null) {
            Log.i(ACRA.LOG_TAG, "Finishing the last Activity prior to killing the Process");
            this.f9527j.finish();
            Log.i(ACRA.LOG_TAG, "Finished " + this.f9527j.getClass());
            this.f9527j = null;
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    public void handleSilentException(Throwable th) {
        if (this.f9518a) {
            m11980a(th, ReportingInteractionMode.SILENT, true, false);
            Log.d(ACRA.LOG_TAG, "ACRA sent Silent report.");
            return;
        }
        Log.d(ACRA.LOG_TAG, "ACRA is disabled. Silent report not sent.");
    }

    public void m11993a(boolean z) {
        Log.i(ACRA.LOG_TAG, "ACRA is " + (z ? "enabled" : "disabled") + " for " + this.f9519b.getPackageName());
        this.f9518a = z;
    }

    ProGuard m11989a(boolean z, boolean z2) {
        ProGuard proGuard = new ProGuard(this.f9519b, this.f9521d, z, z2);
        proGuard.start();
        return proGuard;
    }

    void m11994b() {
        m11982a(true, true, 0);
    }

    public void m11997c() {
        long j = (long) this.f9520c.getInt(ACRA.PREF_LAST_VERSION_NR, 0);
        PackageInfo a = new org.acra.p165e.ProGuard(this.f9519b).m12177a();
        boolean z = a != null && ((long) a.versionCode) > j;
        if (z) {
            if (ACRA.getConfig().m12106g()) {
                m11994b();
            }
            Editor edit = this.f9520c.edit();
            edit.putInt(ACRA.PREF_LAST_VERSION_NR, a.versionCode);
            edit.commit();
        }
        if ((ACRA.getConfig().m12117r() == ReportingInteractionMode.NOTIFICATION || ACRA.getConfig().m12117r() == ReportingInteractionMode.DIALOG) && ACRA.getConfig().m12105f()) {
            m11996b(true);
        }
        ProGuard proGuard = new ProGuard(this.f9519b);
        String[] a2 = proGuard.m12187a();
        if (a2 != null && a2.length > 0) {
            ReportingInteractionMode r = ACRA.getConfig().m12117r();
            String[] a3 = proGuard.m12187a();
            boolean b = m11985b(a3);
            if (r == ReportingInteractionMode.SILENT || r == ReportingInteractionMode.TOAST || (b && (r == ReportingInteractionMode.NOTIFICATION || r == ReportingInteractionMode.DIALOG))) {
                if (r == ReportingInteractionMode.TOAST && !b) {
                    org.acra.p165e.ProGuard.m12184a(this.f9519b, ACRA.getConfig().m12086C(), 1);
                }
                Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from #checkReportOnApplicationStart");
                m11989a(false, false);
            } else if (ACRA.getConfig().m12117r() == ReportingInteractionMode.NOTIFICATION) {
                m11983b(m11978a(a3));
            } else {
                ACRA.getConfig().m12117r();
                ReportingInteractionMode reportingInteractionMode = ReportingInteractionMode.DIALOG;
            }
        }
    }

    void m11996b(boolean z) {
        int i;
        if (z) {
            i = 1;
        } else {
            i = 0;
        }
        m11982a(false, true, i);
    }

    private void m11980a(Throwable th, ReportingInteractionMode reportingInteractionMode, boolean z, boolean z2) {
        boolean z3 = true;
        if (this.f9518a) {
            boolean z4;
            boolean z5;
            if (reportingInteractionMode == null) {
                reportingInteractionMode = ACRA.getConfig().m12117r();
                z4 = false;
            } else if (reportingInteractionMode != ReportingInteractionMode.SILENT || ACRA.getConfig().m12117r() == ReportingInteractionMode.SILENT) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (th == null) {
                th = new Exception("Report requested by developer");
            }
            if (reportingInteractionMode == ReportingInteractionMode.TOAST || (ACRA.getConfig().m12086C() != 0 && (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION || reportingInteractionMode == ReportingInteractionMode.DIALOG))) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                new ProGuard(this).start();
            }
            org.acra.p159b.ProGuard a = this.f9522e.m12052a(th, z, this.f9525h);
            String a2 = m11977a(a);
            m11979a(a2, a);
            ProGuard proGuard = null;
            if (reportingInteractionMode == ReportingInteractionMode.SILENT || reportingInteractionMode == ReportingInteractionMode.TOAST || this.f9520c.getBoolean(ACRA.PREF_ALWAYS_ACCEPT, false)) {
                Log.d(ACRA.LOG_TAG, "About to start ReportSenderWorker from #handleException");
                proGuard = m11989a(z4, true);
            } else if (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION) {
                Log.d(ACRA.LOG_TAG, "Notification will be created on application start.");
            }
            if (z5) {
                f9516k = false;
                new ProGuard(this).start();
            }
            if (reportingInteractionMode != ReportingInteractionMode.DIALOG || this.f9520c.getBoolean(ACRA.PREF_ALWAYS_ACCEPT, false)) {
                z3 = false;
            }
            new ProGuard(this, proGuard, z3, a2, z2).start();
        }
    }

    void m11991a(String str) {
        Log.d(ACRA.LOG_TAG, "Creating Dialog for " + str);
        Intent intent = new Intent(this.f9519b, CrashReportDialog.class);
        intent.putExtra("REPORT_FILE_NAME", str);
        intent.setFlags(268435456);
        this.f9519b.startActivity(intent);
    }

    private void m11983b(String str) {
        NotificationManager notificationManager = (NotificationManager) this.f9519b.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        org.acra.p158a.ProGuard config = ACRA.getConfig();
        Notification notification = new Notification(config.m12038y(), this.f9519b.getText(config.m11999A()), System.currentTimeMillis());
        CharSequence text = this.f9519b.getText(config.m12000B());
        CharSequence text2 = this.f9519b.getText(config.m12039z());
        Intent intent = new Intent(this.f9519b, CrashReportDialog.class);
        Log.d(ACRA.LOG_TAG, "Creating Notification for " + str);
        intent.putExtra("REPORT_FILE_NAME", str);
        Context context = this.f9519b;
        int i = f9517l;
        f9517l = i + 1;
        notification.setLatestEventInfo(this.f9519b, text, text2, PendingIntent.getActivity(context, i, intent, 134217728));
        Intent intent2 = new Intent(this.f9519b, CrashReportDialog.class);
        intent2.putExtra("FORCE_CANCEL", true);
        notification.deleteIntent = PendingIntent.getActivity(this.f9519b, -1, intent2, 0);
        notificationManager.notify(666, notification);
    }

    private String m11977a(org.acra.p159b.ProGuard proGuard) {
        Time time = new Time();
        time.setToNow();
        return time.toMillis(false) + (proGuard.m12046a(ReportField.IS_SILENT) != null ? ProGuard.f9624a : "") + ".stacktrace";
    }

    private void m11979a(String str, org.acra.p159b.ProGuard proGuard) {
        try {
            Log.d(ACRA.LOG_TAG, "Writing crash report file " + str + ".");
            new ProGuard(this.f9519b).m12192a(proGuard, str);
        } catch (Throwable e) {
            Log.e(ACRA.LOG_TAG, "An error occurred while writing the report file...", e);
        }
    }

    private String m11978a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (!this.f9523f.m12185a(strArr[length])) {
                return strArr[length];
            }
        }
        return strArr[strArr.length - 1];
    }

    private void m11982a(boolean z, boolean z2, int i) {
        String[] a = new ProGuard(this.f9519b).m12187a();
        Arrays.sort(a);
        if (a != null) {
            for (int i2 = 0; i2 < a.length - i; i2++) {
                String str = a[i2];
                boolean b = this.f9523f.m12186b(str);
                if ((b && z) || (!b && z2)) {
                    File file = new File(this.f9519b.getFilesDir(), str);
                    ACRA.log.m12146a(ACRA.LOG_TAG, "Deleting file " + str);
                    if (!file.delete()) {
                        Log.e(ACRA.LOG_TAG, "Could not delete report : " + file);
                    }
                }
            }
        }
    }

    private boolean m11985b(String[] strArr) {
        for (String b : strArr) {
            if (!this.f9523f.m12186b(b)) {
                return false;
            }
        }
        return true;
    }

    public void m11998d() {
        org.acra.p158a.ProGuard config = ACRA.getConfig();
        Context application = ACRA.getApplication();
        m11990a();
        if (!"".equals(config.m12029p())) {
            Log.w(ACRA.LOG_TAG, application.getPackageName() + " reports will be sent by email (if accepted by user).");
            m11995b(new ProGuard(application));
        } else if (!new org.acra.p165e.ProGuard(application).m12178a(UpdateConfig.f5447h)) {
            Log.e(ACRA.LOG_TAG, application.getPackageName() + " should be granted permission " + UpdateConfig.f5447h + " if you want your crash reports to be sent. If you don't want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\"");
        } else if (config.m12024k() != null && !"".equals(config.m12024k())) {
            m11995b(new HttpSender(ACRA.getConfig().m12098O(), ACRA.getConfig().m12099P(), null));
        } else if (config.m12023j() != null && !"".equals(config.m12023j().trim())) {
            m11992a(new ProGuard());
        }
    }
}
