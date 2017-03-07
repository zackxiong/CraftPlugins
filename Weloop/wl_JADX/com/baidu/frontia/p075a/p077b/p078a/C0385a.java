package com.baidu.frontia.p075a.p077b.p078a;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.baidu.frontia.a.b.a.a */
public final class C0385a {
    private static boolean f3633a;
    private static boolean f3634b;
    private static Logger f3635c;

    static {
        f3633a = true;
        f3634b = false;
    }

    public static String m5307a(Throwable th) {
        if (th == null) {
            return "";
        }
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static void m5308a(String str, String str2) {
        if (!f3633a) {
            return;
        }
        if (!f3634b || f3635c == null) {
            Log.i(str, str2);
        } else {
            f3635c.log(Level.INFO, str + ": " + str2);
        }
    }

    public static void m5309a(String str, String str2, Throwable th) {
        C0385a.m5313d(str, str2 + '\n' + C0385a.m5307a(th));
    }

    public static void m5310a(String str, Throwable th) {
        C0385a.m5313d(str, C0385a.m5307a(th));
    }

    public static void m5311b(String str, String str2) {
        if (!f3633a) {
            return;
        }
        if (!f3634b || f3635c == null) {
            Log.d(str, str2);
        } else {
            f3635c.log(Level.INFO, str + ": " + str2);
        }
    }

    public static void m5312c(String str, String str2) {
        if (!f3633a) {
            return;
        }
        if (!f3634b || f3635c == null) {
            Log.w(str, str2);
        } else {
            f3635c.log(Level.WARNING, str + ": " + str2);
        }
    }

    public static void m5313d(String str, String str2) {
        if (!f3633a) {
            return;
        }
        if (f3634b && f3635c != null) {
            f3635c.log(Level.SEVERE, str + ": " + str2);
        } else if (!TextUtils.isEmpty(str2)) {
            Log.e(str, str2);
        }
    }
}
