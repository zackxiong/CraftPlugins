package com.p038b.p039a;

import android.app.Activity;
import android.preference.Preference;
import android.view.View;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: com.b.a.e */
public class ProGuard {
    public static void m4086a(Activity activity) {
        ProGuard.m4088a((Object) activity, new com.p038b.p039a.p056g.ProGuard(activity));
    }

    public static void m4087a(Object obj, View view) {
        ProGuard.m4088a(obj, new com.p038b.p039a.p056g.ProGuard(view));
    }

    private static void m4088a(Object obj, com.p038b.p039a.p056g.ProGuard proGuard) {
        int i;
        Class cls = obj.getClass();
        if (((com.p038b.p039a.p056g.p057a.ProGuard) cls.getAnnotation(com.p038b.p039a.p056g.p057a.ProGuard.class)) != null) {
            try {
                cls.getMethod("setContentView", new Class[]{Integer.TYPE}).invoke(obj, new Object[]{Integer.valueOf(((com.p038b.p039a.p056g.p057a.ProGuard) cls.getAnnotation(com.p038b.p039a.p056g.p057a.ProGuard.class)).m4119a())});
            } catch (Throwable th) {
                com.p038b.p039a.p055f.ProGuard.m4101a(th.getMessage(), th);
            }
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                com.p038b.p039a.p056g.p057a.ProGuard proGuard2 = (com.p038b.p039a.p056g.p057a.ProGuard) field.getAnnotation(com.p038b.p039a.p056g.p057a.ProGuard.class);
                if (proGuard2 != null) {
                    try {
                        View a = proGuard.m4130a(proGuard2.m4123a(), proGuard2.m4124b());
                        if (a != null) {
                            field.setAccessible(true);
                            field.set(obj, a);
                        }
                    } catch (Throwable th2) {
                        com.p038b.p039a.p055f.ProGuard.m4101a(th2.getMessage(), th2);
                    }
                } else {
                    com.p038b.p039a.p056g.p057a.ProGuard proGuard3 = (com.p038b.p039a.p056g.p057a.ProGuard) field.getAnnotation(com.p038b.p039a.p056g.p057a.ProGuard.class);
                    if (proGuard3 != null) {
                        try {
                            Object a2 = com.p038b.p039a.p056g.ProGuard.m4126a(proGuard3.m4122b(), proGuard.m4127a(), proGuard3.m4121a());
                            if (a2 != null) {
                                field.setAccessible(true);
                                field.set(obj, a2);
                            }
                        } catch (Throwable th22) {
                            com.p038b.p039a.p055f.ProGuard.m4101a(th22.getMessage(), th22);
                        }
                    } else {
                        com.p038b.p039a.p056g.p057a.ProGuard proGuard4 = (com.p038b.p039a.p056g.p057a.ProGuard) field.getAnnotation(com.p038b.p039a.p056g.p057a.ProGuard.class);
                        if (proGuard4 != null) {
                            try {
                                Preference a3 = proGuard.m4128a(proGuard4.m4120a());
                                if (a3 != null) {
                                    field.setAccessible(true);
                                    field.set(obj, a3);
                                }
                            } catch (Throwable th222) {
                                com.p038b.p039a.p055f.ProGuard.m4101a(th222.getMessage(), th222);
                            }
                        }
                    }
                }
            }
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (declaredMethods != null && declaredMethods.length > 0) {
            for (Method method : declaredMethods) {
                Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                if (declaredAnnotations != null && declaredAnnotations.length > 0) {
                    for (Annotation annotation : declaredAnnotations) {
                        Class annotationType = annotation.annotationType();
                        if (annotationType.getAnnotation(com.p038b.p039a.p056g.p057a.p058a.ProGuard.class) != null) {
                            method.setAccessible(true);
                            try {
                                Method declaredMethod = annotationType.getDeclaredMethod("value", new Class[0]);
                                Method method2 = null;
                                try {
                                    method2 = annotationType.getDeclaredMethod("parentId", new Class[0]);
                                } catch (Throwable th3) {
                                }
                                Object invoke = declaredMethod.invoke(annotation, new Object[0]);
                                Object invoke2 = method2 == null ? null : method2.invoke(annotation, new Object[0]);
                                int length = invoke2 == null ? 0 : Array.getLength(invoke2);
                                int length2 = Array.getLength(invoke);
                                i = 0;
                                while (i < length2) {
                                    com.p038b.p039a.p056g.ProGuard proGuard5 = new com.p038b.p039a.p056g.ProGuard();
                                    proGuard5.f2848a = Array.get(invoke, i);
                                    proGuard5.f2849b = length > i ? ((Integer) Array.get(invoke2, i)).intValue() : 0;
                                    com.p038b.p039a.p056g.ProGuard.m4125a(proGuard, proGuard5, annotation, obj, method);
                                    i++;
                                }
                            } catch (Throwable th2222) {
                                com.p038b.p039a.p055f.ProGuard.m4101a(th2222.getMessage(), th2222);
                            }
                        }
                    }
                }
            }
        }
    }
}
