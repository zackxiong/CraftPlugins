package com.p038b.p039a.p056g;

import android.view.View;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;

/* renamed from: com.b.a.g.a */
public class ProGuard {
    private static final com.p038b.p039a.p055f.ProGuard<ProGuard, Class<?>, Object> f2825a;

    /* renamed from: com.b.a.g.a.a */
    public static class ProGuard implements InvocationHandler {
        private WeakReference<Object> f2823a;
        private final HashMap<String, Method> f2824b;

        public ProGuard(Object obj) {
            this.f2824b = new HashMap(1);
            this.f2823a = new WeakReference(obj);
        }

        public void m4115a(String str, Method method) {
            this.f2824b.put(str, method);
        }

        public Object m4114a() {
            return this.f2823a.get();
        }

        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2 = this.f2823a.get();
            if (obj2 != null) {
                Method method2 = (Method) this.f2824b.get(method.getName());
                if (method2 != null) {
                    return method2.invoke(obj2, objArr);
                }
            }
            return null;
        }
    }

    static {
        f2825a = new com.p038b.p039a.p055f.ProGuard();
    }

    public static void m4125a(ProGuard proGuard, ProGuard proGuard2, Annotation annotation, Object obj, Method method) {
        try {
            View a = proGuard.m4131a(proGuard2);
            if (a != null) {
                boolean z;
                Object obj2;
                com.p038b.p039a.p056g.p057a.p058a.ProGuard proGuard3 = (com.p038b.p039a.p056g.p057a.p058a.ProGuard) annotation.annotationType().getAnnotation(com.p038b.p039a.p056g.p057a.p058a.ProGuard.class);
                Class a2 = proGuard3.m4116a();
                String b = proGuard3.m4117b();
                String c = proGuard3.m4118c();
                Object a3 = f2825a.m4092a(proGuard2, a2);
                if (a3 != null) {
                    ProGuard proGuard4 = (ProGuard) Proxy.getInvocationHandler(a3);
                    boolean equals = obj.equals(proGuard4.m4114a());
                    if (equals) {
                        proGuard4.m4115a(c, method);
                    }
                    z = equals;
                } else {
                    z = false;
                }
                if (z) {
                    obj2 = a3;
                } else {
                    InvocationHandler proGuard5 = new ProGuard(obj);
                    proGuard5.m4115a(c, method);
                    obj2 = Proxy.newProxyInstance(a2.getClassLoader(), new Class[]{a2}, proGuard5);
                    f2825a.m4093a(proGuard2, a2, obj2);
                }
                a.getClass().getMethod(b, new Class[]{a2}).invoke(a, new Object[]{obj2});
            }
        } catch (Throwable th) {
            com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
        }
    }
}
