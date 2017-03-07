package org.acra.p158a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.acra.ReportField;
import org.acra.ReportingInteractionMode;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

@Inherited
@Documented
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.acra.a.a */
public @interface ProGuard {
    int m11999A() default 0;

    int m12000B() default 0;

    int m12001C() default 0;

    int m12002D() default 0;

    String m12003E() default "";

    int m12004F() default 5000;

    boolean m12005G() default false;

    boolean m12006H() default true;

    String[] m12007I() default {};

    String[] m12008J() default {};

    String m12009K() default "";

    int m12010L() default 100;

    String m12011M() default "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq";

    boolean m12012N() default false;

    Method m12013O() default Method.POST;

    Type m12014P() default Type.FORM;

    String[] m12015b() default {};

    String[] m12016c() default {};

    int m12017d() default 3000;

    ReportField[] m12018e() default {};

    boolean m12019f() default true;

    boolean m12020g() default true;

    int m12021h() default 5;

    boolean m12022i() default false;

    String m12023j();

    String m12024k() default "";

    String m12025l() default "ACRA-NULL-STRING";

    String m12026m() default "ACRA-NULL-STRING";

    boolean m12027n() default false;

    String[] m12028o() default {"-t", "100", "-v", "time"};

    String m12029p() default "";

    int m12030q() default 3;

    ReportingInteractionMode m12031r() default ReportingInteractionMode.SILENT;

    int m12032s() default 0;

    int m12033t() default 0;

    int m12034u() default 17301543;

    int m12035v() default 0;

    int m12036w() default 0;

    int m12037x() default 0;

    int m12038y() default 17301624;

    int m12039z() default 0;
}
