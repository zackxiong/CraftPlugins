package org.acra;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.List;

/* renamed from: org.acra.x */
final class ProGuard extends Thread {
    private final Context f9660a;
    private final boolean f9661b;
    private final boolean f9662c;
    private final ProGuard f9663d;
    private final List<org.acra.sender.ProGuard> f9664e;

    public ProGuard(Context context, List<org.acra.sender.ProGuard> list, boolean z, boolean z2) {
        this.f9663d = new ProGuard();
        this.f9660a = context;
        this.f9664e = list;
        this.f9661b = z;
        this.f9662c = z2;
    }

    public void run() {
        if (this.f9662c) {
            m12210a();
        }
        m12212a(this.f9660a, this.f9661b);
    }

    private void m12210a() {
        Log.d(ACRA.LOG_TAG, "Mark all pending reports as approved.");
        for (String str : new ProGuard(this.f9660a).m12187a()) {
            if (!this.f9663d.m12186b(str)) {
                File file = new File(this.f9660a.getFilesDir(), str);
                File file2 = new File(this.f9660a.getFilesDir(), str.replace(".stacktrace", "-approved.stacktrace"));
                if (!file.renameTo(file2)) {
                    Log.e(ACRA.LOG_TAG, "Could not rename approved report from " + file + " to " + file2);
                }
            }
        }
    }

    private void m12212a(Context context, boolean z) {
        int i = 0;
        Log.d(ACRA.LOG_TAG, "#checkAndSendReports - start");
        String[] a = new ProGuard(context).m12187a();
        Arrays.sort(a);
        for (String str : a) {
            if (!z || this.f9663d.m12185a(str)) {
                if (i >= 5) {
                    break;
                }
                Log.i(ACRA.LOG_TAG, "Sending file " + str);
                try {
                    m12213a(new ProGuard(context).m12191a(str));
                    m12211a(context, str);
                } catch (Throwable e) {
                    Log.e(ACRA.LOG_TAG, "Failed to send crash reports for " + str, e);
                    m12211a(context, str);
                } catch (Throwable e2) {
                    Log.e(ACRA.LOG_TAG, "Failed to load crash report for " + str, e2);
                    m12211a(context, str);
                } catch (Throwable e3) {
                    Log.e(ACRA.LOG_TAG, "Failed to send crash report for " + str, e3);
                }
                i++;
            }
        }
        Log.d(ACRA.LOG_TAG, "#checkAndSendReports - finish");
    }

    private void m12213a(org.acra.p159b.ProGuard proGuard) {
        if (!ACRA.isDebuggable() || ACRA.getConfig().m12091H()) {
            Object obj = null;
            for (org.acra.sender.ProGuard proGuard2 : this.f9664e) {
                try {
                    proGuard2.m12200a(proGuard);
                    obj = 1;
                } catch (org.acra.sender.ProGuard e) {
                    if (obj == null) {
                        throw e;
                    }
                    Log.w(ACRA.LOG_TAG, "ReportSender of class " + proGuard2.getClass().getName() + " failed but other senders completed their task. ACRA will not send this report again.");
                }
            }
        }
    }

    private void m12211a(Context context, String str) {
        if (!context.deleteFile(str)) {
            Log.w(ACRA.LOG_TAG, "Could not delete error report : " + str);
        }
    }
}
