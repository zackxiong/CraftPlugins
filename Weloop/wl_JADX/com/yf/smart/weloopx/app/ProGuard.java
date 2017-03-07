package com.yf.smart.weloopx.app;

import android.app.Activity;
import java.util.Stack;

/* renamed from: com.yf.smart.weloopx.app.a */
public class ProGuard {
    private static final Stack<Activity> f8664a;
    private static ProGuard f8665b;

    static {
        f8664a = new Stack();
    }

    private ProGuard() {
    }

    public static ProGuard m10657a() {
        if (f8665b == null) {
            f8665b = new ProGuard();
        }
        return f8665b;
    }

    public void m10658a(Activity activity) {
        f8664a.add(activity);
    }

    public void m10659b() {
        int size = f8664a.size();
        for (int i = 0; i < size; i++) {
            if (f8664a.get(i) != null) {
                ((Activity) f8664a.get(i)).finish();
            }
        }
        f8664a.clear();
    }
}
