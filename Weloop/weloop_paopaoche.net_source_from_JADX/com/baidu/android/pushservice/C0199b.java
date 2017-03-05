package com.baidu.android.pushservice;

import android.content.Context;
import com.baidu.android.pushservice.p072f.C0272g;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

/* renamed from: com.baidu.android.pushservice.b */
public class C0199b implements UncaughtExceptionHandler {
    private String f2959a;
    private Context f2960b;

    public C0199b(Context context) {
        this.f2959a = "DefaultExceptionHandler";
        this.f2960b = null;
        this.f2960b = context;
    }

    private void m4437b(Throwable th) {
        String a = m4438a(th);
        C0385a.m5311b(this.f2959a, a);
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("exception " + a + " at Time " + System.currentTimeMillis(), this.f2960b.getApplicationContext());
        }
        C0272g c0272g = new C0272g();
        c0272g.g = "040101";
        c0272g.h = System.currentTimeMillis();
        c0272g.i = C0399b.m5336d(this.f2960b);
        c0272g.f3228a = a;
        C0284t.m4931a(this.f2960b, c0272g);
    }

    public String m4438a(Throwable th) {
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

    public void uncaughtException(Thread thread, Throwable th) {
        m4437b(th);
        C0374f.m5222h(this.f2960b, this.f2960b.getPackageName());
    }
}
