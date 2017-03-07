package com.roscopeco.ormdroid;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* compiled from: ProGuard */
public @interface Column {
    boolean forceMap() default false;

    boolean inverse() default false;

    String name() default "";

    boolean primaryKey() default false;
}
