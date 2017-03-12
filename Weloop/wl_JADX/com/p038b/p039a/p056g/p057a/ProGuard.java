package com.p038b.p039a.p056g.p057a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.b.a.g.a.d */
public @interface ProGuard {
    int m4123a();

    int m4124b() default 0;
}
