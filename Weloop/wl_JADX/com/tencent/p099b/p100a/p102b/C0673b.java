package com.tencent.p099b.p100a.p102b;

import android.util.Log;
import com.tencent.p099b.p100a.C0708t;

/* renamed from: com.tencent.b.a.b.b */
public final class C0673b {
    private String f5148a;
    private boolean f5149b;
    private int f5150c;

    public C0673b() {
        this.f5148a = "default";
        this.f5149b = true;
        this.f5150c = 2;
    }

    public C0673b(String str) {
        this.f5148a = "default";
        this.f5149b = true;
        this.f5150c = 2;
        this.f5148a = str;
    }

    private String m6933b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(getClass().getName())) {
                return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
            }
        }
        return null;
    }

    public final void m6934a() {
        this.f5149b = false;
    }

    public final void m6935a(Object obj) {
        if (this.f5149b && this.f5150c <= 4) {
            String b = m6933b();
            Log.i(this.f5148a, b == null ? obj.toString() : b + " - " + obj);
            C0708t.m7087v();
        }
    }

    public final void m6936a(Throwable th) {
        if (this.f5150c <= 6) {
            Log.e(this.f5148a, "", th);
            C0708t.m7087v();
        }
    }

    public final void m6937b(Object obj) {
        if (this.f5150c <= 5) {
            String b = m6933b();
            Log.w(this.f5148a, b == null ? obj.toString() : b + " - " + obj);
            C0708t.m7087v();
        }
    }

    public final void m6938b(Throwable th) {
        if (this.f5149b) {
            m6936a(th);
        }
    }

    public final void m6939c(Object obj) {
        if (this.f5149b) {
            m6937b(obj);
        }
    }

    public final void m6940d(Object obj) {
        if (this.f5150c <= 6) {
            String b = m6933b();
            Log.e(this.f5148a, b == null ? obj.toString() : b + " - " + obj);
            C0708t.m7087v();
        }
    }

    public final void m6941e(Object obj) {
        if (this.f5149b) {
            m6940d(obj);
        }
    }

    public final void m6942f(Object obj) {
        if (this.f5150c <= 3) {
            String b = m6933b();
            Log.d(this.f5148a, b == null ? obj.toString() : b + " - " + obj);
            C0708t.m7087v();
        }
    }

    public final void m6943g(Object obj) {
        if (this.f5149b) {
            m6942f(obj);
        }
    }
}
