package org.p000a.p001a.p155a;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Properties;

/* renamed from: org.a.a.a.a */
public class ProGuard {
    static Class f9352c;
    static Class f9353d;
    protected Object f9354a;
    protected PropertyDescriptor[] f9355b;

    public ProGuard(Object obj) {
        this.f9354a = obj;
    }

    protected void m11778a() {
        try {
            this.f9355b = Introspector.getBeanInfo(this.f9354a.getClass()).getPropertyDescriptors();
        } catch (IntrospectionException e) {
            org.p000a.p001a.p156b.ProGuard.m11799b(new StringBuffer().append("Failed to introspect ").append(this.f9354a).append(": ").append(e.getMessage()).toString());
            this.f9355b = new PropertyDescriptor[0];
        }
    }

    public static void m11774a(Object obj, Properties properties, String str) {
        new ProGuard(obj).m11781a(properties, str);
    }

    public void m11781a(Properties properties, String str) {
        int length = str.length();
        Enumeration propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str2 = (String) propertyNames.nextElement();
            if (str2.startsWith(str) && str2.indexOf(46, length + 1) <= 0) {
                String a = org.p000a.p001a.p156b.ProGuard.m11813a(str2, properties);
                str2 = str2.substring(length);
                if (!"layout".equals(str2) || !(this.f9354a instanceof org.p000a.p001a.ProGuard)) {
                    m11780a(str2, a);
                }
            }
        }
        m11782b();
    }

    public void m11780a(String str, String str2) {
        if (str2 != null) {
            String decapitalize = Introspector.decapitalize(str);
            PropertyDescriptor a = m11776a(decapitalize);
            if (a == null) {
                org.p000a.p001a.p156b.ProGuard.m11801c(new StringBuffer().append("No such property [").append(decapitalize).append("] in ").append(this.f9354a.getClass().getName()).append(".").toString());
                return;
            }
            try {
                m11779a(a, decapitalize, str2);
            } catch (ProGuard e) {
                org.p000a.p001a.p156b.ProGuard.m11800b(new StringBuffer().append("Failed to set property [").append(decapitalize).append("] to value \"").append(str2).append("\". ").toString(), e.f9356a);
            }
        }
    }

    public void m11779a(PropertyDescriptor propertyDescriptor, String str, String str2) {
        Method writeMethod = propertyDescriptor.getWriteMethod();
        if (writeMethod == null) {
            throw new ProGuard(new StringBuffer().append("No setter for property [").append(str).append("].").toString());
        }
        Class[] parameterTypes = writeMethod.getParameterTypes();
        if (parameterTypes.length != 1) {
            throw new ProGuard("#params for setter != 1");
        }
        try {
            Object a = m11777a(str2, parameterTypes[0]);
            if (a == null) {
                throw new ProGuard(new StringBuffer().append("Conversion to type [").append(parameterTypes[0]).append("] failed.").toString());
            }
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Setting property [").append(str).append("] to [").append(a).append("].").toString());
            try {
                writeMethod.invoke(this.f9354a, new Object[]{a});
            } catch (Throwable e) {
                throw new ProGuard(e);
            }
        } catch (Throwable e2) {
            ProGuard proGuard = new ProGuard(new StringBuffer().append("Conversion to type [").append(parameterTypes[0]).append("] failed. Reason: ").append(e2).toString());
        }
    }

    protected Object m11777a(String str, Class cls) {
        if (str == null) {
            return null;
        }
        Class b;
        String trim = str.trim();
        if (f9352c == null) {
            b = ProGuard.m11775b("java.lang.String");
            f9352c = b;
        } else {
            b = f9352c;
        }
        if (b.isAssignableFrom(cls)) {
            return str;
        }
        if (Integer.TYPE.isAssignableFrom(cls)) {
            return new Integer(trim);
        }
        if (Long.TYPE.isAssignableFrom(cls)) {
            return new Long(trim);
        }
        if (!Boolean.TYPE.isAssignableFrom(cls)) {
            if (f9353d == null) {
                b = ProGuard.m11775b("org.a.a.o");
                f9353d = b;
            } else {
                b = f9353d;
            }
            if (b.isAssignableFrom(cls)) {
                return org.p000a.p001a.p156b.ProGuard.m11814a(trim, org.p000a.p001a.ProGuard.f9488f);
            }
        } else if ("true".equalsIgnoreCase(trim)) {
            return Boolean.TRUE;
        } else {
            if ("false".equalsIgnoreCase(trim)) {
                return Boolean.FALSE;
            }
        }
        return null;
    }

    static Class m11775b(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    protected PropertyDescriptor m11776a(String str) {
        if (this.f9355b == null) {
            m11778a();
        }
        for (int i = 0; i < this.f9355b.length; i++) {
            if (str.equals(this.f9355b[i].getName())) {
                return this.f9355b[i];
            }
        }
        return null;
    }

    public void m11782b() {
        if (this.f9354a instanceof org.p000a.p001a.p002d.ProGuard) {
            ((org.p000a.p001a.p002d.ProGuard) this.f9354a).m6e();
        }
    }
}
